inline.NumInlined: 71
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dt_color_picker_helper:bb.a
  %i.sv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.sx = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %9) #14 ; 0 uses
  %i.sy = load <2 x i64>, ptr %9, align 16, !tbaa !134 ; 2 uses
  %i.sz = shufflevector <2 x i64> %i.sy, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.ta = insertelement <2 x i64> %i.sz, i64 %i.su, i64 0
  %i.tb = sitofp <2 x i64> %i.ta to <2 x double>
  %i.tc = insertelement <2 x i64> %i.sy, i64 %i.sw, i64 0
  %i.td = sitofp <2 x i64> %i.tc to <2 x double>
  %i.te = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.td, splat (double f0x3EB0C6F7A0B5ED8D)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.tf = fsub reassoc nsz arcp contract afn <2 x double> %i.tb, %i.y
  %i.tg = fadd reassoc nsz arcp contract afn <2 x double> %i.tf, %i.te ; 2 uses
  %i.th = extractelement <2 x double> %i.tg, i64 0
  %i.ti = extractelement <2 x double> %i.tg, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, i32 noundef %i.sj, i32 noundef %i.sl, i32 noundef %6, i32 noundef %7, i64 noundef %i.sr, i32 noundef %4, double noundef %i.th, double noundef %i.ti) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_picker_work_4ch(ptr noundef %0, i32 %.8.val, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !60   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !60
  %i.j = load i32, ptr %1, align 4, !tbaa !60     ; 2 uses
  %i.k = sub nsw i32 %i.i, %i.j                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = shl nsw i32 %.8.val, 2
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i32 %i.j, 2
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.r = icmp ult i32 %i.g, %i.e
  br i1 %i.r, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = sext i32 %i.g to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.t = load <4 x float>, ptr %i.a, align 16, !tbaa !61
  %i.u = load <4 x float>, ptr %i.b, align 16, !tbaa !61
  %i.v = load <4 x float>, ptr %i.c, align 16, !tbaa !61
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.x = phi <8 x float> [ %i.w, %.preheader.loopexit ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ]
  %i.y = phi <4 x float> [ %i.t, %.preheader.loopexit ], [ zeroinitializer, %bb.a ]
  %i.z = sub nsw i32 %i.e, %i.g
  %i.aa = mul nsw i32 %i.k, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = uitofp reassoc nsz arcp contract afn i64 %i.ab to float
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fdiv reassoc nsz arcp contract afn <4 x float> %i.y, %i.af
  store <4 x float> %i.ag, ptr %2, align 4, !tbaa !61
  store <8 x float> %i.x, ptr %i.ad, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0291 = phi i64 [ %i.ai, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.ah = mul i64 %.0291, %i.o
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ah
  call void %4(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %gep, i64 noundef %i.m, ptr noundef %3) #14, !callees !181
  %i.ai = add nuw i64 %.0291, 1                   ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !60
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph, label %.preheader.loopexit
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_picker_nomat(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = load i32, ptr %4, align 64, !tbaa !182
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = tail call ptr @dt_colorspaces_get_profile(i32 noundef %i.b, ptr noundef nonnull %i.c, i32 noundef 1) #14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1032
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184
  %i.g = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str.5, i32 noundef 63) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 516
  %i.k = load i32, ptr %i.j, align 4, !tbaa !186
  %i.l = tail call ptr @cmsCreateTransform(ptr noundef %i.f, i32 noundef 4456604, ptr noundef %i.i, i32 noundef 4849820, i32 noundef %i.k, i32 noundef 0) #14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !60   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !60   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !60   ; 2 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !60
  %i.t = icmp ult i32 %i.p, %i.n
  br i1 %i.t, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %bb.a
  %i.u = sext i32 %i.p to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

._crit_edge100:                                   ; preds = %._crit_edge, %bb.a
  %i.x = phi <8 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ], [ %i.at, %._crit_edge ]
  %i.y = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.au, %._crit_edge ]
  %i.z = sub nsw i32 %i.r, %i.s
  %i.aa = sub nsw i32 %i.n, %i.p
  %i.ab = mul nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  call void @cmsDeleteTransform(ptr noundef %i.l) #14
  %i.ad = uitofp reassoc nsz arcp contract afn i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = fdiv reassoc nsz arcp contract afn <4 x float> %i.y, %i.ag
  store <4 x float> %i.ah, ptr %3, align 4, !tbaa !61
  store <8 x float> %i.x, ptr %i.ae, align 4, !tbaa !61
  ret void

bb.b:                                             ; preds = %.lr.ph99, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.lr.ph99 ], [ %i.ar, %._crit_edge ]
  %i.aj = phi i32 [ %i.r, %.lr.ph99 ], [ %i.as, %._crit_edge ] ; 2 uses
  %.03297 = phi i64 [ %i.u, %.lr.ph99 ], [ %i.av, %._crit_edge ] ; 2 uses
  %i.ak = phi <4 x float> [ splat (float f0x7F7FFFFF), %.lr.ph99 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %i.al = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph99 ], [ %i.az, %._crit_edge ] ; 2 uses
  %i.am = phi <4 x float> [ zeroinitializer, %.lr.ph99 ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.an = load i32, ptr %2, align 4, !tbaa !60    ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.aj
  %i.ap = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.aq = sext i32 %i.an to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.m, align 4, !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ar = phi i32 [ %i.ai, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.as = phi i32 [ %i.aj, %bb.b ], [ %i.ei, %._crit_edge.loopexit ]
  %i.at = phi <8 x float> [ %i.ap, %bb.b ], [ %i.eg, %._crit_edge.loopexit ] ; 3 uses
  %i.au = phi <4 x float> [ %i.am, %bb.b ], [ %i.ea, %._crit_edge.loopexit ] ; 2 uses
  %i.av = add i64 %.03297, 1                      ; 2 uses
  %i.aw = sext i32 %i.ar to i64
  %i.ax = icmp ult i64 %i.av, %i.aw
  %i.ay = shufflevector <8 x float> %i.at, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = shufflevector <8 x float> %i.at, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br i1 %i.ax, label %bb.b, label %._crit_edge100

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03168 = phi i64 [ %i.eh, %.lr.ph ], [ %i.aq, %.lr.ph.preheader ] ; 2 uses
  %i.ba = phi <4 x float> [ %i.el, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %i.bb = phi <4 x float> [ %i.em, %.lr.ph ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi <4 x float> [ %i.ea, %.lr.ph ], [ %i.am, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.bd = load i32, ptr %i.v, align 4, !tbaa !113
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %.03297, %i.be
  %i.bg = add i64 %i.bf, %.03168
  %.idx = shl i64 %i.bg, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  call void @cmsDoTransform(ptr noundef %i.l, ptr noundef %i.bh, ptr noundef nonnull %i.a, i32 noundef 1) #14
  %i.bi = load float, ptr %i.a, align 16, !tbaa !61
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, 8.620690e-03
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, f0x3E0D3DCB ; 6 uses
  %5 = fcmp reassoc nsz arcp contract afn ogt float %i.bk, f0x3E53DCB1
  %6 = fmul reassoc nsz arcp contract afn float %i.bk, %i.bk
  %7 = fmul reassoc nsz arcp contract afn float %6, %i.bk
  %8 = fmul reassoc nsz arcp contract afn float %i.bk, f0x3E038026
  %9 = fadd reassoc nsz arcp contract afn float %8, f0xBC911AA6
  %10 = select reassoc nsz arcp contract afn i1 %5, float %7, float %9 ; 3 uses
  %i.bl = fmul reassoc nsz arcp contract afn float %10, 2.303930e-02
  %.reass52 = fmul reassoc nsz arcp contract afn float %10, f0x3F2AA3C6
  %i.bm = fmul reassoc nsz arcp contract afn float %10, 2.048300e-02
  %11 = load <2 x float>, ptr %i.w, align 4, !tbaa !61
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %11, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %12 = insertelement <2 x float> poison, float %i.bk, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %14 = fadd reassoc nsz arcp contract afn <2 x float> %13, %i.bn
  %15 = fsub reassoc nsz arcp contract afn <2 x float> %13, %i.bn
  %16 = shufflevector <2 x float> %14, <2 x float> %15, <2 x i32> <i32 0, i32 3> ; 5 uses
  %17 = fcmp reassoc nsz arcp contract afn ogt <2 x float> %16, splat (float f0x3E53DCB1)
  %18 = fmul reassoc nsz arcp contract afn <2 x float> %16, %16
  %19 = fmul reassoc nsz arcp contract afn <2 x float> %18, %16
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %16, splat (float f0x3E038026)
  %20 = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float f0xBC911AA6)
  %21 = select <2 x i1> %17, <2 x float> %19, <2 x float> %20 ; 3 uses
  %i.bp = extractelement <2 x float> %21, i64 0   ; 2 uses
  %22 = fmul reassoc nsz arcp contract afn float %i.bp, f0x3F6BDEB5
  %23 = fsub reassoc nsz arcp contract afn float %22, %i.bl
  %24 = extractelement <2 x float> %21, i64 1     ; 2 uses
  %25 = fmul reassoc nsz arcp contract afn float %24, f0x3D556AA4
  %i.bq = fadd reassoc nsz arcp contract afn float %23, %25 ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.bp, f0xBC937A4A
  %26 = fadd reassoc nsz arcp contract afn float %i.br, %.reass52
  %.reass = fmul reassoc nsz arcp contract afn float %24, f0x3C3B638A
  %27 = fadd reassoc nsz arcp contract afn float %26, %.reass
  %28 = fmul reassoc nsz arcp contract afn <2 x float> %21, <float f0x3C4247BE, float f0x3F8C6BE4> ; 2 uses
  %29 = extractelement <2 x float> %28, i64 0
  %30 = fsub reassoc nsz arcp contract afn float %29, %i.bm
  %31 = extractelement <2 x float> %28, i64 1
  %32 = fadd reassoc nsz arcp contract afn float %30, %31 ; 3 uses
  %33 = fmul reassoc nsz arcp contract afn float %i.bq, 1.150000e+00
  %34 = fmul reassoc nsz arcp contract afn float %32, f0x3E199998
  %35 = fsub reassoc nsz arcp contract afn float %33, %34 ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bq, f0x3EAE147A
  %36 = fadd reassoc nsz arcp contract afn float %27, %i.bs ; 2 uses
  %.reass56 = fmul reassoc nsz arcp contract afn float %35, f0x3ED45F51
  %37 = fmul reassoc nsz arcp contract afn float %36, 5.799990e-01
  %38 = fmul reassoc nsz arcp contract afn float %32, 1.464800e-02
  %i.bt = fadd reassoc nsz arcp contract afn float %.reass56, %38
  %39 = fadd reassoc nsz arcp contract afn float %i.bt, %37
  %40 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %39, float 0.000000e+00)
  %41 = fmul reassoc nnan nsz arcp contract afn float %40, f0x38D1B717
  %i.bu = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %41, float f0x3E232000) ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, f0x4196D000
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, f0x3F560000
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bu, 1.868750e+01
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, 1.000000e+00
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bw, %i.by
  %i.ca = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bz, float f0x430608CD) ; 3 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, 3.524000e+00
  %i.cc = fmul reassoc nsz arcp contract afn float %i.ca, 1.990760e-01
  %i.cd = insertelement <2 x float> poison, float %35, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul reassoc nsz arcp contract afn <2 x float> %i.ce, <float -2.015100e-01, float -1.660080e-02>
  %42 = insertelement <2 x float> poison, float %36, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %43, <float f0x3F8F716D, float 2.648000e-01>
  %44 = insertelement <2 x float> poison, float %32, i64 0
  %i.ch = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul reassoc nsz arcp contract afn <2 x float> %i.ch, <float 5.310080e-02, float f0x3F2B2180>
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.cf, %i.ci
  %i.ck = fadd reassoc nsz arcp contract afn <2 x float> %i.cj, %i.cg
  %i.cl = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ck, <2 x float> zeroinitializer)
  %45 = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cl, splat (float f0x38D1B717)
  %i.cm = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %45, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, splat (float f0x4196D000)
  %i.co = fadd reassoc nsz arcp contract afn <2 x float> %i.cn, splat (float f0x3F560000)
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, splat (float 1.868750e+01)
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float 1.000000e+00)
  %i.cr = fdiv reassoc nsz arcp contract afn <2 x float> %i.co, %i.cq
  %i.cs = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.cr, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.ca
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, 5.000000e-01
  %i.cw = extractelement <2 x float> %i.cs, i64 1 ; 2 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, 0.000000e+00
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cv, %i.cx ; 2 uses
  %i.cz = fmul reassoc nsz arcp contract afn float %i.ct, f0x40822279
  %i.da = fsub reassoc nsz arcp contract afn float %i.cb, %i.cz
  %i.db = fmul reassoc nsz arcp contract afn float %i.cw, 5.427080e-01
  %i.dc = fadd reassoc nsz arcp contract afn float %i.da, %i.db ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, <float f0x3F8C63E9, float f0xBFA5DF3B> ; 2 uses
  %i.de = extractelement <2 x float> %i.dd, i64 0
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.cc
  %i.dg = extractelement <2 x float> %i.dd, i64 1
  %i.dh = fadd reassoc nsz arcp contract afn float %i.df, %i.dg ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn float %i.cy, 4.400000e-01
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cy, 5.600000e-01
  %i.dk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dj
  %i.dl = fdiv reassoc nsz arcp contract afn float %i.di, %i.dk
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, -1.629550e-11
  %i.dn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dm, float 0.000000e+00)
  %i.do = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.dh, float %i.dc)
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, f0x3E22F983 ; 3 uses
  %i.dq = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.dc, float noundef %i.dh) #15
  %i.dr = fcmp reassoc nsz arcp contract afn oge float %i.dp, 0.000000e+00
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dp, 1.000000e+00
  %i.dt = select reassoc nsz arcp contract afn i1 %i.dr, float %i.dp, float %i.ds ; 3 uses
  %i.du = fcmp reassoc nsz arcp contract afn olt float %i.dt, 5.000000e-01
  %.v.i = select i1 %i.du, float 5.000000e-01, float -5.000000e-01
  %i.dv = fadd reassoc nsz arcp contract afn float %.v.i, %i.dt
  %i.dw = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.dq, i64 1
  %i.dy = insertelement <4 x float> %i.dx, float %i.dt, i64 2
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 3 ; 4 uses
  %i.ea = fadd reassoc nsz arcp contract afn <4 x float> %i.dz, %i.bc ; 2 uses
  %i.eb = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ba, %i.dz
  %i.ec = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bb, %i.dz
  %i.ed = shufflevector <4 x i1> %i.eb, <4 x i1> %i.ec, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = shufflevector <4 x float> %i.ba, <4 x float> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ef = shufflevector <4 x float> %i.dz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eg = select <8 x i1> %i.ed, <8 x float> %i.ee, <8 x float> %i.ef ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.eh = add nuw i64 %.03168, 1                  ; 2 uses
  %i.ei = load i32, ptr %i.q, align 4, !tbaa !60  ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp ult i64 %i.eh, %i.ej
  %i.el = shufflevector <8 x float> %i.eg, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.em = shufflevector <8 x float> %i.eg, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br i1 %i.ek, label %.lr.ph, label %._crit_edge.loopexit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_color_picker_jzczhz(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) #5 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %5, null
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 896 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 768
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 852
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 712
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 704
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 772
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 776
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 720
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 780
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 784
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 788
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 728
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 792
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 796
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 800
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 912 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 928 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 900
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 916
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 932
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %rgb_to_JzCzhz.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %rgb_to_JzCzhz.exit
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.jn, %rgb_to_JzCzhz.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.020 ; 8 uses
  br i1 %.not.i, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !187
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load i32, ptr %i.e, align 64, !tbaa !188 ; 2 uses
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sitofp reassoc nsz arcp contract afn i32 %i.ag to float ; 9 uses
  %i.ai = add nsw i32 %i.af, -2
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %i.ai to float ; 6 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !189 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !61
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = load float, ptr %i.ad, align 4, !tbaa !61 ; 4 uses
  br i1 %i.am, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.an, 1.000000e+00
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = fmul reassoc nsz arcp contract afn float %i.an, %i.ah ; 3 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt float %i.ap, 0.000000e+00
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.ap, %i.ah
  %..i.i.i.i = select reassoc nsz arcp contract afn i1 %i.ar, float %i.ap, float %i.ah
  %i.as = select reassoc nsz arcp contract afn i1 %i.aq, float %..i.i.i.i, float 0.000000e+00 ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.as, %i.aj
  %i.au = select reassoc nsz arcp contract afn i1 %i.at, float %i.as, float %i.aj
  %i.av = fptosi float %i.au to i32               ; 2 uses
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %i.av to float
  %i.ax = fsub reassoc nnan nsz arcp contract afn float %i.as, %i.aw
  %i.ay = sext i32 %i.av to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ay ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !61 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !61
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.ax
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.ba
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bg = load float, ptr %i.f, align 4, !tbaa !61
  %i.bh = load float, ptr %i.b, align 64, !tbaa !61
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.an
  %i.bj = load float, ptr %i.g, align 8, !tbaa !61
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bi, float %i.bj)
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.bm = phi reassoc nsz arcp contract afn float [ %i.bl, %bb.g ], [ %i.bf, %bb.f ], [ %i.an, %bb.d ] ; 2 uses
  %i.bn = load ptr, ptr %i.h, align 16, !tbaa !189 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !61
  %i.bp = fcmp reassoc nsz arcp contract afn ult float %i.bo, 0.000000e+00
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !61 ; 4 uses
  br i1 %i.bp, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.br, 1.000000e+00
  br i1 %i.bs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = load float, ptr %i.j, align 16, !tbaa !61
  %i.bu = load float, ptr %i.i, align 4, !tbaa !61
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.br
  %i.bw = load float, ptr %i.k, align 4, !tbaa !61
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float %i.bw)
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, %i.bt
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bz = fmul reassoc nsz arcp contract afn float %i.br, %i.ah ; 3 uses
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, 0.000000e+00
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.bz, %i.ah
  %..i.1.i.i.i = select reassoc nsz arcp contract afn i1 %i.cb, float %i.bz, float %i.ah
  %i.cc = select reassoc nsz arcp contract afn i1 %i.ca, float %..i.1.i.i.i, float 0.000000e+00 ; 3 uses
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.cc, %i.aj
  %i.ce = select reassoc nsz arcp contract afn i1 %i.cd, float %i.cc, float %i.aj
  %i.cf = fptosi float %i.ce to i32               ; 2 uses
  %i.cg = sitofp reassoc nsz arcp contract afn i32 %i.cf to float
  %i.ch = fsub reassoc nnan nsz arcp contract afn float %i.cc, %i.cg
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.ci ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !61 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cj, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !61
  %i.cn = fsub reassoc nsz arcp contract afn float %i.cm, %i.ck
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.ch
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %i.ck
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.cq = phi reassoc nsz arcp contract afn float [ %i.by, %bb.j ], [ %i.cp, %bb.k ], [ %i.br, %bb.h ] ; 2 uses
  %i.cr = load ptr, ptr %i.l, align 8, !tbaa !189 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !61
  %i.ct = fcmp reassoc nsz arcp contract afn ult float %i.cs, 0.000000e+00
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !61 ; 4 uses
  br i1 %i.ct, label %dt_ioppr_apply_trc.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = fcmp reassoc nsz arcp contract afn olt float %i.cv, 1.000000e+00
  br i1 %i.cw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = load float, ptr %i.n, align 4, !tbaa !61
  %i.cy = load float, ptr %i.m, align 8, !tbaa !61
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.cv
  %i.da = load float, ptr %i.o, align 32, !tbaa !61
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cz, float %i.da)
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.cx
  br label %dt_ioppr_apply_trc.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.dd = fmul reassoc nsz arcp contract afn float %i.cv, %i.ah ; 3 uses
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.dd, 0.000000e+00
  %i.df = fcmp reassoc nsz arcp contract afn olt float %i.dd, %i.ah
  %..i.2.i.i.i = select reassoc nsz arcp contract afn i1 %i.df, float %i.dd, float %i.ah
  %i.dg = select reassoc nsz arcp contract afn i1 %i.de, float %..i.2.i.i.i, float 0.000000e+00 ; 3 uses
  %i.dh = fcmp reassoc nsz arcp contract afn olt float %i.dg, %i.aj
  %i.di = select reassoc nsz arcp contract afn i1 %i.dh, float %i.dg, float %i.aj
  %i.dj = fptosi float %i.di to i32               ; 2 uses
  %i.dk = sitofp reassoc nsz arcp contract afn i32 %i.dj to float
  %i.dl = fsub reassoc nnan nsz arcp contract afn float %i.dg, %i.dk
  %i.dm = sext i32 %i.dj to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dm ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !61 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dn, i64 4
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !61
  %i.dr = fsub reassoc nsz arcp contract afn float %i.dq, %i.do
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.dl
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.do
  br label %dt_ioppr_apply_trc.exit.i.i

dt_ioppr_apply_trc.exit.i.i:                      ; preds = %bb.o, %bb.n, %bb.l
  %i.du = phi reassoc nsz arcp contract afn float [ %i.dc, %bb.n ], [ %i.dt, %bb.o ], [ %i.cv, %bb.l ] ; 2 uses
  %i.dv = load float, ptr %i.a, align 64, !tbaa !61
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %i.bm
  %i.dx = load float, ptr %i.p, align 16, !tbaa !61
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.cq
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dw
  %i.ea = load float, ptr %i.q, align 32, !tbaa !61
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.du
  %i.ec = fadd reassoc nsz arcp contract afn float %i.dz, %i.eb
  br label %dt_ioppr_rgb_matrix_to_xyz.exit.i

bb.p:                                             ; preds = %bb.c
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ef = load float, ptr %i.a, align 4, !tbaa !61
  %i.eg = load float, ptr %i.ad, align 4, !tbaa !61 ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.ef
  %i.ei = load float, ptr %i.p, align 4, !tbaa !61
  %i.ej = load float, ptr %i.ed, align 4, !tbaa !61 ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.ei
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.eh
  %i.em = load float, ptr %i.q, align 4, !tbaa !61
  %i.en = load float, ptr %i.ee, align 4, !tbaa !61 ; 2 uses
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, %i.em
  %i.ep = fadd reassoc nsz arcp contract afn float %i.el, %i.eo
  br label %dt_ioppr_rgb_matrix_to_xyz.exit.i

dt_ioppr_rgb_matrix_to_xyz.exit.i:                ; preds = %bb.p, %dt_ioppr_apply_trc.exit.i.i
  %.sink46.i = phi float [ %i.bm, %dt_ioppr_apply_trc.exit.i.i ], [ %i.eg, %bb.p ]
  %.sink44.i = phi float [ %i.cq, %dt_ioppr_apply_trc.exit.i.i ], [ %i.ej, %bb.p ]
  %.sink40.i = phi float [ %i.du, %dt_ioppr_apply_trc.exit.i.i ], [ %i.en, %bb.p ]
  %.sroa.0.0.i = phi nsz float [ %i.ec, %dt_ioppr_apply_trc.exit.i.i ], [ %i.ep, %bb.p ] ; 2 uses
  %i.eq = load <2 x float>, ptr %i.r, align 4, !tbaa !61
  %i.er = insertelement <2 x float> poison, float %.sink46.i, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul reassoc nsz arcp contract afn <2 x float> %i.eq, %i.es
  %i.eu = load <2 x float>, ptr %i.s, align 4, !tbaa !61
  %i.ev = insertelement <2 x float> poison, float %.sink44.i, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul reassoc nsz arcp contract afn <2 x float> %i.eu, %i.ew
  %i.ey = fadd reassoc nsz arcp contract afn <2 x float> %i.ex, %i.et
  %i.ez = load <2 x float>, ptr %i.t, align 4, !tbaa !61
  %i.fa = insertelement <2 x float> poison, float %.sink40.i, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fb
  %i.fd = fadd reassoc nsz arcp contract afn <2 x float> %i.ey, %i.fc ; 2 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, f0x3F74A0AB
  %i.ff = extractelement <2 x float> %i.fd, i64 0
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, 2.303930e-02
  %i.fh = fsub reassoc nsz arcp contract afn float %i.fe, %i.fg
  br label %rgb_to_JzCzhz.exit

bb.q:                                             ; preds = %bb.b
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.fj = load float, ptr %i.ad, align 4, !tbaa !61 ; 2 uses
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, f0x3F74A0AB
  %i.fl = load <2 x float>, ptr %i.fi, align 4, !tbaa !61 ; 2 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 0
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, 2.303930e-02
  %i.fo = fsub reassoc nsz arcp contract afn float %i.fk, %i.fn
  br label %rgb_to_JzCzhz.exit

rgb_to_JzCzhz.exit:                               ; preds = %dt_ioppr_rgb_matrix_to_xyz.exit.i, %bb.q
  %.sink60.i = phi float [ %i.fo, %bb.q ], [ %i.fh, %dt_ioppr_rgb_matrix_to_xyz.exit.i ]
  %.sink59.i = phi float [ %i.fj, %bb.q ], [ %.sroa.0.0.i, %dt_ioppr_rgb_matrix_to_xyz.exit.i ] ; 2 uses
  %i.fp = phi <2 x float> [ %i.fl, %bb.q ], [ %i.fd, %dt_ioppr_rgb_matrix_to_xyz.exit.i ] ; 3 uses
  %i.fq = extractelement <2 x float> %i.fp, i64 1 ; 2 uses
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, 6.316360e-02
  %i.fs = fadd reassoc nsz arcp contract afn float %.sink60.i, %i.fr ; 2 uses
  %.reass10 = fmul reassoc nsz arcp contract afn float %.sink59.i, f0xBC98F413
  %i.ft = extractelement <2 x float> %i.fp, i64 0 ; 2 uses
  %.reass = fmul reassoc nsz arcp contract afn float %i.ft, f0x3F2AA3C6
  %.reass9 = fmul reassoc nsz arcp contract afn float %i.fq, f0x3C632A5F
  %i.fu = fadd reassoc nsz arcp contract afn float %.reass10, %.reass9
  %6 = fadd reassoc nsz arcp contract afn float %i.fu, %.reass
  %i.fv = fmul reassoc nsz arcp contract afn float %.sink59.i, 1.229820e-02
  %i.fw = fmul reassoc nsz arcp contract afn float %i.ft, 2.048300e-02
  %7 = fsub reassoc nsz arcp contract afn float %i.fv, %i.fw
  %8 = fmul reassoc nsz arcp contract afn float %i.fs, 1.150000e+00
  %i.fx = insertelement <2 x float> %i.fp, float %i.fs, i64 0
  %i.fy = fmul reassoc nsz arcp contract afn <2 x float> %i.fx, <float f0x3EAE147A, float f0x3FAA3A7C>
  %i.fz = insertelement <2 x float> poison, float %6, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %7, i64 1
  %i.gb = fadd reassoc nsz arcp contract afn <2 x float> %i.ga, %i.fy ; 4 uses
  %i.gc = extractelement <2 x float> %i.gb, i64 1 ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.gc, f0x3E199998
  %i.ge = fsub reassoc nsz arcp contract afn float %8, %i.gd ; 2 uses
  %.reass11 = fmul reassoc nsz arcp contract afn float %i.ge, f0x3ED45F51
  %i.gf = extractelement <2 x float> %i.gb, i64 0
  %.reass13 = fmul reassoc nsz arcp contract afn float %i.gf, 5.799990e-01
  %.reass12 = fmul reassoc nsz arcp contract afn float %i.gc, 1.464800e-02
  %i.gg = fadd reassoc nsz arcp contract afn float %.reass13, %.reass12
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, %.reass11
  %i.gi = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul reassoc nsz arcp contract afn <2 x float> %i.gj, <float -1.660080e-02, float -2.015100e-01>
  %i.gl = fmul reassoc nsz arcp contract afn <2 x float> %i.gb, <float 2.648000e-01, float 5.310080e-02>
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gb, <float f0x3F8F716D, float f0x3F2B2180>
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.go = fadd reassoc nsz arcp contract afn <2 x float> %i.gl, %i.gn
  %i.gp = fadd reassoc nsz arcp contract afn <2 x float> %i.go, %i.gk
  %i.gq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gh, float 0.000000e+00)
  %9 = fmul reassoc nnan nsz arcp contract afn float %i.gq, f0x38D1B717
  %i.gr = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %9, float f0x3E232000) ; 2 uses
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, f0x4196D000
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, f0x3F560000
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gr, 1.868750e+01
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, 1.000000e+00
  %i.gw = fdiv reassoc nsz arcp contract afn float %i.gt, %i.gv
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gw, float f0x430608CD) ; 3 uses
  %i.gy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gp, <2 x float> zeroinitializer)
  %10 = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.gy, splat (float f0x38D1B717)
  %i.gz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %10, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.ha = fmul reassoc nsz arcp contract afn <2 x float> %i.gz, splat (float f0x4196D000)
  %i.hb = fadd reassoc nsz arcp contract afn <2 x float> %i.ha, splat (float f0x3F560000)
  %i.hc = fmul reassoc nsz arcp contract afn <2 x float> %i.gz, splat (float 1.868750e+01)
  %i.hd = fadd reassoc nsz arcp contract afn <2 x float> %i.hc, splat (float 1.000000e+00)
  %i.he = fdiv reassoc nsz arcp contract afn <2 x float> %i.hb, %i.hd
  %i.hf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.he, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.hg = extractelement <2 x float> %i.hf, i64 1 ; 2 uses
  %i.hh = fadd reassoc nsz arcp contract afn float %i.hg, %i.gx
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hh, 5.000000e-01
  %i.hj = extractelement <2 x float> %i.hf, i64 0 ; 2 uses
  %i.hk = fmul reassoc nsz arcp contract afn float %i.hj, 0.000000e+00
  %i.hl = fadd reassoc nsz arcp contract afn float %i.hi, %i.hk ; 2 uses
  %i.hm = fmul reassoc nsz arcp contract afn float %i.gx, 3.524000e+00
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hg, f0x40822279
  %i.ho = fsub reassoc nsz arcp contract afn float %i.hm, %i.hn
  %i.hp = fmul reassoc nsz arcp contract afn float %i.hj, 5.427080e-01
  %i.hq = fadd reassoc nsz arcp contract afn float %i.ho, %i.hp ; 2 uses
  %i.hr = fmul reassoc nsz arcp contract afn float %i.gx, 1.990760e-01
  %i.hs = fmul reassoc nsz arcp contract afn <2 x float> %i.hf, <float f0xBFA5DF3B, float f0x3F8C63E9> ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 1
  %i.hu = fadd reassoc nsz arcp contract afn float %i.ht, %i.hr
  %i.hv = extractelement <2 x float> %i.hs, i64 0
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hu, %i.hv ; 2 uses
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hl, 4.400000e-01
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hl, 5.600000e-01
  %i.hz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hy
  %i.ia = fdiv reassoc nsz arcp contract afn float %i.hx, %i.hz
  %i.ib = fadd reassoc nsz arcp contract afn float %i.ia, -1.629550e-11
  %i.ic = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ib, float 0.000000e+00) ; 5 uses
  %i.id = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.hw, float %i.hq)
  %i.ie = fmul reassoc nsz arcp contract afn float %i.id, f0x3E22F983 ; 3 uses
  %i.if = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.hq, float noundef %i.hw) #15 ; 5 uses
  %i.ig = fcmp reassoc nsz arcp contract afn oge float %i.ie, 0.000000e+00
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ie, 1.000000e+00
  %i.ii = select reassoc nsz arcp contract afn i1 %i.ig, float %i.ie, float %i.ih ; 7 uses
  %i.ij = fcmp reassoc nsz arcp contract afn olt float %i.ii, 5.000000e-01
  %.v.i = select i1 %i.ij, float 5.000000e-01, float -5.000000e-01
  %i.ik = fadd reassoc nsz arcp contract afn float %.v.i, %i.ii ; 5 uses
  %i.il = load float, ptr %0, align 4, !tbaa !61
  %i.im = fadd reassoc nsz arcp contract afn float %i.ic, %i.il
  store float %i.im, ptr %0, align 4, !tbaa !61
  %i.in = load float, ptr %1, align 4, !tbaa !61  ; 2 uses
  %i.io = fcmp reassoc nsz arcp contract afn olt float %i.in, %i.ic
  %..i.i = select reassoc nsz arcp contract afn i1 %i.io, float %i.in, float %i.ic
  store float %..i.i, ptr %1, align 4, !tbaa !61
  %i.ip = load float, ptr %2, align 4, !tbaa !61  ; 2 uses
  %i.iq = fcmp reassoc nsz arcp contract afn ogt float %i.ip, %i.ic
  %i.ir = select reassoc nsz arcp contract afn i1 %i.iq, float %i.ip, float %i.ic
  store float %i.ir, ptr %2, align 4, !tbaa !61
  %i.is = load float, ptr %i.u, align 4, !tbaa !61
  %i.it = fadd reassoc nsz arcp contract afn float %i.is, %i.if
  store float %i.it, ptr %i.u, align 4, !tbaa !61
  %i.iu = load float, ptr %i.v, align 4, !tbaa !61 ; 2 uses
  %i.iv = fcmp reassoc nsz arcp contract afn olt float %i.iu, %i.if
  %..i.1.i = select reassoc nsz arcp contract afn i1 %i.iv, float %i.iu, float %i.if
  store float %..i.1.i, ptr %i.v, align 4, !tbaa !61
  %i.iw = load float, ptr %i.w, align 4, !tbaa !61 ; 2 uses
  %i.ix = fcmp reassoc nsz arcp contract afn ogt float %i.iw, %i.if
  %i.iy = select reassoc nsz arcp contract afn i1 %i.ix, float %i.iw, float %i.if
  store float %i.iy, ptr %i.w, align 4, !tbaa !61
  %i.iz = load float, ptr %i.x, align 4, !tbaa !61
  %i.ja = fadd reassoc nsz arcp contract afn float %i.ii, %i.iz
  store float %i.ja, ptr %i.x, align 4, !tbaa !61
  %i.jb = load float, ptr %i.y, align 4, !tbaa !61 ; 2 uses
  %i.jc = fcmp reassoc nsz arcp contract afn olt float %i.jb, %i.ii
  %..i.2.i = select reassoc nsz arcp contract afn i1 %i.jc, float %i.jb, float %i.ii
  store float %..i.2.i, ptr %i.y, align 4, !tbaa !61
  %i.jd = load float, ptr %i.z, align 4, !tbaa !61 ; 2 uses
  %i.je = fcmp reassoc nsz arcp contract afn ogt float %i.jd, %i.ii
  %i.jf = select reassoc nsz arcp contract afn i1 %i.je, float %i.jd, float %i.ii
  store float %i.jf, ptr %i.z, align 4, !tbaa !61
  %i.jg = load float, ptr %i.aa, align 4, !tbaa !61
  %i.jh = fadd reassoc nsz arcp contract afn float %i.ik, %i.jg
  store float %i.jh, ptr %i.aa, align 4, !tbaa !61
  %i.ji = load float, ptr %i.ab, align 4, !tbaa !61 ; 2 uses
  %i.jj = fcmp reassoc nsz arcp contract afn olt float %i.ji, %i.ik
  %..i.3.i = select reassoc nsz arcp contract afn i1 %i.jj, float %i.ji, float %i.ik
  store float %..i.3.i, ptr %i.ab, align 4, !tbaa !61
  %i.jk = load float, ptr %i.ac, align 4, !tbaa !61 ; 2 uses
  %i.jl = fcmp reassoc nsz arcp contract afn ogt float %i.jk, %i.ik
  %i.jm = select reassoc nsz arcp contract afn i1 %i.jl, float %i.jk, float %i.ik
  store float %i.jm, ptr %i.ac, align 4, !tbaa !61
  %i.jn = add i64 %.020, 4                        ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %4
  br i1 %i.jo, label %bb.b, label %._crit_edge
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_color_picker_rgb_or_lab(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree readnone captures(none) %5) #6 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.01113 = phi i64 [ %i.at, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.01113 ; 4 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !61 ; 5 uses
  %i.l = load float, ptr %0, align 4, !tbaa !61
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.k
  store float %i.m, ptr %0, align 4, !tbaa !61
  %i.n = load float, ptr %1, align 4, !tbaa !61   ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.n, %i.k
  %..i = select reassoc nsz arcp contract afn i1 %i.o, float %i.n, float %i.k
  store float %..i, ptr %1, align 4, !tbaa !61
  %i.p = load float, ptr %2, align 4, !tbaa !61   ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, %i.k
  %i.r = select reassoc nsz arcp contract afn i1 %i.q, float %i.p, float %i.k
  store float %i.r, ptr %2, align 4, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !61 ; 5 uses
  %i.u = load float, ptr %i.a, align 4, !tbaa !61
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, %i.t
  store float %i.v, ptr %i.a, align 4, !tbaa !61
  %i.w = load float, ptr %i.b, align 4, !tbaa !61 ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, %i.t
  %..i.1 = select reassoc nsz arcp contract afn i1 %i.x, float %i.w, float %i.t
  store float %..i.1, ptr %i.b, align 4, !tbaa !61
  %i.y = load float, ptr %i.c, align 4, !tbaa !61 ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, %i.t
  %i.aa = select reassoc nsz arcp contract afn i1 %i.z, float %i.y, float %i.t
  store float %i.aa, ptr %i.c, align 4, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !61 ; 5 uses
  %i.ad = load float, ptr %i.d, align 4, !tbaa !61
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ad, %i.ac
  store float %i.ae, ptr %i.d, align 4, !tbaa !61
  %i.af = load float, ptr %i.e, align 4, !tbaa !61 ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.af, %i.ac
  %..i.2 = select reassoc nsz arcp contract afn i1 %i.ag, float %i.af, float %i.ac
  store float %..i.2, ptr %i.e, align 4, !tbaa !61
  %i.ah = load float, ptr %i.f, align 4, !tbaa !61 ; 2 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.ah, %i.ac
  %i.aj = select reassoc nsz arcp contract afn i1 %i.ai, float %i.ah, float %i.ac
  store float %i.aj, ptr %i.f, align 4, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.al = load float, ptr %i.ak, align 4, !tbaa !61 ; 5 uses
  %i.am = load float, ptr %i.g, align 4, !tbaa !61
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, %i.al
  store float %i.an, ptr %i.g, align 4, !tbaa !61
  %i.ao = load float, ptr %i.h, align 4, !tbaa !61 ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, %i.al
  %..i.3 = select reassoc nsz arcp contract afn i1 %i.ap, float %i.ao, float %i.al
  store float %..i.3, ptr %i.h, align 4, !tbaa !61
  %i.aq = load float, ptr %i.i, align 4, !tbaa !61 ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt float %i.aq, %i.al
  %i.as = select reassoc nsz arcp contract afn i1 %i.ar, float %i.aq, float %i.al
  store float %i.as, ptr %i.i, align 4, !tbaa !61
  %i.at = add i64 %.01113, 4                      ; 2 uses
  %i.au = icmp ult i64 %i.at, %4
  br i1 %i.au, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %bb.a
  ret void
}

declare ptr @dt_iop_colorspace_to_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #8

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11
end_hunk_0
