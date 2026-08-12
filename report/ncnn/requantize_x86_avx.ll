inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_ZNK4ncnn18Requantize_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.032 = phi i32 [ %i.k, %.lr.ph ], [ %i.ag, %bb.c ] ; 3 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !23     ; 2 uses
  %i.u = mul nsw i32 %i.t, %.032                  ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !18
  %i.w = load i32, ptr %5, align 4, !tbaa !23     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %6, align 8, !tbaa !18
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.y
  %i.ac = load i32, ptr %7, align 4, !tbaa !23
  %i.ad = sub nsw i32 %i.ac, %i.u
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.ad)
  %i.ae = mul nsw i32 %.sroa.speculated, %i.w
  %i.af = load i32, ptr %i.o, align 4, !tbaa !46
  %.val = load ptr, ptr %i.l, align 8, !tbaa !18
  %.val25 = load i32, ptr %i.q, align 4, !tbaa !22
  %.val26 = load ptr, ptr %i.m, align 8
  %.val27 = load i32, ptr %i.r, align 4, !tbaa !22
  %.val28 = load ptr, ptr %i.n, align 8
  %.val29 = load i32, ptr %i.s, align 4, !tbaa !22
  call fastcc void @_ZN4ncnnL10requantizeEPKiPaRKNS_3MatES5_S5_iS5_ii(ptr noundef %i.z, ptr noundef %i.ab, ptr %.val, i32 %.val25, ptr %.val26, i32 %.val27, ptr %.val28, i32 %.val29, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ae, i32 noundef 1)
  %i.ag = add nsw i32 %.032, 1
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !23
  %.not.not = icmp slt i32 %.032, %i.ah
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #5 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL10requantizeEPKiPaRKNS_3MatES5_S5_iS5_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val, i32 %.44.val, ptr nofree readonly captures(none) %.0.val1, i32 %.44.val3, ptr nofree readonly captures(none) %.0.val5, i32 %.44.val7, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = mul i32 %5, %4                           ; 18 uses
  %i.b = load float, ptr %.0.val, align 4, !tbaa !48 ; 4 uses
  %i.c = insertelement <4 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.e = insertelement <8 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <8 x float> %i.e, <8 x float> poison, <8 x i32> zeroinitializer
  %i.g = icmp sgt i32 %.44.val, 1
  %i.h = icmp eq i32 %5, 8                        ; 3 uses
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load <8 x float>, ptr %.0.val, align 4, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0960 = phi nsz <8 x float> [ %i.i, %bb.b ], [ %i.f, %bb.a ] ; 6 uses
  %i.j = load float, ptr %.0.val5, align 4, !tbaa !48 ; 4 uses
  %i.k = insertelement <4 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.m = insertelement <8 x float> poison, float %i.j, i64 0
  %i.n = shufflevector <8 x float> %i.m, <8 x float> poison, <8 x i32> zeroinitializer
  %i.o = icmp sgt i32 %.44.val7, 1
  %or.cond3 = and i1 %i.o, %i.h
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load <8 x float>, ptr %.0.val5, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0149 = phi nsz <8 x float> [ %i.p, %bb.d ], [ %i.n, %bb.c ] ; 6 uses
  %i.q = icmp eq i32 %.44.val3, 0
  br i1 %i.q, label %.preheader1045, label %bb.aa

.preheader1045:                                   ; preds = %bb.e
  %i.r = icmp sgt i32 %i.a, 15
  br i1 %i.r, label %.lr.ph1076, label %.preheader1044

.preheader1044.loopexit:                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162
  %i.s = and i32 %i.a, 2147483632
  br label %.preheader1044

.preheader1044:                                   ; preds = %.preheader1044.loopexit, %.preheader1045
  %.0150.lcssa = phi i32 [ 0, %.preheader1045 ], [ %i.s, %.preheader1044.loopexit ] ; 3 uses
  %.0137.lcssa = phi ptr [ %1, %.preheader1045 ], [ %i.mx, %.preheader1044.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %.preheader1045 ], [ %i.mw, %.preheader1044.loopexit ] ; 2 uses
  %i.t = or disjoint i32 %.0150.lcssa, 7
  %i.u = icmp slt i32 %i.t, %i.a
  br i1 %i.u, label %.lr.ph1083.preheader, label %.preheader1043

.lr.ph1083.preheader:                             ; preds = %.preheader1044
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load ptr, ptr %3, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load ptr, ptr %3, align 8
  br label %.lr.ph1083

.lr.ph1076:                                       ; preds = %.preheader1045, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162
  %.01075 = phi ptr [ %i.mw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 ], [ %0, %.preheader1045 ] ; 3 uses
  %.01371074 = phi ptr [ %i.mx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 ], [ %1, %.preheader1045 ] ; 2 uses
  %.01501073 = phi i32 [ %i.my, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 ], [ 0, %.preheader1045 ]
  %i.aa = load <8 x i32>, ptr %.01075, align 1, !tbaa !50
  %i.ab = sitofp fast <8 x i32> %i.aa to <8 x float>
  %i.ac = getelementptr inbounds nuw i8, ptr %.01075, i64 32
  %i.ad = load <8 x i32>, ptr %i.ac, align 1, !tbaa !50
  %i.ae = sitofp fast <8 x i32> %i.ad to <8 x float>
  %i.af = fmul fast <8 x float> %.0960, %i.ab     ; 10 uses
  %i.ag = fmul fast <8 x float> %.0960, %i.ae     ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread: ; preds = %.lr.ph1076
  %i.ah = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> zeroinitializer)
  %i.ai = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966: ; preds = %.lr.ph1076
  %i.aj = load ptr, ptr %3, align 8, !tbaa !18
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !48
  %i.al = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.af)
  %i.am = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.af)
  %i.an = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ap = fmul fast <8 x float> %i.ao, %i.am
  %i.aq = fadd fast <8 x float> %i.ap, %i.al
  %i.ar = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ag)
  %i.as = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ag)
  %i.at = fmul fast <8 x float> %i.ao, %i.as
  %i.au = fadd fast <8 x float> %i.at, %i.ar
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969: ; preds = %.lr.ph1076
  %i.av = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !48
  %i.ax = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !48
  %i.bb = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <8 x float> %i.bb, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ay)
  %i.be = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.bc)
  %i.bf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> nofpclass(nan inf) %i.ay)
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %i.bc)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972: ; preds = %.lr.ph1076
  %i.bh = fneg fast <8 x float> %i.af
  %i.bi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> splat (float f0x42B0C0A5))
  %i.bj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bk = fmul fast <8 x float> %i.bj, splat (float f0x3FB8AA3B)
  %i.bl = fadd fast <8 x float> %i.bk, splat (float 5.000000e-01) ; 2 uses
  %i.bm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bl, i32 1) ; 2 uses
  %i.bn = fcmp fast ogt <8 x float> %i.bm, %i.bl
  %i.bo = select <8 x i1> %i.bn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bp = fsub fast <8 x float> %i.bm, %i.bo      ; 2 uses
  %i.bq = fmul fast <8 x float> %i.bp, splat (float f0x3F317218)
  %i.br = fsub fast <8 x float> %i.bj, %i.bq      ; 8 uses
  %i.bs = fmul fast <8 x float> %i.br, %i.br
  %i.bt = fmul fast <8 x float> %i.br, splat (float f0x39506967)
  %i.bu = fadd fast <8 x float> %i.bt, splat (float f0x3AB743CE)
  %i.bv = fmul fast <8 x float> %i.bu, %i.br
  %i.bw = fadd fast <8 x float> %i.bv, splat (float f0x3C088908)
  %i.bx = fmul fast <8 x float> %i.bw, %i.br
  %i.by = fadd fast <8 x float> %i.bx, splat (float f0x3D2AA9C1)
  %i.bz = fmul fast <8 x float> %i.by, %i.br
  %i.ca = fadd fast <8 x float> %i.bz, splat (float f0x3E2AAAAA)
  %i.cb = fmul fast <8 x float> %i.ca, %i.br
  %i.cc = fadd fast <8 x float> %i.cb, splat (float 5.000000e-01)
  %i.cd = fmul fast <8 x float> %i.bs, %i.cc
  %i.ce = fadd fast <8 x float> %i.br, %i.cd
  %i.cf = fadd fast <8 x float> %i.ce, splat (float 1.000000e+00)
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bp)
  %i.ch = shl <8 x i32> %i.cg, splat (i32 23)
  %i.ci = add <8 x i32> %i.ch, splat (i32 1065353216)
  %i.cj = bitcast <8 x i32> %i.ci to <8 x float>
  %i.ck = fmul fast <8 x float> %i.cf, %i.cj
  %i.cl = fadd fast <8 x float> %i.ck, splat (float 1.000000e+00)
  %i.cm = fdiv fast <8 x float> splat (float 1.000000e+00), %i.cl
  %i.cn = fneg fast <8 x float> %i.ag
  %i.co = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> splat (float f0x42B0C0A5))
  %i.cp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.co, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cq = fmul fast <8 x float> %i.cp, splat (float f0x3FB8AA3B)
  %i.cr = fadd fast <8 x float> %i.cq, splat (float 5.000000e-01) ; 2 uses
  %i.cs = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cr, i32 1) ; 2 uses
  %i.ct = fcmp fast ogt <8 x float> %i.cs, %i.cr
  %i.cu = select <8 x i1> %i.ct, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cv = fsub fast <8 x float> %i.cs, %i.cu      ; 2 uses
  %i.cw = fmul fast <8 x float> %i.cv, splat (float f0x3F317218)
  %i.cx = fsub fast <8 x float> %i.cp, %i.cw      ; 8 uses
  %i.cy = fmul fast <8 x float> %i.cx, %i.cx
  %i.cz = fmul fast <8 x float> %i.cx, splat (float f0x39506967)
  %i.da = fadd fast <8 x float> %i.cz, splat (float f0x3AB743CE)
  %i.db = fmul fast <8 x float> %i.da, %i.cx
  %i.dc = fadd fast <8 x float> %i.db, splat (float f0x3C088908)
  %i.dd = fmul fast <8 x float> %i.dc, %i.cx
  %i.de = fadd fast <8 x float> %i.dd, splat (float f0x3D2AA9C1)
  %i.df = fmul fast <8 x float> %i.de, %i.cx
  %i.dg = fadd fast <8 x float> %i.df, splat (float f0x3E2AAAAA)
  %i.dh = fmul fast <8 x float> %i.dg, %i.cx
  %i.di = fadd fast <8 x float> %i.dh, splat (float 5.000000e-01)
  %i.dj = fmul fast <8 x float> %i.cy, %i.di
  %i.dk = fadd fast <8 x float> %i.cx, %i.dj
  %i.dl = fadd fast <8 x float> %i.dk, splat (float 1.000000e+00)
  %i.dm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cv)
  %i.dn = shl <8 x i32> %i.dm, splat (i32 23)
  %i.do = add <8 x i32> %i.dn, splat (i32 1065353216)
  %i.dp = bitcast <8 x i32> %i.do to <8 x float>
  %i.dq = fmul fast <8 x float> %i.dl, %i.dp
  %i.dr = fadd fast <8 x float> %i.dq, splat (float 1.000000e+00)
  %i.ds = fdiv fast <8 x float> splat (float 1.000000e+00), %i.dr
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975: ; preds = %.lr.ph1076
  %i.dt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> splat (float f0x42B0C0A5))
  %i.du = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dt, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dv = fmul fast <8 x float> %i.du, splat (float f0x3FB8AA3B)
  %i.dw = fadd fast <8 x float> %i.dv, splat (float 5.000000e-01) ; 2 uses
  %i.dx = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dw, i32 1) ; 2 uses
  %i.dy = fcmp fast ogt <8 x float> %i.dx, %i.dw
  %i.dz = select <8 x i1> %i.dy, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ea = fsub fast <8 x float> %i.dx, %i.dz      ; 2 uses
  %i.eb = fmul fast <8 x float> %i.ea, splat (float f0x3F317218)
  %i.ec = fsub fast <8 x float> %i.du, %i.eb      ; 8 uses
  %i.ed = fmul fast <8 x float> %i.ec, %i.ec
  %i.ee = fmul fast <8 x float> %i.ec, splat (float f0x39506967)
  %i.ef = fadd fast <8 x float> %i.ee, splat (float f0x3AB743CE)
  %i.eg = fmul fast <8 x float> %i.ef, %i.ec
  %i.eh = fadd fast <8 x float> %i.eg, splat (float f0x3C088908)
  %i.ei = fmul fast <8 x float> %i.eh, %i.ec
  %i.ej = fadd fast <8 x float> %i.ei, splat (float f0x3D2AA9C1)
  %i.ek = fmul fast <8 x float> %i.ej, %i.ec
  %i.el = fadd fast <8 x float> %i.ek, splat (float f0x3E2AAAAA)
  %i.em = fmul fast <8 x float> %i.el, %i.ec
  %i.en = fadd fast <8 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = fmul fast <8 x float> %i.ed, %i.en
  %i.ep = fadd fast <8 x float> %i.ec, %i.eo
  %i.eq = fadd fast <8 x float> %i.ep, splat (float 1.000000e+00)
  %i.er = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea)
  %i.es = shl <8 x i32> %i.er, splat (i32 23)
  %i.et = add <8 x i32> %i.es, splat (i32 1065353216)
  %i.eu = bitcast <8 x i32> %i.et to <8 x float>
  %i.ev = fmul fast <8 x float> %i.eq, %i.eu
  %i.ew = fadd fast <8 x float> %i.ev, splat (float 1.000000e+00) ; 2 uses
  %i.ex = fcmp fast ole <8 x float> %i.ew, zeroinitializer
  %i.ey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ez = bitcast <8 x float> %i.ey to <8 x i32>
  %i.fa = bitcast <8 x float> %i.ey to <8 x i32>
  %i.fb = and <8 x i32> %i.fa, splat (i32 -2139095041)
  %i.fc = or disjoint <8 x i32> %i.fb, splat (i32 1056964608)
  %i.fd = bitcast <8 x i32> %i.fc to <8 x float>  ; 3 uses
  %i.fe = lshr <8 x i32> %i.ez, splat (i32 23)
  %i.ff = add nsw <8 x i32> %i.fe, splat (i32 -127)
  %i.fg = sitofp fast <8 x i32> %i.ff to <8 x float> ; 2 uses
  %i.fh = fadd fast <8 x float> %i.fg, splat (float 1.000000e+00)
  %i.fi = fcmp fast olt <8 x float> %i.fd, splat (float f0x3F3504F3) ; 2 uses
  %i.fj = select <8 x i1> %i.fi, <8 x float> %i.fd, <8 x float> zeroinitializer
  %i.fk = fadd fast <8 x float> %i.fd, splat (float -1.000000e+00)
  %i.fl = select fast <8 x i1> %i.fi, <8 x float> %i.fg, <8 x float> %i.fh
  %i.fm = fadd fast <8 x float> %i.fk, %i.fj      ; 12 uses
  %i.fn = fmul fast <8 x float> %i.fm, %i.fm      ; 2 uses
  %i.fo = fmul fast <8 x float> %i.fm, splat (float f0x3D9021BB)
  %i.fp = fadd fast <8 x float> %i.fo, splat (float f0xBDEBD1B8)
  %i.fq = fmul fast <8 x float> %i.fp, %i.fm
  %i.fr = fadd fast <8 x float> %i.fq, splat (float f0x3DEF251A)
  %i.fs = fmul fast <8 x float> %i.fr, %i.fm
  %i.ft = fadd fast <8 x float> %i.fs, splat (float f0xBDFE5D4F)
  %i.fu = fmul fast <8 x float> %i.ft, %i.fm
  %i.fv = fadd fast <8 x float> %i.fu, splat (float f0x3E11E9BF)
  %i.fw = fmul fast <8 x float> %i.fv, %i.fm
  %i.fx = fadd fast <8 x float> %i.fw, splat (float f0xBE2AAE50)
  %i.fy = fmul fast <8 x float> %i.fx, %i.fm
  %i.fz = fadd fast <8 x float> %i.fy, splat (float f0x3E4CCEAC)
  %i.ga = fmul fast <8 x float> %i.fz, %i.fm
  %i.gb = fadd fast <8 x float> %i.ga, splat (float f0xBE7FFFFC)
  %i.gc = fmul fast <8 x float> %i.gb, %i.fm
  %i.gd = fadd fast <8 x float> %i.gc, splat (float f0x3EAAAAAA)
  %i.ge = fmul fast <8 x float> %i.fn, %i.fm
  %reass.mul1035 = fmul fast <8 x float> %i.ge, %i.gd
  %.neg1022 = fmul fast <8 x float> %i.fn, splat (float -5.000000e-01)
  %reass.mul1040 = fmul fast <8 x float> %i.fl, splat (float f0x3F317218)
  %6 = fadd fast <8 x float> %i.fm, %.neg1022
  %i.gf = fadd fast <8 x float> %reass.mul1035, %6
  %i.gg = fadd fast <8 x float> %i.gf, %reass.mul1040
  %.neg1008 = fmul fast <8 x float> %i.gg, splat (float -2.000000e+00)
  %i.gh = select fast <8 x i1> %i.ex, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1008
  %i.gi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gh, <8 x float> splat (float f0x42B0C0A5))
  %i.gj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gk = fmul fast <8 x float> %i.gj, splat (float f0x3FB8AA3B)
  %i.gl = fadd fast <8 x float> %i.gk, splat (float 5.000000e-01) ; 2 uses
  %i.gm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gl, i32 1) ; 2 uses
  %i.gn = fcmp fast ogt <8 x float> %i.gm, %i.gl
  %i.go = select <8 x i1> %i.gn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gp = fsub fast <8 x float> %i.gm, %i.go      ; 2 uses
  %i.gq = fmul fast <8 x float> %i.gp, splat (float f0x3F317218)
  %i.gr = fsub fast <8 x float> %i.gj, %i.gq      ; 8 uses
  %i.gs = fmul fast <8 x float> %i.gr, %i.gr
  %i.gt = fmul fast <8 x float> %i.gr, splat (float f0x39506967)
  %i.gu = fadd fast <8 x float> %i.gt, splat (float f0x3AB743CE)
  %i.gv = fmul fast <8 x float> %i.gu, %i.gr
  %i.gw = fadd fast <8 x float> %i.gv, splat (float f0x3C088908)
  %i.gx = fmul fast <8 x float> %i.gw, %i.gr
  %i.gy = fadd fast <8 x float> %i.gx, splat (float f0x3D2AA9C1)
  %i.gz = fmul fast <8 x float> %i.gy, %i.gr
  %i.ha = fadd fast <8 x float> %i.gz, splat (float f0x3E2AAAAA)
  %i.hb = fmul fast <8 x float> %i.ha, %i.gr
  %i.hc = fadd fast <8 x float> %i.hb, splat (float 5.000000e-01)
  %i.hd = fmul fast <8 x float> %i.gs, %i.hc
  %i.he = fadd fast <8 x float> %i.gr, %i.hd
  %i.hf = fadd fast <8 x float> %i.he, splat (float 1.000000e+00)
  %i.hg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gp)
  %i.hh = shl <8 x i32> %i.hg, splat (i32 23)
  %i.hi = add <8 x i32> %i.hh, splat (i32 1065353216)
  %i.hj = bitcast <8 x i32> %i.hi to <8 x float>
  %i.hk = fmul fast <8 x float> %i.hf, %i.hj
  %i.hl = fadd fast <8 x float> %i.hk, splat (float 1.000000e+00)
  %i.hm = fdiv fast <8 x float> splat (float 2.000000e+00), %i.hl
  %i.hn = fadd fast <8 x float> %i.hm, splat (float -1.000000e+00)
  %i.ho = fmul fast <8 x float> %i.hn, %i.af
  %i.hp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> splat (float f0x42B0C0A5))
  %i.hq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hp, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hr = fmul fast <8 x float> %i.hq, splat (float f0x3FB8AA3B)
  %i.hs = fadd fast <8 x float> %i.hr, splat (float 5.000000e-01) ; 2 uses
  %i.ht = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hs, i32 1) ; 2 uses
  %i.hu = fcmp fast ogt <8 x float> %i.ht, %i.hs
  %i.hv = select <8 x i1> %i.hu, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hw = fsub fast <8 x float> %i.ht, %i.hv      ; 2 uses
  %i.hx = fmul fast <8 x float> %i.hw, splat (float f0x3F317218)
  %i.hy = fsub fast <8 x float> %i.hq, %i.hx      ; 8 uses
  %i.hz = fmul fast <8 x float> %i.hy, %i.hy
  %i.ia = fmul fast <8 x float> %i.hy, splat (float f0x39506967)
  %i.ib = fadd fast <8 x float> %i.ia, splat (float f0x3AB743CE)
  %i.ic = fmul fast <8 x float> %i.ib, %i.hy
  %i.id = fadd fast <8 x float> %i.ic, splat (float f0x3C088908)
  %i.ie = fmul fast <8 x float> %i.id, %i.hy
  %i.if = fadd fast <8 x float> %i.ie, splat (float f0x3D2AA9C1)
  %i.ig = fmul fast <8 x float> %i.if, %i.hy
  %i.ih = fadd fast <8 x float> %i.ig, splat (float f0x3E2AAAAA)
  %i.ii = fmul fast <8 x float> %i.ih, %i.hy
  %i.ij = fadd fast <8 x float> %i.ii, splat (float 5.000000e-01)
  %i.ik = fmul fast <8 x float> %i.hz, %i.ij
  %i.il = fadd fast <8 x float> %i.hy, %i.ik
  %i.im = fadd fast <8 x float> %i.il, splat (float 1.000000e+00)
  %i.in = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hw)
  %i.io = shl <8 x i32> %i.in, splat (i32 23)
  %i.ip = add <8 x i32> %i.io, splat (i32 1065353216)
  %i.iq = bitcast <8 x i32> %i.ip to <8 x float>
  %i.ir = fmul fast <8 x float> %i.im, %i.iq
  %i.is = fadd fast <8 x float> %i.ir, splat (float 1.000000e+00) ; 2 uses
  %i.it = fcmp fast ole <8 x float> %i.is, zeroinitializer
  %i.iu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.is, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.iv = bitcast <8 x float> %i.iu to <8 x i32>
  %i.iw = bitcast <8 x float> %i.iu to <8 x i32>
  %i.ix = and <8 x i32> %i.iw, splat (i32 -2139095041)
  %i.iy = or disjoint <8 x i32> %i.ix, splat (i32 1056964608)
  %i.iz = bitcast <8 x i32> %i.iy to <8 x float>  ; 3 uses
  %i.ja = lshr <8 x i32> %i.iv, splat (i32 23)
  %i.jb = add nsw <8 x i32> %i.ja, splat (i32 -127)
  %i.jc = sitofp fast <8 x i32> %i.jb to <8 x float> ; 2 uses
  %i.jd = fadd fast <8 x float> %i.jc, splat (float 1.000000e+00)
  %i.je = fcmp fast olt <8 x float> %i.iz, splat (float f0x3F3504F3) ; 2 uses
  %i.jf = select <8 x i1> %i.je, <8 x float> %i.iz, <8 x float> zeroinitializer
  %i.jg = fadd fast <8 x float> %i.iz, splat (float -1.000000e+00)
  %i.jh = select fast <8 x i1> %i.je, <8 x float> %i.jc, <8 x float> %i.jd
  %i.ji = fadd fast <8 x float> %i.jg, %i.jf      ; 12 uses
  %i.jj = fmul fast <8 x float> %i.ji, %i.ji      ; 2 uses
  %i.jk = fmul fast <8 x float> %i.ji, splat (float f0x3D9021BB)
  %i.jl = fadd fast <8 x float> %i.jk, splat (float f0xBDEBD1B8)
  %i.jm = fmul fast <8 x float> %i.jl, %i.ji
  %i.jn = fadd fast <8 x float> %i.jm, splat (float f0x3DEF251A)
  %i.jo = fmul fast <8 x float> %i.jn, %i.ji
  %i.jp = fadd fast <8 x float> %i.jo, splat (float f0xBDFE5D4F)
  %i.jq = fmul fast <8 x float> %i.jp, %i.ji
  %i.jr = fadd fast <8 x float> %i.jq, splat (float f0x3E11E9BF)
  %i.js = fmul fast <8 x float> %i.jr, %i.ji
  %i.jt = fadd fast <8 x float> %i.js, splat (float f0xBE2AAE50)
  %i.ju = fmul fast <8 x float> %i.jt, %i.ji
  %i.jv = fadd fast <8 x float> %i.ju, splat (float f0x3E4CCEAC)
  %i.jw = fmul fast <8 x float> %i.jv, %i.ji
  %i.jx = fadd fast <8 x float> %i.jw, splat (float f0xBE7FFFFC)
  %i.jy = fmul fast <8 x float> %i.jx, %i.ji
  %i.jz = fadd fast <8 x float> %i.jy, splat (float f0x3EAAAAAA)
  %i.ka = fmul fast <8 x float> %i.jj, %i.ji
  %reass.mul1038 = fmul fast <8 x float> %i.ka, %i.jz
  %.neg1024 = fmul fast <8 x float> %i.jj, splat (float -5.000000e-01)
  %reass.mul1042 = fmul fast <8 x float> %i.jh, splat (float f0x3F317218)
  %7 = fadd fast <8 x float> %i.ji, %.neg1024
  %i.kb = fadd fast <8 x float> %reass.mul1038, %7
  %i.kc = fadd fast <8 x float> %i.kb, %reass.mul1042
  %.neg1009 = fmul fast <8 x float> %i.kc, splat (float -2.000000e+00)
  %i.kd = select fast <8 x i1> %i.it, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1009
  %i.ke = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kd, <8 x float> splat (float f0x42B0C0A5))
  %i.kf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ke, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kg = fmul fast <8 x float> %i.kf, splat (float f0x3FB8AA3B)
  %i.kh = fadd fast <8 x float> %i.kg, splat (float 5.000000e-01) ; 2 uses
  %i.ki = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kh, i32 1) ; 2 uses
  %i.kj = fcmp fast ogt <8 x float> %i.ki, %i.kh
  %i.kk = select <8 x i1> %i.kj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kl = fsub fast <8 x float> %i.ki, %i.kk      ; 2 uses
  %i.km = fmul fast <8 x float> %i.kl, splat (float f0x3F317218)
  %i.kn = fsub fast <8 x float> %i.kf, %i.km      ; 8 uses
  %i.ko = fmul fast <8 x float> %i.kn, %i.kn
  %i.kp = fmul fast <8 x float> %i.kn, splat (float f0x39506967)
  %i.kq = fadd fast <8 x float> %i.kp, splat (float f0x3AB743CE)
  %i.kr = fmul fast <8 x float> %i.kq, %i.kn
  %i.ks = fadd fast <8 x float> %i.kr, splat (float f0x3C088908)
  %i.kt = fmul fast <8 x float> %i.ks, %i.kn
  %i.ku = fadd fast <8 x float> %i.kt, splat (float f0x3D2AA9C1)
  %i.kv = fmul fast <8 x float> %i.ku, %i.kn
  %i.kw = fadd fast <8 x float> %i.kv, splat (float f0x3E2AAAAA)
  %i.kx = fmul fast <8 x float> %i.kw, %i.kn
  %i.ky = fadd fast <8 x float> %i.kx, splat (float 5.000000e-01)
  %i.kz = fmul fast <8 x float> %i.ko, %i.ky
  %i.la = fadd fast <8 x float> %i.kn, %i.kz
  %i.lb = fadd fast <8 x float> %i.la, splat (float 1.000000e+00)
  %i.lc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kl)
  %i.ld = shl <8 x i32> %i.lc, splat (i32 23)
  %i.le = add <8 x i32> %i.ld, splat (i32 1065353216)
  %i.lf = bitcast <8 x i32> %i.le to <8 x float>
  %i.lg = fmul fast <8 x float> %i.lb, %i.lf
  %i.lh = fadd fast <8 x float> %i.lg, splat (float 1.000000e+00)
  %i.li = fdiv fast <8 x float> splat (float 2.000000e+00), %i.lh
  %i.lj = fadd fast <8 x float> %i.li, splat (float -1.000000e+00)
  %i.lk = fmul fast <8 x float> %i.lj, %i.ag
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978: ; preds = %.lr.ph1076
  %i.ll = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !48
  %i.ln = insertelement <8 x float> poison, float %i.lm, i64 0
  %i.lo = shufflevector <8 x float> %i.ln, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !48
  %i.lr = insertelement <8 x float> poison, float %i.lq, i64 0
  %i.ls = shufflevector <8 x float> %i.lr, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lt = fmul fast <8 x float> %i.lo, %i.af
  %i.lu = fadd fast <8 x float> %i.lt, %i.ls
  %i.lv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lu, <8 x float> zeroinitializer)
  %i.lw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lv, <8 x float> splat (float 1.000000e+00))
  %i.lx = fmul fast <8 x float> %i.lw, %i.af
  %i.ly = fmul fast <8 x float> %i.lo, %i.ag
  %i.lz = fadd fast <8 x float> %i.ly, %i.ls
  %i.ma = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lz, <8 x float> zeroinitializer)
  %i.mb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ma, <8 x float> splat (float 1.000000e+00))
  %i.mc = fmul fast <8 x float> %i.mb, %i.ag
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162:   ; preds = %.lr.ph1076, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978
  %.0.i163965 = phi <8 x float> [ %i.lx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978 ], [ %i.ah, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread ], [ %i.aq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966 ], [ %i.be, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969 ], [ %i.cm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972 ], [ %i.ho, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975 ], [ %i.af, %.lr.ph1076 ]
  %.0.i161 = phi nsz <8 x float> [ %i.mc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978 ], [ %i.ai, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread ], [ %i.au, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966 ], [ %i.bg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969 ], [ %i.ds, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972 ], [ %i.lk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975 ], [ %i.ag, %.lr.ph1076 ]
  %i.md = fmul fast <8 x float> %.0.i163965, %.0149 ; 2 uses
  %i.me = fmul fast <8 x float> %.0.i161, %.0149  ; 2 uses
  %i.mf = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.md)
  %i.mg = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.me)
  %i.mh = fadd fast <8 x float> %i.mf, %i.md
  %i.mi = fadd fast <8 x float> %i.mg, %i.me
  %i.mj = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mh) ; 2 uses
  %i.mk = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mi) ; 2 uses
  %i.ml = shufflevector <8 x i32> %i.mj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mm = shufflevector <8 x i32> %i.mj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mn = shufflevector <8 x i32> %i.mk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mo = shufflevector <8 x i32> %i.mk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.mp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ml, <4 x i32> %i.mm)
  %i.mq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mn, <4 x i32> %i.mo)
  %i.mr = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mp, <8 x i16> splat (i16 -127))
  %i.ms = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mr, <8 x i16> splat (i16 127))
  %i.mt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mq, <8 x i16> splat (i16 -127))
  %i.mu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mt, <8 x i16> splat (i16 127))
  %i.mv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ms, <8 x i16> %i.mu)
  store <16 x i8> %i.mv, ptr %.01371074, align 1, !tbaa !50
  %i.mw = getelementptr inbounds nuw i8, ptr %.01075, i64 64 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.01371074, i64 16 ; 2 uses
  %i.my = add nuw nsw i32 %.01501073, 16          ; 2 uses
  %i.mz = or disjoint i32 %i.my, 15
  %i.na = icmp slt i32 %i.mz, %i.a
  br i1 %i.na, label %.lr.ph1076, label %.preheader1044.loopexit, !llvm.loop !51

.preheader1043:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160, %.preheader1044
  %.1151.lcssa = phi i32 [ %.0150.lcssa, %.preheader1044 ], [ %i.tx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ] ; 3 uses
  %.1138.lcssa = phi ptr [ %.0137.lcssa, %.preheader1044 ], [ %i.tw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader1044 ], [ %i.tv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ] ; 2 uses
  %i.nb = or disjoint i32 %.1151.lcssa, 3
  %i.nc = icmp slt i32 %i.nb, %i.a
  br i1 %i.nc, label %.lr.ph1090, label %.preheader

.lr.ph1083:                                       ; preds = %.lr.ph1083.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160
  %.11082 = phi ptr [ %i.tv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ], [ %.0.lcssa, %.lr.ph1083.preheader ] ; 2 uses
  %.11381081 = phi ptr [ %i.tw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ], [ %.0137.lcssa, %.lr.ph1083.preheader ] ; 2 uses
  %.11511080 = phi i32 [ %i.tx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ], [ %.0150.lcssa, %.lr.ph1083.preheader ]
  %i.nd = load <8 x i32>, ptr %.11082, align 1, !tbaa !50
  %i.ne = sitofp fast <8 x i32> %i.nd to <8 x float>
  %i.nf = fmul fast <8 x float> %.0960, %i.ne     ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.f:                                             ; preds = %.lr.ph1083
  %i.ng = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nf, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.g:                                             ; preds = %.lr.ph1083
  %i.nh = load float, ptr %i.z, align 4, !tbaa !48
  %i.ni = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.nf)
  %i.nj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.nf)
  %i.nk = insertelement <8 x float> poison, float %i.nh, i64 0
  %i.nl = shufflevector <8 x float> %i.nk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nm = fmul fast <8 x float> %i.nl, %i.nj
  %i.nn = fadd fast <8 x float> %i.nm, %i.ni
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.h:                                             ; preds = %.lr.ph1083
  %i.no = load float, ptr %i.x, align 4, !tbaa !48
  %i.np = insertelement <8 x float> poison, float %i.no, i64 0
  %i.nq = shufflevector <8 x float> %i.np, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nr = load float, ptr %i.y, align 4, !tbaa !48
  %i.ns = insertelement <8 x float> poison, float %i.nr, i64 0
  %i.nt = shufflevector <8 x float> %i.ns, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nf, <8 x float> nofpclass(nan inf) %i.nq)
  %i.nv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nu, <8 x float> nofpclass(nan inf) %i.nt)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.i:                                             ; preds = %.lr.ph1083
  %i.nw = fneg fast <8 x float> %i.nf
  %i.nx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nw, <8 x float> splat (float f0x42B0C0A5))
  %i.ny = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nz = fmul fast <8 x float> %i.ny, splat (float f0x3FB8AA3B)
  %i.oa = fadd fast <8 x float> %i.nz, splat (float 5.000000e-01) ; 2 uses
  %i.ob = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.oa, i32 1) ; 2 uses
  %i.oc = fcmp fast ogt <8 x float> %i.ob, %i.oa
  %i.od = select <8 x i1> %i.oc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.oe = fsub fast <8 x float> %i.ob, %i.od      ; 2 uses
  %i.of = fmul fast <8 x float> %i.oe, splat (float f0x3F317218)
  %i.og = fsub fast <8 x float> %i.ny, %i.of      ; 8 uses
  %i.oh = fmul fast <8 x float> %i.og, %i.og
  %i.oi = fmul fast <8 x float> %i.og, splat (float f0x39506967)
  %i.oj = fadd fast <8 x float> %i.oi, splat (float f0x3AB743CE)
  %i.ok = fmul fast <8 x float> %i.oj, %i.og
  %i.ol = fadd fast <8 x float> %i.ok, splat (float f0x3C088908)
  %i.om = fmul fast <8 x float> %i.ol, %i.og
  %i.on = fadd fast <8 x float> %i.om, splat (float f0x3D2AA9C1)
  %i.oo = fmul fast <8 x float> %i.on, %i.og
  %i.op = fadd fast <8 x float> %i.oo, splat (float f0x3E2AAAAA)
  %i.oq = fmul fast <8 x float> %i.op, %i.og
  %i.or = fadd fast <8 x float> %i.oq, splat (float 5.000000e-01)
  %i.os = fmul fast <8 x float> %i.oh, %i.or
  %i.ot = fadd fast <8 x float> %i.og, %i.os
  %i.ou = fadd fast <8 x float> %i.ot, splat (float 1.000000e+00)
  %i.ov = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.oe)
  %i.ow = shl <8 x i32> %i.ov, splat (i32 23)
  %i.ox = add <8 x i32> %i.ow, splat (i32 1065353216)
  %i.oy = bitcast <8 x i32> %i.ox to <8 x float>
  %i.oz = fmul fast <8 x float> %i.ou, %i.oy
  %i.pa = fadd fast <8 x float> %i.oz, splat (float 1.000000e+00)
  %i.pb = fdiv fast <8 x float> splat (float 1.000000e+00), %i.pa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.j:                                             ; preds = %.lr.ph1083
  %i.pc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nf, <8 x float> splat (float f0x42B0C0A5))
  %i.pd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.pc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pe = fmul fast <8 x float> %i.pd, splat (float f0x3FB8AA3B)
  %i.pf = fadd fast <8 x float> %i.pe, splat (float 5.000000e-01) ; 2 uses
  %i.pg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.pf, i32 1) ; 2 uses
  %i.ph = fcmp fast ogt <8 x float> %i.pg, %i.pf
  %i.pi = select <8 x i1> %i.ph, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.pj = fsub fast <8 x float> %i.pg, %i.pi      ; 2 uses
  %i.pk = fmul fast <8 x float> %i.pj, splat (float f0x3F317218)
  %i.pl = fsub fast <8 x float> %i.pd, %i.pk      ; 8 uses
  %i.pm = fmul fast <8 x float> %i.pl, %i.pl
  %i.pn = fmul fast <8 x float> %i.pl, splat (float f0x39506967)
  %i.po = fadd fast <8 x float> %i.pn, splat (float f0x3AB743CE)
  %i.pp = fmul fast <8 x float> %i.po, %i.pl
  %i.pq = fadd fast <8 x float> %i.pp, splat (float f0x3C088908)
  %i.pr = fmul fast <8 x float> %i.pq, %i.pl
  %i.ps = fadd fast <8 x float> %i.pr, splat (float f0x3D2AA9C1)
  %i.pt = fmul fast <8 x float> %i.ps, %i.pl
  %i.pu = fadd fast <8 x float> %i.pt, splat (float f0x3E2AAAAA)
  %i.pv = fmul fast <8 x float> %i.pu, %i.pl
  %i.pw = fadd fast <8 x float> %i.pv, splat (float 5.000000e-01)
  %i.px = fmul fast <8 x float> %i.pm, %i.pw
  %i.py = fadd fast <8 x float> %i.pl, %i.px
  %i.pz = fadd fast <8 x float> %i.py, splat (float 1.000000e+00)
  %i.qa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pj)
  %i.qb = shl <8 x i32> %i.qa, splat (i32 23)
  %i.qc = add <8 x i32> %i.qb, splat (i32 1065353216)
  %i.qd = bitcast <8 x i32> %i.qc to <8 x float>
  %i.qe = fmul fast <8 x float> %i.pz, %i.qd
  %i.qf = fadd fast <8 x float> %i.qe, splat (float 1.000000e+00) ; 2 uses
  %i.qg = fcmp fast ole <8 x float> %i.qf, zeroinitializer
  %i.qh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.qf, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.qi = bitcast <8 x float> %i.qh to <8 x i32>
  %i.qj = bitcast <8 x float> %i.qh to <8 x i32>
  %i.qk = and <8 x i32> %i.qj, splat (i32 -2139095041)
  %i.ql = or disjoint <8 x i32> %i.qk, splat (i32 1056964608)
  %i.qm = bitcast <8 x i32> %i.ql to <8 x float>  ; 3 uses
  %i.qn = lshr <8 x i32> %i.qi, splat (i32 23)
  %i.qo = add nsw <8 x i32> %i.qn, splat (i32 -127)
  %i.qp = sitofp fast <8 x i32> %i.qo to <8 x float> ; 2 uses
  %i.qq = fadd fast <8 x float> %i.qp, splat (float 1.000000e+00)
  %i.qr = fcmp fast olt <8 x float> %i.qm, splat (float f0x3F3504F3) ; 2 uses
  %i.qs = select <8 x i1> %i.qr, <8 x float> %i.qm, <8 x float> zeroinitializer
  %i.qt = fadd fast <8 x float> %i.qm, splat (float -1.000000e+00)
  %i.qu = select fast <8 x i1> %i.qr, <8 x float> %i.qp, <8 x float> %i.qq
  %i.qv = fadd fast <8 x float> %i.qt, %i.qs      ; 12 uses
  %i.qw = fmul fast <8 x float> %i.qv, %i.qv      ; 2 uses
  %i.qx = fmul fast <8 x float> %i.qv, splat (float f0x3D9021BB)
  %i.qy = fadd fast <8 x float> %i.qx, splat (float f0xBDEBD1B8)
  %i.qz = fmul fast <8 x float> %i.qy, %i.qv
  %i.ra = fadd fast <8 x float> %i.qz, splat (float f0x3DEF251A)
  %i.rb = fmul fast <8 x float> %i.ra, %i.qv
  %i.rc = fadd fast <8 x float> %i.rb, splat (float f0xBDFE5D4F)
  %i.rd = fmul fast <8 x float> %i.rc, %i.qv
  %i.re = fadd fast <8 x float> %i.rd, splat (float f0x3E11E9BF)
  %i.rf = fmul fast <8 x float> %i.re, %i.qv
  %i.rg = fadd fast <8 x float> %i.rf, splat (float f0xBE2AAE50)
  %i.rh = fmul fast <8 x float> %i.rg, %i.qv
  %i.ri = fadd fast <8 x float> %i.rh, splat (float f0x3E4CCEAC)
  %i.rj = fmul fast <8 x float> %i.ri, %i.qv
  %i.rk = fadd fast <8 x float> %i.rj, splat (float f0xBE7FFFFC)
  %i.rl = fmul fast <8 x float> %i.rk, %i.qv
  %i.rm = fadd fast <8 x float> %i.rl, splat (float f0x3EAAAAAA)
  %i.rn = fmul fast <8 x float> %i.qw, %i.qv
  %reass.mul1031 = fmul fast <8 x float> %i.rn, %i.rm
  %.neg1020 = fmul fast <8 x float> %i.qw, splat (float -5.000000e-01)
  %reass.mul1033 = fmul fast <8 x float> %i.qu, splat (float f0x3F317218)
  %8 = fadd fast <8 x float> %i.qv, %.neg1020
  %i.ro = fadd fast <8 x float> %reass.mul1031, %8
  %i.rp = fadd fast <8 x float> %i.ro, %reass.mul1033
  %.neg1007 = fmul fast <8 x float> %i.rp, splat (float -2.000000e+00)
  %i.rq = select fast <8 x i1> %i.qg, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1007
  %i.rr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.rq, <8 x float> splat (float f0x42B0C0A5))
  %i.rs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.rr, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rt = fmul fast <8 x float> %i.rs, splat (float f0x3FB8AA3B)
  %i.ru = fadd fast <8 x float> %i.rt, splat (float 5.000000e-01) ; 2 uses
  %i.rv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ru, i32 1) ; 2 uses
  %i.rw = fcmp fast ogt <8 x float> %i.rv, %i.ru
  %i.rx = select <8 x i1> %i.rw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ry = fsub fast <8 x float> %i.rv, %i.rx      ; 2 uses
  %i.rz = fmul fast <8 x float> %i.ry, splat (float f0x3F317218)
  %i.sa = fsub fast <8 x float> %i.rs, %i.rz      ; 8 uses
  %i.sb = fmul fast <8 x float> %i.sa, %i.sa
  %i.sc = fmul fast <8 x float> %i.sa, splat (float f0x39506967)
  %i.sd = fadd fast <8 x float> %i.sc, splat (float f0x3AB743CE)
  %i.se = fmul fast <8 x float> %i.sd, %i.sa
  %i.sf = fadd fast <8 x float> %i.se, splat (float f0x3C088908)
  %i.sg = fmul fast <8 x float> %i.sf, %i.sa
  %i.sh = fadd fast <8 x float> %i.sg, splat (float f0x3D2AA9C1)
  %i.si = fmul fast <8 x float> %i.sh, %i.sa
  %i.sj = fadd fast <8 x float> %i.si, splat (float f0x3E2AAAAA)
  %i.sk = fmul fast <8 x float> %i.sj, %i.sa
  %i.sl = fadd fast <8 x float> %i.sk, splat (float 5.000000e-01)
  %i.sm = fmul fast <8 x float> %i.sb, %i.sl
  %i.sn = fadd fast <8 x float> %i.sa, %i.sm
  %i.so = fadd fast <8 x float> %i.sn, splat (float 1.000000e+00)
  %i.sp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ry)
  %i.sq = shl <8 x i32> %i.sp, splat (i32 23)
  %i.sr = add <8 x i32> %i.sq, splat (i32 1065353216)
  %i.ss = bitcast <8 x i32> %i.sr to <8 x float>
  %i.st = fmul fast <8 x float> %i.so, %i.ss
  %i.su = fadd fast <8 x float> %i.st, splat (float 1.000000e+00)
  %i.sv = fdiv fast <8 x float> splat (float 2.000000e+00), %i.su
  %i.sw = fadd fast <8 x float> %i.sv, splat (float -1.000000e+00)
  %i.sx = fmul fast <8 x float> %i.sw, %i.nf
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.k:                                             ; preds = %.lr.ph1083
  %i.sy = load float, ptr %i.v, align 4, !tbaa !48
  %i.sz = insertelement <8 x float> poison, float %i.sy, i64 0
  %i.ta = shufflevector <8 x float> %i.sz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tb = load float, ptr %i.w, align 4, !tbaa !48
  %i.tc = insertelement <8 x float> poison, float %i.tb, i64 0
  %i.td = shufflevector <8 x float> %i.tc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.te = fmul fast <8 x float> %i.ta, %i.nf
  %i.tf = fadd fast <8 x float> %i.te, %i.td
  %i.tg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.tf, <8 x float> zeroinitializer)
  %i.th = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.tg, <8 x float> splat (float 1.000000e+00))
  %i.ti = fmul fast <8 x float> %i.th, %i.nf
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160:   ; preds = %.lr.ph1083, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i159 = phi nsz <8 x float> [ %i.ti, %bb.k ], [ %i.ng, %bb.f ], [ %i.nn, %bb.g ], [ %i.nv, %bb.h ], [ %i.pb, %bb.i ], [ %i.sx, %bb.j ], [ %i.nf, %.lr.ph1083 ]
  %i.tj = fmul fast <8 x float> %.0.i159, %.0149  ; 2 uses
  %i.tk = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tj)
  %i.tl = fadd fast <8 x float> %i.tk, %i.tj
  %i.tm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.tl) ; 2 uses
  %i.tn = shufflevector <8 x i32> %i.tm, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.to = shufflevector <8 x i32> %i.tm, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.tp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tn, <4 x i32> %i.to)
  %i.tq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tp, <8 x i16> splat (i16 -127))
  %i.tr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tq, <8 x i16> splat (i16 127))
  %i.ts = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tr, <8 x i16> poison)
  %i.tt = bitcast <16 x i8> %i.ts to <2 x i64>
  %i.tu = extractelement <2 x i64> %i.tt, i64 0
  store i64 %i.tu, ptr %.11381081, align 8, !tbaa !53
  %i.tv = getelementptr inbounds nuw i8, ptr %.11082, i64 32 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.11381081, i64 8 ; 2 uses
  %i.tx = add nuw nsw i32 %.11511080, 8           ; 3 uses
  %i.ty = or disjoint i32 %i.tx, 7
  %i.tz = icmp slt i32 %i.ty, %i.a
  br i1 %i.tz, label %.lr.ph1083, label %.preheader1043, !llvm.loop !54

.preheader:                                       ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167, %.preheader1043
  %.2152.lcssa = phi i32 [ %.1151.lcssa, %.preheader1043 ], [ %i.aaz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ] ; 2 uses
  %.2139.lcssa = phi ptr [ %.1138.lcssa, %.preheader1043 ], [ %i.aay, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ]
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader1043 ], [ %i.aax, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ]
  %i.ua = icmp slt i32 %.2152.lcssa, %i.a
  br i1 %i.ua, label %.lr.ph1097, label %.loopexit

.lr.ph1090:                                       ; preds = %.preheader1043, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167
  %.21089 = phi ptr [ %i.aax, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ], [ %.1.lcssa, %.preheader1043 ] ; 2 uses
  %.21391088 = phi ptr [ %i.aay, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ], [ %.1138.lcssa, %.preheader1043 ] ; 2 uses
  %.21521087 = phi i32 [ %i.aaz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ], [ %.1151.lcssa, %.preheader1043 ]
  %i.ub = load <4 x i32>, ptr %.21089, align 1, !tbaa !50
  %i.uc = sitofp fast <4 x i32> %i.ub to <4 x float>
  %i.ud = fmul fast <4 x float> %i.d, %i.uc       ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
  ]

bb.l:                                             ; preds = %.lr.ph1090
  %i.ue = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ud, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.m:                                             ; preds = %.lr.ph1090
  %i.uf = load ptr, ptr %3, align 8, !tbaa !18
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !48
  %i.uh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ud)
  %i.ui = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ud)
  %i.uj = insertelement <4 x float> poison, float %i.ug, i64 0
  %i.uk = shufflevector <4 x float> %i.uj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ul = fmul fast <4 x float> %i.uk, %i.ui
  %i.um = fadd fast <4 x float> %i.ul, %i.uh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.n:                                             ; preds = %.lr.ph1090
  %i.un = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.uo = load float, ptr %i.un, align 4, !tbaa !48
  %i.up = insertelement <4 x float> poison, float %i.uo, i64 0
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.us = load float, ptr %i.ur, align 4, !tbaa !48
  %i.ut = insertelement <4 x float> poison, float %i.us, i64 0
  %i.uu = shufflevector <4 x float> %i.ut, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ud, <4 x float> nofpclass(nan inf) %i.uq)
  %i.uw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.uv, <4 x float> nofpclass(nan inf) %i.uu)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.o:                                             ; preds = %.lr.ph1090
  %i.ux = fneg fast <4 x float> %i.ud
  %i.uy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ux, <4 x float> splat (float f0x42B0C0A5))
  %i.uz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.uy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.va = fmul fast <4 x float> %i.uz, splat (float f0x3FB8AA3B)
  %i.vb = fadd fast <4 x float> %i.va, splat (float 5.000000e-01) ; 2 uses
  %i.vc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vb)
  %i.vd = sitofp fast <4 x i32> %i.vc to <4 x float> ; 2 uses
  %i.ve = fcmp fast olt <4 x float> %i.vb, %i.vd
  %i.vf = select <4 x i1> %i.ve, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.vg = fsub fast <4 x float> %i.vd, %i.vf      ; 2 uses
  %i.vh = fmul fast <4 x float> %i.vg, splat (float f0x3F317218)
  %i.vi = fsub fast <4 x float> %i.uz, %i.vh      ; 8 uses
  %i.vj = fmul fast <4 x float> %i.vi, %i.vi
  %i.vk = fmul fast <4 x float> %i.vi, splat (float f0x39506967)
  %i.vl = fadd fast <4 x float> %i.vk, splat (float f0x3AB743CE)
  %i.vm = fmul fast <4 x float> %i.vl, %i.vi
  %i.vn = fadd fast <4 x float> %i.vm, splat (float f0x3C088908)
  %i.vo = fmul fast <4 x float> %i.vn, %i.vi
  %i.vp = fadd fast <4 x float> %i.vo, splat (float f0x3D2AA9C1)
  %i.vq = fmul fast <4 x float> %i.vp, %i.vi
  %i.vr = fadd fast <4 x float> %i.vq, splat (float f0x3E2AAAAA)
  %i.vs = fmul fast <4 x float> %i.vr, %i.vi
  %i.vt = fadd fast <4 x float> %i.vs, splat (float 5.000000e-01)
  %i.vu = fmul fast <4 x float> %i.vj, %i.vt
  %i.vv = fadd fast <4 x float> %i.vi, %i.vu
  %i.vw = fadd fast <4 x float> %i.vv, splat (float 1.000000e+00)
  %i.vx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vg)
  %i.vy = shl <4 x i32> %i.vx, splat (i32 23)
  %i.vz = add <4 x i32> %i.vy, splat (i32 1065353216)
  %i.wa = bitcast <4 x i32> %i.vz to <4 x float>
  %i.wb = fmul fast <4 x float> %i.vw, %i.wa
  %i.wc = fadd fast <4 x float> %i.wb, splat (float 1.000000e+00)
  %i.wd = fdiv fast <4 x float> splat (float 1.000000e+00), %i.wc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.p:                                             ; preds = %.lr.ph1090
  %i.we = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ud, <4 x float> splat (float f0x42B0C0A5))
  %i.wf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.we, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.wg = fmul fast <4 x float> %i.wf, splat (float f0x3FB8AA3B)
  %i.wh = fadd fast <4 x float> %i.wg, splat (float 5.000000e-01) ; 2 uses
  %i.wi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wh)
  %i.wj = sitofp fast <4 x i32> %i.wi to <4 x float> ; 2 uses
  %i.wk = fcmp fast olt <4 x float> %i.wh, %i.wj
  %i.wl = select <4 x i1> %i.wk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.wm = fsub fast <4 x float> %i.wj, %i.wl      ; 2 uses
  %i.wn = fmul fast <4 x float> %i.wm, splat (float f0x3F317218)
  %i.wo = fsub fast <4 x float> %i.wf, %i.wn      ; 8 uses
  %i.wp = fmul fast <4 x float> %i.wo, %i.wo
  %i.wq = fmul fast <4 x float> %i.wo, splat (float f0x39506967)
  %i.wr = fadd fast <4 x float> %i.wq, splat (float f0x3AB743CE)
  %i.ws = fmul fast <4 x float> %i.wr, %i.wo
  %i.wt = fadd fast <4 x float> %i.ws, splat (float f0x3C088908)
  %i.wu = fmul fast <4 x float> %i.wt, %i.wo
  %i.wv = fadd fast <4 x float> %i.wu, splat (float f0x3D2AA9C1)
  %i.ww = fmul fast <4 x float> %i.wv, %i.wo
  %i.wx = fadd fast <4 x float> %i.ww, splat (float f0x3E2AAAAA)
  %i.wy = fmul fast <4 x float> %i.wx, %i.wo
  %i.wz = fadd fast <4 x float> %i.wy, splat (float 5.000000e-01)
  %i.xa = fmul fast <4 x float> %i.wp, %i.wz
  %i.xb = fadd fast <4 x float> %i.wo, %i.xa
  %i.xc = fadd fast <4 x float> %i.xb, splat (float 1.000000e+00)
  %i.xd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wm)
  %i.xe = shl <4 x i32> %i.xd, splat (i32 23)
  %i.xf = add <4 x i32> %i.xe, splat (i32 1065353216)
  %i.xg = bitcast <4 x i32> %i.xf to <4 x float>
  %i.xh = fmul fast <4 x float> %i.xc, %i.xg
  %i.xi = fadd fast <4 x float> %i.xh, splat (float 1.000000e+00) ; 2 uses
  %i.xj = fcmp fast ole <4 x float> %i.xi, zeroinitializer
  %i.xk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xi, <4 x float> splat (float f0x00800000))
  %i.xl = bitcast <4 x float> %i.xk to <4 x i32>  ; 2 uses
  %i.xm = lshr <4 x i32> %i.xl, splat (i32 23)
  %i.xn = and <4 x i32> %i.xl, splat (i32 -2139095041)
  %i.xo = or disjoint <4 x i32> %i.xn, splat (i32 1056964608)
  %i.xp = bitcast <4 x i32> %i.xo to <4 x float>  ; 3 uses
  %i.xq = add nsw <4 x i32> %i.xm, splat (i32 -127)
  %i.xr = sitofp fast <4 x i32> %i.xq to <4 x float> ; 2 uses
  %i.xs = fadd fast <4 x float> %i.xr, splat (float 1.000000e+00)
  %i.xt = fcmp fast olt <4 x float> %i.xp, splat (float f0x3F3504F3) ; 2 uses
  %i.xu = select <4 x i1> %i.xt, <4 x float> %i.xp, <4 x float> zeroinitializer
  %i.xv = fadd fast <4 x float> %i.xp, splat (float -1.000000e+00)
  %i.xw = select fast <4 x i1> %i.xt, <4 x float> %i.xr, <4 x float> %i.xs
  %i.xx = fadd fast <4 x float> %i.xv, %i.xu      ; 12 uses
  %i.xy = fmul fast <4 x float> %i.xx, %i.xx      ; 2 uses
  %i.xz = fmul fast <4 x float> %i.xx, splat (float f0x3D9021BB)
  %i.ya = fadd fast <4 x float> %i.xz, splat (float f0xBDEBD1B8)
  %i.yb = fmul fast <4 x float> %i.ya, %i.xx
  %i.yc = fadd fast <4 x float> %i.yb, splat (float f0x3DEF251A)
  %i.yd = fmul fast <4 x float> %i.yc, %i.xx
  %i.ye = fadd fast <4 x float> %i.yd, splat (float f0xBDFE5D4F)
  %i.yf = fmul fast <4 x float> %i.ye, %i.xx
  %i.yg = fadd fast <4 x float> %i.yf, splat (float f0x3E11E9BF)
  %i.yh = fmul fast <4 x float> %i.yg, %i.xx
  %i.yi = fadd fast <4 x float> %i.yh, splat (float f0xBE2AAE50)
  %i.yj = fmul fast <4 x float> %i.yi, %i.xx
  %i.yk = fadd fast <4 x float> %i.yj, splat (float f0x3E4CCEAC)
  %i.yl = fmul fast <4 x float> %i.yk, %i.xx
  %i.ym = fadd fast <4 x float> %i.yl, splat (float f0xBE7FFFFC)
  %i.yn = fmul fast <4 x float> %i.ym, %i.xx
  %i.yo = fadd fast <4 x float> %i.yn, splat (float f0x3EAAAAAA)
  %i.yp = fmul fast <4 x float> %i.xy, %i.xx
  %reass.mul1027 = fmul fast <4 x float> %i.yp, %i.yo
  %.neg1018 = fmul fast <4 x float> %i.xy, splat (float -5.000000e-01)
  %reass.mul1029 = fmul fast <4 x float> %i.xw, splat (float f0x3F317218)
  %9 = fadd fast <4 x float> %i.xx, %.neg1018
  %i.yq = fadd fast <4 x float> %reass.mul1027, %9
  %i.yr = fadd fast <4 x float> %i.yq, %reass.mul1029
  %.neg1006 = fmul fast <4 x float> %i.yr, splat (float -2.000000e+00)
  %i.ys = select fast <4 x i1> %i.xj, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1006
  %i.yt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ys, <4 x float> splat (float f0x42B0C0A5))
  %i.yu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yv = fmul fast <4 x float> %i.yu, splat (float f0x3FB8AA3B)
  %i.yw = fadd fast <4 x float> %i.yv, splat (float 5.000000e-01) ; 2 uses
  %i.yx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yw)
  %i.yy = sitofp fast <4 x i32> %i.yx to <4 x float> ; 2 uses
  %i.yz = fcmp fast olt <4 x float> %i.yw, %i.yy
  %i.za = select <4 x i1> %i.yz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.zb = fsub fast <4 x float> %i.yy, %i.za      ; 2 uses
  %i.zc = fmul fast <4 x float> %i.zb, splat (float f0x3F317218)
  %i.zd = fsub fast <4 x float> %i.yu, %i.zc      ; 8 uses
  %i.ze = fmul fast <4 x float> %i.zd, %i.zd
  %i.zf = fmul fast <4 x float> %i.zd, splat (float f0x39506967)
  %i.zg = fadd fast <4 x float> %i.zf, splat (float f0x3AB743CE)
  %i.zh = fmul fast <4 x float> %i.zg, %i.zd
  %i.zi = fadd fast <4 x float> %i.zh, splat (float f0x3C088908)
  %i.zj = fmul fast <4 x float> %i.zi, %i.zd
  %i.zk = fadd fast <4 x float> %i.zj, splat (float f0x3D2AA9C1)
  %i.zl = fmul fast <4 x float> %i.zk, %i.zd
  %i.zm = fadd fast <4 x float> %i.zl, splat (float f0x3E2AAAAA)
  %i.zn = fmul fast <4 x float> %i.zm, %i.zd
  %i.zo = fadd fast <4 x float> %i.zn, splat (float 5.000000e-01)
  %i.zp = fmul fast <4 x float> %i.ze, %i.zo
  %i.zq = fadd fast <4 x float> %i.zd, %i.zp
  %i.zr = fadd fast <4 x float> %i.zq, splat (float 1.000000e+00)
  %i.zs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zb)
  %i.zt = shl <4 x i32> %i.zs, splat (i32 23)
  %i.zu = add <4 x i32> %i.zt, splat (i32 1065353216)
  %i.zv = bitcast <4 x i32> %i.zu to <4 x float>
  %i.zw = fmul fast <4 x float> %i.zr, %i.zv
  %i.zx = fadd fast <4 x float> %i.zw, splat (float 1.000000e+00)
  %i.zy = fdiv fast <4 x float> splat (float 2.000000e+00), %i.zx
  %i.zz = fadd fast <4 x float> %i.zy, splat (float -1.000000e+00)
  %i.aaa = fmul fast <4 x float> %i.zz, %i.ud
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.q:                                             ; preds = %.lr.ph1090
  %i.aab = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !48
  %i.aad = insertelement <4 x float> poison, float %i.aac, i64 0
  %i.aae = shufflevector <4 x float> %i.aad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !48
  %i.aah = insertelement <4 x float> poison, float %i.aag, i64 0
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaj = fmul fast <4 x float> %i.aae, %i.ud
  %i.aak = fadd fast <4 x float> %i.aaj, %i.aai
  %i.aal = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aak, <4 x float> zeroinitializer)
  %i.aam = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aal, <4 x float> splat (float 1.000000e+00))
  %i.aan = fmul fast <4 x float> %i.aam, %i.ud
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167:   ; preds = %.lr.ph1090, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i166 = phi nsz <4 x float> [ %i.aan, %bb.q ], [ %i.ue, %bb.l ], [ %i.um, %bb.m ], [ %i.uw, %bb.n ], [ %i.wd, %bb.o ], [ %i.aaa, %bb.p ], [ %i.ud, %.lr.ph1090 ]
  %i.aao = fmul fast <4 x float> %.0.i166, %i.l   ; 2 uses
  %i.aap = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aao)
  %i.aaq = fadd fast <4 x float> %i.aap, %i.aao
  %i.aar = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aaq) ; 2 uses
  %i.aas = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aar, <4 x i32> %i.aar)
  %i.aat = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aas, <8 x i16> splat (i16 -127))
  %i.aau = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aat, <8 x i16> splat (i16 127))
  %i.aav = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aau, <8 x i16> poison)
  %i.aaw = shufflevector <16 x i8> %i.aav, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.aaw, ptr %.21391088, align 1, !tbaa !50
  %i.aax = getelementptr inbounds nuw i8, ptr %.21089, i64 16 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.21391088, i64 4 ; 2 uses
  %i.aaz = add nuw nsw i32 %.21521087, 4          ; 3 uses
  %i.aba = or disjoint i32 %i.aaz, 3
  %i.abb = icmp slt i32 %i.aba, %i.a
  br i1 %i.abb, label %.lr.ph1090, label %.preheader, !llvm.loop !55

.lr.ph1097:                                       ; preds = %.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168
  %.31096 = phi ptr [ %i.acp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.31401095 = phi ptr [ %i.acq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 ], [ %.2139.lcssa, %.preheader ] ; 2 uses
  %.31531094 = phi i32 [ %i.acr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 ], [ %.2152.lcssa, %.preheader ]
  %i.abc = load i32, ptr %.31096, align 4, !tbaa !23
  %i.abd = sitofp fast i32 %i.abc to float
  %i.abe = fmul fast float %i.b, %i.abd           ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.v
    i32 5, label %bb.w
    i32 6, label %bb.x
  ]

bb.r:                                             ; preds = %.lr.ph1097
  %i.abf = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.abe, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.s:                                             ; preds = %.lr.ph1097
  %i.abg = load ptr, ptr %3, align 8, !tbaa !18
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !48
  %i.abi = fcmp fast ogt float %i.abe, 0.000000e+00
  %i.abj = select fast i1 %i.abi, float 1.000000e+00, float %i.abh
  %i.abk = fmul fast float %i.abj, %i.abe
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.t:                                             ; preds = %.lr.ph1097
  %i.abl = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !48
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !48 ; 2 uses
  %.0958 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.abe, float %i.abm) ; 2 uses
  %i.abp = fcmp fast ogt float %.0958, %i.abo
  br i1 %i.abp, label %bb.u, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.u:                                             ; preds = %bb.t
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.v:                                             ; preds = %.lr.ph1097
  %.sroa.speculated65 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.abe, float f0x42B0C0A5)
  %.sroa.speculated61 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated65, float f0xC2B0C0A5)
  %i.abq = fneg fast float %.sroa.speculated61
  %i.abr = tail call fast float @llvm.exp.f32(float %i.abq)
  %i.abs = fadd fast float %i.abr, 1.000000e+00
  %i.abt = fdiv fast float 1.000000e+00, %i.abs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.w:                                             ; preds = %.lr.ph1097
  %i.abu = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.abe)
  %i.abv = fadd fast float %i.abu, 1.000000e+00
  %i.abw = tail call fast float @llvm.log.f32(float %i.abv)
  %i.abx = tail call fast float @llvm.tanh.f32(float %i.abw)
  %i.aby = fmul fast float %i.abx, %i.abe
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.x:                                             ; preds = %.lr.ph1097
  %i.abz = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !48 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !48 ; 2 uses
  %i.acd = fneg fast float %i.acc
  %i.ace = fdiv fast float %i.acd, %i.aca         ; 2 uses
  %i.acf = fcmp fast olt float %i.abe, %i.ace
  br i1 %i.acf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.acg = fdiv fast float 1.000000e+00, %i.aca
  %i.ach = fadd fast float %i.ace, %i.acg
  %i.aci = fcmp fast ogt float %i.abe, %i.ach
  br i1 %i.aci, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.acj = fmul fast float %i.aca, %i.abe
  %i.ack = fadd fast float %i.acj, %i.acc
  %i.acl = fmul fast float %i.ack, %i.abe
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

_ZL13activation_ssfiRKN4ncnn3MatE.exit168:        ; preds = %bb.x, %.lr.ph1097, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.y, %bb.z
  %.1959 = phi nsz float [ %i.abe, %.lr.ph1097 ], [ %i.abf, %bb.r ], [ %i.abk, %bb.s ], [ %i.abo, %bb.u ], [ %.0958, %bb.t ], [ %i.abt, %bb.v ], [ %i.aby, %bb.w ], [ %i.acl, %bb.z ], [ %i.abe, %bb.y ], [ 0.000000e+00, %bb.x ]
  %i.acm = fmul fast float %.1959, %i.j
  %i.acn = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.acm)
  %i.aco = fptosi float %i.acn to i32
  %spec.select.i1701004 = tail call i32 @llvm.smax.i32(i32 %i.aco, i32 -127)
  %.0.i1711005 = tail call i32 @llvm.smin.i32(i32 %spec.select.i1701004, i32 127)
  %.0.i171 = trunc nsw i32 %.0.i1711005 to i8
  store i8 %.0.i171, ptr %.31401095, align 1, !tbaa !50
  %i.acp = getelementptr inbounds nuw i8, ptr %.31096, i64 4
  %i.acq = getelementptr inbounds nuw i8, ptr %.31401095, i64 1
  %i.acr = add nuw nsw i32 %.31531094, 1          ; 2 uses
  %exitcond1116.not = icmp eq i32 %i.acr, %i.a
  br i1 %exitcond1116.not, label %.loopexit, label %.lr.ph1097, !llvm.loop !56

bb.aa:                                            ; preds = %bb.e
  %i.acs = load float, ptr %.0.val1, align 4, !tbaa !48 ; 3 uses
  %i.act = insertelement <4 x float> poison, float %i.acs, i64 0
  %i.acu = shufflevector <4 x float> %i.act, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acv = insertelement <8 x float> poison, float %i.acs, i64 0
  %i.acw = shufflevector <8 x float> %i.acv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acx = icmp sgt i32 %.44.val3, 1
  %or.cond5 = and i1 %i.acx, %i.h
  br i1 %or.cond5, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.acy = load <8 x float>, ptr %.0.val1, align 4, !tbaa !50
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0957 = phi nsz <8 x float> [ %i.acy, %bb.ab ], [ %i.acw, %bb.aa ] ; 3 uses
  %i.acz = icmp sgt i32 %i.a, 15
  br i1 %i.acz, label %.lr.ph, label %.preheader1049

.preheader1049.loopexit:                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156
  %i.ada = and i32 %i.a, 2147483632
  br label %.preheader1049

.preheader1049:                                   ; preds = %.preheader1049.loopexit, %bb.ac
  %.0145.lcssa = phi i32 [ 0, %bb.ac ], [ %i.ada, %.preheader1049.loopexit ] ; 3 uses
  %.4141.lcssa = phi ptr [ %1, %bb.ac ], [ %i.aqh, %.preheader1049.loopexit ] ; 2 uses
  %.4.lcssa = phi ptr [ %0, %bb.ac ], [ %i.aqg, %.preheader1049.loopexit ] ; 2 uses
  %i.adb = or disjoint i32 %.0145.lcssa, 7
  %i.adc = icmp slt i32 %i.adb, %i.a
  br i1 %i.adc, label %.lr.ph1058.preheader, label %.preheader1048

.lr.ph1058.preheader:                             ; preds = %.preheader1049
  %i.add = load ptr, ptr %3, align 8              ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  %i.adf = load ptr, ptr %3, align 8              ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 4
  %i.adh = load ptr, ptr %3, align 8
  br label %.lr.ph1058

.lr.ph:                                           ; preds = %bb.ac, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156
  %.41052 = phi ptr [ %i.aqg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 ], [ %0, %bb.ac ] ; 3 uses
  %.41411051 = phi ptr [ %i.aqh, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 ], [ %1, %bb.ac ] ; 2 uses
  %.01451050 = phi i32 [ %i.aqi, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 ], [ 0, %bb.ac ]
  %i.adi = load <8 x i32>, ptr %.41052, align 1, !tbaa !50
  %i.adj = sitofp fast <8 x i32> %i.adi to <8 x float>
  %i.adk = getelementptr inbounds nuw i8, ptr %.41052, i64 32
  %i.adl = load <8 x i32>, ptr %i.adk, align 1, !tbaa !50
  %i.adm = sitofp fast <8 x i32> %i.adl to <8 x float>
  %i.adn = fmul fast <8 x float> %.0960, %i.adj
  %i.ado = fadd fast <8 x float> %i.adn, %.0957   ; 10 uses
  %i.adp = fmul fast <8 x float> %.0960, %i.adm
  %i.adq = fadd fast <8 x float> %i.adp, %.0957   ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread: ; preds = %.lr.ph
  %i.adr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ado, <8 x float> zeroinitializer)
  %i.ads = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adq, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984: ; preds = %.lr.ph
  %i.adt = load ptr, ptr %3, align 8, !tbaa !18
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !48
  %i.adv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ado)
  %i.adw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.ado)
  %i.adx = insertelement <8 x float> poison, float %i.adu, i64 0
  %i.ady = shufflevector <8 x float> %i.adx, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.adz = fmul fast <8 x float> %i.ady, %i.adw
  %i.aea = fadd fast <8 x float> %i.adz, %i.adv
  %i.aeb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.adq)
  %i.aec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.adq)
  %i.aed = fmul fast <8 x float> %i.ady, %i.aec
  %i.aee = fadd fast <8 x float> %i.aed, %i.aeb
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987: ; preds = %.lr.ph
  %i.aef = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !48
  %i.aeh = insertelement <8 x float> poison, float %i.aeg, i64 0
  %i.aei = shufflevector <8 x float> %i.aeh, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aef, i64 4
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !48
  %i.ael = insertelement <8 x float> poison, float %i.aek, i64 0
  %i.aem = shufflevector <8 x float> %i.ael, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aen = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ado, <8 x float> nofpclass(nan inf) %i.aei)
  %i.aeo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aen, <8 x float> nofpclass(nan inf) %i.aem)
  %i.aep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adq, <8 x float> nofpclass(nan inf) %i.aei)
  %i.aeq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aep, <8 x float> nofpclass(nan inf) %i.aem)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990: ; preds = %.lr.ph
  %i.aer = fneg fast <8 x float> %i.ado
  %i.aes = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aer, <8 x float> splat (float f0x42B0C0A5))
  %i.aet = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aes, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aeu = fmul fast <8 x float> %i.aet, splat (float f0x3FB8AA3B)
  %i.aev = fadd fast <8 x float> %i.aeu, splat (float 5.000000e-01) ; 2 uses
  %i.aew = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aev, i32 1) ; 2 uses
  %i.aex = fcmp fast ogt <8 x float> %i.aew, %i.aev
  %i.aey = select <8 x i1> %i.aex, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aez = fsub fast <8 x float> %i.aew, %i.aey   ; 2 uses
  %i.afa = fmul fast <8 x float> %i.aez, splat (float f0x3F317218)
  %i.afb = fsub fast <8 x float> %i.aet, %i.afa   ; 8 uses
  %i.afc = fmul fast <8 x float> %i.afb, %i.afb
  %i.afd = fmul fast <8 x float> %i.afb, splat (float f0x39506967)
  %i.afe = fadd fast <8 x float> %i.afd, splat (float f0x3AB743CE)
  %i.aff = fmul fast <8 x float> %i.afe, %i.afb
  %i.afg = fadd fast <8 x float> %i.aff, splat (float f0x3C088908)
  %i.afh = fmul fast <8 x float> %i.afg, %i.afb
  %i.afi = fadd fast <8 x float> %i.afh, splat (float f0x3D2AA9C1)
  %i.afj = fmul fast <8 x float> %i.afi, %i.afb
  %i.afk = fadd fast <8 x float> %i.afj, splat (float f0x3E2AAAAA)
  %i.afl = fmul fast <8 x float> %i.afk, %i.afb
  %i.afm = fadd fast <8 x float> %i.afl, splat (float 5.000000e-01)
  %i.afn = fmul fast <8 x float> %i.afc, %i.afm
  %i.afo = fadd fast <8 x float> %i.afb, %i.afn
  %i.afp = fadd fast <8 x float> %i.afo, splat (float 1.000000e+00)
  %i.afq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aez)
  %i.afr = shl <8 x i32> %i.afq, splat (i32 23)
  %i.afs = add <8 x i32> %i.afr, splat (i32 1065353216)
  %i.aft = bitcast <8 x i32> %i.afs to <8 x float>
  %i.afu = fmul fast <8 x float> %i.afp, %i.aft
  %i.afv = fadd fast <8 x float> %i.afu, splat (float 1.000000e+00)
  %i.afw = fdiv fast <8 x float> splat (float 1.000000e+00), %i.afv
  %i.afx = fneg fast <8 x float> %i.adq
  %i.afy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.afx, <8 x float> splat (float f0x42B0C0A5))
  %i.afz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afy, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aga = fmul fast <8 x float> %i.afz, splat (float f0x3FB8AA3B)
  %i.agb = fadd fast <8 x float> %i.aga, splat (float 5.000000e-01) ; 2 uses
  %i.agc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.agb, i32 1) ; 2 uses
  %i.agd = fcmp fast ogt <8 x float> %i.agc, %i.agb
  %i.age = select <8 x i1> %i.agd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.agf = fsub fast <8 x float> %i.agc, %i.age   ; 2 uses
  %i.agg = fmul fast <8 x float> %i.agf, splat (float f0x3F317218)
  %i.agh = fsub fast <8 x float> %i.afz, %i.agg   ; 8 uses
  %i.agi = fmul fast <8 x float> %i.agh, %i.agh
  %i.agj = fmul fast <8 x float> %i.agh, splat (float f0x39506967)
  %i.agk = fadd fast <8 x float> %i.agj, splat (float f0x3AB743CE)
  %i.agl = fmul fast <8 x float> %i.agk, %i.agh
  %i.agm = fadd fast <8 x float> %i.agl, splat (float f0x3C088908)
  %i.agn = fmul fast <8 x float> %i.agm, %i.agh
  %i.ago = fadd fast <8 x float> %i.agn, splat (float f0x3D2AA9C1)
  %i.agp = fmul fast <8 x float> %i.ago, %i.agh
  %i.agq = fadd fast <8 x float> %i.agp, splat (float f0x3E2AAAAA)
  %i.agr = fmul fast <8 x float> %i.agq, %i.agh
  %i.ags = fadd fast <8 x float> %i.agr, splat (float 5.000000e-01)
  %i.agt = fmul fast <8 x float> %i.agi, %i.ags
  %i.agu = fadd fast <8 x float> %i.agh, %i.agt
  %i.agv = fadd fast <8 x float> %i.agu, splat (float 1.000000e+00)
  %i.agw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.agf)
  %i.agx = shl <8 x i32> %i.agw, splat (i32 23)
  %i.agy = add <8 x i32> %i.agx, splat (i32 1065353216)
  %i.agz = bitcast <8 x i32> %i.agy to <8 x float>
  %i.aha = fmul fast <8 x float> %i.agv, %i.agz
  %i.ahb = fadd fast <8 x float> %i.aha, splat (float 1.000000e+00)
  %i.ahc = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ahb
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993: ; preds = %.lr.ph
  %i.ahd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ado, <8 x float> splat (float f0x42B0C0A5))
  %i.ahe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ahd, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ahf = fmul fast <8 x float> %i.ahe, splat (float f0x3FB8AA3B)
  %i.ahg = fadd fast <8 x float> %i.ahf, splat (float 5.000000e-01) ; 2 uses
  %i.ahh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ahg, i32 1) ; 2 uses
  %i.ahi = fcmp fast ogt <8 x float> %i.ahh, %i.ahg
  %i.ahj = select <8 x i1> %i.ahi, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ahk = fsub fast <8 x float> %i.ahh, %i.ahj   ; 2 uses
  %i.ahl = fmul fast <8 x float> %i.ahk, splat (float f0x3F317218)
  %i.ahm = fsub fast <8 x float> %i.ahe, %i.ahl   ; 8 uses
  %i.ahn = fmul fast <8 x float> %i.ahm, %i.ahm
  %i.aho = fmul fast <8 x float> %i.ahm, splat (float f0x39506967)
  %i.ahp = fadd fast <8 x float> %i.aho, splat (float f0x3AB743CE)
  %i.ahq = fmul fast <8 x float> %i.ahp, %i.ahm
  %i.ahr = fadd fast <8 x float> %i.ahq, splat (float f0x3C088908)
  %i.ahs = fmul fast <8 x float> %i.ahr, %i.ahm
  %i.aht = fadd fast <8 x float> %i.ahs, splat (float f0x3D2AA9C1)
  %i.ahu = fmul fast <8 x float> %i.aht, %i.ahm
  %i.ahv = fadd fast <8 x float> %i.ahu, splat (float f0x3E2AAAAA)
  %i.ahw = fmul fast <8 x float> %i.ahv, %i.ahm
  %i.ahx = fadd fast <8 x float> %i.ahw, splat (float 5.000000e-01)
  %i.ahy = fmul fast <8 x float> %i.ahn, %i.ahx
  %i.ahz = fadd fast <8 x float> %i.ahm, %i.ahy
  %i.aia = fadd fast <8 x float> %i.ahz, splat (float 1.000000e+00)
  %i.aib = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ahk)
  %i.aic = shl <8 x i32> %i.aib, splat (i32 23)
  %i.aid = add <8 x i32> %i.aic, splat (i32 1065353216)
  %i.aie = bitcast <8 x i32> %i.aid to <8 x float>
  %i.aif = fmul fast <8 x float> %i.aia, %i.aie
  %i.aig = fadd fast <8 x float> %i.aif, splat (float 1.000000e+00) ; 2 uses
  %i.aih = fcmp fast ole <8 x float> %i.aig, zeroinitializer
  %i.aii = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aig, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.aij = bitcast <8 x float> %i.aii to <8 x i32>
  %i.aik = bitcast <8 x float> %i.aii to <8 x i32>
  %i.ail = and <8 x i32> %i.aik, splat (i32 -2139095041)
  %i.aim = or disjoint <8 x i32> %i.ail, splat (i32 1056964608)
  %i.ain = bitcast <8 x i32> %i.aim to <8 x float> ; 3 uses
  %i.aio = lshr <8 x i32> %i.aij, splat (i32 23)
  %i.aip = add nsw <8 x i32> %i.aio, splat (i32 -127)
  %i.aiq = sitofp fast <8 x i32> %i.aip to <8 x float> ; 2 uses
  %i.air = fadd fast <8 x float> %i.aiq, splat (float 1.000000e+00)
  %i.ais = fcmp fast olt <8 x float> %i.ain, splat (float f0x3F3504F3) ; 2 uses
  %i.ait = select <8 x i1> %i.ais, <8 x float> %i.ain, <8 x float> zeroinitializer
  %i.aiu = fadd fast <8 x float> %i.ain, splat (float -1.000000e+00)
  %i.aiv = select fast <8 x i1> %i.ais, <8 x float> %i.aiq, <8 x float> %i.air
  %i.aiw = fadd fast <8 x float> %i.aiu, %i.ait   ; 12 uses
  %i.aix = fmul fast <8 x float> %i.aiw, %i.aiw   ; 2 uses
  %i.aiy = fmul fast <8 x float> %i.aiw, splat (float f0x3D9021BB)
  %i.aiz = fadd fast <8 x float> %i.aiy, splat (float f0xBDEBD1B8)
  %i.aja = fmul fast <8 x float> %i.aiz, %i.aiw
  %i.ajb = fadd fast <8 x float> %i.aja, splat (float f0x3DEF251A)
  %i.ajc = fmul fast <8 x float> %i.ajb, %i.aiw
  %i.ajd = fadd fast <8 x float> %i.ajc, splat (float f0xBDFE5D4F)
  %i.aje = fmul fast <8 x float> %i.ajd, %i.aiw
  %i.ajf = fadd fast <8 x float> %i.aje, splat (float f0x3E11E9BF)
  %i.ajg = fmul fast <8 x float> %i.ajf, %i.aiw
  %i.ajh = fadd fast <8 x float> %i.ajg, splat (float f0xBE2AAE50)
  %i.aji = fmul fast <8 x float> %i.ajh, %i.aiw
  %i.ajj = fadd fast <8 x float> %i.aji, splat (float f0x3E4CCEAC)
  %i.ajk = fmul fast <8 x float> %i.ajj, %i.aiw
  %i.ajl = fadd fast <8 x float> %i.ajk, splat (float f0xBE7FFFFC)
  %i.ajm = fmul fast <8 x float> %i.ajl, %i.aiw
  %i.ajn = fadd fast <8 x float> %i.ajm, splat (float f0x3EAAAAAA)
  %i.ajo = fmul fast <8 x float> %i.aix, %i.aiw
  %reass.mul1018 = fmul fast <8 x float> %i.ajo, %i.ajn
  %.neg1013 = fmul fast <8 x float> %i.aix, splat (float -5.000000e-01)
  %reass.mul1023 = fmul fast <8 x float> %i.aiv, splat (float f0x3F317218)
  %10 = fadd fast <8 x float> %i.aiw, %.neg1013
  %i.ajp = fadd fast <8 x float> %reass.mul1018, %10
  %i.ajq = fadd fast <8 x float> %i.ajp, %reass.mul1023
  %.neg1002 = fmul fast <8 x float> %i.ajq, splat (float -2.000000e+00)
  %i.ajr = select fast <8 x i1> %i.aih, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1002
  %i.ajs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ajr, <8 x float> splat (float f0x42B0C0A5))
  %i.ajt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ajs, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aju = fmul fast <8 x float> %i.ajt, splat (float f0x3FB8AA3B)
  %i.ajv = fadd fast <8 x float> %i.aju, splat (float 5.000000e-01) ; 2 uses
  %i.ajw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ajv, i32 1) ; 2 uses
  %i.ajx = fcmp fast ogt <8 x float> %i.ajw, %i.ajv
  %i.ajy = select <8 x i1> %i.ajx, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ajz = fsub fast <8 x float> %i.ajw, %i.ajy   ; 2 uses
  %i.aka = fmul fast <8 x float> %i.ajz, splat (float f0x3F317218)
  %i.akb = fsub fast <8 x float> %i.ajt, %i.aka   ; 8 uses
  %i.akc = fmul fast <8 x float> %i.akb, %i.akb
  %i.akd = fmul fast <8 x float> %i.akb, splat (float f0x39506967)
  %i.ake = fadd fast <8 x float> %i.akd, splat (float f0x3AB743CE)
  %i.akf = fmul fast <8 x float> %i.ake, %i.akb
  %i.akg = fadd fast <8 x float> %i.akf, splat (float f0x3C088908)
  %i.akh = fmul fast <8 x float> %i.akg, %i.akb
  %i.aki = fadd fast <8 x float> %i.akh, splat (float f0x3D2AA9C1)
  %i.akj = fmul fast <8 x float> %i.aki, %i.akb
  %i.akk = fadd fast <8 x float> %i.akj, splat (float f0x3E2AAAAA)
  %i.akl = fmul fast <8 x float> %i.akk, %i.akb
  %i.akm = fadd fast <8 x float> %i.akl, splat (float 5.000000e-01)
  %i.akn = fmul fast <8 x float> %i.akc, %i.akm
  %i.ako = fadd fast <8 x float> %i.akb, %i.akn
  %i.akp = fadd fast <8 x float> %i.ako, splat (float 1.000000e+00)
  %i.akq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ajz)
  %i.akr = shl <8 x i32> %i.akq, splat (i32 23)
  %i.aks = add <8 x i32> %i.akr, splat (i32 1065353216)
  %i.akt = bitcast <8 x i32> %i.aks to <8 x float>
  %i.aku = fmul fast <8 x float> %i.akp, %i.akt
  %i.akv = fadd fast <8 x float> %i.aku, splat (float 1.000000e+00)
  %i.akw = fdiv fast <8 x float> splat (float 2.000000e+00), %i.akv
  %i.akx = fadd fast <8 x float> %i.akw, splat (float -1.000000e+00)
  %i.aky = fmul fast <8 x float> %i.akx, %i.ado
  %i.akz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.adq, <8 x float> splat (float f0x42B0C0A5))
  %i.ala = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.akz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.alb = fmul fast <8 x float> %i.ala, splat (float f0x3FB8AA3B)
  %i.alc = fadd fast <8 x float> %i.alb, splat (float 5.000000e-01) ; 2 uses
  %i.ald = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.alc, i32 1) ; 2 uses
  %i.ale = fcmp fast ogt <8 x float> %i.ald, %i.alc
  %i.alf = select <8 x i1> %i.ale, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.alg = fsub fast <8 x float> %i.ald, %i.alf   ; 2 uses
  %i.alh = fmul fast <8 x float> %i.alg, splat (float f0x3F317218)
  %i.ali = fsub fast <8 x float> %i.ala, %i.alh   ; 8 uses
  %i.alj = fmul fast <8 x float> %i.ali, %i.ali
  %i.alk = fmul fast <8 x float> %i.ali, splat (float f0x39506967)
  %i.all = fadd fast <8 x float> %i.alk, splat (float f0x3AB743CE)
  %i.alm = fmul fast <8 x float> %i.all, %i.ali
  %i.aln = fadd fast <8 x float> %i.alm, splat (float f0x3C088908)
  %i.alo = fmul fast <8 x float> %i.aln, %i.ali
  %i.alp = fadd fast <8 x float> %i.alo, splat (float f0x3D2AA9C1)
  %i.alq = fmul fast <8 x float> %i.alp, %i.ali
  %i.alr = fadd fast <8 x float> %i.alq, splat (float f0x3E2AAAAA)
  %i.als = fmul fast <8 x float> %i.alr, %i.ali
  %i.alt = fadd fast <8 x float> %i.als, splat (float 5.000000e-01)
  %i.alu = fmul fast <8 x float> %i.alj, %i.alt
  %i.alv = fadd fast <8 x float> %i.ali, %i.alu
  %i.alw = fadd fast <8 x float> %i.alv, splat (float 1.000000e+00)
  %i.alx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.alg)
  %i.aly = shl <8 x i32> %i.alx, splat (i32 23)
  %i.alz = add <8 x i32> %i.aly, splat (i32 1065353216)
  %i.ama = bitcast <8 x i32> %i.alz to <8 x float>
  %i.amb = fmul fast <8 x float> %i.alw, %i.ama
  %i.amc = fadd fast <8 x float> %i.amb, splat (float 1.000000e+00) ; 2 uses
  %i.amd = fcmp fast ole <8 x float> %i.amc, zeroinitializer
  %i.ame = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.amc, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.amf = bitcast <8 x float> %i.ame to <8 x i32>
  %i.amg = bitcast <8 x float> %i.ame to <8 x i32>
  %i.amh = and <8 x i32> %i.amg, splat (i32 -2139095041)
  %i.ami = or disjoint <8 x i32> %i.amh, splat (i32 1056964608)
  %i.amj = bitcast <8 x i32> %i.ami to <8 x float> ; 3 uses
  %i.amk = lshr <8 x i32> %i.amf, splat (i32 23)
  %i.aml = add nsw <8 x i32> %i.amk, splat (i32 -127)
  %i.amm = sitofp fast <8 x i32> %i.aml to <8 x float> ; 2 uses
  %i.amn = fadd fast <8 x float> %i.amm, splat (float 1.000000e+00)
  %i.amo = fcmp fast olt <8 x float> %i.amj, splat (float f0x3F3504F3) ; 2 uses
  %i.amp = select <8 x i1> %i.amo, <8 x float> %i.amj, <8 x float> zeroinitializer
  %i.amq = fadd fast <8 x float> %i.amj, splat (float -1.000000e+00)
  %i.amr = select fast <8 x i1> %i.amo, <8 x float> %i.amm, <8 x float> %i.amn
  %i.ams = fadd fast <8 x float> %i.amq, %i.amp   ; 12 uses
  %i.amt = fmul fast <8 x float> %i.ams, %i.ams   ; 2 uses
  %i.amu = fmul fast <8 x float> %i.ams, splat (float f0x3D9021BB)
  %i.amv = fadd fast <8 x float> %i.amu, splat (float f0xBDEBD1B8)
  %i.amw = fmul fast <8 x float> %i.amv, %i.ams
  %i.amx = fadd fast <8 x float> %i.amw, splat (float f0x3DEF251A)
  %i.amy = fmul fast <8 x float> %i.amx, %i.ams
  %i.amz = fadd fast <8 x float> %i.amy, splat (float f0xBDFE5D4F)
  %i.ana = fmul fast <8 x float> %i.amz, %i.ams
  %i.anb = fadd fast <8 x float> %i.ana, splat (float f0x3E11E9BF)
  %i.anc = fmul fast <8 x float> %i.anb, %i.ams
  %i.and = fadd fast <8 x float> %i.anc, splat (float f0xBE2AAE50)
  %i.ane = fmul fast <8 x float> %i.and, %i.ams
  %i.anf = fadd fast <8 x float> %i.ane, splat (float f0x3E4CCEAC)
  %i.ang = fmul fast <8 x float> %i.anf, %i.ams
  %i.anh = fadd fast <8 x float> %i.ang, splat (float f0xBE7FFFFC)
  %i.ani = fmul fast <8 x float> %i.anh, %i.ams
  %i.anj = fadd fast <8 x float> %i.ani, splat (float f0x3EAAAAAA)
  %i.ank = fmul fast <8 x float> %i.amt, %i.ams
  %reass.mul1021 = fmul fast <8 x float> %i.ank, %i.anj
  %.neg1015 = fmul fast <8 x float> %i.amt, splat (float -5.000000e-01)
  %reass.mul1025 = fmul fast <8 x float> %i.amr, splat (float f0x3F317218)
  %11 = fadd fast <8 x float> %i.ams, %.neg1015
  %i.anl = fadd fast <8 x float> %reass.mul1021, %11
  %i.anm = fadd fast <8 x float> %i.anl, %reass.mul1025
  %.neg1003 = fmul fast <8 x float> %i.anm, splat (float -2.000000e+00)
  %i.ann = select fast <8 x i1> %i.amd, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1003
  %i.ano = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ann, <8 x float> splat (float f0x42B0C0A5))
  %i.anp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ano, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.anq = fmul fast <8 x float> %i.anp, splat (float f0x3FB8AA3B)
  %i.anr = fadd fast <8 x float> %i.anq, splat (float 5.000000e-01) ; 2 uses
  %i.ans = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.anr, i32 1) ; 2 uses
  %i.ant = fcmp fast ogt <8 x float> %i.ans, %i.anr
  %i.anu = select <8 x i1> %i.ant, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.anv = fsub fast <8 x float> %i.ans, %i.anu   ; 2 uses
  %i.anw = fmul fast <8 x float> %i.anv, splat (float f0x3F317218)
  %i.anx = fsub fast <8 x float> %i.anp, %i.anw   ; 8 uses
  %i.any = fmul fast <8 x float> %i.anx, %i.anx
  %i.anz = fmul fast <8 x float> %i.anx, splat (float f0x39506967)
  %i.aoa = fadd fast <8 x float> %i.anz, splat (float f0x3AB743CE)
  %i.aob = fmul fast <8 x float> %i.aoa, %i.anx
  %i.aoc = fadd fast <8 x float> %i.aob, splat (float f0x3C088908)
  %i.aod = fmul fast <8 x float> %i.aoc, %i.anx
  %i.aoe = fadd fast <8 x float> %i.aod, splat (float f0x3D2AA9C1)
  %i.aof = fmul fast <8 x float> %i.aoe, %i.anx
  %i.aog = fadd fast <8 x float> %i.aof, splat (float f0x3E2AAAAA)
  %i.aoh = fmul fast <8 x float> %i.aog, %i.anx
  %i.aoi = fadd fast <8 x float> %i.aoh, splat (float 5.000000e-01)
  %i.aoj = fmul fast <8 x float> %i.any, %i.aoi
  %i.aok = fadd fast <8 x float> %i.anx, %i.aoj
  %i.aol = fadd fast <8 x float> %i.aok, splat (float 1.000000e+00)
  %i.aom = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.anv)
  %i.aon = shl <8 x i32> %i.aom, splat (i32 23)
  %i.aoo = add <8 x i32> %i.aon, splat (i32 1065353216)
  %i.aop = bitcast <8 x i32> %i.aoo to <8 x float>
  %i.aoq = fmul fast <8 x float> %i.aol, %i.aop
  %i.aor = fadd fast <8 x float> %i.aoq, splat (float 1.000000e+00)
  %i.aos = fdiv fast <8 x float> splat (float 2.000000e+00), %i.aor
  %i.aot = fadd fast <8 x float> %i.aos, splat (float -1.000000e+00)
  %i.aou = fmul fast <8 x float> %i.aot, %i.adq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996: ; preds = %.lr.ph
  %i.aov = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !48
  %i.aox = insertelement <8 x float> poison, float %i.aow, i64 0
  %i.aoy = shufflevector <8 x float> %i.aox, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aov, i64 4
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !48
  %i.apb = insertelement <8 x float> poison, float %i.apa, i64 0
  %i.apc = shufflevector <8 x float> %i.apb, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.apd = fmul fast <8 x float> %i.aoy, %i.ado
  %i.ape = fadd fast <8 x float> %i.apd, %i.apc
  %i.apf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ape, <8 x float> zeroinitializer)
  %i.apg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.apf, <8 x float> splat (float 1.000000e+00))
  %i.aph = fmul fast <8 x float> %i.apg, %i.ado
  %i.api = fmul fast <8 x float> %i.aoy, %i.adq
  %i.apj = fadd fast <8 x float> %i.api, %i.apc
  %i.apk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.apj, <8 x float> zeroinitializer)
  %i.apl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.apk, <8 x float> splat (float 1.000000e+00))
  %i.apm = fmul fast <8 x float> %i.apl, %i.adq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156:   ; preds = %.lr.ph, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996
  %.0.i157983 = phi <8 x float> [ %i.aph, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996 ], [ %i.adr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread ], [ %i.aea, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984 ], [ %i.aeo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987 ], [ %i.afw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990 ], [ %i.aky, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993 ], [ %i.ado, %.lr.ph ]
  %.0.i155 = phi nsz <8 x float> [ %i.apm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996 ], [ %i.ads, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread ], [ %i.aee, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984 ], [ %i.aeq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987 ], [ %i.ahc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990 ], [ %i.aou, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993 ], [ %i.adq, %.lr.ph ]
  %i.apn = fmul fast <8 x float> %.0.i157983, %.0149 ; 2 uses
  %i.apo = fmul fast <8 x float> %.0.i155, %.0149 ; 2 uses
  %i.app = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.apn)
  %i.apq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.apo)
  %i.apr = fadd fast <8 x float> %i.app, %i.apn
  %i.aps = fadd fast <8 x float> %i.apq, %i.apo
  %i.apt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.apr) ; 2 uses
  %i.apu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aps) ; 2 uses
  %i.apv = shufflevector <8 x i32> %i.apt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.apw = shufflevector <8 x i32> %i.apt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.apx = shufflevector <8 x i32> %i.apu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.apy = shufflevector <8 x i32> %i.apu, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.apz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.apv, <4 x i32> %i.apw)
  %i.aqa = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.apx, <4 x i32> %i.apy)
  %i.aqb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.apz, <8 x i16> splat (i16 -127))
  %i.aqc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aqb, <8 x i16> splat (i16 127))
  %i.aqd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aqa, <8 x i16> splat (i16 -127))
  %i.aqe = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aqd, <8 x i16> splat (i16 127))
  %i.aqf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aqc, <8 x i16> %i.aqe)
  store <16 x i8> %i.aqf, ptr %.41411051, align 1, !tbaa !50
  %i.aqg = getelementptr inbounds nuw i8, ptr %.41052, i64 64 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.41411051, i64 16 ; 2 uses
  %i.aqi = add nuw nsw i32 %.01451050, 16         ; 2 uses
  %i.aqj = or disjoint i32 %i.aqi, 15
  %i.aqk = icmp slt i32 %i.aqj, %i.a
  br i1 %i.aqk, label %.lr.ph, label %.preheader1049.loopexit, !llvm.loop !57

.preheader1048:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %.preheader1049
  %.1146.lcssa = phi i32 [ %.0145.lcssa, %.preheader1049 ], [ %i.axi, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.5142.lcssa = phi ptr [ %.4141.lcssa, %.preheader1049 ], [ %i.axh, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader1049 ], [ %i.axg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.aql = or disjoint i32 %.1146.lcssa, 3
  %i.aqm = icmp slt i32 %i.aql, %i.a
  br i1 %i.aqm, label %.lr.ph1065, label %.preheader1046

.lr.ph1058:                                       ; preds = %.lr.ph1058.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.51057 = phi ptr [ %i.axg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.4.lcssa, %.lr.ph1058.preheader ] ; 2 uses
  %.51421056 = phi ptr [ %i.axh, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.4141.lcssa, %.lr.ph1058.preheader ] ; 2 uses
  %.11461055 = phi i32 [ %i.axi, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.0145.lcssa, %.lr.ph1058.preheader ]
  %i.aqn = load <8 x i32>, ptr %.51057, align 1, !tbaa !50
  %i.aqo = sitofp fast <8 x i32> %i.aqn to <8 x float>
  %i.aqp = fmul fast <8 x float> %.0960, %i.aqo
  %i.aqq = fadd fast <8 x float> %i.aqp, %.0957   ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.ag
    i32 5, label %bb.ah
    i32 6, label %bb.ai
  ]

bb.ad:                                            ; preds = %.lr.ph1058
  %i.aqr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aqq, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ae:                                            ; preds = %.lr.ph1058
  %i.aqs = load float, ptr %i.adh, align 4, !tbaa !48
  %i.aqt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.aqq)
  %i.aqu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.aqq)
  %i.aqv = insertelement <8 x float> poison, float %i.aqs, i64 0
  %i.aqw = shufflevector <8 x float> %i.aqv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqx = fmul fast <8 x float> %i.aqw, %i.aqu
  %i.aqy = fadd fast <8 x float> %i.aqx, %i.aqt
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %.lr.ph1058
  %i.aqz = load float, ptr %i.adf, align 4, !tbaa !48
  %i.ara = insertelement <8 x float> poison, float %i.aqz, i64 0
  %i.arb = shufflevector <8 x float> %i.ara, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arc = load float, ptr %i.adg, align 4, !tbaa !48
  %i.ard = insertelement <8 x float> poison, float %i.arc, i64 0
  %i.are = shufflevector <8 x float> %i.ard, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aqq, <8 x float> nofpclass(nan inf) %i.arb)
  %i.arg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.arf, <8 x float> nofpclass(nan inf) %i.are)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ag:                                            ; preds = %.lr.ph1058
  %i.arh = fneg fast <8 x float> %i.aqq
  %i.ari = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.arh, <8 x float> splat (float f0x42B0C0A5))
  %i.arj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ari, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ark = fmul fast <8 x float> %i.arj, splat (float f0x3FB8AA3B)
  %i.arl = fadd fast <8 x float> %i.ark, splat (float 5.000000e-01) ; 2 uses
  %i.arm = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.arl, i32 1) ; 2 uses
  %i.arn = fcmp fast ogt <8 x float> %i.arm, %i.arl
  %i.aro = select <8 x i1> %i.arn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.arp = fsub fast <8 x float> %i.arm, %i.aro   ; 2 uses
  %i.arq = fmul fast <8 x float> %i.arp, splat (float f0x3F317218)
  %i.arr = fsub fast <8 x float> %i.arj, %i.arq   ; 8 uses
  %i.ars = fmul fast <8 x float> %i.arr, %i.arr
  %i.art = fmul fast <8 x float> %i.arr, splat (float f0x39506967)
  %i.aru = fadd fast <8 x float> %i.art, splat (float f0x3AB743CE)
  %i.arv = fmul fast <8 x float> %i.aru, %i.arr
  %i.arw = fadd fast <8 x float> %i.arv, splat (float f0x3C088908)
  %i.arx = fmul fast <8 x float> %i.arw, %i.arr
  %i.ary = fadd fast <8 x float> %i.arx, splat (float f0x3D2AA9C1)
  %i.arz = fmul fast <8 x float> %i.ary, %i.arr
  %i.asa = fadd fast <8 x float> %i.arz, splat (float f0x3E2AAAAA)
  %i.asb = fmul fast <8 x float> %i.asa, %i.arr
  %i.asc = fadd fast <8 x float> %i.asb, splat (float 5.000000e-01)
  %i.asd = fmul fast <8 x float> %i.ars, %i.asc
  %i.ase = fadd fast <8 x float> %i.arr, %i.asd
  %i.asf = fadd fast <8 x float> %i.ase, splat (float 1.000000e+00)
  %i.asg = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.arp)
  %i.ash = shl <8 x i32> %i.asg, splat (i32 23)
  %i.asi = add <8 x i32> %i.ash, splat (i32 1065353216)
  %i.asj = bitcast <8 x i32> %i.asi to <8 x float>
  %i.ask = fmul fast <8 x float> %i.asf, %i.asj
  %i.asl = fadd fast <8 x float> %i.ask, splat (float 1.000000e+00)
  %i.asm = fdiv fast <8 x float> splat (float 1.000000e+00), %i.asl
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ah:                                            ; preds = %.lr.ph1058
  %i.asn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aqq, <8 x float> splat (float f0x42B0C0A5))
  %i.aso = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.asn, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.asp = fmul fast <8 x float> %i.aso, splat (float f0x3FB8AA3B)
  %i.asq = fadd fast <8 x float> %i.asp, splat (float 5.000000e-01) ; 2 uses
  %i.asr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.asq, i32 1) ; 2 uses
  %i.ass = fcmp fast ogt <8 x float> %i.asr, %i.asq
  %i.ast = select <8 x i1> %i.ass, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.asu = fsub fast <8 x float> %i.asr, %i.ast   ; 2 uses
  %i.asv = fmul fast <8 x float> %i.asu, splat (float f0x3F317218)
  %i.asw = fsub fast <8 x float> %i.aso, %i.asv   ; 8 uses
  %i.asx = fmul fast <8 x float> %i.asw, %i.asw
  %i.asy = fmul fast <8 x float> %i.asw, splat (float f0x39506967)
  %i.asz = fadd fast <8 x float> %i.asy, splat (float f0x3AB743CE)
  %i.ata = fmul fast <8 x float> %i.asz, %i.asw
  %i.atb = fadd fast <8 x float> %i.ata, splat (float f0x3C088908)
  %i.atc = fmul fast <8 x float> %i.atb, %i.asw
  %i.atd = fadd fast <8 x float> %i.atc, splat (float f0x3D2AA9C1)
  %i.ate = fmul fast <8 x float> %i.atd, %i.asw
  %i.atf = fadd fast <8 x float> %i.ate, splat (float f0x3E2AAAAA)
  %i.atg = fmul fast <8 x float> %i.atf, %i.asw
  %i.ath = fadd fast <8 x float> %i.atg, splat (float 5.000000e-01)
  %i.ati = fmul fast <8 x float> %i.asx, %i.ath
  %i.atj = fadd fast <8 x float> %i.asw, %i.ati
  %i.atk = fadd fast <8 x float> %i.atj, splat (float 1.000000e+00)
  %i.atl = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.asu)
  %i.atm = shl <8 x i32> %i.atl, splat (i32 23)
  %i.atn = add <8 x i32> %i.atm, splat (i32 1065353216)
  %i.ato = bitcast <8 x i32> %i.atn to <8 x float>
  %i.atp = fmul fast <8 x float> %i.atk, %i.ato
  %i.atq = fadd fast <8 x float> %i.atp, splat (float 1.000000e+00) ; 2 uses
  %i.atr = fcmp fast ole <8 x float> %i.atq, zeroinitializer
  %i.ats = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.atq, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.att = bitcast <8 x float> %i.ats to <8 x i32>
  %i.atu = bitcast <8 x float> %i.ats to <8 x i32>
  %i.atv = and <8 x i32> %i.atu, splat (i32 -2139095041)
  %i.atw = or disjoint <8 x i32> %i.atv, splat (i32 1056964608)
  %i.atx = bitcast <8 x i32> %i.atw to <8 x float> ; 3 uses
  %i.aty = lshr <8 x i32> %i.att, splat (i32 23)
  %i.atz = add nsw <8 x i32> %i.aty, splat (i32 -127)
  %i.aua = sitofp fast <8 x i32> %i.atz to <8 x float> ; 2 uses
  %i.aub = fadd fast <8 x float> %i.aua, splat (float 1.000000e+00)
  %i.auc = fcmp fast olt <8 x float> %i.atx, splat (float f0x3F3504F3) ; 2 uses
  %i.aud = select <8 x i1> %i.auc, <8 x float> %i.atx, <8 x float> zeroinitializer
  %i.aue = fadd fast <8 x float> %i.atx, splat (float -1.000000e+00)
  %i.auf = select fast <8 x i1> %i.auc, <8 x float> %i.aua, <8 x float> %i.aub
  %i.aug = fadd fast <8 x float> %i.aue, %i.aud   ; 12 uses
  %i.auh = fmul fast <8 x float> %i.aug, %i.aug   ; 2 uses
  %i.aui = fmul fast <8 x float> %i.aug, splat (float f0x3D9021BB)
  %i.auj = fadd fast <8 x float> %i.aui, splat (float f0xBDEBD1B8)
  %i.auk = fmul fast <8 x float> %i.auj, %i.aug
  %i.aul = fadd fast <8 x float> %i.auk, splat (float f0x3DEF251A)
  %i.aum = fmul fast <8 x float> %i.aul, %i.aug
  %i.aun = fadd fast <8 x float> %i.aum, splat (float f0xBDFE5D4F)
  %i.auo = fmul fast <8 x float> %i.aun, %i.aug
  %i.aup = fadd fast <8 x float> %i.auo, splat (float f0x3E11E9BF)
  %i.auq = fmul fast <8 x float> %i.aup, %i.aug
  %i.aur = fadd fast <8 x float> %i.auq, splat (float f0xBE2AAE50)
  %i.aus = fmul fast <8 x float> %i.aur, %i.aug
  %i.aut = fadd fast <8 x float> %i.aus, splat (float f0x3E4CCEAC)
  %i.auu = fmul fast <8 x float> %i.aut, %i.aug
  %i.auv = fadd fast <8 x float> %i.auu, splat (float f0xBE7FFFFC)
  %i.auw = fmul fast <8 x float> %i.auv, %i.aug
  %i.aux = fadd fast <8 x float> %i.auw, splat (float f0x3EAAAAAA)
  %i.auy = fmul fast <8 x float> %i.auh, %i.aug
  %reass.mul1014 = fmul fast <8 x float> %i.auy, %i.aux
  %.neg1011 = fmul fast <8 x float> %i.auh, splat (float -5.000000e-01)
  %reass.mul1016 = fmul fast <8 x float> %i.auf, splat (float f0x3F317218)
  %12 = fadd fast <8 x float> %i.aug, %.neg1011
  %i.auz = fadd fast <8 x float> %reass.mul1014, %12
  %i.ava = fadd fast <8 x float> %i.auz, %reass.mul1016
  %.neg1001 = fmul fast <8 x float> %i.ava, splat (float -2.000000e+00)
  %i.avb = select fast <8 x i1> %i.atr, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1001
  %i.avc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.avb, <8 x float> splat (float f0x42B0C0A5))
  %i.avd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.avc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ave = fmul fast <8 x float> %i.avd, splat (float f0x3FB8AA3B)
  %i.avf = fadd fast <8 x float> %i.ave, splat (float 5.000000e-01) ; 2 uses
  %i.avg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.avf, i32 1) ; 2 uses
  %i.avh = fcmp fast ogt <8 x float> %i.avg, %i.avf
  %i.avi = select <8 x i1> %i.avh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.avj = fsub fast <8 x float> %i.avg, %i.avi   ; 2 uses
  %i.avk = fmul fast <8 x float> %i.avj, splat (float f0x3F317218)
  %i.avl = fsub fast <8 x float> %i.avd, %i.avk   ; 8 uses
  %i.avm = fmul fast <8 x float> %i.avl, %i.avl
  %i.avn = fmul fast <8 x float> %i.avl, splat (float f0x39506967)
  %i.avo = fadd fast <8 x float> %i.avn, splat (float f0x3AB743CE)
  %i.avp = fmul fast <8 x float> %i.avo, %i.avl
  %i.avq = fadd fast <8 x float> %i.avp, splat (float f0x3C088908)
  %i.avr = fmul fast <8 x float> %i.avq, %i.avl
  %i.avs = fadd fast <8 x float> %i.avr, splat (float f0x3D2AA9C1)
  %i.avt = fmul fast <8 x float> %i.avs, %i.avl
  %i.avu = fadd fast <8 x float> %i.avt, splat (float f0x3E2AAAAA)
  %i.avv = fmul fast <8 x float> %i.avu, %i.avl
  %i.avw = fadd fast <8 x float> %i.avv, splat (float 5.000000e-01)
  %i.avx = fmul fast <8 x float> %i.avm, %i.avw
  %i.avy = fadd fast <8 x float> %i.avl, %i.avx
  %i.avz = fadd fast <8 x float> %i.avy, splat (float 1.000000e+00)
  %i.awa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.avj)
  %i.awb = shl <8 x i32> %i.awa, splat (i32 23)
  %i.awc = add <8 x i32> %i.awb, splat (i32 1065353216)
  %i.awd = bitcast <8 x i32> %i.awc to <8 x float>
  %i.awe = fmul fast <8 x float> %i.avz, %i.awd
  %i.awf = fadd fast <8 x float> %i.awe, splat (float 1.000000e+00)
  %i.awg = fdiv fast <8 x float> splat (float 2.000000e+00), %i.awf
  %i.awh = fadd fast <8 x float> %i.awg, splat (float -1.000000e+00)
  %i.awi = fmul fast <8 x float> %i.awh, %i.aqq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ai:                                            ; preds = %.lr.ph1058
  %i.awj = load float, ptr %i.add, align 4, !tbaa !48
  %i.awk = insertelement <8 x float> poison, float %i.awj, i64 0
  %i.awl = shufflevector <8 x float> %i.awk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awm = load float, ptr %i.ade, align 4, !tbaa !48
  %i.awn = insertelement <8 x float> poison, float %i.awm, i64 0
  %i.awo = shufflevector <8 x float> %i.awn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awp = fmul fast <8 x float> %i.awl, %i.aqq
  %i.awq = fadd fast <8 x float> %i.awp, %i.awo
  %i.awr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.awq, <8 x float> zeroinitializer)
  %i.aws = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.awr, <8 x float> splat (float 1.000000e+00))
  %i.awt = fmul fast <8 x float> %i.aws, %i.aqq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.lr.ph1058, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i = phi nsz <8 x float> [ %i.awt, %bb.ai ], [ %i.aqr, %bb.ad ], [ %i.aqy, %bb.ae ], [ %i.arg, %bb.af ], [ %i.asm, %bb.ag ], [ %i.awi, %bb.ah ], [ %i.aqq, %.lr.ph1058 ]
  %i.awu = fmul fast <8 x float> %.0.i, %.0149    ; 2 uses
  %i.awv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.awu)
  %i.aww = fadd fast <8 x float> %i.awv, %i.awu
  %i.awx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aww) ; 2 uses
  %i.awy = shufflevector <8 x i32> %i.awx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awz = shufflevector <8 x i32> %i.awx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.axa = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.awy, <4 x i32> %i.awz)
  %i.axb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.axa, <8 x i16> splat (i16 -127))
  %i.axc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.axb, <8 x i16> splat (i16 127))
  %i.axd = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.axc, <8 x i16> poison)
  %i.axe = bitcast <16 x i8> %i.axd to <2 x i64>
  %i.axf = extractelement <2 x i64> %i.axe, i64 0
  store i64 %i.axf, ptr %.51421056, align 8, !tbaa !53
  %i.axg = getelementptr inbounds nuw i8, ptr %.51057, i64 32 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %.51421056, i64 8 ; 2 uses
  %i.axi = add nuw nsw i32 %.11461055, 8          ; 3 uses
  %i.axj = or disjoint i32 %i.axi, 7
  %i.axk = icmp slt i32 %i.axj, %i.a
  br i1 %i.axk, label %.lr.ph1058, label %.preheader1048, !llvm.loop !58

.preheader1046:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.preheader1048
  %.2147.lcssa = phi i32 [ %.1146.lcssa, %.preheader1048 ], [ %i.bel, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %.6143.lcssa = phi ptr [ %.5142.lcssa, %.preheader1048 ], [ %i.bek, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader1048 ], [ %i.bej, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.axl = icmp slt i32 %.2147.lcssa, %i.a
  br i1 %i.axl, label %.lr.ph1072, label %.loopexit

.lr.ph1065:                                       ; preds = %.preheader1048, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.61064 = phi ptr [ %i.bej, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.5.lcssa, %.preheader1048 ] ; 2 uses
  %.61431063 = phi ptr [ %i.bek, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.5142.lcssa, %.preheader1048 ] ; 2 uses
  %.21471062 = phi i32 [ %i.bel, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.1146.lcssa, %.preheader1048 ]
  %i.axm = load <4 x i32>, ptr %.61064, align 1, !tbaa !50
  %i.axn = sitofp fast <4 x i32> %i.axm to <4 x float>
  %i.axo = fmul fast <4 x float> %i.d, %i.axn
  %i.axp = fadd fast <4 x float> %i.axo, %i.acu   ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 4, label %bb.am
    i32 5, label %bb.an
    i32 6, label %bb.ao
  ]

bb.aj:                                            ; preds = %.lr.ph1065
  %i.axq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.axp, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ak:                                            ; preds = %.lr.ph1065
  %i.axr = load ptr, ptr %3, align 8, !tbaa !18
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !48
  %i.axt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.axp)
  %i.axu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.axp)
  %i.axv = insertelement <4 x float> poison, float %i.axs, i64 0
  %i.axw = shufflevector <4 x float> %i.axv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axx = fmul fast <4 x float> %i.axw, %i.axu
  %i.axy = fadd fast <4 x float> %i.axx, %i.axt
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.al:                                            ; preds = %.lr.ph1065
  %i.axz = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aya = load float, ptr %i.axz, align 4, !tbaa !48
  %i.ayb = insertelement <4 x float> poison, float %i.aya, i64 0
  %i.ayc = shufflevector <4 x float> %i.ayb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axz, i64 4
  %i.aye = load float, ptr %i.ayd, align 4, !tbaa !48
  %i.ayf = insertelement <4 x float> poison, float %i.aye, i64 0
  %i.ayg = shufflevector <4 x float> %i.ayf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ayh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.axp, <4 x float> nofpclass(nan inf) %i.ayc)
  %i.ayi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayh, <4 x float> nofpclass(nan inf) %i.ayg)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.am:                                            ; preds = %.lr.ph1065
  %i.ayj = fneg fast <4 x float> %i.axp
  %i.ayk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayj, <4 x float> splat (float f0x42B0C0A5))
  %i.ayl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aym = fmul fast <4 x float> %i.ayl, splat (float f0x3FB8AA3B)
  %i.ayn = fadd fast <4 x float> %i.aym, splat (float 5.000000e-01) ; 2 uses
  %i.ayo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ayn)
  %i.ayp = sitofp fast <4 x i32> %i.ayo to <4 x float> ; 2 uses
  %i.ayq = fcmp fast olt <4 x float> %i.ayn, %i.ayp
  %i.ayr = select <4 x i1> %i.ayq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ays = fsub fast <4 x float> %i.ayp, %i.ayr   ; 2 uses
  %i.ayt = fmul fast <4 x float> %i.ays, splat (float f0x3F317218)
  %i.ayu = fsub fast <4 x float> %i.ayl, %i.ayt   ; 8 uses
  %i.ayv = fmul fast <4 x float> %i.ayu, %i.ayu
  %i.ayw = fmul fast <4 x float> %i.ayu, splat (float f0x39506967)
  %i.ayx = fadd fast <4 x float> %i.ayw, splat (float f0x3AB743CE)
  %i.ayy = fmul fast <4 x float> %i.ayx, %i.ayu
  %i.ayz = fadd fast <4 x float> %i.ayy, splat (float f0x3C088908)
  %i.aza = fmul fast <4 x float> %i.ayz, %i.ayu
  %i.azb = fadd fast <4 x float> %i.aza, splat (float f0x3D2AA9C1)
  %i.azc = fmul fast <4 x float> %i.azb, %i.ayu
  %i.azd = fadd fast <4 x float> %i.azc, splat (float f0x3E2AAAAA)
  %i.aze = fmul fast <4 x float> %i.azd, %i.ayu
  %i.azf = fadd fast <4 x float> %i.aze, splat (float 5.000000e-01)
  %i.azg = fmul fast <4 x float> %i.ayv, %i.azf
  %i.azh = fadd fast <4 x float> %i.ayu, %i.azg
  %i.azi = fadd fast <4 x float> %i.azh, splat (float 1.000000e+00)
  %i.azj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ays)
  %i.azk = shl <4 x i32> %i.azj, splat (i32 23)
  %i.azl = add <4 x i32> %i.azk, splat (i32 1065353216)
  %i.azm = bitcast <4 x i32> %i.azl to <4 x float>
  %i.azn = fmul fast <4 x float> %i.azi, %i.azm
  %i.azo = fadd fast <4 x float> %i.azn, splat (float 1.000000e+00)
  %i.azp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.azo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.an:                                            ; preds = %.lr.ph1065
  %i.azq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.axp, <4 x float> splat (float f0x42B0C0A5))
  %i.azr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.azq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.azs = fmul fast <4 x float> %i.azr, splat (float f0x3FB8AA3B)
  %i.azt = fadd fast <4 x float> %i.azs, splat (float 5.000000e-01) ; 2 uses
  %i.azu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.azt)
  %i.azv = sitofp fast <4 x i32> %i.azu to <4 x float> ; 2 uses
  %i.azw = fcmp fast olt <4 x float> %i.azt, %i.azv
  %i.azx = select <4 x i1> %i.azw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.azy = fsub fast <4 x float> %i.azv, %i.azx   ; 2 uses
  %i.azz = fmul fast <4 x float> %i.azy, splat (float f0x3F317218)
  %i.baa = fsub fast <4 x float> %i.azr, %i.azz   ; 8 uses
  %i.bab = fmul fast <4 x float> %i.baa, %i.baa
  %i.bac = fmul fast <4 x float> %i.baa, splat (float f0x39506967)
  %i.bad = fadd fast <4 x float> %i.bac, splat (float f0x3AB743CE)
  %i.bae = fmul fast <4 x float> %i.bad, %i.baa
  %i.baf = fadd fast <4 x float> %i.bae, splat (float f0x3C088908)
  %i.bag = fmul fast <4 x float> %i.baf, %i.baa
  %i.bah = fadd fast <4 x float> %i.bag, splat (float f0x3D2AA9C1)
  %i.bai = fmul fast <4 x float> %i.bah, %i.baa
  %i.baj = fadd fast <4 x float> %i.bai, splat (float f0x3E2AAAAA)
  %i.bak = fmul fast <4 x float> %i.baj, %i.baa
  %i.bal = fadd fast <4 x float> %i.bak, splat (float 5.000000e-01)
  %i.bam = fmul fast <4 x float> %i.bab, %i.bal
  %i.ban = fadd fast <4 x float> %i.baa, %i.bam
  %i.bao = fadd fast <4 x float> %i.ban, splat (float 1.000000e+00)
  %i.bap = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.azy)
  %i.baq = shl <4 x i32> %i.bap, splat (i32 23)
  %i.bar = add <4 x i32> %i.baq, splat (i32 1065353216)
  %i.bas = bitcast <4 x i32> %i.bar to <4 x float>
  %i.bat = fmul fast <4 x float> %i.bao, %i.bas
  %i.bau = fadd fast <4 x float> %i.bat, splat (float 1.000000e+00) ; 2 uses
  %i.bav = fcmp fast ole <4 x float> %i.bau, zeroinitializer
  %i.baw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bau, <4 x float> splat (float f0x00800000))
  %i.bax = bitcast <4 x float> %i.baw to <4 x i32> ; 2 uses
  %i.bay = lshr <4 x i32> %i.bax, splat (i32 23)
  %i.baz = and <4 x i32> %i.bax, splat (i32 -2139095041)
  %i.bba = or disjoint <4 x i32> %i.baz, splat (i32 1056964608)
  %i.bbb = bitcast <4 x i32> %i.bba to <4 x float> ; 3 uses
  %i.bbc = add nsw <4 x i32> %i.bay, splat (i32 -127)
  %i.bbd = sitofp fast <4 x i32> %i.bbc to <4 x float> ; 2 uses
  %i.bbe = fadd fast <4 x float> %i.bbd, splat (float 1.000000e+00)
  %i.bbf = fcmp fast olt <4 x float> %i.bbb, splat (float f0x3F3504F3) ; 2 uses
  %i.bbg = select <4 x i1> %i.bbf, <4 x float> %i.bbb, <4 x float> zeroinitializer
  %i.bbh = fadd fast <4 x float> %i.bbb, splat (float -1.000000e+00)
  %i.bbi = select fast <4 x i1> %i.bbf, <4 x float> %i.bbd, <4 x float> %i.bbe
  %i.bbj = fadd fast <4 x float> %i.bbh, %i.bbg   ; 12 uses
  %i.bbk = fmul fast <4 x float> %i.bbj, %i.bbj   ; 2 uses
  %i.bbl = fmul fast <4 x float> %i.bbj, splat (float f0x3D9021BB)
  %i.bbm = fadd fast <4 x float> %i.bbl, splat (float f0xBDEBD1B8)
  %i.bbn = fmul fast <4 x float> %i.bbm, %i.bbj
  %i.bbo = fadd fast <4 x float> %i.bbn, splat (float f0x3DEF251A)
  %i.bbp = fmul fast <4 x float> %i.bbo, %i.bbj
  %i.bbq = fadd fast <4 x float> %i.bbp, splat (float f0xBDFE5D4F)
  %i.bbr = fmul fast <4 x float> %i.bbq, %i.bbj
  %i.bbs = fadd fast <4 x float> %i.bbr, splat (float f0x3E11E9BF)
  %i.bbt = fmul fast <4 x float> %i.bbs, %i.bbj
  %i.bbu = fadd fast <4 x float> %i.bbt, splat (float f0xBE2AAE50)
  %i.bbv = fmul fast <4 x float> %i.bbu, %i.bbj
  %i.bbw = fadd fast <4 x float> %i.bbv, splat (float f0x3E4CCEAC)
  %i.bbx = fmul fast <4 x float> %i.bbw, %i.bbj
  %i.bby = fadd fast <4 x float> %i.bbx, splat (float f0xBE7FFFFC)
  %i.bbz = fmul fast <4 x float> %i.bby, %i.bbj
  %i.bca = fadd fast <4 x float> %i.bbz, splat (float f0x3EAAAAAA)
  %i.bcb = fmul fast <4 x float> %i.bbk, %i.bbj
  %reass.mul.a = fmul fast <4 x float> %i.bcb, %i.bca
  %.neg1010 = fmul fast <4 x float> %i.bbk, splat (float -5.000000e-01)
  %reass.mul1012 = fmul fast <4 x float> %i.bbi, splat (float f0x3F317218)
  %13 = fadd fast <4 x float> %i.bbj, %.neg1010
  %i.bcc = fadd fast <4 x float> %reass.mul.a, %13
  %i.bcd = fadd fast <4 x float> %i.bcc, %reass.mul1012
  %.neg = fmul fast <4 x float> %i.bcd, splat (float -2.000000e+00)
  %i.bce = select fast <4 x i1> %i.bav, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.bcf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bce, <4 x float> splat (float f0x42B0C0A5))
  %i.bcg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bcf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bch = fmul fast <4 x float> %i.bcg, splat (float f0x3FB8AA3B)
  %i.bci = fadd fast <4 x float> %i.bch, splat (float 5.000000e-01) ; 2 uses
  %i.bcj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bci)
  %i.bck = sitofp fast <4 x i32> %i.bcj to <4 x float> ; 2 uses
  %i.bcl = fcmp fast olt <4 x float> %i.bci, %i.bck
  %i.bcm = select <4 x i1> %i.bcl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bcn = fsub fast <4 x float> %i.bck, %i.bcm   ; 2 uses
  %i.bco = fmul fast <4 x float> %i.bcn, splat (float f0x3F317218)
  %i.bcp = fsub fast <4 x float> %i.bcg, %i.bco   ; 8 uses
  %i.bcq = fmul fast <4 x float> %i.bcp, %i.bcp
  %i.bcr = fmul fast <4 x float> %i.bcp, splat (float f0x39506967)
  %i.bcs = fadd fast <4 x float> %i.bcr, splat (float f0x3AB743CE)
  %i.bct = fmul fast <4 x float> %i.bcs, %i.bcp
  %i.bcu = fadd fast <4 x float> %i.bct, splat (float f0x3C088908)
  %i.bcv = fmul fast <4 x float> %i.bcu, %i.bcp
  %i.bcw = fadd fast <4 x float> %i.bcv, splat (float f0x3D2AA9C1)
  %i.bcx = fmul fast <4 x float> %i.bcw, %i.bcp
  %i.bcy = fadd fast <4 x float> %i.bcx, splat (float f0x3E2AAAAA)
  %i.bcz = fmul fast <4 x float> %i.bcy, %i.bcp
  %i.bda = fadd fast <4 x float> %i.bcz, splat (float 5.000000e-01)
  %i.bdb = fmul fast <4 x float> %i.bcq, %i.bda
  %i.bdc = fadd fast <4 x float> %i.bcp, %i.bdb
  %i.bdd = fadd fast <4 x float> %i.bdc, splat (float 1.000000e+00)
  %i.bde = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bcn)
  %i.bdf = shl <4 x i32> %i.bde, splat (i32 23)
  %i.bdg = add <4 x i32> %i.bdf, splat (i32 1065353216)
  %i.bdh = bitcast <4 x i32> %i.bdg to <4 x float>
  %i.bdi = fmul fast <4 x float> %i.bdd, %i.bdh
  %i.bdj = fadd fast <4 x float> %i.bdi, splat (float 1.000000e+00)
  %i.bdk = fdiv fast <4 x float> splat (float 2.000000e+00), %i.bdj
  %i.bdl = fadd fast <4 x float> %i.bdk, splat (float -1.000000e+00)
  %i.bdm = fmul fast <4 x float> %i.bdl, %i.axp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ao:                                            ; preds = %.lr.ph1065
  %i.bdn = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.bdo = load float, ptr %i.bdn, align 4, !tbaa !48
  %i.bdp = insertelement <4 x float> poison, float %i.bdo, i64 0
  %i.bdq = shufflevector <4 x float> %i.bdp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdn, i64 4
  %i.bds = load float, ptr %i.bdr, align 4, !tbaa !48
  %i.bdt = insertelement <4 x float> poison, float %i.bds, i64 0
  %i.bdu = shufflevector <4 x float> %i.bdt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdv = fmul fast <4 x float> %i.bdq, %i.axp
  %i.bdw = fadd fast <4 x float> %i.bdv, %i.bdu
  %i.bdx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bdw, <4 x float> zeroinitializer)
  %i.bdy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bdx, <4 x float> splat (float 1.000000e+00))
  %i.bdz = fmul fast <4 x float> %i.bdy, %i.axp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.lr.ph1065, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao
  %.0.i165 = phi nsz <4 x float> [ %i.bdz, %bb.ao ], [ %i.axq, %bb.aj ], [ %i.axy, %bb.ak ], [ %i.ayi, %bb.al ], [ %i.azp, %bb.am ], [ %i.bdm, %bb.an ], [ %i.axp, %.lr.ph1065 ]
  %i.bea = fmul fast <4 x float> %.0.i165, %i.l   ; 2 uses
  %i.beb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bea)
  %i.bec = fadd fast <4 x float> %i.beb, %i.bea
  %i.bed = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bec) ; 2 uses
  %i.bee = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bed, <4 x i32> %i.bed)
  %i.bef = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bee, <8 x i16> splat (i16 -127))
  %i.beg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bef, <8 x i16> splat (i16 127))
  %i.beh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.beg, <8 x i16> poison)
  %i.bei = shufflevector <16 x i8> %i.beh, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.bei, ptr %.61431063, align 1, !tbaa !50
  %i.bej = getelementptr inbounds nuw i8, ptr %.61064, i64 16 ; 2 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %.61431063, i64 4 ; 2 uses
  %i.bel = add nuw nsw i32 %.21471062, 4          ; 3 uses
  %i.bem = or disjoint i32 %i.bel, 3
  %i.ben = icmp slt i32 %i.bem, %i.a
  br i1 %i.ben, label %.lr.ph1065, label %.preheader1046, !llvm.loop !59

.lr.ph1072:                                       ; preds = %.preheader1046, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.71071 = phi ptr [ %i.bgc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.6.lcssa, %.preheader1046 ] ; 2 uses
  %.71441070 = phi ptr [ %i.bgd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.6143.lcssa, %.preheader1046 ] ; 2 uses
  %.31481069 = phi i32 [ %i.bge, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.2147.lcssa, %.preheader1046 ]
  %i.beo = load i32, ptr %.71071, align 4, !tbaa !23
  %i.bep = sitofp fast i32 %i.beo to float
  %i.beq = fmul fast float %i.b, %i.bep
  %i.ber = fadd fast float %i.beq, %i.acs         ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ap
    i32 2, label %bb.aq
    i32 3, label %bb.ar
    i32 4, label %bb.at
    i32 5, label %bb.au
    i32 6, label %bb.av
  ]

bb.ap:                                            ; preds = %.lr.ph1072
  %i.bes = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.ber, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.aq:                                            ; preds = %.lr.ph1072
  %i.bet = load ptr, ptr %3, align 8, !tbaa !18
  %i.beu = load float, ptr %i.bet, align 4, !tbaa !48
  %i.bev = fcmp fast ogt float %i.ber, 0.000000e+00
  %i.bew = select fast i1 %i.bev, float 1.000000e+00, float %i.beu
  %i.bex = fmul fast float %i.bew, %i.ber
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ar:                                            ; preds = %.lr.ph1072
  %i.bey = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.bez = load float, ptr %i.bey, align 4, !tbaa !48
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bey, i64 4
  %i.bfb = load float, ptr %i.bfa, align 4, !tbaa !48 ; 2 uses
  %.0961 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ber, float %i.bez) ; 2 uses
  %i.bfc = fcmp fast ogt float %.0961, %i.bfb
  br i1 %i.bfc, label %bb.as, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.as:                                            ; preds = %bb.ar
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.at:                                            ; preds = %.lr.ph1072
  %.sroa.speculated51 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.ber, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated51, float f0xC2B0C0A5)
  %i.bfd = fneg fast float %.sroa.speculated
  %i.bfe = tail call fast float @llvm.exp.f32(float %i.bfd)
  %i.bff = fadd fast float %i.bfe, 1.000000e+00
  %i.bfg = fdiv fast float 1.000000e+00, %i.bff
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.au:                                            ; preds = %.lr.ph1072
  %i.bfh = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ber)
  %i.bfi = fadd fast float %i.bfh, 1.000000e+00
  %i.bfj = tail call fast float @llvm.log.f32(float %i.bfi)
  %i.bfk = tail call fast float @llvm.tanh.f32(float %i.bfj)
  %i.bfl = fmul fast float %i.bfk, %i.ber
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.av:                                            ; preds = %.lr.ph1072
  %i.bfm = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.bfn = load float, ptr %i.bfm, align 4, !tbaa !48 ; 3 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfm, i64 4
  %i.bfp = load float, ptr %i.bfo, align 4, !tbaa !48 ; 2 uses
  %i.bfq = fneg fast float %i.bfp
  %i.bfr = fdiv fast float %i.bfq, %i.bfn         ; 2 uses
  %i.bfs = fcmp fast olt float %i.ber, %i.bfr
  br i1 %i.bfs, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bft = fdiv fast float 1.000000e+00, %i.bfn
  %i.bfu = fadd fast float %i.bfr, %i.bft
  %i.bfv = fcmp fast ogt float %i.ber, %i.bfu
  br i1 %i.bfv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bfw = fmul fast float %i.bfn, %i.ber
  %i.bfx = fadd fast float %i.bfw, %i.bfp
  %i.bfy = fmul fast float %i.bfx, %i.ber
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.av, %.lr.ph1072, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.aw, %bb.ax
  %.1962 = phi nsz float [ %i.ber, %.lr.ph1072 ], [ %i.bes, %bb.ap ], [ %i.bex, %bb.aq ], [ %i.bfb, %bb.as ], [ %.0961, %bb.ar ], [ %i.bfg, %bb.at ], [ %i.bfl, %bb.au ], [ %i.bfy, %bb.ax ], [ %i.ber, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.bfz = fmul fast float %.1962, %i.j
  %i.bga = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bfz)
  %i.bgb = fptosi float %i.bga to i32
  %spec.select.i999 = tail call i32 @llvm.smax.i32(i32 %i.bgb, i32 -127)
  %.0.i1691000 = tail call i32 @llvm.smin.i32(i32 %spec.select.i999, i32 127)
  %.0.i169 = trunc nsw i32 %.0.i1691000 to i8
  store i8 %.0.i169, ptr %.71441070, align 1, !tbaa !50
  %i.bgc = getelementptr inbounds nuw i8, ptr %.71071, i64 4
  %i.bgd = getelementptr inbounds nuw i8, ptr %.71441070, i64 1
  %i.bge = add nuw nsw i32 %.31481069, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bge, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph1072, !llvm.loop !60

.loopexit:                                        ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168, %.preheader1046, %.preheader
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !61 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #5

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Requantize_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.h = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not91 = icmp sgt i32 %i.k, %i.j
  br i1 %.not91, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 296 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 328 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 340
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 312
end_hunk_0
