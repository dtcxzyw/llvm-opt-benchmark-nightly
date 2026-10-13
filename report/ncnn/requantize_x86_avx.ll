Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/requantize_x86_avx?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_ZNK4ncnn18Requantize_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.032 = phi i32 [ %i.k, %.lr.ph ], [ %i.ag, %bb.c ] ; 3 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !22     ; 2 uses
  %i.u = mul nsw i32 %i.t, %.032                  ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !19
  %i.w = load i32, ptr %5, align 4, !tbaa !22     ; 2 uses
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %6, align 8, !tbaa !19
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.y
  %i.ac = load i32, ptr %7, align 4, !tbaa !22
  %i.ad = sub nsw i32 %i.ac, %i.u
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.ad)
  %i.ae = mul nsw i32 %.sroa.speculated, %i.w
  %i.af = load i32, ptr %i.o, align 4, !tbaa !38
  %.val = load ptr, ptr %i.l, align 8, !tbaa !19
  %.val25 = load i32, ptr %i.q, align 4, !tbaa !21
  %.val26 = load ptr, ptr %i.m, align 8
  %.val27 = load i32, ptr %i.r, align 4, !tbaa !21
  %.val28 = load ptr, ptr %i.n, align 8
  %.val29 = load i32, ptr %i.s, align 4, !tbaa !21
  call fastcc void @_ZN4ncnnL10requantizeEPKiPaRKNS_3MatES5_S5_iS5_ii(ptr noundef %i.z, ptr noundef %i.ab, ptr %.val, i32 %.val25, ptr %.val26, i32 %.val27, ptr %.val28, i32 %.val29, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ae, i32 noundef 1)
  %i.ag = add nsw i32 %.032, 1
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !22
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
  %i.b = load float, ptr %.0.val, align 4, !tbaa !63 ; 4 uses
  %i.c = insertelement <4 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.e = insertelement <8 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <8 x float> %i.e, <8 x float> poison, <8 x i32> zeroinitializer
  %i.g = icmp sgt i32 %.44.val, 1
  %i.h = icmp eq i32 %5, 8                        ; 3 uses
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load <8 x float>, ptr %.0.val, align 4, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0958 = phi nsz <8 x float> [ %i.i, %bb.b ], [ %i.f, %bb.a ] ; 6 uses
  %i.j = load float, ptr %.0.val5, align 4, !tbaa !63 ; 4 uses
  %i.k = insertelement <4 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.m = insertelement <8 x float> poison, float %i.j, i64 0
  %i.n = shufflevector <8 x float> %i.m, <8 x float> poison, <8 x i32> zeroinitializer
  %i.o = icmp sgt i32 %.44.val7, 1
  %or.cond3 = and i1 %i.o, %i.h
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load <8 x float>, ptr %.0.val5, align 4, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0153 = phi nsz <8 x float> [ %i.p, %bb.d ], [ %i.n, %bb.c ] ; 6 uses
  %i.q = icmp eq i32 %.44.val3, 0
  br i1 %i.q, label %.preheader1048, label %bb.z

.preheader1048:                                   ; preds = %bb.e
  %i.r = icmp sgt i32 %i.a, 15
  br i1 %i.r, label %.lr.ph1079, label %.preheader1047

.preheader1047.loopexit:                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162
  %i.s = and i32 %i.a, 2147483632
  br label %.preheader1047

.preheader1047:                                   ; preds = %.preheader1047.loopexit, %.preheader1048
  %.0149.lcssa = phi i32 [ 0, %.preheader1048 ], [ %i.s, %.preheader1047.loopexit ] ; 3 uses
  %.0137.lcssa = phi ptr [ %1, %.preheader1048 ], [ %i.mx, %.preheader1047.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %.preheader1048 ], [ %i.mw, %.preheader1047.loopexit ] ; 2 uses
  %i.t = or disjoint i32 %.0149.lcssa, 7
  %i.u = icmp slt i32 %i.t, %i.a
  br i1 %i.u, label %.lr.ph1086.preheader, label %.preheader1046

.lr.ph1086.preheader:                             ; preds = %.preheader1047
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load ptr, ptr %3, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load ptr, ptr %3, align 8
  br label %.lr.ph1086

.lr.ph1079:                                       ; preds = %.preheader1048, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162
  %.01078 = phi ptr [ %i.mw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 ], [ %0, %.preheader1048 ] ; 3 uses
  %.01371077 = phi ptr [ %i.mx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 ], [ %1, %.preheader1048 ] ; 2 uses
  %.01491076 = phi i32 [ %i.my, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 ], [ 0, %.preheader1048 ]
  %i.aa = load <8 x i32>, ptr %.01078, align 1, !tbaa !64
  %i.ab = sitofp fast <8 x i32> %i.aa to <8 x float>
  %i.ac = getelementptr inbounds nuw i8, ptr %.01078, i64 32
  %i.ad = load <8 x i32>, ptr %i.ac, align 1, !tbaa !64
  %i.ae = sitofp fast <8 x i32> %i.ad to <8 x float>
  %i.af = fmul fast <8 x float> %.0958, %i.ab     ; 10 uses
  %i.ag = fmul fast <8 x float> %.0958, %i.ae     ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162 [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread: ; preds = %.lr.ph1079
  %i.ah = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> zeroinitializer)
  %i.ai = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966: ; preds = %.lr.ph1079
  %i.aj = load ptr, ptr %3, align 8, !tbaa !19
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !63
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

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969: ; preds = %.lr.ph1079
  %i.av = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !63
  %i.ax = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !63
  %i.bb = insertelement <8 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <8 x float> %i.bb, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.af, <8 x float> nofpclass(nan inf) %i.ay)
  %i.be = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %i.bc)
  %i.bf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> nofpclass(nan inf) %i.ay)
  %i.bg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bf, <8 x float> nofpclass(nan inf) %i.bc)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972: ; preds = %.lr.ph1079
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

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975: ; preds = %.lr.ph1079
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
  %i.fn = fmul fast <8 x float> %i.fm, %i.fm
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
  %i.ge = fmul fast <8 x float> %i.gd, %i.fm
  %reass.mul1038 = fmul fast <8 x float> %i.fl, splat (float f0x3F317218)
  %reass.add1042 = fadd fast <8 x float> %i.ge, splat (float -5.000000e-01)
  %reass.mul1043 = fmul fast <8 x float> %i.fn, %reass.add1042
  %i.gf = fadd fast <8 x float> %reass.mul1038, %i.fm
  %i.gg = fadd fast <8 x float> %i.gf, %reass.mul1043
  %.neg1011 = fmul fast <8 x float> %i.gg, splat (float -2.000000e+00)
  %i.gh = select fast <8 x i1> %i.ex, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1011
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
  %i.jj = fmul fast <8 x float> %i.ji, %i.ji
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
  %i.ka = fmul fast <8 x float> %i.jz, %i.ji
  %reass.mul1041 = fmul fast <8 x float> %i.jh, splat (float f0x3F317218)
  %reass.add1044 = fadd fast <8 x float> %i.ka, splat (float -5.000000e-01)
  %reass.mul1045 = fmul fast <8 x float> %i.jj, %reass.add1044
  %i.kb = fadd fast <8 x float> %reass.mul1041, %i.ji
  %i.kc = fadd fast <8 x float> %i.kb, %reass.mul1045
  %.neg1012 = fmul fast <8 x float> %i.kc, splat (float -2.000000e+00)
  %i.kd = select fast <8 x i1> %i.it, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1012
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

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978: ; preds = %.lr.ph1079
  %i.ll = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !63
  %i.ln = insertelement <8 x float> poison, float %i.lm, i64 0
  %i.lo = shufflevector <8 x float> %i.ln, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !63
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

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit162:   ; preds = %.lr.ph1079, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978
  %.0.i163965 = phi <8 x float> [ %i.lx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978 ], [ %i.ah, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread ], [ %i.aq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966 ], [ %i.be, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969 ], [ %i.cm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972 ], [ %i.ho, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975 ], [ %i.af, %.lr.ph1079 ]
  %.0.i161 = phi nsz <8 x float> [ %i.mc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread978 ], [ %i.ai, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread ], [ %i.au, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread966 ], [ %i.bg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread969 ], [ %i.ds, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread972 ], [ %i.lk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit164.thread975 ], [ %i.ag, %.lr.ph1079 ]
  %i.md = fmul fast <8 x float> %.0.i163965, %.0153 ; 2 uses
  %i.me = fmul fast <8 x float> %.0.i161, %.0153  ; 2 uses
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
  store <16 x i8> %i.mv, ptr %.01371077, align 1, !tbaa !64
  %i.mw = getelementptr inbounds nuw i8, ptr %.01078, i64 64 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.01371077, i64 16 ; 2 uses
  %i.my = add nuw nsw i32 %.01491076, 16          ; 2 uses
  %i.mz = or disjoint i32 %i.my, 15
  %i.na = icmp slt i32 %i.mz, %i.a
  br i1 %i.na, label %.lr.ph1079, label %.preheader1047.loopexit, !llvm.loop !54

.preheader1046:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160, %.preheader1047
  %.1150.lcssa = phi i32 [ %.0149.lcssa, %.preheader1047 ], [ %i.tx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ] ; 3 uses
  %.1138.lcssa = phi ptr [ %.0137.lcssa, %.preheader1047 ], [ %i.tw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader1047 ], [ %i.tv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ] ; 2 uses
  %i.nb = or disjoint i32 %.1150.lcssa, 3
  %i.nc = icmp slt i32 %i.nb, %i.a
  br i1 %i.nc, label %.lr.ph1093, label %.preheader

.lr.ph1086:                                       ; preds = %.lr.ph1086.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160
  %.11085 = phi ptr [ %i.tv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ], [ %.0.lcssa, %.lr.ph1086.preheader ] ; 2 uses
  %.11381084 = phi ptr [ %i.tw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ], [ %.0137.lcssa, %.lr.ph1086.preheader ] ; 2 uses
  %.11501083 = phi i32 [ %i.tx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 ], [ %.0149.lcssa, %.lr.ph1086.preheader ]
  %i.nd = load <8 x i32>, ptr %.11085, align 1, !tbaa !64
  %i.ne = sitofp fast <8 x i32> %i.nd to <8 x float>
  %i.nf = fmul fast <8 x float> %.0958, %i.ne     ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160 [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.f:                                             ; preds = %.lr.ph1086
  %i.ng = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nf, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.g:                                             ; preds = %.lr.ph1086
  %i.nh = load float, ptr %i.z, align 4, !tbaa !63
  %i.ni = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.nf)
  %i.nj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.nf)
  %i.nk = insertelement <8 x float> poison, float %i.nh, i64 0
  %i.nl = shufflevector <8 x float> %i.nk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nm = fmul fast <8 x float> %i.nl, %i.nj
  %i.nn = fadd fast <8 x float> %i.nm, %i.ni
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.h:                                             ; preds = %.lr.ph1086
  %i.no = load float, ptr %i.x, align 4, !tbaa !63
  %i.np = insertelement <8 x float> poison, float %i.no, i64 0
  %i.nq = shufflevector <8 x float> %i.np, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nr = load float, ptr %i.y, align 4, !tbaa !63
  %i.ns = insertelement <8 x float> poison, float %i.nr, i64 0
  %i.nt = shufflevector <8 x float> %i.ns, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nf, <8 x float> nofpclass(nan inf) %i.nq)
  %i.nv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.nu, <8 x float> nofpclass(nan inf) %i.nt)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

bb.i:                                             ; preds = %.lr.ph1086
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

bb.j:                                             ; preds = %.lr.ph1086
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
  %i.qw = fmul fast <8 x float> %i.qv, %i.qv
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
  %i.rn = fmul fast <8 x float> %i.rm, %i.qv
  %reass.mul1034 = fmul fast <8 x float> %i.qu, splat (float f0x3F317218)
  %reass.add1035 = fadd fast <8 x float> %i.rn, splat (float -5.000000e-01)
  %reass.mul1036 = fmul fast <8 x float> %i.qw, %reass.add1035
  %i.ro = fadd fast <8 x float> %reass.mul1034, %i.qv
  %i.rp = fadd fast <8 x float> %i.ro, %reass.mul1036
  %.neg1010 = fmul fast <8 x float> %i.rp, splat (float -2.000000e+00)
  %i.rq = select fast <8 x i1> %i.qg, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1010
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

bb.k:                                             ; preds = %.lr.ph1086
  %i.sy = load float, ptr %i.v, align 4, !tbaa !63
  %i.sz = insertelement <8 x float> poison, float %i.sy, i64 0
  %i.ta = shufflevector <8 x float> %i.sz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tb = load float, ptr %i.w, align 4, !tbaa !63
  %i.tc = insertelement <8 x float> poison, float %i.tb, i64 0
  %i.td = shufflevector <8 x float> %i.tc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.te = fmul fast <8 x float> %i.ta, %i.nf
  %i.tf = fadd fast <8 x float> %i.te, %i.td
  %i.tg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.tf, <8 x float> zeroinitializer)
  %i.th = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.tg, <8 x float> splat (float 1.000000e+00))
  %i.ti = fmul fast <8 x float> %i.th, %i.nf
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit160:   ; preds = %.lr.ph1086, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i159 = phi nsz <8 x float> [ %i.ti, %bb.k ], [ %i.ng, %bb.f ], [ %i.nn, %bb.g ], [ %i.nv, %bb.h ], [ %i.pb, %bb.i ], [ %i.sx, %bb.j ], [ %i.nf, %.lr.ph1086 ]
  %i.tj = fmul fast <8 x float> %.0.i159, %.0153  ; 2 uses
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
  store i64 %i.tu, ptr %.11381084, align 8, !tbaa !66
  %i.tv = getelementptr inbounds nuw i8, ptr %.11085, i64 32 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.11381084, i64 8 ; 2 uses
  %i.tx = add nuw nsw i32 %.11501083, 8           ; 3 uses
  %i.ty = or disjoint i32 %i.tx, 7
  %i.tz = icmp slt i32 %i.ty, %i.a
  br i1 %i.tz, label %.lr.ph1086, label %.preheader1046, !llvm.loop !55

.preheader:                                       ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167, %.preheader1046
  %.2151.lcssa = phi i32 [ %.1150.lcssa, %.preheader1046 ], [ %i.aaz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ] ; 2 uses
  %.2139.lcssa = phi ptr [ %.1138.lcssa, %.preheader1046 ], [ %i.aay, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ]
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader1046 ], [ %i.aax, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ]
  %i.ua = icmp slt i32 %.2151.lcssa, %i.a
  br i1 %i.ua, label %.lr.ph1100, label %.loopexit

.lr.ph1093:                                       ; preds = %.preheader1046, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167
  %.21092 = phi ptr [ %i.aax, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ], [ %.1.lcssa, %.preheader1046 ] ; 2 uses
  %.21391091 = phi ptr [ %i.aay, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ], [ %.1138.lcssa, %.preheader1046 ] ; 2 uses
  %.21511090 = phi i32 [ %i.aaz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167 ], [ %.1150.lcssa, %.preheader1046 ]
  %i.ub = load <4 x i32>, ptr %.21092, align 1, !tbaa !64
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

bb.l:                                             ; preds = %.lr.ph1093
  %i.ue = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ud, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.m:                                             ; preds = %.lr.ph1093
  %i.uf = load ptr, ptr %3, align 8, !tbaa !19
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !63
  %i.uh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ud)
  %i.ui = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ud)
  %i.uj = insertelement <4 x float> poison, float %i.ug, i64 0
  %i.uk = shufflevector <4 x float> %i.uj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ul = fmul fast <4 x float> %i.uk, %i.ui
  %i.um = fadd fast <4 x float> %i.ul, %i.uh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.n:                                             ; preds = %.lr.ph1093
  %i.un = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.uo = load float, ptr %i.un, align 4, !tbaa !63
  %i.up = insertelement <4 x float> poison, float %i.uo, i64 0
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.us = load float, ptr %i.ur, align 4, !tbaa !63
  %i.ut = insertelement <4 x float> poison, float %i.us, i64 0
  %i.uu = shufflevector <4 x float> %i.ut, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ud, <4 x float> nofpclass(nan inf) %i.uq)
  %i.uw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.uv, <4 x float> nofpclass(nan inf) %i.uu)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

bb.o:                                             ; preds = %.lr.ph1093
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

bb.p:                                             ; preds = %.lr.ph1093
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
  %i.xy = fmul fast <4 x float> %i.xx, %i.xx
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
  %i.yp = fmul fast <4 x float> %i.yo, %i.xx
  %reass.mul1030 = fmul fast <4 x float> %i.xw, splat (float f0x3F317218)
  %reass.add1031 = fadd fast <4 x float> %i.yp, splat (float -5.000000e-01)
  %reass.mul1032 = fmul fast <4 x float> %i.xy, %reass.add1031
  %i.yq = fadd fast <4 x float> %reass.mul1030, %i.xx
  %i.yr = fadd fast <4 x float> %i.yq, %reass.mul1032
  %.neg1009 = fmul fast <4 x float> %i.yr, splat (float -2.000000e+00)
  %i.ys = select fast <4 x i1> %i.xj, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg1009
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

bb.q:                                             ; preds = %.lr.ph1093
  %i.aab = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !63
  %i.aad = insertelement <4 x float> poison, float %i.aac, i64 0
  %i.aae = shufflevector <4 x float> %i.aad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !63
  %i.aah = insertelement <4 x float> poison, float %i.aag, i64 0
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaj = fmul fast <4 x float> %i.aae, %i.ud
  %i.aak = fadd fast <4 x float> %i.aaj, %i.aai
  %i.aal = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aak, <4 x float> zeroinitializer)
  %i.aam = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aal, <4 x float> splat (float 1.000000e+00))
  %i.aan = fmul fast <4 x float> %i.aam, %i.ud
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit167:   ; preds = %.lr.ph1093, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i166 = phi nsz <4 x float> [ %i.aan, %bb.q ], [ %i.ue, %bb.l ], [ %i.um, %bb.m ], [ %i.uw, %bb.n ], [ %i.wd, %bb.o ], [ %i.aaa, %bb.p ], [ %i.ud, %.lr.ph1093 ]
  %i.aao = fmul fast <4 x float> %.0.i166, %i.l   ; 2 uses
  %i.aap = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aao)
  %i.aaq = fadd fast <4 x float> %i.aap, %i.aao
  %i.aar = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aaq)
  %i.aas = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aar, <4 x i32> poison)
  %i.aat = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aas, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.aau = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aat, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.aav = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aau, <8 x i16> poison)
  %i.aaw = shufflevector <16 x i8> %i.aav, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.aaw, ptr %.21391091, align 1, !tbaa !64
  %i.aax = getelementptr inbounds nuw i8, ptr %.21092, i64 16 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.21391091, i64 4 ; 2 uses
  %i.aaz = add nuw nsw i32 %.21511090, 4          ; 3 uses
  %i.aba = or disjoint i32 %i.aaz, 3
  %i.abb = icmp slt i32 %i.aba, %i.a
  br i1 %i.abb, label %.lr.ph1093, label %.preheader, !llvm.loop !56

.lr.ph1100:                                       ; preds = %.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168
  %.31099 = phi ptr [ %i.aco, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.31401098 = phi ptr [ %i.acp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 ], [ %.2139.lcssa, %.preheader ] ; 2 uses
  %.31521097 = phi i32 [ %i.acq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 ], [ %.2151.lcssa, %.preheader ]
  %i.abc = load i32, ptr %.31099, align 4, !tbaa !22
  %i.abd = sitofp fast i32 %i.abc to float
  %i.abe = fmul fast float %i.b, %i.abd           ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168 [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
    i32 6, label %bb.w
  ]

bb.r:                                             ; preds = %.lr.ph1100
  %i.abf = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.abe, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.s:                                             ; preds = %.lr.ph1100
  %i.abg = load ptr, ptr %3, align 8, !tbaa !19
  %i.abh = load float, ptr %i.abg, align 4, !tbaa !63
  %i.abi = fcmp fast ogt float %i.abe, 0.000000e+00
  %i.abj = select fast i1 %i.abi, float 1.000000e+00, float %i.abh
  %i.abk = fmul fast float %i.abj, %i.abe
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.t:                                             ; preds = %.lr.ph1100
  %i.abl = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !63
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !63
  %spec.select = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.abe, float %i.abm)
  %spec.select1000 = tail call nnan ninf nsz float @llvm.minnum.f32(float %spec.select, float %i.abo)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.u:                                             ; preds = %.lr.ph1100
  %.sroa.speculated65 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.abe, float f0x42B0C0A5)
  %.sroa.speculated61 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated65, float f0xC2B0C0A5)
  %i.abp = fneg fast float %.sroa.speculated61
  %i.abq = tail call fast float @llvm.exp.f32(float %i.abp)
  %i.abr = fadd fast float %i.abq, 1.000000e+00
  %i.abs = fdiv fast float 1.000000e+00, %i.abr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.v:                                             ; preds = %.lr.ph1100
  %i.abt = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.abe)
  %i.abu = fadd fast float %i.abt, 1.000000e+00
  %i.abv = tail call fast float @llvm.log.f32(float %i.abu)
  %i.abw = tail call fast float @llvm.tanh.f32(float %i.abv)
  %i.abx = fmul fast float %i.abw, %i.abe
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

bb.w:                                             ; preds = %.lr.ph1100
  %i.aby = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !63 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !63 ; 2 uses
  %i.acc = fneg fast float %i.acb
  %i.acd = fdiv fast float %i.acc, %i.abz         ; 2 uses
  %i.ace = fcmp fast olt float %i.abe, %i.acd
  br i1 %i.ace, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.acf = fdiv fast float 1.000000e+00, %i.abz
  %i.acg = fadd fast float %i.acd, %i.acf
  %i.ach = fcmp fast ogt float %i.abe, %i.acg
  br i1 %i.ach, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aci = fmul fast float %i.abz, %i.abe
  %i.acj = fadd fast float %i.aci, %i.acb
  %i.ack = fmul fast float %i.acj, %i.abe
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit168

_ZL13activation_ssfiRKN4ncnn3MatE.exit168:        ; preds = %bb.t, %bb.w, %.lr.ph1100, %bb.r, %bb.s, %bb.u, %bb.v, %bb.x, %bb.y
  %.1960 = phi nsz float [ %i.abe, %.lr.ph1100 ], [ %i.abf, %bb.r ], [ %i.abk, %bb.s ], [ 0.000000e+00, %bb.w ], [ %spec.select1000, %bb.t ], [ %i.abs, %bb.u ], [ %i.abx, %bb.v ], [ %i.ack, %bb.y ], [ %i.abe, %bb.x ]
  %i.acl = fmul fast float %.1960, %i.j
  %i.acm = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.acl)
  %i.acn = fptosi float %i.acm to i32
  %spec.select.i1701007 = tail call i32 @llvm.smax.i32(i32 %i.acn, i32 -127)
  %.0.i1711008 = tail call i32 @llvm.smin.i32(i32 %spec.select.i1701007, i32 127)
  %.0.i171 = trunc nsw i32 %.0.i1711008 to i8
  store i8 %.0.i171, ptr %.31401098, align 1, !tbaa !64
  %i.aco = getelementptr inbounds nuw i8, ptr %.31099, i64 4
  %i.acp = getelementptr inbounds nuw i8, ptr %.31401098, i64 1
  %i.acq = add nuw nsw i32 %.31521097, 1          ; 2 uses
  %exitcond1119.not = icmp eq i32 %i.acq, %i.a
  br i1 %exitcond1119.not, label %.loopexit, label %.lr.ph1100, !llvm.loop !57

bb.z:                                             ; preds = %bb.e
  %i.acr = load float, ptr %.0.val1, align 4, !tbaa !63 ; 3 uses
  %i.acs = insertelement <4 x float> poison, float %i.acr, i64 0
  %i.act = shufflevector <4 x float> %i.acs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acu = insertelement <8 x float> poison, float %i.acr, i64 0
  %i.acv = shufflevector <8 x float> %i.acu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acw = icmp sgt i32 %.44.val3, 1
  %or.cond5 = and i1 %i.acw, %i.h
  br i1 %or.cond5, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.acx = load <8 x float>, ptr %.0.val1, align 4, !tbaa !64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0957 = phi nsz <8 x float> [ %i.acx, %bb.aa ], [ %i.acv, %bb.z ] ; 3 uses
  %i.acy = icmp sgt i32 %i.a, 15
  br i1 %i.acy, label %.lr.ph, label %.preheader1052

.preheader1052.loopexit:                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156
  %i.acz = and i32 %i.a, 2147483632
  br label %.preheader1052

.preheader1052:                                   ; preds = %.preheader1052.loopexit, %bb.ab
  %.0145.lcssa = phi i32 [ 0, %bb.ab ], [ %i.acz, %.preheader1052.loopexit ] ; 3 uses
  %.4141.lcssa = phi ptr [ %1, %bb.ab ], [ %i.aqg, %.preheader1052.loopexit ] ; 2 uses
  %.4.lcssa = phi ptr [ %0, %bb.ab ], [ %i.aqf, %.preheader1052.loopexit ] ; 2 uses
  %i.ada = or disjoint i32 %.0145.lcssa, 7
  %i.adb = icmp slt i32 %i.ada, %i.a
  br i1 %i.adb, label %.lr.ph1061.preheader, label %.preheader1051

.lr.ph1061.preheader:                             ; preds = %.preheader1052
  %i.adc = load ptr, ptr %3, align 8              ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 4
  %i.ade = load ptr, ptr %3, align 8              ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  %i.adg = load ptr, ptr %3, align 8
  br label %.lr.ph1061

.lr.ph:                                           ; preds = %bb.ab, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156
  %.41055 = phi ptr [ %i.aqf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 ], [ %0, %bb.ab ] ; 3 uses
  %.41411054 = phi ptr [ %i.aqg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 ], [ %1, %bb.ab ] ; 2 uses
  %.01451053 = phi i32 [ %i.aqh, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 ], [ 0, %bb.ab ]
  %i.adh = load <8 x i32>, ptr %.41055, align 1, !tbaa !64
  %i.adi = sitofp fast <8 x i32> %i.adh to <8 x float>
  %i.adj = getelementptr inbounds nuw i8, ptr %.41055, i64 32
  %i.adk = load <8 x i32>, ptr %i.adj, align 1, !tbaa !64
  %i.adl = sitofp fast <8 x i32> %i.adk to <8 x float>
  %i.adm = fmul fast <8 x float> %.0958, %i.adi
  %i.adn = fadd fast <8 x float> %i.adm, %.0957   ; 10 uses
  %i.ado = fmul fast <8 x float> %.0958, %i.adl
  %i.adp = fadd fast <8 x float> %i.ado, %.0957   ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156 [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread: ; preds = %.lr.ph
  %i.adq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adn, <8 x float> zeroinitializer)
  %i.adr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adp, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984: ; preds = %.lr.ph
  %i.ads = load ptr, ptr %3, align 8, !tbaa !19
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !63
  %i.adu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.adn)
  %i.adv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.adn)
  %i.adw = insertelement <8 x float> poison, float %i.adt, i64 0
  %i.adx = shufflevector <8 x float> %i.adw, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ady = fmul fast <8 x float> %i.adx, %i.adv
  %i.adz = fadd fast <8 x float> %i.ady, %i.adu
  %i.aea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.adp)
  %i.aeb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.adp)
  %i.aec = fmul fast <8 x float> %i.adx, %i.aeb
  %i.aed = fadd fast <8 x float> %i.aec, %i.aea
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987: ; preds = %.lr.ph
  %i.aee = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !63
  %i.aeg = insertelement <8 x float> poison, float %i.aef, i64 0
  %i.aeh = shufflevector <8 x float> %i.aeg, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aee, i64 4
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !63
  %i.aek = insertelement <8 x float> poison, float %i.aej, i64 0
  %i.ael = shufflevector <8 x float> %i.aek, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aem = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adn, <8 x float> nofpclass(nan inf) %i.aeh)
  %i.aen = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aem, <8 x float> nofpclass(nan inf) %i.ael)
  %i.aeo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adp, <8 x float> nofpclass(nan inf) %i.aeh)
  %i.aep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aeo, <8 x float> nofpclass(nan inf) %i.ael)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990: ; preds = %.lr.ph
  %i.aeq = fneg fast <8 x float> %i.adn
  %i.aer = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aeq, <8 x float> splat (float f0x42B0C0A5))
  %i.aes = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aer, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aet = fmul fast <8 x float> %i.aes, splat (float f0x3FB8AA3B)
  %i.aeu = fadd fast <8 x float> %i.aet, splat (float 5.000000e-01) ; 2 uses
  %i.aev = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aeu, i32 1) ; 2 uses
  %i.aew = fcmp fast ogt <8 x float> %i.aev, %i.aeu
  %i.aex = select <8 x i1> %i.aew, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aey = fsub fast <8 x float> %i.aev, %i.aex   ; 2 uses
  %i.aez = fmul fast <8 x float> %i.aey, splat (float f0x3F317218)
  %i.afa = fsub fast <8 x float> %i.aes, %i.aez   ; 8 uses
  %i.afb = fmul fast <8 x float> %i.afa, %i.afa
  %i.afc = fmul fast <8 x float> %i.afa, splat (float f0x39506967)
  %i.afd = fadd fast <8 x float> %i.afc, splat (float f0x3AB743CE)
  %i.afe = fmul fast <8 x float> %i.afd, %i.afa
  %i.aff = fadd fast <8 x float> %i.afe, splat (float f0x3C088908)
  %i.afg = fmul fast <8 x float> %i.aff, %i.afa
  %i.afh = fadd fast <8 x float> %i.afg, splat (float f0x3D2AA9C1)
  %i.afi = fmul fast <8 x float> %i.afh, %i.afa
  %i.afj = fadd fast <8 x float> %i.afi, splat (float f0x3E2AAAAA)
  %i.afk = fmul fast <8 x float> %i.afj, %i.afa
  %i.afl = fadd fast <8 x float> %i.afk, splat (float 5.000000e-01)
  %i.afm = fmul fast <8 x float> %i.afb, %i.afl
  %i.afn = fadd fast <8 x float> %i.afa, %i.afm
  %i.afo = fadd fast <8 x float> %i.afn, splat (float 1.000000e+00)
  %i.afp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aey)
  %i.afq = shl <8 x i32> %i.afp, splat (i32 23)
  %i.afr = add <8 x i32> %i.afq, splat (i32 1065353216)
  %i.afs = bitcast <8 x i32> %i.afr to <8 x float>
  %i.aft = fmul fast <8 x float> %i.afo, %i.afs
  %i.afu = fadd fast <8 x float> %i.aft, splat (float 1.000000e+00)
  %i.afv = fdiv fast <8 x float> splat (float 1.000000e+00), %i.afu
  %i.afw = fneg fast <8 x float> %i.adp
  %i.afx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.afw, <8 x float> splat (float f0x42B0C0A5))
  %i.afy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afz = fmul fast <8 x float> %i.afy, splat (float f0x3FB8AA3B)
  %i.aga = fadd fast <8 x float> %i.afz, splat (float 5.000000e-01) ; 2 uses
  %i.agb = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aga, i32 1) ; 2 uses
  %i.agc = fcmp fast ogt <8 x float> %i.agb, %i.aga
  %i.agd = select <8 x i1> %i.agc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.age = fsub fast <8 x float> %i.agb, %i.agd   ; 2 uses
  %i.agf = fmul fast <8 x float> %i.age, splat (float f0x3F317218)
  %i.agg = fsub fast <8 x float> %i.afy, %i.agf   ; 8 uses
  %i.agh = fmul fast <8 x float> %i.agg, %i.agg
  %i.agi = fmul fast <8 x float> %i.agg, splat (float f0x39506967)
  %i.agj = fadd fast <8 x float> %i.agi, splat (float f0x3AB743CE)
  %i.agk = fmul fast <8 x float> %i.agj, %i.agg
  %i.agl = fadd fast <8 x float> %i.agk, splat (float f0x3C088908)
  %i.agm = fmul fast <8 x float> %i.agl, %i.agg
  %i.agn = fadd fast <8 x float> %i.agm, splat (float f0x3D2AA9C1)
  %i.ago = fmul fast <8 x float> %i.agn, %i.agg
  %i.agp = fadd fast <8 x float> %i.ago, splat (float f0x3E2AAAAA)
  %i.agq = fmul fast <8 x float> %i.agp, %i.agg
  %i.agr = fadd fast <8 x float> %i.agq, splat (float 5.000000e-01)
  %i.ags = fmul fast <8 x float> %i.agh, %i.agr
  %i.agt = fadd fast <8 x float> %i.agg, %i.ags
  %i.agu = fadd fast <8 x float> %i.agt, splat (float 1.000000e+00)
  %i.agv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.age)
  %i.agw = shl <8 x i32> %i.agv, splat (i32 23)
  %i.agx = add <8 x i32> %i.agw, splat (i32 1065353216)
  %i.agy = bitcast <8 x i32> %i.agx to <8 x float>
  %i.agz = fmul fast <8 x float> %i.agu, %i.agy
  %i.aha = fadd fast <8 x float> %i.agz, splat (float 1.000000e+00)
  %i.ahb = fdiv fast <8 x float> splat (float 1.000000e+00), %i.aha
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993: ; preds = %.lr.ph
  %i.ahc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.adn, <8 x float> splat (float f0x42B0C0A5))
  %i.ahd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ahc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ahe = fmul fast <8 x float> %i.ahd, splat (float f0x3FB8AA3B)
  %i.ahf = fadd fast <8 x float> %i.ahe, splat (float 5.000000e-01) ; 2 uses
  %i.ahg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ahf, i32 1) ; 2 uses
  %i.ahh = fcmp fast ogt <8 x float> %i.ahg, %i.ahf
  %i.ahi = select <8 x i1> %i.ahh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ahj = fsub fast <8 x float> %i.ahg, %i.ahi   ; 2 uses
  %i.ahk = fmul fast <8 x float> %i.ahj, splat (float f0x3F317218)
  %i.ahl = fsub fast <8 x float> %i.ahd, %i.ahk   ; 8 uses
  %i.ahm = fmul fast <8 x float> %i.ahl, %i.ahl
  %i.ahn = fmul fast <8 x float> %i.ahl, splat (float f0x39506967)
  %i.aho = fadd fast <8 x float> %i.ahn, splat (float f0x3AB743CE)
  %i.ahp = fmul fast <8 x float> %i.aho, %i.ahl
  %i.ahq = fadd fast <8 x float> %i.ahp, splat (float f0x3C088908)
  %i.ahr = fmul fast <8 x float> %i.ahq, %i.ahl
  %i.ahs = fadd fast <8 x float> %i.ahr, splat (float f0x3D2AA9C1)
  %i.aht = fmul fast <8 x float> %i.ahs, %i.ahl
  %i.ahu = fadd fast <8 x float> %i.aht, splat (float f0x3E2AAAAA)
  %i.ahv = fmul fast <8 x float> %i.ahu, %i.ahl
  %i.ahw = fadd fast <8 x float> %i.ahv, splat (float 5.000000e-01)
  %i.ahx = fmul fast <8 x float> %i.ahm, %i.ahw
  %i.ahy = fadd fast <8 x float> %i.ahl, %i.ahx
  %i.ahz = fadd fast <8 x float> %i.ahy, splat (float 1.000000e+00)
  %i.aia = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ahj)
  %i.aib = shl <8 x i32> %i.aia, splat (i32 23)
  %i.aic = add <8 x i32> %i.aib, splat (i32 1065353216)
  %i.aid = bitcast <8 x i32> %i.aic to <8 x float>
  %i.aie = fmul fast <8 x float> %i.ahz, %i.aid
  %i.aif = fadd fast <8 x float> %i.aie, splat (float 1.000000e+00) ; 2 uses
  %i.aig = fcmp fast ole <8 x float> %i.aif, zeroinitializer
  %i.aih = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aif, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.aii = bitcast <8 x float> %i.aih to <8 x i32>
  %i.aij = bitcast <8 x float> %i.aih to <8 x i32>
  %i.aik = and <8 x i32> %i.aij, splat (i32 -2139095041)
  %i.ail = or disjoint <8 x i32> %i.aik, splat (i32 1056964608)
  %i.aim = bitcast <8 x i32> %i.ail to <8 x float> ; 3 uses
  %i.ain = lshr <8 x i32> %i.aii, splat (i32 23)
  %i.aio = add nsw <8 x i32> %i.ain, splat (i32 -127)
  %i.aip = sitofp fast <8 x i32> %i.aio to <8 x float> ; 2 uses
  %i.aiq = fadd fast <8 x float> %i.aip, splat (float 1.000000e+00)
  %i.air = fcmp fast olt <8 x float> %i.aim, splat (float f0x3F3504F3) ; 2 uses
  %i.ais = select <8 x i1> %i.air, <8 x float> %i.aim, <8 x float> zeroinitializer
  %i.ait = fadd fast <8 x float> %i.aim, splat (float -1.000000e+00)
  %i.aiu = select fast <8 x i1> %i.air, <8 x float> %i.aip, <8 x float> %i.aiq
  %i.aiv = fadd fast <8 x float> %i.ait, %i.ais   ; 12 uses
  %i.aiw = fmul fast <8 x float> %i.aiv, %i.aiv
  %i.aix = fmul fast <8 x float> %i.aiv, splat (float f0x3D9021BB)
  %i.aiy = fadd fast <8 x float> %i.aix, splat (float f0xBDEBD1B8)
  %i.aiz = fmul fast <8 x float> %i.aiy, %i.aiv
  %i.aja = fadd fast <8 x float> %i.aiz, splat (float f0x3DEF251A)
  %i.ajb = fmul fast <8 x float> %i.aja, %i.aiv
  %i.ajc = fadd fast <8 x float> %i.ajb, splat (float f0xBDFE5D4F)
  %i.ajd = fmul fast <8 x float> %i.ajc, %i.aiv
  %i.aje = fadd fast <8 x float> %i.ajd, splat (float f0x3E11E9BF)
  %i.ajf = fmul fast <8 x float> %i.aje, %i.aiv
  %i.ajg = fadd fast <8 x float> %i.ajf, splat (float f0xBE2AAE50)
  %i.ajh = fmul fast <8 x float> %i.ajg, %i.aiv
  %i.aji = fadd fast <8 x float> %i.ajh, splat (float f0x3E4CCEAC)
  %i.ajj = fmul fast <8 x float> %i.aji, %i.aiv
  %i.ajk = fadd fast <8 x float> %i.ajj, splat (float f0xBE7FFFFC)
  %i.ajl = fmul fast <8 x float> %i.ajk, %i.aiv
  %i.ajm = fadd fast <8 x float> %i.ajl, splat (float f0x3EAAAAAA)
  %i.ajn = fmul fast <8 x float> %i.ajm, %i.aiv
  %reass.mul1021 = fmul fast <8 x float> %i.aiu, splat (float f0x3F317218)
  %reass.add1025 = fadd fast <8 x float> %i.ajn, splat (float -5.000000e-01)
  %reass.mul1026 = fmul fast <8 x float> %i.aiw, %reass.add1025
  %i.ajo = fadd fast <8 x float> %reass.mul1021, %i.aiv
  %i.ajp = fadd fast <8 x float> %i.ajo, %reass.mul1026
  %.neg1005 = fmul fast <8 x float> %i.ajp, splat (float -2.000000e+00)
  %i.ajq = select fast <8 x i1> %i.aig, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1005
  %i.ajr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ajq, <8 x float> splat (float f0x42B0C0A5))
  %i.ajs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ajr, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ajt = fmul fast <8 x float> %i.ajs, splat (float f0x3FB8AA3B)
  %i.aju = fadd fast <8 x float> %i.ajt, splat (float 5.000000e-01) ; 2 uses
  %i.ajv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aju, i32 1) ; 2 uses
  %i.ajw = fcmp fast ogt <8 x float> %i.ajv, %i.aju
  %i.ajx = select <8 x i1> %i.ajw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ajy = fsub fast <8 x float> %i.ajv, %i.ajx   ; 2 uses
  %i.ajz = fmul fast <8 x float> %i.ajy, splat (float f0x3F317218)
  %i.aka = fsub fast <8 x float> %i.ajs, %i.ajz   ; 8 uses
  %i.akb = fmul fast <8 x float> %i.aka, %i.aka
  %i.akc = fmul fast <8 x float> %i.aka, splat (float f0x39506967)
  %i.akd = fadd fast <8 x float> %i.akc, splat (float f0x3AB743CE)
  %i.ake = fmul fast <8 x float> %i.akd, %i.aka
  %i.akf = fadd fast <8 x float> %i.ake, splat (float f0x3C088908)
  %i.akg = fmul fast <8 x float> %i.akf, %i.aka
  %i.akh = fadd fast <8 x float> %i.akg, splat (float f0x3D2AA9C1)
  %i.aki = fmul fast <8 x float> %i.akh, %i.aka
  %i.akj = fadd fast <8 x float> %i.aki, splat (float f0x3E2AAAAA)
  %i.akk = fmul fast <8 x float> %i.akj, %i.aka
  %i.akl = fadd fast <8 x float> %i.akk, splat (float 5.000000e-01)
  %i.akm = fmul fast <8 x float> %i.akb, %i.akl
  %i.akn = fadd fast <8 x float> %i.aka, %i.akm
  %i.ako = fadd fast <8 x float> %i.akn, splat (float 1.000000e+00)
  %i.akp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ajy)
  %i.akq = shl <8 x i32> %i.akp, splat (i32 23)
  %i.akr = add <8 x i32> %i.akq, splat (i32 1065353216)
  %i.aks = bitcast <8 x i32> %i.akr to <8 x float>
  %i.akt = fmul fast <8 x float> %i.ako, %i.aks
  %i.aku = fadd fast <8 x float> %i.akt, splat (float 1.000000e+00)
  %i.akv = fdiv fast <8 x float> splat (float 2.000000e+00), %i.aku
  %i.akw = fadd fast <8 x float> %i.akv, splat (float -1.000000e+00)
  %i.akx = fmul fast <8 x float> %i.akw, %i.adn
  %i.aky = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.adp, <8 x float> splat (float f0x42B0C0A5))
  %i.akz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aky, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ala = fmul fast <8 x float> %i.akz, splat (float f0x3FB8AA3B)
  %i.alb = fadd fast <8 x float> %i.ala, splat (float 5.000000e-01) ; 2 uses
  %i.alc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.alb, i32 1) ; 2 uses
  %i.ald = fcmp fast ogt <8 x float> %i.alc, %i.alb
  %i.ale = select <8 x i1> %i.ald, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.alf = fsub fast <8 x float> %i.alc, %i.ale   ; 2 uses
  %i.alg = fmul fast <8 x float> %i.alf, splat (float f0x3F317218)
  %i.alh = fsub fast <8 x float> %i.akz, %i.alg   ; 8 uses
  %i.ali = fmul fast <8 x float> %i.alh, %i.alh
  %i.alj = fmul fast <8 x float> %i.alh, splat (float f0x39506967)
  %i.alk = fadd fast <8 x float> %i.alj, splat (float f0x3AB743CE)
  %i.all = fmul fast <8 x float> %i.alk, %i.alh
  %i.alm = fadd fast <8 x float> %i.all, splat (float f0x3C088908)
  %i.aln = fmul fast <8 x float> %i.alm, %i.alh
  %i.alo = fadd fast <8 x float> %i.aln, splat (float f0x3D2AA9C1)
  %i.alp = fmul fast <8 x float> %i.alo, %i.alh
  %i.alq = fadd fast <8 x float> %i.alp, splat (float f0x3E2AAAAA)
  %i.alr = fmul fast <8 x float> %i.alq, %i.alh
  %i.als = fadd fast <8 x float> %i.alr, splat (float 5.000000e-01)
  %i.alt = fmul fast <8 x float> %i.ali, %i.als
  %i.alu = fadd fast <8 x float> %i.alh, %i.alt
  %i.alv = fadd fast <8 x float> %i.alu, splat (float 1.000000e+00)
  %i.alw = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.alf)
  %i.alx = shl <8 x i32> %i.alw, splat (i32 23)
  %i.aly = add <8 x i32> %i.alx, splat (i32 1065353216)
  %i.alz = bitcast <8 x i32> %i.aly to <8 x float>
  %i.ama = fmul fast <8 x float> %i.alv, %i.alz
  %i.amb = fadd fast <8 x float> %i.ama, splat (float 1.000000e+00) ; 2 uses
  %i.amc = fcmp fast ole <8 x float> %i.amb, zeroinitializer
  %i.amd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.amb, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ame = bitcast <8 x float> %i.amd to <8 x i32>
  %i.amf = bitcast <8 x float> %i.amd to <8 x i32>
  %i.amg = and <8 x i32> %i.amf, splat (i32 -2139095041)
  %i.amh = or disjoint <8 x i32> %i.amg, splat (i32 1056964608)
  %i.ami = bitcast <8 x i32> %i.amh to <8 x float> ; 3 uses
  %i.amj = lshr <8 x i32> %i.ame, splat (i32 23)
  %i.amk = add nsw <8 x i32> %i.amj, splat (i32 -127)
  %i.aml = sitofp fast <8 x i32> %i.amk to <8 x float> ; 2 uses
  %i.amm = fadd fast <8 x float> %i.aml, splat (float 1.000000e+00)
  %i.amn = fcmp fast olt <8 x float> %i.ami, splat (float f0x3F3504F3) ; 2 uses
  %i.amo = select <8 x i1> %i.amn, <8 x float> %i.ami, <8 x float> zeroinitializer
  %i.amp = fadd fast <8 x float> %i.ami, splat (float -1.000000e+00)
  %i.amq = select fast <8 x i1> %i.amn, <8 x float> %i.aml, <8 x float> %i.amm
  %i.amr = fadd fast <8 x float> %i.amp, %i.amo   ; 12 uses
  %i.ams = fmul fast <8 x float> %i.amr, %i.amr
  %i.amt = fmul fast <8 x float> %i.amr, splat (float f0x3D9021BB)
  %i.amu = fadd fast <8 x float> %i.amt, splat (float f0xBDEBD1B8)
  %i.amv = fmul fast <8 x float> %i.amu, %i.amr
  %i.amw = fadd fast <8 x float> %i.amv, splat (float f0x3DEF251A)
  %i.amx = fmul fast <8 x float> %i.amw, %i.amr
  %i.amy = fadd fast <8 x float> %i.amx, splat (float f0xBDFE5D4F)
  %i.amz = fmul fast <8 x float> %i.amy, %i.amr
  %i.ana = fadd fast <8 x float> %i.amz, splat (float f0x3E11E9BF)
  %i.anb = fmul fast <8 x float> %i.ana, %i.amr
  %i.anc = fadd fast <8 x float> %i.anb, splat (float f0xBE2AAE50)
  %i.and = fmul fast <8 x float> %i.anc, %i.amr
  %i.ane = fadd fast <8 x float> %i.and, splat (float f0x3E4CCEAC)
  %i.anf = fmul fast <8 x float> %i.ane, %i.amr
  %i.ang = fadd fast <8 x float> %i.anf, splat (float f0xBE7FFFFC)
  %i.anh = fmul fast <8 x float> %i.ang, %i.amr
  %i.ani = fadd fast <8 x float> %i.anh, splat (float f0x3EAAAAAA)
  %i.anj = fmul fast <8 x float> %i.ani, %i.amr
  %reass.mul1024 = fmul fast <8 x float> %i.amq, splat (float f0x3F317218)
  %reass.add1027 = fadd fast <8 x float> %i.anj, splat (float -5.000000e-01)
  %reass.mul1028 = fmul fast <8 x float> %i.ams, %reass.add1027
  %i.ank = fadd fast <8 x float> %reass.mul1024, %i.amr
  %i.anl = fadd fast <8 x float> %i.ank, %reass.mul1028
  %.neg1006 = fmul fast <8 x float> %i.anl, splat (float -2.000000e+00)
  %i.anm = select fast <8 x i1> %i.amc, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1006
  %i.ann = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.anm, <8 x float> splat (float f0x42B0C0A5))
  %i.ano = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ann, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.anp = fmul fast <8 x float> %i.ano, splat (float f0x3FB8AA3B)
  %i.anq = fadd fast <8 x float> %i.anp, splat (float 5.000000e-01) ; 2 uses
  %i.anr = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.anq, i32 1) ; 2 uses
  %i.ans = fcmp fast ogt <8 x float> %i.anr, %i.anq
  %i.ant = select <8 x i1> %i.ans, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.anu = fsub fast <8 x float> %i.anr, %i.ant   ; 2 uses
  %i.anv = fmul fast <8 x float> %i.anu, splat (float f0x3F317218)
  %i.anw = fsub fast <8 x float> %i.ano, %i.anv   ; 8 uses
  %i.anx = fmul fast <8 x float> %i.anw, %i.anw
  %i.any = fmul fast <8 x float> %i.anw, splat (float f0x39506967)
  %i.anz = fadd fast <8 x float> %i.any, splat (float f0x3AB743CE)
  %i.aoa = fmul fast <8 x float> %i.anz, %i.anw
  %i.aob = fadd fast <8 x float> %i.aoa, splat (float f0x3C088908)
  %i.aoc = fmul fast <8 x float> %i.aob, %i.anw
  %i.aod = fadd fast <8 x float> %i.aoc, splat (float f0x3D2AA9C1)
  %i.aoe = fmul fast <8 x float> %i.aod, %i.anw
  %i.aof = fadd fast <8 x float> %i.aoe, splat (float f0x3E2AAAAA)
  %i.aog = fmul fast <8 x float> %i.aof, %i.anw
  %i.aoh = fadd fast <8 x float> %i.aog, splat (float 5.000000e-01)
  %i.aoi = fmul fast <8 x float> %i.anx, %i.aoh
  %i.aoj = fadd fast <8 x float> %i.anw, %i.aoi
  %i.aok = fadd fast <8 x float> %i.aoj, splat (float 1.000000e+00)
  %i.aol = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.anu)
  %i.aom = shl <8 x i32> %i.aol, splat (i32 23)
  %i.aon = add <8 x i32> %i.aom, splat (i32 1065353216)
  %i.aoo = bitcast <8 x i32> %i.aon to <8 x float>
  %i.aop = fmul fast <8 x float> %i.aok, %i.aoo
  %i.aoq = fadd fast <8 x float> %i.aop, splat (float 1.000000e+00)
  %i.aor = fdiv fast <8 x float> splat (float 2.000000e+00), %i.aoq
  %i.aos = fadd fast <8 x float> %i.aor, splat (float -1.000000e+00)
  %i.aot = fmul fast <8 x float> %i.aos, %i.adp
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996: ; preds = %.lr.ph
  %i.aou = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.aov = load float, ptr %i.aou, align 4, !tbaa !63
  %i.aow = insertelement <8 x float> poison, float %i.aov, i64 0
  %i.aox = shufflevector <8 x float> %i.aow, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aou, i64 4
  %i.aoz = load float, ptr %i.aoy, align 4, !tbaa !63
  %i.apa = insertelement <8 x float> poison, float %i.aoz, i64 0
  %i.apb = shufflevector <8 x float> %i.apa, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.apc = fmul fast <8 x float> %i.aox, %i.adn
  %i.apd = fadd fast <8 x float> %i.apc, %i.apb
  %i.ape = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.apd, <8 x float> zeroinitializer)
  %i.apf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ape, <8 x float> splat (float 1.000000e+00))
  %i.apg = fmul fast <8 x float> %i.apf, %i.adn
  %i.aph = fmul fast <8 x float> %i.aox, %i.adp
  %i.api = fadd fast <8 x float> %i.aph, %i.apb
  %i.apj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.api, <8 x float> zeroinitializer)
  %i.apk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.apj, <8 x float> splat (float 1.000000e+00))
  %i.apl = fmul fast <8 x float> %i.apk, %i.adp
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit156:   ; preds = %.lr.ph, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996
  %.0.i157983 = phi <8 x float> [ %i.apg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996 ], [ %i.adq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread ], [ %i.adz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984 ], [ %i.aen, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987 ], [ %i.afv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990 ], [ %i.akx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993 ], [ %i.adn, %.lr.ph ]
  %.0.i155 = phi nsz <8 x float> [ %i.apl, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread996 ], [ %i.adr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread ], [ %i.aed, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread984 ], [ %i.aep, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread987 ], [ %i.ahb, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread990 ], [ %i.aot, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit158.thread993 ], [ %i.adp, %.lr.ph ]
  %i.apm = fmul fast <8 x float> %.0.i157983, %.0153 ; 2 uses
  %i.apn = fmul fast <8 x float> %.0.i155, %.0153 ; 2 uses
  %i.apo = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.apm)
  %i.app = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.apn)
  %i.apq = fadd fast <8 x float> %i.apo, %i.apm
  %i.apr = fadd fast <8 x float> %i.app, %i.apn
  %i.aps = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.apq) ; 2 uses
  %i.apt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.apr) ; 2 uses
  %i.apu = shufflevector <8 x i32> %i.aps, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.apv = shufflevector <8 x i32> %i.aps, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.apw = shufflevector <8 x i32> %i.apt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.apx = shufflevector <8 x i32> %i.apt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.apy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.apu, <4 x i32> %i.apv)
  %i.apz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.apw, <4 x i32> %i.apx)
  %i.aqa = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.apy, <8 x i16> splat (i16 -127))
  %i.aqb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aqa, <8 x i16> splat (i16 127))
  %i.aqc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.apz, <8 x i16> splat (i16 -127))
  %i.aqd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aqc, <8 x i16> splat (i16 127))
  %i.aqe = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aqb, <8 x i16> %i.aqd)
  store <16 x i8> %i.aqe, ptr %.41411054, align 1, !tbaa !64
  %i.aqf = getelementptr inbounds nuw i8, ptr %.41055, i64 64 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %.41411054, i64 16 ; 2 uses
  %i.aqh = add nuw nsw i32 %.01451053, 16         ; 2 uses
  %i.aqi = or disjoint i32 %i.aqh, 15
  %i.aqj = icmp slt i32 %i.aqi, %i.a
  br i1 %i.aqj, label %.lr.ph, label %.preheader1052.loopexit, !llvm.loop !58

.preheader1051:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %.preheader1052
  %.1146.lcssa = phi i32 [ %.0145.lcssa, %.preheader1052 ], [ %i.axh, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.5142.lcssa = phi ptr [ %.4141.lcssa, %.preheader1052 ], [ %i.axg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader1052 ], [ %i.axf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.aqk = or disjoint i32 %.1146.lcssa, 3
  %i.aql = icmp slt i32 %i.aqk, %i.a
  br i1 %i.aql, label %.lr.ph1068, label %.preheader1049

.lr.ph1061:                                       ; preds = %.lr.ph1061.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.51060 = phi ptr [ %i.axf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.4.lcssa, %.lr.ph1061.preheader ] ; 2 uses
  %.51421059 = phi ptr [ %i.axg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.4141.lcssa, %.lr.ph1061.preheader ] ; 2 uses
  %.11461058 = phi i32 [ %i.axh, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %.0145.lcssa, %.lr.ph1061.preheader ]
  %i.aqm = load <8 x i32>, ptr %.51060, align 1, !tbaa !64
  %i.aqn = sitofp fast <8 x i32> %i.aqm to <8 x float>
  %i.aqo = fmul fast <8 x float> %.0958, %i.aqn
  %i.aqp = fadd fast <8 x float> %i.aqo, %.0957   ; 10 uses
  switch i32 %2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ac
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 4, label %bb.af
    i32 5, label %bb.ag
    i32 6, label %bb.ah
  ]

bb.ac:                                            ; preds = %.lr.ph1061
  %i.aqq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aqp, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ad:                                            ; preds = %.lr.ph1061
  %i.aqr = load float, ptr %i.adg, align 4, !tbaa !63
  %i.aqs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.aqp)
  %i.aqt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.aqp)
  %i.aqu = insertelement <8 x float> poison, float %i.aqr, i64 0
  %i.aqv = shufflevector <8 x float> %i.aqu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqw = fmul fast <8 x float> %i.aqv, %i.aqt
  %i.aqx = fadd fast <8 x float> %i.aqw, %i.aqs
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ae:                                            ; preds = %.lr.ph1061
  %i.aqy = load float, ptr %i.ade, align 4, !tbaa !63
  %i.aqz = insertelement <8 x float> poison, float %i.aqy, i64 0
  %i.ara = shufflevector <8 x float> %i.aqz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arb = load float, ptr %i.adf, align 4, !tbaa !63
  %i.arc = insertelement <8 x float> poison, float %i.arb, i64 0
  %i.ard = shufflevector <8 x float> %i.arc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.are = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aqp, <8 x float> nofpclass(nan inf) %i.ara)
  %i.arf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.are, <8 x float> nofpclass(nan inf) %i.ard)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %.lr.ph1061
  %i.arg = fneg fast <8 x float> %i.aqp
  %i.arh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.arg, <8 x float> splat (float f0x42B0C0A5))
  %i.ari = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.arh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.arj = fmul fast <8 x float> %i.ari, splat (float f0x3FB8AA3B)
  %i.ark = fadd fast <8 x float> %i.arj, splat (float 5.000000e-01) ; 2 uses
  %i.arl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ark, i32 1) ; 2 uses
  %i.arm = fcmp fast ogt <8 x float> %i.arl, %i.ark
  %i.arn = select <8 x i1> %i.arm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aro = fsub fast <8 x float> %i.arl, %i.arn   ; 2 uses
  %i.arp = fmul fast <8 x float> %i.aro, splat (float f0x3F317218)
  %i.arq = fsub fast <8 x float> %i.ari, %i.arp   ; 8 uses
  %i.arr = fmul fast <8 x float> %i.arq, %i.arq
  %i.ars = fmul fast <8 x float> %i.arq, splat (float f0x39506967)
  %i.art = fadd fast <8 x float> %i.ars, splat (float f0x3AB743CE)
  %i.aru = fmul fast <8 x float> %i.art, %i.arq
  %i.arv = fadd fast <8 x float> %i.aru, splat (float f0x3C088908)
  %i.arw = fmul fast <8 x float> %i.arv, %i.arq
  %i.arx = fadd fast <8 x float> %i.arw, splat (float f0x3D2AA9C1)
  %i.ary = fmul fast <8 x float> %i.arx, %i.arq
  %i.arz = fadd fast <8 x float> %i.ary, splat (float f0x3E2AAAAA)
  %i.asa = fmul fast <8 x float> %i.arz, %i.arq
  %i.asb = fadd fast <8 x float> %i.asa, splat (float 5.000000e-01)
  %i.asc = fmul fast <8 x float> %i.arr, %i.asb
  %i.asd = fadd fast <8 x float> %i.arq, %i.asc
  %i.ase = fadd fast <8 x float> %i.asd, splat (float 1.000000e+00)
  %i.asf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aro)
  %i.asg = shl <8 x i32> %i.asf, splat (i32 23)
  %i.ash = add <8 x i32> %i.asg, splat (i32 1065353216)
  %i.asi = bitcast <8 x i32> %i.ash to <8 x float>
  %i.asj = fmul fast <8 x float> %i.ase, %i.asi
  %i.ask = fadd fast <8 x float> %i.asj, splat (float 1.000000e+00)
  %i.asl = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ask
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ag:                                            ; preds = %.lr.ph1061
  %i.asm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aqp, <8 x float> splat (float f0x42B0C0A5))
  %i.asn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.asm, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aso = fmul fast <8 x float> %i.asn, splat (float f0x3FB8AA3B)
  %i.asp = fadd fast <8 x float> %i.aso, splat (float 5.000000e-01) ; 2 uses
  %i.asq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.asp, i32 1) ; 2 uses
  %i.asr = fcmp fast ogt <8 x float> %i.asq, %i.asp
  %i.ass = select <8 x i1> %i.asr, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ast = fsub fast <8 x float> %i.asq, %i.ass   ; 2 uses
  %i.asu = fmul fast <8 x float> %i.ast, splat (float f0x3F317218)
  %i.asv = fsub fast <8 x float> %i.asn, %i.asu   ; 8 uses
  %i.asw = fmul fast <8 x float> %i.asv, %i.asv
  %i.asx = fmul fast <8 x float> %i.asv, splat (float f0x39506967)
  %i.asy = fadd fast <8 x float> %i.asx, splat (float f0x3AB743CE)
  %i.asz = fmul fast <8 x float> %i.asy, %i.asv
  %i.ata = fadd fast <8 x float> %i.asz, splat (float f0x3C088908)
  %i.atb = fmul fast <8 x float> %i.ata, %i.asv
  %i.atc = fadd fast <8 x float> %i.atb, splat (float f0x3D2AA9C1)
  %i.atd = fmul fast <8 x float> %i.atc, %i.asv
  %i.ate = fadd fast <8 x float> %i.atd, splat (float f0x3E2AAAAA)
  %i.atf = fmul fast <8 x float> %i.ate, %i.asv
  %i.atg = fadd fast <8 x float> %i.atf, splat (float 5.000000e-01)
  %i.ath = fmul fast <8 x float> %i.asw, %i.atg
  %i.ati = fadd fast <8 x float> %i.asv, %i.ath
  %i.atj = fadd fast <8 x float> %i.ati, splat (float 1.000000e+00)
  %i.atk = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ast)
  %i.atl = shl <8 x i32> %i.atk, splat (i32 23)
  %i.atm = add <8 x i32> %i.atl, splat (i32 1065353216)
  %i.atn = bitcast <8 x i32> %i.atm to <8 x float>
  %i.ato = fmul fast <8 x float> %i.atj, %i.atn
  %i.atp = fadd fast <8 x float> %i.ato, splat (float 1.000000e+00) ; 2 uses
  %i.atq = fcmp fast ole <8 x float> %i.atp, zeroinitializer
  %i.atr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.atp, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.ats = bitcast <8 x float> %i.atr to <8 x i32>
  %i.att = bitcast <8 x float> %i.atr to <8 x i32>
  %i.atu = and <8 x i32> %i.att, splat (i32 -2139095041)
  %i.atv = or disjoint <8 x i32> %i.atu, splat (i32 1056964608)
  %i.atw = bitcast <8 x i32> %i.atv to <8 x float> ; 3 uses
  %i.atx = lshr <8 x i32> %i.ats, splat (i32 23)
  %i.aty = add nsw <8 x i32> %i.atx, splat (i32 -127)
  %i.atz = sitofp fast <8 x i32> %i.aty to <8 x float> ; 2 uses
  %i.aua = fadd fast <8 x float> %i.atz, splat (float 1.000000e+00)
  %i.aub = fcmp fast olt <8 x float> %i.atw, splat (float f0x3F3504F3) ; 2 uses
  %i.auc = select <8 x i1> %i.aub, <8 x float> %i.atw, <8 x float> zeroinitializer
  %i.aud = fadd fast <8 x float> %i.atw, splat (float -1.000000e+00)
  %i.aue = select fast <8 x i1> %i.aub, <8 x float> %i.atz, <8 x float> %i.aua
  %i.auf = fadd fast <8 x float> %i.aud, %i.auc   ; 12 uses
  %i.aug = fmul fast <8 x float> %i.auf, %i.auf
  %i.auh = fmul fast <8 x float> %i.auf, splat (float f0x3D9021BB)
  %i.aui = fadd fast <8 x float> %i.auh, splat (float f0xBDEBD1B8)
  %i.auj = fmul fast <8 x float> %i.aui, %i.auf
  %i.auk = fadd fast <8 x float> %i.auj, splat (float f0x3DEF251A)
  %i.aul = fmul fast <8 x float> %i.auk, %i.auf
  %i.aum = fadd fast <8 x float> %i.aul, splat (float f0xBDFE5D4F)
  %i.aun = fmul fast <8 x float> %i.aum, %i.auf
  %i.auo = fadd fast <8 x float> %i.aun, splat (float f0x3E11E9BF)
  %i.aup = fmul fast <8 x float> %i.auo, %i.auf
  %i.auq = fadd fast <8 x float> %i.aup, splat (float f0xBE2AAE50)
  %i.aur = fmul fast <8 x float> %i.auq, %i.auf
  %i.aus = fadd fast <8 x float> %i.aur, splat (float f0x3E4CCEAC)
  %i.aut = fmul fast <8 x float> %i.aus, %i.auf
  %i.auu = fadd fast <8 x float> %i.aut, splat (float f0xBE7FFFFC)
  %i.auv = fmul fast <8 x float> %i.auu, %i.auf
  %i.auw = fadd fast <8 x float> %i.auv, splat (float f0x3EAAAAAA)
  %i.aux = fmul fast <8 x float> %i.auw, %i.auf
  %reass.mul1017 = fmul fast <8 x float> %i.aue, splat (float f0x3F317218)
  %reass.add1018 = fadd fast <8 x float> %i.aux, splat (float -5.000000e-01)
  %reass.mul1019 = fmul fast <8 x float> %i.aug, %reass.add1018
  %i.auy = fadd fast <8 x float> %reass.mul1017, %i.auf
  %i.auz = fadd fast <8 x float> %i.auy, %reass.mul1019
  %.neg1004 = fmul fast <8 x float> %i.auz, splat (float -2.000000e+00)
  %i.ava = select fast <8 x i1> %i.atq, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg1004
  %i.avb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ava, <8 x float> splat (float f0x42B0C0A5))
  %i.avc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.avb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.avd = fmul fast <8 x float> %i.avc, splat (float f0x3FB8AA3B)
  %i.ave = fadd fast <8 x float> %i.avd, splat (float 5.000000e-01) ; 2 uses
  %i.avf = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ave, i32 1) ; 2 uses
  %i.avg = fcmp fast ogt <8 x float> %i.avf, %i.ave
  %i.avh = select <8 x i1> %i.avg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.avi = fsub fast <8 x float> %i.avf, %i.avh   ; 2 uses
  %i.avj = fmul fast <8 x float> %i.avi, splat (float f0x3F317218)
  %i.avk = fsub fast <8 x float> %i.avc, %i.avj   ; 8 uses
  %i.avl = fmul fast <8 x float> %i.avk, %i.avk
  %i.avm = fmul fast <8 x float> %i.avk, splat (float f0x39506967)
  %i.avn = fadd fast <8 x float> %i.avm, splat (float f0x3AB743CE)
  %i.avo = fmul fast <8 x float> %i.avn, %i.avk
  %i.avp = fadd fast <8 x float> %i.avo, splat (float f0x3C088908)
  %i.avq = fmul fast <8 x float> %i.avp, %i.avk
  %i.avr = fadd fast <8 x float> %i.avq, splat (float f0x3D2AA9C1)
  %i.avs = fmul fast <8 x float> %i.avr, %i.avk
  %i.avt = fadd fast <8 x float> %i.avs, splat (float f0x3E2AAAAA)
  %i.avu = fmul fast <8 x float> %i.avt, %i.avk
  %i.avv = fadd fast <8 x float> %i.avu, splat (float 5.000000e-01)
  %i.avw = fmul fast <8 x float> %i.avl, %i.avv
  %i.avx = fadd fast <8 x float> %i.avk, %i.avw
  %i.avy = fadd fast <8 x float> %i.avx, splat (float 1.000000e+00)
  %i.avz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.avi)
  %i.awa = shl <8 x i32> %i.avz, splat (i32 23)
  %i.awb = add <8 x i32> %i.awa, splat (i32 1065353216)
  %i.awc = bitcast <8 x i32> %i.awb to <8 x float>
  %i.awd = fmul fast <8 x float> %i.avy, %i.awc
  %i.awe = fadd fast <8 x float> %i.awd, splat (float 1.000000e+00)
  %i.awf = fdiv fast <8 x float> splat (float 2.000000e+00), %i.awe
  %i.awg = fadd fast <8 x float> %i.awf, splat (float -1.000000e+00)
  %i.awh = fmul fast <8 x float> %i.awg, %i.aqp
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.ah:                                            ; preds = %.lr.ph1061
  %i.awi = load float, ptr %i.adc, align 4, !tbaa !63
  %i.awj = insertelement <8 x float> poison, float %i.awi, i64 0
  %i.awk = shufflevector <8 x float> %i.awj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awl = load float, ptr %i.add, align 4, !tbaa !63
  %i.awm = insertelement <8 x float> poison, float %i.awl, i64 0
  %i.awn = shufflevector <8 x float> %i.awm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.awo = fmul fast <8 x float> %i.awk, %i.aqp
  %i.awp = fadd fast <8 x float> %i.awo, %i.awn
  %i.awq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.awp, <8 x float> zeroinitializer)
  %i.awr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.awq, <8 x float> splat (float 1.000000e+00))
  %i.aws = fmul fast <8 x float> %i.awr, %i.aqp
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.lr.ph1061, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.0.i = phi nsz <8 x float> [ %i.aws, %bb.ah ], [ %i.aqq, %bb.ac ], [ %i.aqx, %bb.ad ], [ %i.arf, %bb.ae ], [ %i.asl, %bb.af ], [ %i.awh, %bb.ag ], [ %i.aqp, %.lr.ph1061 ]
  %i.awt = fmul fast <8 x float> %.0.i, %.0153    ; 2 uses
  %i.awu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.awt)
  %i.awv = fadd fast <8 x float> %i.awu, %i.awt
  %i.aww = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.awv) ; 2 uses
  %i.awx = shufflevector <8 x i32> %i.aww, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awy = shufflevector <8 x i32> %i.aww, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.awx, <4 x i32> %i.awy)
  %i.axa = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.awz, <8 x i16> splat (i16 -127))
  %i.axb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.axa, <8 x i16> splat (i16 127))
  %i.axc = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.axb, <8 x i16> poison)
  %i.axd = bitcast <16 x i8> %i.axc to <2 x i64>
  %i.axe = extractelement <2 x i64> %i.axd, i64 0
  store i64 %i.axe, ptr %.51421059, align 8, !tbaa !66
  %i.axf = getelementptr inbounds nuw i8, ptr %.51060, i64 32 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %.51421059, i64 8 ; 2 uses
  %i.axh = add nuw nsw i32 %.11461058, 8          ; 3 uses
  %i.axi = or disjoint i32 %i.axh, 7
  %i.axj = icmp slt i32 %i.axi, %i.a
  br i1 %i.axj, label %.lr.ph1061, label %.preheader1051, !llvm.loop !59

.preheader1049:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.preheader1051
  %.2147.lcssa = phi i32 [ %.1146.lcssa, %.preheader1051 ], [ %i.bek, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %.6143.lcssa = phi ptr [ %.5142.lcssa, %.preheader1051 ], [ %i.bej, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %.6.lcssa = phi ptr [ %.5.lcssa, %.preheader1051 ], [ %i.bei, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.axk = icmp slt i32 %.2147.lcssa, %i.a
  br i1 %i.axk, label %.lr.ph1075, label %.loopexit

.lr.ph1068:                                       ; preds = %.preheader1051, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.61067 = phi ptr [ %i.bei, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.5.lcssa, %.preheader1051 ] ; 2 uses
  %.61431066 = phi ptr [ %i.bej, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.5142.lcssa, %.preheader1051 ] ; 2 uses
  %.21471065 = phi i32 [ %i.bek, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.1146.lcssa, %.preheader1051 ]
  %i.axl = load <4 x i32>, ptr %.61067, align 1, !tbaa !64
  %i.axm = sitofp fast <4 x i32> %i.axl to <4 x float>
  %i.axn = fmul fast <4 x float> %i.d, %i.axm
  %i.axo = fadd fast <4 x float> %i.axn, %i.act   ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ak
    i32 4, label %bb.al
    i32 5, label %bb.am
    i32 6, label %bb.an
  ]

bb.ai:                                            ; preds = %.lr.ph1068
  %i.axp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.axo, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.aj:                                            ; preds = %.lr.ph1068
  %i.axq = load ptr, ptr %3, align 8, !tbaa !19
  %i.axr = load float, ptr %i.axq, align 4, !tbaa !63
  %i.axs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.axo)
  %i.axt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.axo)
  %i.axu = insertelement <4 x float> poison, float %i.axr, i64 0
  %i.axv = shufflevector <4 x float> %i.axu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axw = fmul fast <4 x float> %i.axv, %i.axt
  %i.axx = fadd fast <4 x float> %i.axw, %i.axs
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ak:                                            ; preds = %.lr.ph1068
  %i.axy = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !63
  %i.aya = insertelement <4 x float> poison, float %i.axz, i64 0
  %i.ayb = shufflevector <4 x float> %i.aya, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axy, i64 4
  %i.ayd = load float, ptr %i.ayc, align 4, !tbaa !63
  %i.aye = insertelement <4 x float> poison, float %i.ayd, i64 0
  %i.ayf = shufflevector <4 x float> %i.aye, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ayg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.axo, <4 x float> nofpclass(nan inf) %i.ayb)
  %i.ayh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayg, <4 x float> nofpclass(nan inf) %i.ayf)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.al:                                            ; preds = %.lr.ph1068
  %i.ayi = fneg fast <4 x float> %i.axo
  %i.ayj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ayi, <4 x float> splat (float f0x42B0C0A5))
  %i.ayk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ayj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ayl = fmul fast <4 x float> %i.ayk, splat (float f0x3FB8AA3B)
  %i.aym = fadd fast <4 x float> %i.ayl, splat (float 5.000000e-01) ; 2 uses
  %i.ayn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aym)
  %i.ayo = sitofp fast <4 x i32> %i.ayn to <4 x float> ; 2 uses
  %i.ayp = fcmp fast olt <4 x float> %i.aym, %i.ayo
  %i.ayq = select <4 x i1> %i.ayp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ayr = fsub fast <4 x float> %i.ayo, %i.ayq   ; 2 uses
  %i.ays = fmul fast <4 x float> %i.ayr, splat (float f0x3F317218)
  %i.ayt = fsub fast <4 x float> %i.ayk, %i.ays   ; 8 uses
  %i.ayu = fmul fast <4 x float> %i.ayt, %i.ayt
  %i.ayv = fmul fast <4 x float> %i.ayt, splat (float f0x39506967)
  %i.ayw = fadd fast <4 x float> %i.ayv, splat (float f0x3AB743CE)
  %i.ayx = fmul fast <4 x float> %i.ayw, %i.ayt
  %i.ayy = fadd fast <4 x float> %i.ayx, splat (float f0x3C088908)
  %i.ayz = fmul fast <4 x float> %i.ayy, %i.ayt
  %i.aza = fadd fast <4 x float> %i.ayz, splat (float f0x3D2AA9C1)
  %i.azb = fmul fast <4 x float> %i.aza, %i.ayt
  %i.azc = fadd fast <4 x float> %i.azb, splat (float f0x3E2AAAAA)
  %i.azd = fmul fast <4 x float> %i.azc, %i.ayt
  %i.aze = fadd fast <4 x float> %i.azd, splat (float 5.000000e-01)
  %i.azf = fmul fast <4 x float> %i.ayu, %i.aze
  %i.azg = fadd fast <4 x float> %i.ayt, %i.azf
  %i.azh = fadd fast <4 x float> %i.azg, splat (float 1.000000e+00)
  %i.azi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ayr)
  %i.azj = shl <4 x i32> %i.azi, splat (i32 23)
  %i.azk = add <4 x i32> %i.azj, splat (i32 1065353216)
  %i.azl = bitcast <4 x i32> %i.azk to <4 x float>
  %i.azm = fmul fast <4 x float> %i.azh, %i.azl
  %i.azn = fadd fast <4 x float> %i.azm, splat (float 1.000000e+00)
  %i.azo = fdiv fast <4 x float> splat (float 1.000000e+00), %i.azn
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.am:                                            ; preds = %.lr.ph1068
  %i.azp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.axo, <4 x float> splat (float f0x42B0C0A5))
  %i.azq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.azp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.azr = fmul fast <4 x float> %i.azq, splat (float f0x3FB8AA3B)
  %i.azs = fadd fast <4 x float> %i.azr, splat (float 5.000000e-01) ; 2 uses
  %i.azt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.azs)
  %i.azu = sitofp fast <4 x i32> %i.azt to <4 x float> ; 2 uses
  %i.azv = fcmp fast olt <4 x float> %i.azs, %i.azu
  %i.azw = select <4 x i1> %i.azv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.azx = fsub fast <4 x float> %i.azu, %i.azw   ; 2 uses
  %i.azy = fmul fast <4 x float> %i.azx, splat (float f0x3F317218)
  %i.azz = fsub fast <4 x float> %i.azq, %i.azy   ; 8 uses
  %i.baa = fmul fast <4 x float> %i.azz, %i.azz
  %i.bab = fmul fast <4 x float> %i.azz, splat (float f0x39506967)
  %i.bac = fadd fast <4 x float> %i.bab, splat (float f0x3AB743CE)
  %i.bad = fmul fast <4 x float> %i.bac, %i.azz
  %i.bae = fadd fast <4 x float> %i.bad, splat (float f0x3C088908)
  %i.baf = fmul fast <4 x float> %i.bae, %i.azz
  %i.bag = fadd fast <4 x float> %i.baf, splat (float f0x3D2AA9C1)
  %i.bah = fmul fast <4 x float> %i.bag, %i.azz
  %i.bai = fadd fast <4 x float> %i.bah, splat (float f0x3E2AAAAA)
  %i.baj = fmul fast <4 x float> %i.bai, %i.azz
  %i.bak = fadd fast <4 x float> %i.baj, splat (float 5.000000e-01)
  %i.bal = fmul fast <4 x float> %i.baa, %i.bak
  %i.bam = fadd fast <4 x float> %i.azz, %i.bal
  %i.ban = fadd fast <4 x float> %i.bam, splat (float 1.000000e+00)
  %i.bao = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.azx)
  %i.bap = shl <4 x i32> %i.bao, splat (i32 23)
  %i.baq = add <4 x i32> %i.bap, splat (i32 1065353216)
  %i.bar = bitcast <4 x i32> %i.baq to <4 x float>
  %i.bas = fmul fast <4 x float> %i.ban, %i.bar
  %i.bat = fadd fast <4 x float> %i.bas, splat (float 1.000000e+00) ; 2 uses
  %i.bau = fcmp fast ole <4 x float> %i.bat, zeroinitializer
  %i.bav = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bat, <4 x float> splat (float f0x00800000))
  %i.baw = bitcast <4 x float> %i.bav to <4 x i32> ; 2 uses
  %i.bax = lshr <4 x i32> %i.baw, splat (i32 23)
  %i.bay = and <4 x i32> %i.baw, splat (i32 -2139095041)
  %i.baz = or disjoint <4 x i32> %i.bay, splat (i32 1056964608)
  %i.bba = bitcast <4 x i32> %i.baz to <4 x float> ; 3 uses
  %i.bbb = add nsw <4 x i32> %i.bax, splat (i32 -127)
  %i.bbc = sitofp fast <4 x i32> %i.bbb to <4 x float> ; 2 uses
  %i.bbd = fadd fast <4 x float> %i.bbc, splat (float 1.000000e+00)
  %i.bbe = fcmp fast olt <4 x float> %i.bba, splat (float f0x3F3504F3) ; 2 uses
  %i.bbf = select <4 x i1> %i.bbe, <4 x float> %i.bba, <4 x float> zeroinitializer
  %i.bbg = fadd fast <4 x float> %i.bba, splat (float -1.000000e+00)
  %i.bbh = select fast <4 x i1> %i.bbe, <4 x float> %i.bbc, <4 x float> %i.bbd
  %i.bbi = fadd fast <4 x float> %i.bbg, %i.bbf   ; 12 uses
  %i.bbj = fmul fast <4 x float> %i.bbi, %i.bbi
  %i.bbk = fmul fast <4 x float> %i.bbi, splat (float f0x3D9021BB)
  %i.bbl = fadd fast <4 x float> %i.bbk, splat (float f0xBDEBD1B8)
  %i.bbm = fmul fast <4 x float> %i.bbl, %i.bbi
  %i.bbn = fadd fast <4 x float> %i.bbm, splat (float f0x3DEF251A)
  %i.bbo = fmul fast <4 x float> %i.bbn, %i.bbi
  %i.bbp = fadd fast <4 x float> %i.bbo, splat (float f0xBDFE5D4F)
  %i.bbq = fmul fast <4 x float> %i.bbp, %i.bbi
  %i.bbr = fadd fast <4 x float> %i.bbq, splat (float f0x3E11E9BF)
  %i.bbs = fmul fast <4 x float> %i.bbr, %i.bbi
  %i.bbt = fadd fast <4 x float> %i.bbs, splat (float f0xBE2AAE50)
  %i.bbu = fmul fast <4 x float> %i.bbt, %i.bbi
  %i.bbv = fadd fast <4 x float> %i.bbu, splat (float f0x3E4CCEAC)
  %i.bbw = fmul fast <4 x float> %i.bbv, %i.bbi
  %i.bbx = fadd fast <4 x float> %i.bbw, splat (float f0xBE7FFFFC)
  %i.bby = fmul fast <4 x float> %i.bbx, %i.bbi
  %i.bbz = fadd fast <4 x float> %i.bby, splat (float f0x3EAAAAAA)
  %i.bca = fmul fast <4 x float> %i.bbz, %i.bbi
  %reass.mul = fmul fast <4 x float> %i.bbh, splat (float f0x3F317218)
  %reass.add1014 = fadd fast <4 x float> %i.bca, splat (float -5.000000e-01)
  %reass.mul1015 = fmul fast <4 x float> %i.bbj, %reass.add1014
  %i.bcb = fadd fast <4 x float> %reass.mul, %i.bbi
  %i.bcc = fadd fast <4 x float> %i.bcb, %reass.mul1015
  %.neg = fmul fast <4 x float> %i.bcc, splat (float -2.000000e+00)
  %i.bcd = select fast <4 x i1> %i.bau, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.bce = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bcd, <4 x float> splat (float f0x42B0C0A5))
  %i.bcf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bce, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bcg = fmul fast <4 x float> %i.bcf, splat (float f0x3FB8AA3B)
  %i.bch = fadd fast <4 x float> %i.bcg, splat (float 5.000000e-01) ; 2 uses
  %i.bci = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bch)
  %i.bcj = sitofp fast <4 x i32> %i.bci to <4 x float> ; 2 uses
  %i.bck = fcmp fast olt <4 x float> %i.bch, %i.bcj
  %i.bcl = select <4 x i1> %i.bck, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bcm = fsub fast <4 x float> %i.bcj, %i.bcl   ; 2 uses
  %i.bcn = fmul fast <4 x float> %i.bcm, splat (float f0x3F317218)
  %i.bco = fsub fast <4 x float> %i.bcf, %i.bcn   ; 8 uses
  %i.bcp = fmul fast <4 x float> %i.bco, %i.bco
  %i.bcq = fmul fast <4 x float> %i.bco, splat (float f0x39506967)
  %i.bcr = fadd fast <4 x float> %i.bcq, splat (float f0x3AB743CE)
  %i.bcs = fmul fast <4 x float> %i.bcr, %i.bco
  %i.bct = fadd fast <4 x float> %i.bcs, splat (float f0x3C088908)
  %i.bcu = fmul fast <4 x float> %i.bct, %i.bco
  %i.bcv = fadd fast <4 x float> %i.bcu, splat (float f0x3D2AA9C1)
  %i.bcw = fmul fast <4 x float> %i.bcv, %i.bco
  %i.bcx = fadd fast <4 x float> %i.bcw, splat (float f0x3E2AAAAA)
  %i.bcy = fmul fast <4 x float> %i.bcx, %i.bco
  %i.bcz = fadd fast <4 x float> %i.bcy, splat (float 5.000000e-01)
  %i.bda = fmul fast <4 x float> %i.bcp, %i.bcz
  %i.bdb = fadd fast <4 x float> %i.bco, %i.bda
  %i.bdc = fadd fast <4 x float> %i.bdb, splat (float 1.000000e+00)
  %i.bdd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bcm)
  %i.bde = shl <4 x i32> %i.bdd, splat (i32 23)
  %i.bdf = add <4 x i32> %i.bde, splat (i32 1065353216)
  %i.bdg = bitcast <4 x i32> %i.bdf to <4 x float>
  %i.bdh = fmul fast <4 x float> %i.bdc, %i.bdg
  %i.bdi = fadd fast <4 x float> %i.bdh, splat (float 1.000000e+00)
  %i.bdj = fdiv fast <4 x float> splat (float 2.000000e+00), %i.bdi
  %i.bdk = fadd fast <4 x float> %i.bdj, splat (float -1.000000e+00)
  %i.bdl = fmul fast <4 x float> %i.bdk, %i.axo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.an:                                            ; preds = %.lr.ph1068
  %i.bdm = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.bdn = load float, ptr %i.bdm, align 4, !tbaa !63
  %i.bdo = insertelement <4 x float> poison, float %i.bdn, i64 0
  %i.bdp = shufflevector <4 x float> %i.bdo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdm, i64 4
  %i.bdr = load float, ptr %i.bdq, align 4, !tbaa !63
  %i.bds = insertelement <4 x float> poison, float %i.bdr, i64 0
  %i.bdt = shufflevector <4 x float> %i.bds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdu = fmul fast <4 x float> %i.bdp, %i.axo
  %i.bdv = fadd fast <4 x float> %i.bdu, %i.bdt
  %i.bdw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bdv, <4 x float> zeroinitializer)
  %i.bdx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bdw, <4 x float> splat (float 1.000000e+00))
  %i.bdy = fmul fast <4 x float> %i.bdx, %i.axo
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.lr.ph1068, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an
  %.0.i165 = phi nsz <4 x float> [ %i.bdy, %bb.an ], [ %i.axp, %bb.ai ], [ %i.axx, %bb.aj ], [ %i.ayh, %bb.ak ], [ %i.azo, %bb.al ], [ %i.bdl, %bb.am ], [ %i.axo, %.lr.ph1068 ]
  %i.bdz = fmul fast <4 x float> %.0.i165, %i.l   ; 2 uses
  %i.bea = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bdz)
  %i.beb = fadd fast <4 x float> %i.bea, %i.bdz
  %i.bec = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.beb)
  %i.bed = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bec, <4 x i32> poison)
  %i.bee = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bed, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.bef = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bee, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.beg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bef, <8 x i16> poison)
  %i.beh = shufflevector <16 x i8> %i.beg, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.beh, ptr %.61431066, align 1, !tbaa !64
  %i.bei = getelementptr inbounds nuw i8, ptr %.61067, i64 16 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %.61431066, i64 4 ; 2 uses
  %i.bek = add nuw nsw i32 %.21471065, 4          ; 3 uses
  %i.bel = or disjoint i32 %i.bek, 3
  %i.bem = icmp slt i32 %i.bel, %i.a
  br i1 %i.bem, label %.lr.ph1068, label %.preheader1049, !llvm.loop !60

.lr.ph1075:                                       ; preds = %.preheader1049, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.71074 = phi ptr [ %i.bga, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.6.lcssa, %.preheader1049 ] ; 2 uses
  %.71441073 = phi ptr [ %i.bgb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.6143.lcssa, %.preheader1049 ] ; 2 uses
  %.31481072 = phi i32 [ %i.bgc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.2147.lcssa, %.preheader1049 ]
  %i.ben = load i32, ptr %.71074, align 4, !tbaa !22
  %i.beo = sitofp fast i32 %i.ben to float
  %i.bep = fmul fast float %i.b, %i.beo
  %i.beq = fadd fast float %i.bep, %i.acr         ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ao
    i32 2, label %bb.ap
    i32 3, label %bb.aq
    i32 4, label %bb.ar
    i32 5, label %bb.as
    i32 6, label %bb.at
  ]

bb.ao:                                            ; preds = %.lr.ph1075
  %i.ber = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.beq, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ap:                                            ; preds = %.lr.ph1075
  %i.bes = load ptr, ptr %3, align 8, !tbaa !19
  %i.bet = load float, ptr %i.bes, align 4, !tbaa !63
  %i.beu = fcmp fast ogt float %i.beq, 0.000000e+00
  %i.bev = select fast i1 %i.beu, float 1.000000e+00, float %i.bet
  %i.bew = fmul fast float %i.bev, %i.beq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.aq:                                            ; preds = %.lr.ph1075
  %i.bex = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.bey = load float, ptr %i.bex, align 4, !tbaa !63
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bex, i64 4
  %i.bfa = load float, ptr %i.bez, align 4, !tbaa !63
  %spec.select999 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.beq, float %i.bey)
  %spec.select1001 = tail call nnan ninf nsz float @llvm.minnum.f32(float %spec.select999, float %i.bfa)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ar:                                            ; preds = %.lr.ph1075
  %.sroa.speculated51 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.beq, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated51, float f0xC2B0C0A5)
  %i.bfb = fneg fast float %.sroa.speculated
  %i.bfc = tail call fast float @llvm.exp.f32(float %i.bfb)
  %i.bfd = fadd fast float %i.bfc, 1.000000e+00
  %i.bfe = fdiv fast float 1.000000e+00, %i.bfd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.as:                                            ; preds = %.lr.ph1075
  %i.bff = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.beq)
  %i.bfg = fadd fast float %i.bff, 1.000000e+00
  %i.bfh = tail call fast float @llvm.log.f32(float %i.bfg)
  %i.bfi = tail call fast float @llvm.tanh.f32(float %i.bfh)
  %i.bfj = fmul fast float %i.bfi, %i.beq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.at:                                            ; preds = %.lr.ph1075
  %i.bfk = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.bfl = load float, ptr %i.bfk, align 4, !tbaa !63 ; 3 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfk, i64 4
  %i.bfn = load float, ptr %i.bfm, align 4, !tbaa !63 ; 2 uses
  %i.bfo = fneg fast float %i.bfn
  %i.bfp = fdiv fast float %i.bfo, %i.bfl         ; 2 uses
  %i.bfq = fcmp fast olt float %i.beq, %i.bfp
  br i1 %i.bfq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bfr = fdiv fast float 1.000000e+00, %i.bfl
  %i.bfs = fadd fast float %i.bfp, %i.bfr
  %i.bft = fcmp fast ogt float %i.beq, %i.bfs
  br i1 %i.bft, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bfu = fmul fast float %i.bfl, %i.beq
  %i.bfv = fadd fast float %i.bfu, %i.bfn
  %i.bfw = fmul fast float %i.bfv, %i.beq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.aq, %bb.at, %.lr.ph1075, %bb.ao, %bb.ap, %bb.ar, %bb.as, %bb.au, %bb.av
  %.1962 = phi nsz float [ %i.beq, %.lr.ph1075 ], [ %i.ber, %bb.ao ], [ %i.bew, %bb.ap ], [ 0.000000e+00, %bb.at ], [ %spec.select1001, %bb.aq ], [ %i.bfe, %bb.ar ], [ %i.bfj, %bb.as ], [ %i.bfw, %bb.av ], [ %i.beq, %bb.au ]
  %i.bfx = fmul fast float %.1962, %i.j
  %i.bfy = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.bfx)
  %i.bfz = fptosi float %i.bfy to i32
  %spec.select.i1002 = tail call i32 @llvm.smax.i32(i32 %i.bfz, i32 -127)
  %.0.i1691003 = tail call i32 @llvm.smin.i32(i32 %spec.select.i1002, i32 127)
  %.0.i169 = trunc nsw i32 %.0.i1691003 to i8
  store i8 %.0.i169, ptr %.71441073, align 1, !tbaa !64
  %i.bga = getelementptr inbounds nuw i8, ptr %.71074, i64 4
  %i.bgb = getelementptr inbounds nuw i8, ptr %.71441073, i64 1
  %i.bgc = add nuw nsw i32 %.31481072, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.bgc, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph1075, !llvm.loop !61

.loopexit:                                        ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %_ZL13activation_ssfiRKN4ncnn3MatE.exit168, %.preheader1049, %.preheader
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !40 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #5

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Requantize_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !22     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !22
  %i.h = load i32, ptr %0, align 4, !tbaa !22     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !22
  %i.k = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
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
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 440 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 448
end_hunk_0
