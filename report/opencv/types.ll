Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/types?download=true
inline.NumInlined: 249
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bm, ptr %i.bn, align 4, !tbaa !45
  %i.bo = load float, ptr %i.bf, align 4, !tbaa !46
  %i.bp = fsub float %i.bo, %i.ba
  %i.bq = fsub float %i.bp, %i.az
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.bq, ptr %i.br, align 4, !tbaa !37
  %i.bs = load float, ptr %0, align 4, !tbaa !44
  %i.bt = fadd float %i.ax, %i.bs
  %i.bu = fadd float %i.bb, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.bu, ptr %i.bv, align 4, !tbaa !45
  %i.bw = load float, ptr %i.bf, align 4, !tbaa !46
  %i.bx = fsub float %i.bw, %i.ba
  %i.by = fadd float %i.az, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.by, ptr %i.bz, align 4, !tbaa !37
  %i.ca = load float, ptr %0, align 4, !tbaa !44
  %i.cb = fsub float %i.ca, %i.ax
  %i.cc = fadd float %i.bb, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.cc, ptr %i.cd, align 4, !tbaa !45
  %i.ce = load float, ptr %i.bf, align 4, !tbaa !46
  %i.cf = fadd float %i.ba, %i.ce
  %i.cg = fadd float %i.az, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.cg, ptr %i.ch, align 4, !tbaa !37
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv11RotatedRect6pointsERSt6vectorINS_6Point_IfEESaIS3_EE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !23     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 4, %i.h
  tail call void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j)
  %.pre = load ptr, ptr %1, align 8, !tbaa !23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.g, 32
  br i1 %.not, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.k, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 11 uses
  %i.m = add nuw i64 %i.a, 20
  %i.n = ptrtoaddr ptr %i.l to i64                ; 2 uses
  %i.o = add i64 %i.n, 32
  %rt.bound0 = icmp ugt i64 %i.m, %i.n
  %rt.bound1 = icmp ugt i64 %i.o, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit.rtscalar, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit.rtvec, !prof !41

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit.rtvec: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !40
  %i.r = fpext float %i.q to double
  %i.s = fmul double %i.r, f0x400921FB54442D18
  %i.t = fdiv double %i.s, 1.800000e+02           ; 2 uses
  %i.u = tail call double @cos(double noundef %i.t) #20
  %i.v = tail call double @sin(double noundef %i.t) #20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !42
  %i.z = load float, ptr %i.w, align 4, !tbaa !43
  %i.aa = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.v, i64 1
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float>
  %i.ad = fmul <2 x float> %i.ac, splat (float 5.000000e-01) ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.y, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ag = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ah = fmul <4 x float> %i.af, %i.ag           ; 4 uses
  %i.ai = insertelement <2 x float> poison, float %i.z, i64 0
  %i.aj = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> zeroinitializer
  %i.al = fmul <4 x float> %i.aj, %i.ak           ; 2 uses
  %i.am = load <2 x float>, ptr %0, align 4, !tbaa !24
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ao = fsub <4 x float> %i.an, %i.ah
  %i.ap = fadd <4 x float> %i.an, %i.ah
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ar = fsub <4 x float> %i.aq, %i.al
  store <4 x float> %i.ar, ptr %i.l, align 4, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.at = load <2 x float>, ptr %0, align 4, !tbaa !24
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.av = fadd <4 x float> %i.au, %i.ah
  %i.aw = fsub <4 x float> %i.au, %i.ah
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ay = fadd <4 x float> %i.al, %i.ax
  store <4 x float> %i.ay, ptr %i.as, align 4, !tbaa !24
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit.rtcont

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit.rtscalar: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load float, ptr %i.az, align 4, !tbaa !40
  %i.bb = fpext float %i.ba to double
  %i.bc = fmul double %i.bb, f0x400921FB54442D18
  %i.bd = fdiv double %i.bc, 1.800000e+02         ; 2 uses
  %i.be = tail call double @cos(double noundef %i.bd) #20
  %i.bf = fptrunc double %i.be to float
  %i.bg = fmul float %i.bf, 5.000000e-01          ; 2 uses
  %i.bh = tail call double @sin(double noundef %i.bd) #20
  %i.bi = fptrunc double %i.bh to float
  %i.bj = fmul float %i.bi, 5.000000e-01          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !42 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bj                 ; 4 uses
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !43 ; 2 uses
  %i.bp = fmul float %i.bj, %i.bo                 ; 4 uses
  %i.bq = fmul float %i.bg, %i.bm                 ; 4 uses
  %i.br = fmul float %i.bg, %i.bo                 ; 4 uses
  %i.bs = load float, ptr %0, align 4, !tbaa !44
  %i.bt = fsub float %i.bs, %i.bn
  %i.bu = fsub float %i.bt, %i.br
  store float %i.bu, ptr %i.l, align 4, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !46
  %i.bx = fadd float %i.bq, %i.bw
  %i.by = fsub float %i.bx, %i.bp
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store float %i.by, ptr %i.bz, align 4, !tbaa !37
  %i.ca = load float, ptr %0, align 4, !tbaa !44
  %i.cb = fadd float %i.bn, %i.ca
  %i.cc = fsub float %i.cb, %i.br
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store float %i.cc, ptr %i.cd, align 4, !tbaa !45
  %i.ce = load float, ptr %i.bv, align 4, !tbaa !46
  %i.cf = fsub float %i.ce, %i.bq
  %i.cg = fsub float %i.cf, %i.bp
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store float %i.cg, ptr %i.ch, align 4, !tbaa !37
  %i.ci = load float, ptr %0, align 4, !tbaa !44
  %i.cj = fadd float %i.bn, %i.ci
  %i.ck = fadd float %i.br, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store float %i.ck, ptr %i.cl, align 4, !tbaa !45
  %i.cm = load float, ptr %i.bv, align 4, !tbaa !46
  %i.cn = fsub float %i.cm, %i.bq
  %i.co = fadd float %i.bp, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store float %i.co, ptr %i.cp, align 4, !tbaa !37
  %i.cq = load float, ptr %0, align 4, !tbaa !44
  %i.cr = fsub float %i.cq, %i.bn
  %i.cs = fadd float %i.br, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store float %i.cs, ptr %i.ct, align 4, !tbaa !45
  %i.cu = load float, ptr %i.bv, align 4, !tbaa !46
  %i.cv = fadd float %i.bq, %i.cu
  %i.cw = fadd float %i.bp, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store float %i.cw, ptr %i.cx, align 4, !tbaa !37
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit.rtcont

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit.rtcont: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit.rtscalar, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { i64, i64 } @_ZNK2cv11RotatedRect12boundingRectEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !40
  %i.c = fpext float %i.b to double
  %i.d = fmul double %i.c, f0x400921FB54442D18
  %i.e = fdiv double %i.d, 1.800000e+02           ; 2 uses
  %i.f = tail call double @cos(double noundef %i.e) #20
  %i.g = tail call double @sin(double noundef %i.e) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = insertelement <2 x double> poison, double %i.g, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.k = fptrunc <2 x double> %i.j to <2 x float>
  %i.l = fmul <2 x float> %i.k, splat (float 5.000000e-01) ; 2 uses
  %1 = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %2 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %2, %i.l                ; 2 uses
  %3 = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %4 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = fmul <2 x float> %3, %4                    ; 4 uses
  %6 = load <2 x float>, ptr %0, align 4, !tbaa !24 ; 2 uses
  %7 = fsub <2 x float> %6, %i.m                  ; 2 uses
  %8 = fadd <2 x float> %6, %i.m                  ; 2 uses
  %9 = shufflevector <2 x float> %7, <2 x float> %8, <2 x i32> <i32 0, i32 3> ; 2 uses
  %10 = fsub <2 x float> %9, %5                   ; 4 uses
  %11 = shufflevector <2 x float> %8, <2 x float> %7, <2 x i32> <i32 0, i32 3> ; 2 uses
  %12 = fsub <2 x float> %11, %5                  ; 4 uses
  %i.n = fadd <2 x float> %5, %11                 ; 4 uses
  %i.o = fadd <2 x float> %5, %9                  ; 4 uses
  %13 = fcmp olt <2 x float> %12, %10
  %14 = select <2 x i1> %13, <2 x float> %12, <2 x float> %10 ; 2 uses
  %15 = fcmp olt <2 x float> %i.n, %14
  %16 = select <2 x i1> %15, <2 x float> %i.n, <2 x float> %14 ; 2 uses
  %17 = fcmp olt <2 x float> %i.o, %16
  %18 = select <2 x i1> %17, <2 x float> %i.o, <2 x float> %16
  %19 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %18)
  %20 = fptosi <2 x float> %19 to <2 x i32>       ; 2 uses
  %21 = fcmp olt <2 x float> %10, %12
  %22 = select <2 x i1> %21, <2 x float> %12, <2 x float> %10 ; 2 uses
  %23 = fcmp olt <2 x float> %22, %i.n
  %24 = select <2 x i1> %23, <2 x float> %i.n, <2 x float> %22 ; 2 uses
  %25 = fcmp olt <2 x float> %24, %i.o
  %26 = select <2 x i1> %25, <2 x float> %i.o, <2 x float> %24
  %27 = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %26)
  %i.p = fptosi <2 x float> %27 to <2 x i32>
  %i.q = sub <2 x i32> %i.p, %20
  %i.r = add <2 x i32> %i.q, splat (i32 1)
  %.sroa.0.0.insert.insert = bitcast <2 x i32> %20 to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.sroa.5.8.insert.insert = bitcast <2 x i32> %i.r to i64
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, <2 x float> } @_ZNK2cv11RotatedRect14boundingRect2fEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !40
  %i.c = fpext float %i.b to double
  %i.d = fmul double %i.c, f0x400921FB54442D18
  %i.e = fdiv double %i.d, 1.800000e+02           ; 2 uses
  %i.f = tail call double @cos(double noundef %i.e) #20
  %i.g = tail call double @sin(double noundef %i.e) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = insertelement <2 x double> poison, double %i.g, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.f, i64 1
  %i.k = fptrunc <2 x double> %i.j to <2 x float>
  %i.l = fmul <2 x float> %i.k, splat (float 5.000000e-01) ; 2 uses
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fmul <2 x float> %i.n, %i.l              ; 2 uses
  %i.p = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.q = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.p, %i.q              ; 4 uses
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !24 ; 2 uses
  %i.t = fsub <2 x float> %i.s, %i.o              ; 2 uses
  %i.u = fadd <2 x float> %i.s, %i.o              ; 2 uses
  %i.v = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.w = fsub <2 x float> %i.v, %i.r              ; 4 uses
  %i.x = shufflevector <2 x float> %i.u, <2 x float> %i.t, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.y = fsub <2 x float> %i.x, %i.r              ; 4 uses
  %i.z = fadd <2 x float> %i.r, %i.x              ; 4 uses
  %i.aa = fadd <2 x float> %i.r, %i.v             ; 4 uses
  %i.ab = fcmp olt <2 x float> %i.y, %i.w
  %i.ac = select <2 x i1> %i.ab, <2 x float> %i.y, <2 x float> %i.w ; 2 uses
  %i.ad = fcmp olt <2 x float> %i.z, %i.ac
  %i.ae = select <2 x i1> %i.ad, <2 x float> %i.z, <2 x float> %i.ac ; 2 uses
  %i.af = fcmp olt <2 x float> %i.aa, %i.ae
  %i.ag = select <2 x i1> %i.af, <2 x float> %i.aa, <2 x float> %i.ae ; 4 uses
  %i.ah = fcmp olt <2 x float> %i.w, %i.y
  %i.ai = select <2 x i1> %i.ah, <2 x float> %i.y, <2 x float> %i.w ; 2 uses
  %i.aj = fcmp olt <2 x float> %i.ai, %i.z
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.z, <2 x float> %i.ai ; 2 uses
  %i.al = fcmp olt <2 x float> %i.ak, %i.aa
  %i.am = select <2 x i1> %i.al, <2 x float> %i.aa, <2 x float> %i.ak ; 4 uses
  %i.an = fcmp olt <2 x float> %i.am, %i.ag
  %i.ao = select <2 x i1> %i.an, <2 x float> %i.am, <2 x float> %i.ag ; 2 uses
  %i.ap = fcmp olt <2 x float> %i.ag, %i.am
  %i.aq = select <2 x i1> %i.ap, <2 x float> %i.am, <2 x float> %i.ag
  %i.ar = fsub <2 x float> %i.aq, %i.ao
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ao, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.ar, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atanf(float noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !24
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !22
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !24
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.x = load i64, ptr %.0911.i.i.i, align 4, !tbaa !24, !alias.scope !68, !noalias !67
  store i64 %i.x, ptr %.012.i.i.i, align 4, !tbaa !24, !alias.scope !67, !noalias !68
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !65

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #22
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 5 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm:bb.a

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i, align 4, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store i32 -1, ptr %i.x, align 4, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.y, align 4, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 44
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i32 0, ptr %i.aa, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 52
  store i32 -1, ptr %i.ab, align 4, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ac, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store i32 -1, ptr %i.af, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 84
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ag, align 4, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 100
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i32 0, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 108
  store i32 -1, ptr %i.aj, align 4, !tbaa !14
  %i.ak = add nsw i64 %.01012.i.i.i, -4           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !70

_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !18
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 329406144173384850) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 28
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i31.prol, align 4, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 20
  store i32 0, ptr %i.at, align 4, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24
  store i32 -1, ptr %i.au, align 4, !tbaa !14
  %i.av = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 28 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !71

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i31, align 4, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  store float 0.000000e+00, ptr %i.ay, align 4, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  store i32 -1, ptr %i.ba, align 4, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bb, align 4, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 44
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i32 0, ptr %i.bd, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 52
  store i32 -1, ptr %i.be, align 4, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bf, align 4, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 76
  store i32 0, ptr %i.bh, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store i32 -1, ptr %i.bi, align 4, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 84
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bj, align 4, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 100
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  store i32 0, ptr %i.bl, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store i32 -1, ptr %i.bm, align 4, !tbaa !14
  %i.bn = add nsw i64 %.01012.i.i.i32, -4         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !70

_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i, i64 28, i1 false), !tbaa.struct !77, !alias.scope !78
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 28 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 28
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !75

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #22
  br label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !19
  %i.bu = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw [28 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"_ZTSN2cv6Point_IfEE", !8, i64 0, !8, i64 4}
!10 = !{!"_ZTSN2cv8KeyPointE", !9, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !5, i64 20, !5, i64 24}
!11 = !{!10, !8, i64 8}
!12 = !{!10, !8, i64 16}
!13 = !{!10, !5, i64 20}
!14 = !{!10, !5, i64 24}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 _ZTSN2cv8KeyPointE", !15, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !16, i64 0}
!20 = !{!"p1 _ZTSN2cv6Point_IfEE", !15, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!21, !20, i64 8}
!23 = !{!21, !20, i64 0}
!24 = !{!8, !8, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!5, !5, i64 0}
!27 = !{!"p1 omnipotent char", !15, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!29 = !{!"long", !4, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !29, i64 8, !4, i64 16}
!31 = !{!30, !27, i64 0}
!32 = !{!4, !4, i64 0}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !15, i64 0}
!35 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !34, i64 0, !5, i64 8}
!36 = !{!35, !5, i64 8}
!37 = !{!9, !8, i64 4}
!38 = !{!"_ZTSN2cv5Size_IfEE", !8, i64 0, !8, i64 4}
!39 = !{!"_ZTSN2cv11RotatedRectE", !9, i64 0, !38, i64 8, !8, i64 16}
!40 = !{!39, !8, i64 16}
!41 = !{!"branch_weights", i32 1, i32 1048575}
!42 = !{!39, !8, i64 12}
!43 = !{!39, !8, i64 8}
!44 = !{!39, !8, i64 0}
!45 = !{!9, !8, i64 0}
!46 = !{!39, !8, i64 4}
!47 = !{!10, !8, i64 0}
!48 = !{!10, !8, i64 4}
!49 = !{!10, !8, i64 12}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !33}
!53 = !{!"p1 int", !15, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!56 = !{!55, !53, i64 8}
!57 = !{!55, !53, i64 0}
!58 = !{!28, !27, i64 0}
!59 = !{!29, !29, i64 0}
!60 = !{!30, !29, i64 8}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, i1 false, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!63 = distinct !{!63, !62, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!64 = distinct !{!64, !62, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!65 = distinct !{!65, !25}
!66 = !{!21, !20, i64 16}
!67 = !{!63}
!68 = !{!64}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, i1 false, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_"}
!73 = distinct !{!73, !72, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!74 = distinct !{!74, !72, !"_ZSt19__relocate_object_aIN2cv8KeyPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!75 = distinct !{!75, !25}
!76 = !{!17, !16, i64 16}
!77 = !{i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 4, !24, i64 12, i64 4, !24, i64 16, i64 4, !24, i64 20, i64 4, !26, i64 24, i64 4, !26}
!78 = !{!74, !73}
end_hunk_1
