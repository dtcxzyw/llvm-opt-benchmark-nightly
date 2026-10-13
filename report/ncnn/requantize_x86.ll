Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/requantize_x86?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_ZNK4ncnn14Requantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  br label %bb.c

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL10requantizeEPKiPaRKNS_3MatES5_S5_iS5_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val, i32 %.44.val, ptr nofree readonly captures(none) %.0.val1, i32 %.44.val3, ptr nofree readonly captures(none) %.0.val5, i32 %.44.val7, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = mul i32 %5, %4                           ; 14 uses
  %i.b = load float, ptr %.0.val, align 4, !tbaa !61 ; 3 uses
  %i.c = insertelement <4 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.e = icmp sgt i32 %.44.val, 1
  %i.f = icmp eq i32 %5, 8                        ; 3 uses
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load <4 x float>, ptr %.0.val, align 4, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load <4 x float>, ptr %i.h, align 4, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0682 = phi nsz <4 x float> [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %.0681 = phi nsz <4 x float> [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = load float, ptr %.0.val5, align 4, !tbaa !61 ; 3 uses
  %i.k = insertelement <4 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.m = icmp sgt i32 %.44.val7, 1
  %or.cond3 = and i1 %i.m, %i.f
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load <4 x float>, ptr %.0.val5, align 4, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val5, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0131 = phi nsz <4 x float> [ %i.n, %bb.d ], [ %i.l, %bb.c ] ; 4 uses
  %.0130 = phi nsz <4 x float> [ %i.p, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = icmp eq i32 %.44.val3, 0
  br i1 %i.q, label %.preheader758, label %bb.v

.preheader758:                                    ; preds = %bb.e
  %i.r = icmp sgt i32 %i.a, 7
  br i1 %i.r, label %.lr.ph781, label %.preheader757

.lr.ph781:                                        ; preds = %.preheader758
  %i.s = load ptr, ptr %3, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load ptr, ptr %3, align 8
  br label %bb.f

.preheader757.loopexit:                           ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140
  %i.w = and i32 %i.a, 2147483640
  br label %.preheader757

.preheader757:                                    ; preds = %.preheader757.loopexit, %.preheader758
  %.0127.lcssa = phi i32 [ 0, %.preheader758 ], [ %i.w, %.preheader757.loopexit ] ; 3 uses
  %.0118.lcssa = phi ptr [ %1, %.preheader758 ], [ %i.mq, %.preheader757.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %.preheader758 ], [ %i.mp, %.preheader757.loopexit ] ; 2 uses
  %i.x = or disjoint i32 %.0127.lcssa, 3
  %i.y = icmp slt i32 %i.x, %i.a
  br i1 %i.y, label %.lr.ph788, label %.preheader

bb.f:                                             ; preds = %.lr.ph781, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140
  %.0780 = phi ptr [ %0, %.lr.ph781 ], [ %i.mp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ] ; 3 uses
  %.0118779 = phi ptr [ %1, %.lr.ph781 ], [ %i.mq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ] ; 2 uses
  %.0127778 = phi i32 [ 0, %.lr.ph781 ], [ %i.mr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ]
  %i.z = load <4 x i32>, ptr %.0780, align 1, !tbaa !62
  %i.aa = sitofp fast <4 x i32> %i.z to <4 x float>
  %i.ab = getelementptr inbounds nuw i8, ptr %.0780, i64 16
  %i.ac = load <4 x i32>, ptr %i.ab, align 1, !tbaa !62
  %i.ad = sitofp fast <4 x i32> %i.ac to <4 x float>
  %i.ae = fmul fast <4 x float> %.0682, %i.aa     ; 10 uses
  %i.af = fmul fast <4 x float> %.0681, %i.ad     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread: ; preds = %bb.f
  %i.ag = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ae, <4 x float> zeroinitializer)
  %i.ah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690: ; preds = %bb.f
  %i.ai = load float, ptr %i.v, align 4, !tbaa !61
  %i.aj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ae)
  %i.ak = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ae)
  %i.al = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = fmul fast <4 x float> %i.am, %i.ak
  %i.ao = fadd fast <4 x float> %i.an, %i.aj
  %i.ap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.af)
  %i.aq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.af)
  %i.ar = fmul fast <4 x float> %i.am, %i.aq
  %i.as = fadd fast <4 x float> %i.ar, %i.ap
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693: ; preds = %bb.f
  %i.at = load float, ptr %i.s, align 4, !tbaa !61
  %i.au = insertelement <4 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aw = load float, ptr %i.u, align 4, !tbaa !61
  %i.ax = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.az = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ae, <4 x float> nofpclass(nan inf) %i.av)
  %i.ba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.az, <4 x float> nofpclass(nan inf) %i.ay)
  %i.bb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> nofpclass(nan inf) %i.av)
  %i.bc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bb, <4 x float> nofpclass(nan inf) %i.ay)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696: ; preds = %bb.f
  %i.bd = fneg fast <4 x float> %i.ae
  %i.be = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bd, <4 x float> splat (float f0x42B0C0A5))
  %i.bf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.be, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bg = fmul fast <4 x float> %i.bf, splat (float f0x3FB8AA3B)
  %i.bh = fadd fast <4 x float> %i.bg, splat (float 5.000000e-01) ; 2 uses
  %i.bi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bh)
  %i.bj = sitofp fast <4 x i32> %i.bi to <4 x float> ; 2 uses
  %i.bk = fcmp fast olt <4 x float> %i.bh, %i.bj
  %i.bl = select <4 x i1> %i.bk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bm = fsub fast <4 x float> %i.bj, %i.bl      ; 2 uses
  %i.bn = fmul fast <4 x float> %i.bm, splat (float f0x3F317218)
  %i.bo = fsub fast <4 x float> %i.bf, %i.bn      ; 8 uses
  %i.bp = fmul fast <4 x float> %i.bo, %i.bo
  %i.bq = fmul fast <4 x float> %i.bo, splat (float f0x39506967)
  %i.br = fadd fast <4 x float> %i.bq, splat (float f0x3AB743CE)
  %i.bs = fmul fast <4 x float> %i.br, %i.bo
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3C088908)
  %i.bu = fmul fast <4 x float> %i.bt, %i.bo
  %i.bv = fadd fast <4 x float> %i.bu, splat (float f0x3D2AA9C1)
  %i.bw = fmul fast <4 x float> %i.bv, %i.bo
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0x3E2AAAAA)
  %i.by = fmul fast <4 x float> %i.bx, %i.bo
  %i.bz = fadd fast <4 x float> %i.by, splat (float 5.000000e-01)
  %i.ca = fmul fast <4 x float> %i.bp, %i.bz
  %i.cb = fadd fast <4 x float> %i.bo, %i.ca
  %i.cc = fadd fast <4 x float> %i.cb, splat (float 1.000000e+00)
  %i.cd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bm)
  %i.ce = shl <4 x i32> %i.cd, splat (i32 23)
  %i.cf = add <4 x i32> %i.ce, splat (i32 1065353216)
  %i.cg = bitcast <4 x i32> %i.cf to <4 x float>
  %i.ch = fmul fast <4 x float> %i.cc, %i.cg
  %i.ci = fadd fast <4 x float> %i.ch, splat (float 1.000000e+00)
  %i.cj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ci
  %i.ck = fneg fast <4 x float> %i.af
  %i.cl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ck, <4 x float> splat (float f0x42B0C0A5))
  %i.cm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cn = fmul fast <4 x float> %i.cm, splat (float f0x3FB8AA3B)
  %i.co = fadd fast <4 x float> %i.cn, splat (float 5.000000e-01) ; 2 uses
  %i.cp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.co)
  %i.cq = sitofp fast <4 x i32> %i.cp to <4 x float> ; 2 uses
  %i.cr = fcmp fast olt <4 x float> %i.co, %i.cq
  %i.cs = select <4 x i1> %i.cr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ct = fsub fast <4 x float> %i.cq, %i.cs      ; 2 uses
  %i.cu = fmul fast <4 x float> %i.ct, splat (float f0x3F317218)
  %i.cv = fsub fast <4 x float> %i.cm, %i.cu      ; 8 uses
  %i.cw = fmul fast <4 x float> %i.cv, %i.cv
  %i.cx = fmul fast <4 x float> %i.cv, splat (float f0x39506967)
  %i.cy = fadd fast <4 x float> %i.cx, splat (float f0x3AB743CE)
  %i.cz = fmul fast <4 x float> %i.cy, %i.cv
  %i.da = fadd fast <4 x float> %i.cz, splat (float f0x3C088908)
  %i.db = fmul fast <4 x float> %i.da, %i.cv
  %i.dc = fadd fast <4 x float> %i.db, splat (float f0x3D2AA9C1)
  %i.dd = fmul fast <4 x float> %i.dc, %i.cv
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3E2AAAAA)
  %i.df = fmul fast <4 x float> %i.de, %i.cv
  %i.dg = fadd fast <4 x float> %i.df, splat (float 5.000000e-01)
  %i.dh = fmul fast <4 x float> %i.cw, %i.dg
  %i.di = fadd fast <4 x float> %i.cv, %i.dh
  %i.dj = fadd fast <4 x float> %i.di, splat (float 1.000000e+00)
  %i.dk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ct)
  %i.dl = shl <4 x i32> %i.dk, splat (i32 23)
  %i.dm = add <4 x i32> %i.dl, splat (i32 1065353216)
  %i.dn = bitcast <4 x i32> %i.dm to <4 x float>
  %i.do = fmul fast <4 x float> %i.dj, %i.dn
  %i.dp = fadd fast <4 x float> %i.do, splat (float 1.000000e+00)
  %i.dq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699: ; preds = %bb.f
  %i.dr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ae, <4 x float> splat (float f0x42B0C0A5))
  %i.ds = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dt = fmul fast <4 x float> %i.ds, splat (float f0x3FB8AA3B)
  %i.du = fadd fast <4 x float> %i.dt, splat (float 5.000000e-01) ; 2 uses
  %i.dv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.du)
  %i.dw = sitofp fast <4 x i32> %i.dv to <4 x float> ; 2 uses
  %i.dx = fcmp fast olt <4 x float> %i.du, %i.dw
  %i.dy = select <4 x i1> %i.dx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dz = fsub fast <4 x float> %i.dw, %i.dy      ; 2 uses
  %i.ea = fmul fast <4 x float> %i.dz, splat (float f0x3F317218)
  %i.eb = fsub fast <4 x float> %i.ds, %i.ea      ; 8 uses
  %i.ec = fmul fast <4 x float> %i.eb, %i.eb
  %i.ed = fmul fast <4 x float> %i.eb, splat (float f0x39506967)
  %i.ee = fadd fast <4 x float> %i.ed, splat (float f0x3AB743CE)
  %i.ef = fmul fast <4 x float> %i.ee, %i.eb
  %i.eg = fadd fast <4 x float> %i.ef, splat (float f0x3C088908)
  %i.eh = fmul fast <4 x float> %i.eg, %i.eb
  %i.ei = fadd fast <4 x float> %i.eh, splat (float f0x3D2AA9C1)
  %i.ej = fmul fast <4 x float> %i.ei, %i.eb
  %i.ek = fadd fast <4 x float> %i.ej, splat (float f0x3E2AAAAA)
  %i.el = fmul fast <4 x float> %i.ek, %i.eb
  %i.em = fadd fast <4 x float> %i.el, splat (float 5.000000e-01)
  %i.en = fmul fast <4 x float> %i.ec, %i.em
  %i.eo = fadd fast <4 x float> %i.eb, %i.en
  %i.ep = fadd fast <4 x float> %i.eo, splat (float 1.000000e+00)
  %i.eq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dz)
  %i.er = shl <4 x i32> %i.eq, splat (i32 23)
  %i.es = add <4 x i32> %i.er, splat (i32 1065353216)
  %i.et = bitcast <4 x i32> %i.es to <4 x float>
  %i.eu = fmul fast <4 x float> %i.ep, %i.et
  %i.ev = fadd fast <4 x float> %i.eu, splat (float 1.000000e+00) ; 2 uses
  %i.ew = fcmp fast ole <4 x float> %i.ev, zeroinitializer
  %i.ex = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ev, <4 x float> splat (float f0x00800000))
  %i.ey = bitcast <4 x float> %i.ex to <4 x i32>  ; 2 uses
  %i.ez = lshr <4 x i32> %i.ey, splat (i32 23)
  %i.fa = and <4 x i32> %i.ey, splat (i32 -2139095041)
  %i.fb = or disjoint <4 x i32> %i.fa, splat (i32 1056964608)
  %i.fc = bitcast <4 x i32> %i.fb to <4 x float>  ; 3 uses
  %i.fd = add nsw <4 x i32> %i.ez, splat (i32 -127)
  %i.fe = sitofp fast <4 x i32> %i.fd to <4 x float> ; 2 uses
  %i.ff = fadd fast <4 x float> %i.fe, splat (float 1.000000e+00)
  %i.fg = fcmp fast olt <4 x float> %i.fc, splat (float f0x3F3504F3) ; 2 uses
  %i.fh = select <4 x i1> %i.fg, <4 x float> %i.fc, <4 x float> zeroinitializer
  %i.fi = fadd fast <4 x float> %i.fc, splat (float -1.000000e+00)
  %i.fj = select fast <4 x i1> %i.fg, <4 x float> %i.fe, <4 x float> %i.ff
  %i.fk = fadd fast <4 x float> %i.fi, %i.fh      ; 12 uses
  %i.fl = fmul fast <4 x float> %i.fk, %i.fk
  %i.fm = fmul fast <4 x float> %i.fk, splat (float f0x3D9021BB)
  %i.fn = fadd fast <4 x float> %i.fm, splat (float f0xBDEBD1B8)
  %i.fo = fmul fast <4 x float> %i.fn, %i.fk
  %i.fp = fadd fast <4 x float> %i.fo, splat (float f0x3DEF251A)
  %i.fq = fmul fast <4 x float> %i.fp, %i.fk
  %i.fr = fadd fast <4 x float> %i.fq, splat (float f0xBDFE5D4F)
  %i.fs = fmul fast <4 x float> %i.fr, %i.fk
  %i.ft = fadd fast <4 x float> %i.fs, splat (float f0x3E11E9BF)
  %i.fu = fmul fast <4 x float> %i.ft, %i.fk
  %i.fv = fadd fast <4 x float> %i.fu, splat (float f0xBE2AAE50)
  %i.fw = fmul fast <4 x float> %i.fv, %i.fk
  %i.fx = fadd fast <4 x float> %i.fw, splat (float f0x3E4CCEAC)
  %i.fy = fmul fast <4 x float> %i.fx, %i.fk
  %i.fz = fadd fast <4 x float> %i.fy, splat (float f0xBE7FFFFC)
  %i.ga = fmul fast <4 x float> %i.fz, %i.fk
  %i.gb = fadd fast <4 x float> %i.ga, splat (float f0x3EAAAAAA)
  %i.gc = fmul fast <4 x float> %i.gb, %i.fk
  %reass.mul749 = fmul fast <4 x float> %i.fj, splat (float f0x3F317218)
  %reass.add753 = fadd fast <4 x float> %i.gc, splat (float -5.000000e-01)
  %reass.mul754 = fmul fast <4 x float> %i.fl, %reass.add753
  %i.gd = fadd fast <4 x float> %reass.mul749, %i.fk
  %i.ge = fadd fast <4 x float> %i.gd, %reass.mul754
  %.neg730 = fmul fast <4 x float> %i.ge, splat (float -2.000000e+00)
  %i.gf = select fast <4 x i1> %i.ew, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg730
  %i.gg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gf, <4 x float> splat (float f0x42B0C0A5))
  %i.gh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gi = fmul fast <4 x float> %i.gh, splat (float f0x3FB8AA3B)
  %i.gj = fadd fast <4 x float> %i.gi, splat (float 5.000000e-01) ; 2 uses
  %i.gk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gj)
  %i.gl = sitofp fast <4 x i32> %i.gk to <4 x float> ; 2 uses
  %i.gm = fcmp fast olt <4 x float> %i.gj, %i.gl
  %i.gn = select <4 x i1> %i.gm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.go = fsub fast <4 x float> %i.gl, %i.gn      ; 2 uses
  %i.gp = fmul fast <4 x float> %i.go, splat (float f0x3F317218)
  %i.gq = fsub fast <4 x float> %i.gh, %i.gp      ; 8 uses
  %i.gr = fmul fast <4 x float> %i.gq, %i.gq
  %i.gs = fmul fast <4 x float> %i.gq, splat (float f0x39506967)
  %i.gt = fadd fast <4 x float> %i.gs, splat (float f0x3AB743CE)
  %i.gu = fmul fast <4 x float> %i.gt, %i.gq
  %i.gv = fadd fast <4 x float> %i.gu, splat (float f0x3C088908)
  %i.gw = fmul fast <4 x float> %i.gv, %i.gq
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3D2AA9C1)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gq
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3E2AAAAA)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gq
  %i.hb = fadd fast <4 x float> %i.ha, splat (float 5.000000e-01)
  %i.hc = fmul fast <4 x float> %i.gr, %i.hb
  %i.hd = fadd fast <4 x float> %i.gq, %i.hc
  %i.he = fadd fast <4 x float> %i.hd, splat (float 1.000000e+00)
  %i.hf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.go)
  %i.hg = shl <4 x i32> %i.hf, splat (i32 23)
  %i.hh = add <4 x i32> %i.hg, splat (i32 1065353216)
  %i.hi = bitcast <4 x i32> %i.hh to <4 x float>
  %i.hj = fmul fast <4 x float> %i.he, %i.hi
  %i.hk = fadd fast <4 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = fdiv fast <4 x float> splat (float 2.000000e+00), %i.hk
  %i.hm = fadd fast <4 x float> %i.hl, splat (float -1.000000e+00)
  %i.hn = fmul fast <4 x float> %i.hm, %i.ae
  %i.ho = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> splat (float f0x42B0C0A5))
  %i.hp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ho, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hq = fmul fast <4 x float> %i.hp, splat (float f0x3FB8AA3B)
  %i.hr = fadd fast <4 x float> %i.hq, splat (float 5.000000e-01) ; 2 uses
  %i.hs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hr)
  %i.ht = sitofp fast <4 x i32> %i.hs to <4 x float> ; 2 uses
  %i.hu = fcmp fast olt <4 x float> %i.hr, %i.ht
  %i.hv = select <4 x i1> %i.hu, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hw = fsub fast <4 x float> %i.ht, %i.hv      ; 2 uses
  %i.hx = fmul fast <4 x float> %i.hw, splat (float f0x3F317218)
  %i.hy = fsub fast <4 x float> %i.hp, %i.hx      ; 8 uses
  %i.hz = fmul fast <4 x float> %i.hy, %i.hy
  %i.ia = fmul fast <4 x float> %i.hy, splat (float f0x39506967)
  %i.ib = fadd fast <4 x float> %i.ia, splat (float f0x3AB743CE)
  %i.ic = fmul fast <4 x float> %i.ib, %i.hy
  %i.id = fadd fast <4 x float> %i.ic, splat (float f0x3C088908)
  %i.ie = fmul fast <4 x float> %i.id, %i.hy
  %i.if = fadd fast <4 x float> %i.ie, splat (float f0x3D2AA9C1)
  %i.ig = fmul fast <4 x float> %i.if, %i.hy
  %i.ih = fadd fast <4 x float> %i.ig, splat (float f0x3E2AAAAA)
  %i.ii = fmul fast <4 x float> %i.ih, %i.hy
  %i.ij = fadd fast <4 x float> %i.ii, splat (float 5.000000e-01)
  %i.ik = fmul fast <4 x float> %i.hz, %i.ij
  %i.il = fadd fast <4 x float> %i.hy, %i.ik
  %i.im = fadd fast <4 x float> %i.il, splat (float 1.000000e+00)
  %i.in = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hw)
  %i.io = shl <4 x i32> %i.in, splat (i32 23)
  %i.ip = add <4 x i32> %i.io, splat (i32 1065353216)
  %i.iq = bitcast <4 x i32> %i.ip to <4 x float>
  %i.ir = fmul fast <4 x float> %i.im, %i.iq
  %i.is = fadd fast <4 x float> %i.ir, splat (float 1.000000e+00) ; 2 uses
  %i.it = fcmp fast ole <4 x float> %i.is, zeroinitializer
  %i.iu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.is, <4 x float> splat (float f0x00800000))
  %i.iv = bitcast <4 x float> %i.iu to <4 x i32>  ; 2 uses
  %i.iw = lshr <4 x i32> %i.iv, splat (i32 23)
  %i.ix = and <4 x i32> %i.iv, splat (i32 -2139095041)
  %i.iy = or disjoint <4 x i32> %i.ix, splat (i32 1056964608)
  %i.iz = bitcast <4 x i32> %i.iy to <4 x float>  ; 3 uses
  %i.ja = add nsw <4 x i32> %i.iw, splat (i32 -127)
  %i.jb = sitofp fast <4 x i32> %i.ja to <4 x float> ; 2 uses
  %i.jc = fadd fast <4 x float> %i.jb, splat (float 1.000000e+00)
  %i.jd = fcmp fast olt <4 x float> %i.iz, splat (float f0x3F3504F3) ; 2 uses
  %i.je = select <4 x i1> %i.jd, <4 x float> %i.iz, <4 x float> zeroinitializer
  %i.jf = fadd fast <4 x float> %i.iz, splat (float -1.000000e+00)
  %i.jg = select fast <4 x i1> %i.jd, <4 x float> %i.jb, <4 x float> %i.jc
  %i.jh = fadd fast <4 x float> %i.jf, %i.je      ; 12 uses
  %i.ji = fmul fast <4 x float> %i.jh, %i.jh
  %i.jj = fmul fast <4 x float> %i.jh, splat (float f0x3D9021BB)
  %i.jk = fadd fast <4 x float> %i.jj, splat (float f0xBDEBD1B8)
  %i.jl = fmul fast <4 x float> %i.jk, %i.jh
  %i.jm = fadd fast <4 x float> %i.jl, splat (float f0x3DEF251A)
  %i.jn = fmul fast <4 x float> %i.jm, %i.jh
  %i.jo = fadd fast <4 x float> %i.jn, splat (float f0xBDFE5D4F)
  %i.jp = fmul fast <4 x float> %i.jo, %i.jh
  %i.jq = fadd fast <4 x float> %i.jp, splat (float f0x3E11E9BF)
  %i.jr = fmul fast <4 x float> %i.jq, %i.jh
  %i.js = fadd fast <4 x float> %i.jr, splat (float f0xBE2AAE50)
  %i.jt = fmul fast <4 x float> %i.js, %i.jh
  %i.ju = fadd fast <4 x float> %i.jt, splat (float f0x3E4CCEAC)
  %i.jv = fmul fast <4 x float> %i.ju, %i.jh
  %i.jw = fadd fast <4 x float> %i.jv, splat (float f0xBE7FFFFC)
  %i.jx = fmul fast <4 x float> %i.jw, %i.jh
  %i.jy = fadd fast <4 x float> %i.jx, splat (float f0x3EAAAAAA)
  %i.jz = fmul fast <4 x float> %i.jy, %i.jh
  %reass.mul752 = fmul fast <4 x float> %i.jg, splat (float f0x3F317218)
  %reass.add755 = fadd fast <4 x float> %i.jz, splat (float -5.000000e-01)
  %reass.mul756 = fmul fast <4 x float> %i.ji, %reass.add755
  %i.ka = fadd fast <4 x float> %reass.mul752, %i.jh
  %i.kb = fadd fast <4 x float> %i.ka, %reass.mul756
  %.neg731 = fmul fast <4 x float> %i.kb, splat (float -2.000000e+00)
  %i.kc = select fast <4 x i1> %i.it, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg731
  %i.kd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kc, <4 x float> splat (float f0x42B0C0A5))
  %i.ke = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kf = fmul fast <4 x float> %i.ke, splat (float f0x3FB8AA3B)
  %i.kg = fadd fast <4 x float> %i.kf, splat (float 5.000000e-01) ; 2 uses
  %i.kh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kg)
  %i.ki = sitofp fast <4 x i32> %i.kh to <4 x float> ; 2 uses
  %i.kj = fcmp fast olt <4 x float> %i.kg, %i.ki
  %i.kk = select <4 x i1> %i.kj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kl = fsub fast <4 x float> %i.ki, %i.kk      ; 2 uses
  %i.km = fmul fast <4 x float> %i.kl, splat (float f0x3F317218)
  %i.kn = fsub fast <4 x float> %i.ke, %i.km      ; 8 uses
  %i.ko = fmul fast <4 x float> %i.kn, %i.kn
  %i.kp = fmul fast <4 x float> %i.kn, splat (float f0x39506967)
  %i.kq = fadd fast <4 x float> %i.kp, splat (float f0x3AB743CE)
  %i.kr = fmul fast <4 x float> %i.kq, %i.kn
  %i.ks = fadd fast <4 x float> %i.kr, splat (float f0x3C088908)
  %i.kt = fmul fast <4 x float> %i.ks, %i.kn
  %i.ku = fadd fast <4 x float> %i.kt, splat (float f0x3D2AA9C1)
  %i.kv = fmul fast <4 x float> %i.ku, %i.kn
  %i.kw = fadd fast <4 x float> %i.kv, splat (float f0x3E2AAAAA)
  %i.kx = fmul fast <4 x float> %i.kw, %i.kn
  %i.ky = fadd fast <4 x float> %i.kx, splat (float 5.000000e-01)
  %i.kz = fmul fast <4 x float> %i.ko, %i.ky
  %i.la = fadd fast <4 x float> %i.kn, %i.kz
  %i.lb = fadd fast <4 x float> %i.la, splat (float 1.000000e+00)
  %i.lc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kl)
  %i.ld = shl <4 x i32> %i.lc, splat (i32 23)
  %i.le = add <4 x i32> %i.ld, splat (i32 1065353216)
  %i.lf = bitcast <4 x i32> %i.le to <4 x float>
  %i.lg = fmul fast <4 x float> %i.lb, %i.lf
  %i.lh = fadd fast <4 x float> %i.lg, splat (float 1.000000e+00)
  %i.li = fdiv fast <4 x float> splat (float 2.000000e+00), %i.lh
  %i.lj = fadd fast <4 x float> %i.li, splat (float -1.000000e+00)
  %i.lk = fmul fast <4 x float> %i.lj, %i.af
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702: ; preds = %bb.f
  %i.ll = load float, ptr %i.s, align 4, !tbaa !61
  %i.lm = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.ln = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lo = load float, ptr %i.t, align 4, !tbaa !61
  %i.lp = insertelement <4 x float> poison, float %i.lo, i64 0
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lr = fmul fast <4 x float> %i.ln, %i.ae
  %i.ls = fadd fast <4 x float> %i.lr, %i.lq
  %i.lt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ls, <4 x float> zeroinitializer)
  %i.lu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lt, <4 x float> splat (float 1.000000e+00))
  %i.lv = fmul fast <4 x float> %i.lu, %i.ae
  %i.lw = fmul fast <4 x float> %i.ln, %i.af
  %i.lx = fadd fast <4 x float> %i.lw, %i.lq
  %i.ly = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lx, <4 x float> zeroinitializer)
  %i.lz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ly, <4 x float> splat (float 1.000000e+00))
  %i.ma = fmul fast <4 x float> %i.lz, %i.af
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140:   ; preds = %bb.f, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702
  %.0.i141689 = phi <4 x float> [ %i.lv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702 ], [ %i.ag, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread ], [ %i.ao, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690 ], [ %i.ba, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693 ], [ %i.cj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696 ], [ %i.hn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699 ], [ %i.ae, %bb.f ]
  %.0.i139 = phi nsz <4 x float> [ %i.ma, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702 ], [ %i.ah, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread ], [ %i.as, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690 ], [ %i.bc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693 ], [ %i.dq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696 ], [ %i.lk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699 ], [ %i.af, %bb.f ]
  %i.mb = fmul fast <4 x float> %.0.i141689, %.0131 ; 2 uses
  %i.mc = fmul fast <4 x float> %.0.i139, %.0130  ; 2 uses
  %i.md = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mb)
  %i.me = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mc)
  %i.mf = fadd fast <4 x float> %i.md, %i.mb
  %i.mg = fadd fast <4 x float> %i.me, %i.mc
  %i.mh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mf)
  %i.mi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mg)
  %i.mj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mh, <4 x i32> %i.mi)
  %i.mk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mj, <8 x i16> splat (i16 -127))
  %i.ml = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mk, <8 x i16> splat (i16 127))
  %i.mm = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ml, <8 x i16> poison)
  %i.mn = bitcast <16 x i8> %i.mm to <2 x i64>
  %i.mo = extractelement <2 x i64> %i.mn, i64 0
  store i64 %i.mo, ptr %.0118779, align 8, !tbaa !63
  %i.mp = getelementptr inbounds nuw i8, ptr %.0780, i64 32 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.0118779, i64 8 ; 2 uses
  %i.mr = add nuw nsw i32 %.0127778, 8            ; 2 uses
  %i.ms = or disjoint i32 %i.mr, 7
  %i.mt = icmp slt i32 %i.ms, %i.a
  br i1 %i.mt, label %bb.f, label %.preheader757.loopexit, !llvm.loop !54

.preheader:                                       ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138, %.preheader757
  %.1128.lcssa = phi i32 [ %.0127.lcssa, %.preheader757 ], [ %i.tt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ] ; 2 uses
  %.1119.lcssa = phi ptr [ %.0118.lcssa, %.preheader757 ], [ %i.ts, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader757 ], [ %i.tr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ]
  %i.mu = icmp slt i32 %.1128.lcssa, %i.a
  br i1 %i.mu, label %.lr.ph795, label %.loopexit

.lr.ph788:                                        ; preds = %.preheader757, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138
  %.1787 = phi ptr [ %i.tr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ], [ %.0.lcssa, %.preheader757 ] ; 2 uses
  %.1119786 = phi ptr [ %i.ts, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ], [ %.0118.lcssa, %.preheader757 ] ; 2 uses
  %.1128785 = phi i32 [ %i.tt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ], [ %.0127.lcssa, %.preheader757 ]
  %i.mv = load <4 x i32>, ptr %.1787, align 1, !tbaa !62
  %i.mw = sitofp fast <4 x i32> %i.mv to <4 x float>
  %i.mx = fmul fast <4 x float> %.0682, %i.mw     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.g:                                             ; preds = %.lr.ph788
  %i.my = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mx, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.h:                                             ; preds = %.lr.ph788
  %i.mz = load ptr, ptr %3, align 8, !tbaa !19
  %i.na = load float, ptr %i.mz, align 4, !tbaa !61
  %i.nb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mx)
  %i.nc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.mx)
  %i.nd = insertelement <4 x float> poison, float %i.na, i64 0
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nf = fmul fast <4 x float> %i.ne, %i.nc
  %i.ng = fadd fast <4 x float> %i.nf, %i.nb
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.i:                                             ; preds = %.lr.ph788
  %i.nh = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !61
  %i.nj = insertelement <4 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !61
  %i.nn = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.no = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.np = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mx, <4 x float> nofpclass(nan inf) %i.nk)
  %i.nq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.np, <4 x float> nofpclass(nan inf) %i.no)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.j:                                             ; preds = %.lr.ph788
  %i.nr = fneg fast <4 x float> %i.mx
  %i.ns = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nr, <4 x float> splat (float f0x42B0C0A5))
  %i.nt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ns, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nu = fmul fast <4 x float> %i.nt, splat (float f0x3FB8AA3B)
  %i.nv = fadd fast <4 x float> %i.nu, splat (float 5.000000e-01) ; 2 uses
  %i.nw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nv)
  %i.nx = sitofp fast <4 x i32> %i.nw to <4 x float> ; 2 uses
  %i.ny = fcmp fast olt <4 x float> %i.nv, %i.nx
  %i.nz = select <4 x i1> %i.ny, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.oa = fsub fast <4 x float> %i.nx, %i.nz      ; 2 uses
  %i.ob = fmul fast <4 x float> %i.oa, splat (float f0x3F317218)
  %i.oc = fsub fast <4 x float> %i.nt, %i.ob      ; 8 uses
  %i.od = fmul fast <4 x float> %i.oc, %i.oc
  %i.oe = fmul fast <4 x float> %i.oc, splat (float f0x39506967)
  %i.of = fadd fast <4 x float> %i.oe, splat (float f0x3AB743CE)
  %i.og = fmul fast <4 x float> %i.of, %i.oc
  %i.oh = fadd fast <4 x float> %i.og, splat (float f0x3C088908)
  %i.oi = fmul fast <4 x float> %i.oh, %i.oc
  %i.oj = fadd fast <4 x float> %i.oi, splat (float f0x3D2AA9C1)
  %i.ok = fmul fast <4 x float> %i.oj, %i.oc
  %i.ol = fadd fast <4 x float> %i.ok, splat (float f0x3E2AAAAA)
  %i.om = fmul fast <4 x float> %i.ol, %i.oc
  %i.on = fadd fast <4 x float> %i.om, splat (float 5.000000e-01)
  %i.oo = fmul fast <4 x float> %i.od, %i.on
  %i.op = fadd fast <4 x float> %i.oc, %i.oo
  %i.oq = fadd fast <4 x float> %i.op, splat (float 1.000000e+00)
  %i.or = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oa)
  %i.os = shl <4 x i32> %i.or, splat (i32 23)
  %i.ot = add <4 x i32> %i.os, splat (i32 1065353216)
  %i.ou = bitcast <4 x i32> %i.ot to <4 x float>
  %i.ov = fmul fast <4 x float> %i.oq, %i.ou
  %i.ow = fadd fast <4 x float> %i.ov, splat (float 1.000000e+00)
  %i.ox = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ow
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.k:                                             ; preds = %.lr.ph788
  %i.oy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mx, <4 x float> splat (float f0x42B0C0A5))
  %i.oz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pa = fmul fast <4 x float> %i.oz, splat (float f0x3FB8AA3B)
  %i.pb = fadd fast <4 x float> %i.pa, splat (float 5.000000e-01) ; 2 uses
  %i.pc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pb)
  %i.pd = sitofp fast <4 x i32> %i.pc to <4 x float> ; 2 uses
  %i.pe = fcmp fast olt <4 x float> %i.pb, %i.pd
  %i.pf = select <4 x i1> %i.pe, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.pg = fsub fast <4 x float> %i.pd, %i.pf      ; 2 uses
  %i.ph = fmul fast <4 x float> %i.pg, splat (float f0x3F317218)
  %i.pi = fsub fast <4 x float> %i.oz, %i.ph      ; 8 uses
  %i.pj = fmul fast <4 x float> %i.pi, %i.pi
  %i.pk = fmul fast <4 x float> %i.pi, splat (float f0x39506967)
  %i.pl = fadd fast <4 x float> %i.pk, splat (float f0x3AB743CE)
  %i.pm = fmul fast <4 x float> %i.pl, %i.pi
  %i.pn = fadd fast <4 x float> %i.pm, splat (float f0x3C088908)
  %i.po = fmul fast <4 x float> %i.pn, %i.pi
  %i.pp = fadd fast <4 x float> %i.po, splat (float f0x3D2AA9C1)
  %i.pq = fmul fast <4 x float> %i.pp, %i.pi
  %i.pr = fadd fast <4 x float> %i.pq, splat (float f0x3E2AAAAA)
  %i.ps = fmul fast <4 x float> %i.pr, %i.pi
  %i.pt = fadd fast <4 x float> %i.ps, splat (float 5.000000e-01)
  %i.pu = fmul fast <4 x float> %i.pj, %i.pt
  %i.pv = fadd fast <4 x float> %i.pi, %i.pu
  %i.pw = fadd fast <4 x float> %i.pv, splat (float 1.000000e+00)
  %i.px = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pg)
  %i.py = shl <4 x i32> %i.px, splat (i32 23)
  %i.pz = add <4 x i32> %i.py, splat (i32 1065353216)
  %i.qa = bitcast <4 x i32> %i.pz to <4 x float>
  %i.qb = fmul fast <4 x float> %i.pw, %i.qa
  %i.qc = fadd fast <4 x float> %i.qb, splat (float 1.000000e+00) ; 2 uses
  %i.qd = fcmp fast ole <4 x float> %i.qc, zeroinitializer
  %i.qe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qc, <4 x float> splat (float f0x00800000))
  %i.qf = bitcast <4 x float> %i.qe to <4 x i32>  ; 2 uses
  %i.qg = lshr <4 x i32> %i.qf, splat (i32 23)
  %i.qh = and <4 x i32> %i.qf, splat (i32 -2139095041)
  %i.qi = or disjoint <4 x i32> %i.qh, splat (i32 1056964608)
  %i.qj = bitcast <4 x i32> %i.qi to <4 x float>  ; 3 uses
  %i.qk = add nsw <4 x i32> %i.qg, splat (i32 -127)
  %i.ql = sitofp fast <4 x i32> %i.qk to <4 x float> ; 2 uses
  %i.qm = fadd fast <4 x float> %i.ql, splat (float 1.000000e+00)
  %i.qn = fcmp fast olt <4 x float> %i.qj, splat (float f0x3F3504F3) ; 2 uses
  %i.qo = select <4 x i1> %i.qn, <4 x float> %i.qj, <4 x float> zeroinitializer
  %i.qp = fadd fast <4 x float> %i.qj, splat (float -1.000000e+00)
  %i.qq = select fast <4 x i1> %i.qn, <4 x float> %i.ql, <4 x float> %i.qm
  %i.qr = fadd fast <4 x float> %i.qp, %i.qo      ; 12 uses
  %i.qs = fmul fast <4 x float> %i.qr, %i.qr
  %i.qt = fmul fast <4 x float> %i.qr, splat (float f0x3D9021BB)
  %i.qu = fadd fast <4 x float> %i.qt, splat (float f0xBDEBD1B8)
  %i.qv = fmul fast <4 x float> %i.qu, %i.qr
  %i.qw = fadd fast <4 x float> %i.qv, splat (float f0x3DEF251A)
  %i.qx = fmul fast <4 x float> %i.qw, %i.qr
  %i.qy = fadd fast <4 x float> %i.qx, splat (float f0xBDFE5D4F)
  %i.qz = fmul fast <4 x float> %i.qy, %i.qr
  %i.ra = fadd fast <4 x float> %i.qz, splat (float f0x3E11E9BF)
  %i.rb = fmul fast <4 x float> %i.ra, %i.qr
  %i.rc = fadd fast <4 x float> %i.rb, splat (float f0xBE2AAE50)
  %i.rd = fmul fast <4 x float> %i.rc, %i.qr
  %i.re = fadd fast <4 x float> %i.rd, splat (float f0x3E4CCEAC)
  %i.rf = fmul fast <4 x float> %i.re, %i.qr
  %i.rg = fadd fast <4 x float> %i.rf, splat (float f0xBE7FFFFC)
  %i.rh = fmul fast <4 x float> %i.rg, %i.qr
  %i.ri = fadd fast <4 x float> %i.rh, splat (float f0x3EAAAAAA)
  %i.rj = fmul fast <4 x float> %i.ri, %i.qr
  %reass.mul745 = fmul fast <4 x float> %i.qq, splat (float f0x3F317218)
  %reass.add746 = fadd fast <4 x float> %i.rj, splat (float -5.000000e-01)
  %reass.mul747 = fmul fast <4 x float> %i.qs, %reass.add746
  %i.rk = fadd fast <4 x float> %reass.mul745, %i.qr
  %i.rl = fadd fast <4 x float> %i.rk, %reass.mul747
  %.neg729 = fmul fast <4 x float> %i.rl, splat (float -2.000000e+00)
  %i.rm = select fast <4 x i1> %i.qd, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg729
  %i.rn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> splat (float f0x42B0C0A5))
  %i.ro = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rp = fmul fast <4 x float> %i.ro, splat (float f0x3FB8AA3B)
  %i.rq = fadd fast <4 x float> %i.rp, splat (float 5.000000e-01) ; 2 uses
  %i.rr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rq)
  %i.rs = sitofp fast <4 x i32> %i.rr to <4 x float> ; 2 uses
  %i.rt = fcmp fast olt <4 x float> %i.rq, %i.rs
  %i.ru = select <4 x i1> %i.rt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rv = fsub fast <4 x float> %i.rs, %i.ru      ; 2 uses
  %i.rw = fmul fast <4 x float> %i.rv, splat (float f0x3F317218)
  %i.rx = fsub fast <4 x float> %i.ro, %i.rw      ; 8 uses
  %i.ry = fmul fast <4 x float> %i.rx, %i.rx
  %i.rz = fmul fast <4 x float> %i.rx, splat (float f0x39506967)
  %i.sa = fadd fast <4 x float> %i.rz, splat (float f0x3AB743CE)
  %i.sb = fmul fast <4 x float> %i.sa, %i.rx
  %i.sc = fadd fast <4 x float> %i.sb, splat (float f0x3C088908)
  %i.sd = fmul fast <4 x float> %i.sc, %i.rx
  %i.se = fadd fast <4 x float> %i.sd, splat (float f0x3D2AA9C1)
  %i.sf = fmul fast <4 x float> %i.se, %i.rx
  %i.sg = fadd fast <4 x float> %i.sf, splat (float f0x3E2AAAAA)
  %i.sh = fmul fast <4 x float> %i.sg, %i.rx
  %i.si = fadd fast <4 x float> %i.sh, splat (float 5.000000e-01)
  %i.sj = fmul fast <4 x float> %i.ry, %i.si
  %i.sk = fadd fast <4 x float> %i.rx, %i.sj
  %i.sl = fadd fast <4 x float> %i.sk, splat (float 1.000000e+00)
  %i.sm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rv)
  %i.sn = shl <4 x i32> %i.sm, splat (i32 23)
  %i.so = add <4 x i32> %i.sn, splat (i32 1065353216)
  %i.sp = bitcast <4 x i32> %i.so to <4 x float>
  %i.sq = fmul fast <4 x float> %i.sl, %i.sp
  %i.sr = fadd fast <4 x float> %i.sq, splat (float 1.000000e+00)
  %i.ss = fdiv fast <4 x float> splat (float 2.000000e+00), %i.sr
  %i.st = fadd fast <4 x float> %i.ss, splat (float -1.000000e+00)
  %i.su = fmul fast <4 x float> %i.st, %i.mx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.l:                                             ; preds = %.lr.ph788
  %i.sv = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !61
  %i.sx = insertelement <4 x float> poison, float %i.sw, i64 0
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !61
  %i.tb = insertelement <4 x float> poison, float %i.ta, i64 0
  %i.tc = shufflevector <4 x float> %i.tb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.td = fmul fast <4 x float> %i.sy, %i.mx
  %i.te = fadd fast <4 x float> %i.td, %i.tc
  %i.tf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.te, <4 x float> zeroinitializer)
  %i.tg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.tf, <4 x float> splat (float 1.000000e+00))
  %i.th = fmul fast <4 x float> %i.tg, %i.mx
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138:   ; preds = %.lr.ph788, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i137 = phi nsz <4 x float> [ %i.th, %bb.l ], [ %i.my, %bb.g ], [ %i.ng, %bb.h ], [ %i.nq, %bb.i ], [ %i.ox, %bb.j ], [ %i.su, %bb.k ], [ %i.mx, %.lr.ph788 ]
  %i.ti = fmul fast <4 x float> %.0.i137, %.0131  ; 2 uses
  %i.tj = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ti)
  %i.tk = fadd fast <4 x float> %i.tj, %i.ti
  %i.tl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tk)
  %i.tm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tl, <4 x i32> poison)
  %i.tn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tm, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.to = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tn, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.tp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.to, <8 x i16> poison)
  %i.tq = shufflevector <16 x i8> %i.tp, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.tq, ptr %.1119786, align 1, !tbaa !62
  %i.tr = getelementptr inbounds nuw i8, ptr %.1787, i64 16 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.1119786, i64 4 ; 2 uses
  %i.tt = add nuw nsw i32 %.1128785, 4            ; 3 uses
  %i.tu = or disjoint i32 %i.tt, 3
  %i.tv = icmp slt i32 %i.tu, %i.a
  br i1 %i.tv, label %.lr.ph788, label %.preheader, !llvm.loop !55

.lr.ph795:                                        ; preds = %.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143
  %.2794 = phi ptr [ %i.vj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.2120793 = phi ptr [ %i.vk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 ], [ %.1119.lcssa, %.preheader ] ; 2 uses
  %.2129792 = phi i32 [ %i.vl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 ], [ %.1128.lcssa, %.preheader ]
  %i.tw = load i32, ptr %.2794, align 4, !tbaa !22
  %i.tx = sitofp fast i32 %i.tw to float
  %i.ty = fmul fast float %i.b, %i.tx             ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.q
    i32 5, label %bb.r
    i32 6, label %bb.s
  ]

bb.m:                                             ; preds = %.lr.ph795
  %i.tz = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.ty, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.n:                                             ; preds = %.lr.ph795
  %i.ua = load ptr, ptr %3, align 8, !tbaa !19
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !61
  %i.uc = fcmp fast ogt float %i.ty, 0.000000e+00
  %i.ud = select fast i1 %i.uc, float 1.000000e+00, float %i.ub
  %i.ue = fmul fast float %i.ud, %i.ty
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.o:                                             ; preds = %.lr.ph795
  %i.uf = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !61
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !61 ; 2 uses
  %.0683 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ty, float %i.ug) ; 2 uses
  %i.uj = fcmp fast ogt float %.0683, %i.ui
  br i1 %i.uj, label %bb.p, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.p:                                             ; preds = %bb.o
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.q:                                             ; preds = %.lr.ph795
  %.sroa.speculated57 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.ty, float f0x42B0C0A5)
  %.sroa.speculated53 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated57, float f0xC2B0C0A5)
  %i.uk = fneg fast float %.sroa.speculated53
  %i.ul = tail call fast float @llvm.exp.f32(float %i.uk)
  %i.um = fadd fast float %i.ul, 1.000000e+00
  %i.un = fdiv fast float 1.000000e+00, %i.um
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.r:                                             ; preds = %.lr.ph795
  %i.uo = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ty)
  %i.up = fadd fast float %i.uo, 1.000000e+00
  %i.uq = tail call fast float @llvm.log.f32(float %i.up)
  %i.ur = tail call fast float @llvm.tanh.f32(float %i.uq)
  %i.us = fmul fast float %i.ur, %i.ty
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.s:                                             ; preds = %.lr.ph795
  %i.ut = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !61 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !61 ; 2 uses
  %i.ux = fneg fast float %i.uw
  %i.uy = fdiv fast float %i.ux, %i.uu            ; 2 uses
  %i.uz = fcmp fast olt float %i.ty, %i.uy
  br i1 %i.uz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.va = fdiv fast float 1.000000e+00, %i.uu
  %i.vb = fadd fast float %i.uy, %i.va
  %i.vc = fcmp fast ogt float %i.ty, %i.vb
  br i1 %i.vc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.vd = fmul fast float %i.uu, %i.ty
  %i.ve = fadd fast float %i.vd, %i.uw
  %i.vf = fmul fast float %i.ve, %i.ty
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

_ZL13activation_ssfiRKN4ncnn3MatE.exit143:        ; preds = %bb.s, %.lr.ph795, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.t, %bb.u
  %.1684 = phi nsz float [ %i.ty, %.lr.ph795 ], [ %i.tz, %bb.m ], [ %i.ue, %bb.n ], [ %i.ui, %bb.p ], [ %.0683, %bb.o ], [ %i.un, %bb.q ], [ %i.us, %bb.r ], [ %i.vf, %bb.u ], [ %i.ty, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.vg = fmul fast float %.1684, %i.j
  %i.vh = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.vg)
  %i.vi = fptosi float %i.vh to i32
  %spec.select.i145727 = tail call i32 @llvm.smax.i32(i32 %i.vi, i32 -127)
  %.0.i146728 = tail call i32 @llvm.smin.i32(i32 %spec.select.i145727, i32 127)
  %.0.i146 = trunc nsw i32 %.0.i146728 to i8
  store i8 %.0.i146, ptr %.2120793, align 1, !tbaa !62
  %i.vj = getelementptr inbounds nuw i8, ptr %.2794, i64 4
  %i.vk = getelementptr inbounds nuw i8, ptr %.2120793, i64 1
  %i.vl = add nuw nsw i32 %.2129792, 1            ; 2 uses
  %exitcond808.not = icmp eq i32 %i.vl, %i.a
  br i1 %exitcond808.not, label %.loopexit, label %.lr.ph795, !llvm.loop !56

bb.v:                                             ; preds = %bb.e
  %i.vm = load float, ptr %.0.val1, align 4, !tbaa !61 ; 2 uses
  %i.vn = insertelement <4 x float> poison, float %i.vm, i64 0
  %i.vo = shufflevector <4 x float> %i.vn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vp = icmp sgt i32 %.44.val3, 1
  %or.cond5 = and i1 %i.vp, %i.f
  br i1 %or.cond5, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.vq = load <4 x float>, ptr %.0.val1, align 4, !tbaa !62
  %i.vr = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.vs = load <4 x float>, ptr %i.vr, align 4, !tbaa !62
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0680 = phi nsz <4 x float> [ %i.vq, %bb.w ], [ %i.vo, %bb.v ] ; 2 uses
  %.0679 = phi nsz <4 x float> [ %i.vs, %bb.w ], [ %i.vo, %bb.v ]
  %i.vt = icmp sgt i32 %i.a, 7
  br i1 %i.vt, label %.lr.ph.preheader, label %.preheader761

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.vu = load ptr, ptr %3, align 8               ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  %i.vw = load ptr, ptr %3, align 8               ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %i.vy = load ptr, ptr %3, align 8
  br label %.lr.ph

.preheader761.loopexit:                           ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134
  %i.vz = and i32 %i.a, 2147483640
  br label %.preheader761

.preheader761:                                    ; preds = %.preheader761.loopexit, %bb.x
  %.0124.lcssa = phi i32 [ 0, %bb.x ], [ %i.vz, %.preheader761.loopexit ] ; 3 uses
  %.3121.lcssa = phi ptr [ %1, %bb.x ], [ %i.aiv, %.preheader761.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %0, %bb.x ], [ %i.aiu, %.preheader761.loopexit ] ; 2 uses
  %i.wa = or disjoint i32 %.0124.lcssa, 3
  %i.wb = icmp slt i32 %i.wa, %i.a
  br i1 %i.wb, label %.lr.ph770, label %.preheader759

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134
  %.3764 = phi ptr [ %i.aiu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.3121763 = phi ptr [ %i.aiv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.0124762 = phi i32 [ %i.aiw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 ], [ 0, %.lr.ph.preheader ]
  %i.wc = load <4 x i32>, ptr %.3764, align 1, !tbaa !62
  %i.wd = sitofp fast <4 x i32> %i.wc to <4 x float>
  %i.we = getelementptr inbounds nuw i8, ptr %.3764, i64 16
  %i.wf = load <4 x i32>, ptr %i.we, align 1, !tbaa !62
  %i.wg = sitofp fast <4 x i32> %i.wf to <4 x float>
  %i.wh = fmul fast <4 x float> %.0682, %i.wd
  %i.wi = fadd fast <4 x float> %i.wh, %.0680     ; 10 uses
  %i.wj = fmul fast <4 x float> %.0681, %i.wg
  %i.wk = fadd fast <4 x float> %i.wj, %.0679     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread: ; preds = %.lr.ph
  %i.wl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wi, <4 x float> zeroinitializer)
  %i.wm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wk, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708: ; preds = %.lr.ph
  %i.wn = load float, ptr %i.vy, align 4, !tbaa !61
  %i.wo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wi)
  %i.wp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wi)
  %i.wq = insertelement <4 x float> poison, float %i.wn, i64 0
  %i.wr = shufflevector <4 x float> %i.wq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ws = fmul fast <4 x float> %i.wr, %i.wp
  %i.wt = fadd fast <4 x float> %i.ws, %i.wo
  %i.wu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wk)
  %i.wv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wk)
  %i.ww = fmul fast <4 x float> %i.wr, %i.wv
  %i.wx = fadd fast <4 x float> %i.ww, %i.wu
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711: ; preds = %.lr.ph
  %i.wy = load float, ptr %i.vw, align 4, !tbaa !61
  %i.wz = insertelement <4 x float> poison, float %i.wy, i64 0
  %i.xa = shufflevector <4 x float> %i.wz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xb = load float, ptr %i.vx, align 4, !tbaa !61
  %i.xc = insertelement <4 x float> poison, float %i.xb, i64 0
  %i.xd = shufflevector <4 x float> %i.xc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wi, <4 x float> nofpclass(nan inf) %i.xa)
  %i.xf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xe, <4 x float> nofpclass(nan inf) %i.xd)
  %i.xg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wk, <4 x float> nofpclass(nan inf) %i.xa)
  %i.xh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xg, <4 x float> nofpclass(nan inf) %i.xd)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714: ; preds = %.lr.ph
  %i.xi = fneg fast <4 x float> %i.wi
  %i.xj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xi, <4 x float> splat (float f0x42B0C0A5))
  %i.xk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xl = fmul fast <4 x float> %i.xk, splat (float f0x3FB8AA3B)
  %i.xm = fadd fast <4 x float> %i.xl, splat (float 5.000000e-01) ; 2 uses
  %i.xn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xm)
  %i.xo = sitofp fast <4 x i32> %i.xn to <4 x float> ; 2 uses
  %i.xp = fcmp fast olt <4 x float> %i.xm, %i.xo
  %i.xq = select <4 x i1> %i.xp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.xr = fsub fast <4 x float> %i.xo, %i.xq      ; 2 uses
  %i.xs = fmul fast <4 x float> %i.xr, splat (float f0x3F317218)
  %i.xt = fsub fast <4 x float> %i.xk, %i.xs      ; 8 uses
  %i.xu = fmul fast <4 x float> %i.xt, %i.xt
  %i.xv = fmul fast <4 x float> %i.xt, splat (float f0x39506967)
  %i.xw = fadd fast <4 x float> %i.xv, splat (float f0x3AB743CE)
  %i.xx = fmul fast <4 x float> %i.xw, %i.xt
  %i.xy = fadd fast <4 x float> %i.xx, splat (float f0x3C088908)
  %i.xz = fmul fast <4 x float> %i.xy, %i.xt
  %i.ya = fadd fast <4 x float> %i.xz, splat (float f0x3D2AA9C1)
  %i.yb = fmul fast <4 x float> %i.ya, %i.xt
  %i.yc = fadd fast <4 x float> %i.yb, splat (float f0x3E2AAAAA)
  %i.yd = fmul fast <4 x float> %i.yc, %i.xt
  %i.ye = fadd fast <4 x float> %i.yd, splat (float 5.000000e-01)
  %i.yf = fmul fast <4 x float> %i.xu, %i.ye
  %i.yg = fadd fast <4 x float> %i.xt, %i.yf
  %i.yh = fadd fast <4 x float> %i.yg, splat (float 1.000000e+00)
  %i.yi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xr)
  %i.yj = shl <4 x i32> %i.yi, splat (i32 23)
  %i.yk = add <4 x i32> %i.yj, splat (i32 1065353216)
  %i.yl = bitcast <4 x i32> %i.yk to <4 x float>
  %i.ym = fmul fast <4 x float> %i.yh, %i.yl
  %i.yn = fadd fast <4 x float> %i.ym, splat (float 1.000000e+00)
  %i.yo = fdiv fast <4 x float> splat (float 1.000000e+00), %i.yn
  %i.yp = fneg fast <4 x float> %i.wk
  %i.yq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yp, <4 x float> splat (float f0x42B0C0A5))
  %i.yr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ys = fmul fast <4 x float> %i.yr, splat (float f0x3FB8AA3B)
  %i.yt = fadd fast <4 x float> %i.ys, splat (float 5.000000e-01) ; 2 uses
  %i.yu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yt)
  %i.yv = sitofp fast <4 x i32> %i.yu to <4 x float> ; 2 uses
  %i.yw = fcmp fast olt <4 x float> %i.yt, %i.yv
  %i.yx = select <4 x i1> %i.yw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.yy = fsub fast <4 x float> %i.yv, %i.yx      ; 2 uses
  %i.yz = fmul fast <4 x float> %i.yy, splat (float f0x3F317218)
  %i.za = fsub fast <4 x float> %i.yr, %i.yz      ; 8 uses
  %i.zb = fmul fast <4 x float> %i.za, %i.za
  %i.zc = fmul fast <4 x float> %i.za, splat (float f0x39506967)
  %i.zd = fadd fast <4 x float> %i.zc, splat (float f0x3AB743CE)
  %i.ze = fmul fast <4 x float> %i.zd, %i.za
  %i.zf = fadd fast <4 x float> %i.ze, splat (float f0x3C088908)
  %i.zg = fmul fast <4 x float> %i.zf, %i.za
  %i.zh = fadd fast <4 x float> %i.zg, splat (float f0x3D2AA9C1)
  %i.zi = fmul fast <4 x float> %i.zh, %i.za
  %i.zj = fadd fast <4 x float> %i.zi, splat (float f0x3E2AAAAA)
  %i.zk = fmul fast <4 x float> %i.zj, %i.za
  %i.zl = fadd fast <4 x float> %i.zk, splat (float 5.000000e-01)
  %i.zm = fmul fast <4 x float> %i.zb, %i.zl
  %i.zn = fadd fast <4 x float> %i.za, %i.zm
  %i.zo = fadd fast <4 x float> %i.zn, splat (float 1.000000e+00)
  %i.zp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yy)
  %i.zq = shl <4 x i32> %i.zp, splat (i32 23)
  %i.zr = add <4 x i32> %i.zq, splat (i32 1065353216)
  %i.zs = bitcast <4 x i32> %i.zr to <4 x float>
  %i.zt = fmul fast <4 x float> %i.zo, %i.zs
  %i.zu = fadd fast <4 x float> %i.zt, splat (float 1.000000e+00)
  %i.zv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.zu
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717: ; preds = %.lr.ph
  %i.zw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.wi, <4 x float> splat (float f0x42B0C0A5))
  %i.zx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.zy = fmul fast <4 x float> %i.zx, splat (float f0x3FB8AA3B)
  %i.zz = fadd fast <4 x float> %i.zy, splat (float 5.000000e-01) ; 2 uses
  %i.aaa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.zz)
  %i.aab = sitofp fast <4 x i32> %i.aaa to <4 x float> ; 2 uses
  %i.aac = fcmp fast olt <4 x float> %i.zz, %i.aab
  %i.aad = select <4 x i1> %i.aac, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aae = fsub fast <4 x float> %i.aab, %i.aad   ; 2 uses
  %i.aaf = fmul fast <4 x float> %i.aae, splat (float f0x3F317218)
  %i.aag = fsub fast <4 x float> %i.zx, %i.aaf    ; 8 uses
  %i.aah = fmul fast <4 x float> %i.aag, %i.aag
  %i.aai = fmul fast <4 x float> %i.aag, splat (float f0x39506967)
  %i.aaj = fadd fast <4 x float> %i.aai, splat (float f0x3AB743CE)
  %i.aak = fmul fast <4 x float> %i.aaj, %i.aag
  %i.aal = fadd fast <4 x float> %i.aak, splat (float f0x3C088908)
  %i.aam = fmul fast <4 x float> %i.aal, %i.aag
  %i.aan = fadd fast <4 x float> %i.aam, splat (float f0x3D2AA9C1)
  %i.aao = fmul fast <4 x float> %i.aan, %i.aag
  %i.aap = fadd fast <4 x float> %i.aao, splat (float f0x3E2AAAAA)
  %i.aaq = fmul fast <4 x float> %i.aap, %i.aag
  %i.aar = fadd fast <4 x float> %i.aaq, splat (float 5.000000e-01)
  %i.aas = fmul fast <4 x float> %i.aah, %i.aar
  %i.aat = fadd fast <4 x float> %i.aag, %i.aas
  %i.aau = fadd fast <4 x float> %i.aat, splat (float 1.000000e+00)
  %i.aav = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aae)
  %i.aaw = shl <4 x i32> %i.aav, splat (i32 23)
  %i.aax = add <4 x i32> %i.aaw, splat (i32 1065353216)
  %i.aay = bitcast <4 x i32> %i.aax to <4 x float>
  %i.aaz = fmul fast <4 x float> %i.aau, %i.aay
  %i.aba = fadd fast <4 x float> %i.aaz, splat (float 1.000000e+00) ; 2 uses
  %i.abb = fcmp fast ole <4 x float> %i.aba, zeroinitializer
  %i.abc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aba, <4 x float> splat (float f0x00800000))
  %i.abd = bitcast <4 x float> %i.abc to <4 x i32> ; 2 uses
  %i.abe = lshr <4 x i32> %i.abd, splat (i32 23)
  %i.abf = and <4 x i32> %i.abd, splat (i32 -2139095041)
  %i.abg = or disjoint <4 x i32> %i.abf, splat (i32 1056964608)
  %i.abh = bitcast <4 x i32> %i.abg to <4 x float> ; 3 uses
  %i.abi = add nsw <4 x i32> %i.abe, splat (i32 -127)
  %i.abj = sitofp fast <4 x i32> %i.abi to <4 x float> ; 2 uses
  %i.abk = fadd fast <4 x float> %i.abj, splat (float 1.000000e+00)
  %i.abl = fcmp fast olt <4 x float> %i.abh, splat (float f0x3F3504F3) ; 2 uses
  %i.abm = select <4 x i1> %i.abl, <4 x float> %i.abh, <4 x float> zeroinitializer
  %i.abn = fadd fast <4 x float> %i.abh, splat (float -1.000000e+00)
  %i.abo = select fast <4 x i1> %i.abl, <4 x float> %i.abj, <4 x float> %i.abk
  %i.abp = fadd fast <4 x float> %i.abn, %i.abm   ; 12 uses
  %i.abq = fmul fast <4 x float> %i.abp, %i.abp
  %i.abr = fmul fast <4 x float> %i.abp, splat (float f0x3D9021BB)
  %i.abs = fadd fast <4 x float> %i.abr, splat (float f0xBDEBD1B8)
  %i.abt = fmul fast <4 x float> %i.abs, %i.abp
  %i.abu = fadd fast <4 x float> %i.abt, splat (float f0x3DEF251A)
  %i.abv = fmul fast <4 x float> %i.abu, %i.abp
  %i.abw = fadd fast <4 x float> %i.abv, splat (float f0xBDFE5D4F)
  %i.abx = fmul fast <4 x float> %i.abw, %i.abp
  %i.aby = fadd fast <4 x float> %i.abx, splat (float f0x3E11E9BF)
  %i.abz = fmul fast <4 x float> %i.aby, %i.abp
  %i.aca = fadd fast <4 x float> %i.abz, splat (float f0xBE2AAE50)
  %i.acb = fmul fast <4 x float> %i.aca, %i.abp
  %i.acc = fadd fast <4 x float> %i.acb, splat (float f0x3E4CCEAC)
  %i.acd = fmul fast <4 x float> %i.acc, %i.abp
  %i.ace = fadd fast <4 x float> %i.acd, splat (float f0xBE7FFFFC)
  %i.acf = fmul fast <4 x float> %i.ace, %i.abp
  %i.acg = fadd fast <4 x float> %i.acf, splat (float f0x3EAAAAAA)
  %i.ach = fmul fast <4 x float> %i.acg, %i.abp
  %reass.mul736 = fmul fast <4 x float> %i.abo, splat (float f0x3F317218)
  %reass.add740 = fadd fast <4 x float> %i.ach, splat (float -5.000000e-01)
  %reass.mul741 = fmul fast <4 x float> %i.abq, %reass.add740
  %i.aci = fadd fast <4 x float> %reass.mul736, %i.abp
  %i.acj = fadd fast <4 x float> %i.aci, %reass.mul741
  %.neg725 = fmul fast <4 x float> %i.acj, splat (float -2.000000e+00)
  %i.ack = select fast <4 x i1> %i.abb, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg725
  %i.acl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ack, <4 x float> splat (float f0x42B0C0A5))
  %i.acm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.acl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.acn = fmul fast <4 x float> %i.acm, splat (float f0x3FB8AA3B)
  %i.aco = fadd fast <4 x float> %i.acn, splat (float 5.000000e-01) ; 2 uses
  %i.acp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aco)
  %i.acq = sitofp fast <4 x i32> %i.acp to <4 x float> ; 2 uses
  %i.acr = fcmp fast olt <4 x float> %i.aco, %i.acq
  %i.acs = select <4 x i1> %i.acr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.act = fsub fast <4 x float> %i.acq, %i.acs   ; 2 uses
  %i.acu = fmul fast <4 x float> %i.act, splat (float f0x3F317218)
  %i.acv = fsub fast <4 x float> %i.acm, %i.acu   ; 8 uses
  %i.acw = fmul fast <4 x float> %i.acv, %i.acv
  %i.acx = fmul fast <4 x float> %i.acv, splat (float f0x39506967)
  %i.acy = fadd fast <4 x float> %i.acx, splat (float f0x3AB743CE)
  %i.acz = fmul fast <4 x float> %i.acy, %i.acv
  %i.ada = fadd fast <4 x float> %i.acz, splat (float f0x3C088908)
  %i.adb = fmul fast <4 x float> %i.ada, %i.acv
  %i.adc = fadd fast <4 x float> %i.adb, splat (float f0x3D2AA9C1)
  %i.add = fmul fast <4 x float> %i.adc, %i.acv
  %i.ade = fadd fast <4 x float> %i.add, splat (float f0x3E2AAAAA)
  %i.adf = fmul fast <4 x float> %i.ade, %i.acv
  %i.adg = fadd fast <4 x float> %i.adf, splat (float 5.000000e-01)
  %i.adh = fmul fast <4 x float> %i.acw, %i.adg
  %i.adi = fadd fast <4 x float> %i.acv, %i.adh
  %i.adj = fadd fast <4 x float> %i.adi, splat (float 1.000000e+00)
  %i.adk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.act)
  %i.adl = shl <4 x i32> %i.adk, splat (i32 23)
  %i.adm = add <4 x i32> %i.adl, splat (i32 1065353216)
  %i.adn = bitcast <4 x i32> %i.adm to <4 x float>
  %i.ado = fmul fast <4 x float> %i.adj, %i.adn
  %i.adp = fadd fast <4 x float> %i.ado, splat (float 1.000000e+00)
  %i.adq = fdiv fast <4 x float> splat (float 2.000000e+00), %i.adp
  %i.adr = fadd fast <4 x float> %i.adq, splat (float -1.000000e+00)
  %i.ads = fmul fast <4 x float> %i.adr, %i.wi
  %i.adt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.wk, <4 x float> splat (float f0x42B0C0A5))
  %i.adu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.adt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.adv = fmul fast <4 x float> %i.adu, splat (float f0x3FB8AA3B)
  %i.adw = fadd fast <4 x float> %i.adv, splat (float 5.000000e-01) ; 2 uses
  %i.adx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adw)
  %i.ady = sitofp fast <4 x i32> %i.adx to <4 x float> ; 2 uses
  %i.adz = fcmp fast olt <4 x float> %i.adw, %i.ady
  %i.aea = select <4 x i1> %i.adz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aeb = fsub fast <4 x float> %i.ady, %i.aea   ; 2 uses
  %i.aec = fmul fast <4 x float> %i.aeb, splat (float f0x3F317218)
  %i.aed = fsub fast <4 x float> %i.adu, %i.aec   ; 8 uses
  %i.aee = fmul fast <4 x float> %i.aed, %i.aed
  %i.aef = fmul fast <4 x float> %i.aed, splat (float f0x39506967)
  %i.aeg = fadd fast <4 x float> %i.aef, splat (float f0x3AB743CE)
  %i.aeh = fmul fast <4 x float> %i.aeg, %i.aed
  %i.aei = fadd fast <4 x float> %i.aeh, splat (float f0x3C088908)
  %i.aej = fmul fast <4 x float> %i.aei, %i.aed
  %i.aek = fadd fast <4 x float> %i.aej, splat (float f0x3D2AA9C1)
  %i.ael = fmul fast <4 x float> %i.aek, %i.aed
  %i.aem = fadd fast <4 x float> %i.ael, splat (float f0x3E2AAAAA)
  %i.aen = fmul fast <4 x float> %i.aem, %i.aed
  %i.aeo = fadd fast <4 x float> %i.aen, splat (float 5.000000e-01)
  %i.aep = fmul fast <4 x float> %i.aee, %i.aeo
  %i.aeq = fadd fast <4 x float> %i.aed, %i.aep
  %i.aer = fadd fast <4 x float> %i.aeq, splat (float 1.000000e+00)
  %i.aes = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aeb)
  %i.aet = shl <4 x i32> %i.aes, splat (i32 23)
  %i.aeu = add <4 x i32> %i.aet, splat (i32 1065353216)
  %i.aev = bitcast <4 x i32> %i.aeu to <4 x float>
  %i.aew = fmul fast <4 x float> %i.aer, %i.aev
  %i.aex = fadd fast <4 x float> %i.aew, splat (float 1.000000e+00) ; 2 uses
  %i.aey = fcmp fast ole <4 x float> %i.aex, zeroinitializer
  %i.aez = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aex, <4 x float> splat (float f0x00800000))
  %i.afa = bitcast <4 x float> %i.aez to <4 x i32> ; 2 uses
  %i.afb = lshr <4 x i32> %i.afa, splat (i32 23)
  %i.afc = and <4 x i32> %i.afa, splat (i32 -2139095041)
  %i.afd = or disjoint <4 x i32> %i.afc, splat (i32 1056964608)
  %i.afe = bitcast <4 x i32> %i.afd to <4 x float> ; 3 uses
  %i.aff = add nsw <4 x i32> %i.afb, splat (i32 -127)
  %i.afg = sitofp fast <4 x i32> %i.aff to <4 x float> ; 2 uses
  %i.afh = fadd fast <4 x float> %i.afg, splat (float 1.000000e+00)
  %i.afi = fcmp fast olt <4 x float> %i.afe, splat (float f0x3F3504F3) ; 2 uses
  %i.afj = select <4 x i1> %i.afi, <4 x float> %i.afe, <4 x float> zeroinitializer
  %i.afk = fadd fast <4 x float> %i.afe, splat (float -1.000000e+00)
  %i.afl = select fast <4 x i1> %i.afi, <4 x float> %i.afg, <4 x float> %i.afh
  %i.afm = fadd fast <4 x float> %i.afk, %i.afj   ; 12 uses
  %i.afn = fmul fast <4 x float> %i.afm, %i.afm
  %i.afo = fmul fast <4 x float> %i.afm, splat (float f0x3D9021BB)
  %i.afp = fadd fast <4 x float> %i.afo, splat (float f0xBDEBD1B8)
  %i.afq = fmul fast <4 x float> %i.afp, %i.afm
  %i.afr = fadd fast <4 x float> %i.afq, splat (float f0x3DEF251A)
  %i.afs = fmul fast <4 x float> %i.afr, %i.afm
  %i.aft = fadd fast <4 x float> %i.afs, splat (float f0xBDFE5D4F)
  %i.afu = fmul fast <4 x float> %i.aft, %i.afm
  %i.afv = fadd fast <4 x float> %i.afu, splat (float f0x3E11E9BF)
  %i.afw = fmul fast <4 x float> %i.afv, %i.afm
  %i.afx = fadd fast <4 x float> %i.afw, splat (float f0xBE2AAE50)
  %i.afy = fmul fast <4 x float> %i.afx, %i.afm
  %i.afz = fadd fast <4 x float> %i.afy, splat (float f0x3E4CCEAC)
  %i.aga = fmul fast <4 x float> %i.afz, %i.afm
  %i.agb = fadd fast <4 x float> %i.aga, splat (float f0xBE7FFFFC)
  %i.agc = fmul fast <4 x float> %i.agb, %i.afm
  %i.agd = fadd fast <4 x float> %i.agc, splat (float f0x3EAAAAAA)
  %i.age = fmul fast <4 x float> %i.agd, %i.afm
  %reass.mul739 = fmul fast <4 x float> %i.afl, splat (float f0x3F317218)
  %reass.add742 = fadd fast <4 x float> %i.age, splat (float -5.000000e-01)
  %reass.mul743 = fmul fast <4 x float> %i.afn, %reass.add742
  %i.agf = fadd fast <4 x float> %reass.mul739, %i.afm
  %i.agg = fadd fast <4 x float> %i.agf, %reass.mul743
  %.neg726 = fmul fast <4 x float> %i.agg, splat (float -2.000000e+00)
  %i.agh = select fast <4 x i1> %i.aey, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg726
  %i.agi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agh, <4 x float> splat (float f0x42B0C0A5))
  %i.agj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agi, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agk = fmul fast <4 x float> %i.agj, splat (float f0x3FB8AA3B)
  %i.agl = fadd fast <4 x float> %i.agk, splat (float 5.000000e-01) ; 2 uses
  %i.agm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agl)
  %i.agn = sitofp fast <4 x i32> %i.agm to <4 x float> ; 2 uses
  %i.ago = fcmp fast olt <4 x float> %i.agl, %i.agn
  %i.agp = select <4 x i1> %i.ago, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.agq = fsub fast <4 x float> %i.agn, %i.agp   ; 2 uses
  %i.agr = fmul fast <4 x float> %i.agq, splat (float f0x3F317218)
  %i.ags = fsub fast <4 x float> %i.agj, %i.agr   ; 8 uses
  %i.agt = fmul fast <4 x float> %i.ags, %i.ags
  %i.agu = fmul fast <4 x float> %i.ags, splat (float f0x39506967)
  %i.agv = fadd fast <4 x float> %i.agu, splat (float f0x3AB743CE)
  %i.agw = fmul fast <4 x float> %i.agv, %i.ags
  %i.agx = fadd fast <4 x float> %i.agw, splat (float f0x3C088908)
  %i.agy = fmul fast <4 x float> %i.agx, %i.ags
  %i.agz = fadd fast <4 x float> %i.agy, splat (float f0x3D2AA9C1)
  %i.aha = fmul fast <4 x float> %i.agz, %i.ags
  %i.ahb = fadd fast <4 x float> %i.aha, splat (float f0x3E2AAAAA)
  %i.ahc = fmul fast <4 x float> %i.ahb, %i.ags
  %i.ahd = fadd fast <4 x float> %i.ahc, splat (float 5.000000e-01)
  %i.ahe = fmul fast <4 x float> %i.agt, %i.ahd
  %i.ahf = fadd fast <4 x float> %i.ags, %i.ahe
  %i.ahg = fadd fast <4 x float> %i.ahf, splat (float 1.000000e+00)
  %i.ahh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agq)
  %i.ahi = shl <4 x i32> %i.ahh, splat (i32 23)
  %i.ahj = add <4 x i32> %i.ahi, splat (i32 1065353216)
  %i.ahk = bitcast <4 x i32> %i.ahj to <4 x float>
  %i.ahl = fmul fast <4 x float> %i.ahg, %i.ahk
  %i.ahm = fadd fast <4 x float> %i.ahl, splat (float 1.000000e+00)
  %i.ahn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ahm
  %i.aho = fadd fast <4 x float> %i.ahn, splat (float -1.000000e+00)
  %i.ahp = fmul fast <4 x float> %i.aho, %i.wk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720: ; preds = %.lr.ph
  %i.ahq = load float, ptr %i.vu, align 4, !tbaa !61
  %i.ahr = insertelement <4 x float> poison, float %i.ahq, i64 0
  %i.ahs = shufflevector <4 x float> %i.ahr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aht = load float, ptr %i.vv, align 4, !tbaa !61
  %i.ahu = insertelement <4 x float> poison, float %i.aht, i64 0
  %i.ahv = shufflevector <4 x float> %i.ahu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahw = fmul fast <4 x float> %i.ahs, %i.wi
  %i.ahx = fadd fast <4 x float> %i.ahw, %i.ahv
  %i.ahy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> zeroinitializer)
  %i.ahz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ahy, <4 x float> splat (float 1.000000e+00))
  %i.aia = fmul fast <4 x float> %i.ahz, %i.wi
  %i.aib = fmul fast <4 x float> %i.ahs, %i.wk
  %i.aic = fadd fast <4 x float> %i.aib, %i.ahv
  %i.aid = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aic, <4 x float> zeroinitializer)
  %i.aie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aid, <4 x float> splat (float 1.000000e+00))
  %i.aif = fmul fast <4 x float> %i.aie, %i.wk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134:   ; preds = %.lr.ph, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720
  %.0.i135707 = phi <4 x float> [ %i.aia, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720 ], [ %i.wl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread ], [ %i.wt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708 ], [ %i.xf, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711 ], [ %i.yo, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714 ], [ %i.ads, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717 ], [ %i.wi, %.lr.ph ]
  %.0.i133 = phi nsz <4 x float> [ %i.aif, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720 ], [ %i.wm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread ], [ %i.wx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708 ], [ %i.xh, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711 ], [ %i.zv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714 ], [ %i.ahp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717 ], [ %i.wk, %.lr.ph ]
  %i.aig = fmul fast <4 x float> %.0.i135707, %.0131 ; 2 uses
  %i.aih = fmul fast <4 x float> %.0.i133, %.0130 ; 2 uses
  %i.aii = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aig)
  %i.aij = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aih)
  %i.aik = fadd fast <4 x float> %i.aii, %i.aig
  %i.ail = fadd fast <4 x float> %i.aij, %i.aih
  %i.aim = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aik)
  %i.ain = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ail)
  %i.aio = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aim, <4 x i32> %i.ain)
  %i.aip = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aio, <8 x i16> splat (i16 -127))
  %i.aiq = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aip, <8 x i16> splat (i16 127))
  %i.air = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aiq, <8 x i16> poison)
  %i.ais = bitcast <16 x i8> %i.air to <2 x i64>
  %i.ait = extractelement <2 x i64> %i.ais, i64 0
  store i64 %i.ait, ptr %.3121763, align 8, !tbaa !63
  %i.aiu = getelementptr inbounds nuw i8, ptr %.3764, i64 32 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.3121763, i64 8 ; 2 uses
  %i.aiw = add nuw nsw i32 %.0124762, 8           ; 2 uses
  %i.aix = or disjoint i32 %i.aiw, 7
  %i.aiy = icmp slt i32 %i.aix, %i.a
  br i1 %i.aiy, label %.lr.ph, label %.preheader761.loopexit, !llvm.loop !57

.preheader759:                                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.preheader761
  %.1125.lcssa = phi i32 [ %.0124.lcssa, %.preheader761 ], [ %i.apz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %.4122.lcssa = phi ptr [ %.3121.lcssa, %.preheader761 ], [ %i.apy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader761 ], [ %i.apx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.aiz = icmp slt i32 %.1125.lcssa, %i.a
  br i1 %i.aiz, label %.lr.ph777, label %.loopexit

.lr.ph770:                                        ; preds = %.preheader761, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.4769 = phi ptr [ %i.apx, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.3.lcssa, %.preheader761 ] ; 2 uses
  %.4122768 = phi ptr [ %i.apy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.3121.lcssa, %.preheader761 ] ; 2 uses
  %.1125767 = phi i32 [ %i.apz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.0124.lcssa, %.preheader761 ]
  %i.aja = load <4 x i32>, ptr %.4769, align 1, !tbaa !62
  %i.ajb = sitofp fast <4 x i32> %i.aja to <4 x float>
  %i.ajc = fmul fast <4 x float> %.0682, %i.ajb
  %i.ajd = fadd fast <4 x float> %i.ajc, %.0680   ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
    i32 4, label %bb.ab
    i32 5, label %bb.ac
    i32 6, label %bb.ad
  ]

bb.y:                                             ; preds = %.lr.ph770
  %i.aje = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajd, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.z:                                             ; preds = %.lr.ph770
  %i.ajf = load ptr, ptr %3, align 8, !tbaa !19
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !61
  %i.ajh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ajd)
  %i.aji = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ajd)
  %i.ajj = insertelement <4 x float> poison, float %i.ajg, i64 0
  %i.ajk = shufflevector <4 x float> %i.ajj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajl = fmul fast <4 x float> %i.ajk, %i.aji
  %i.ajm = fadd fast <4 x float> %i.ajl, %i.ajh
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.aa:                                            ; preds = %.lr.ph770
  %i.ajn = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !61
  %i.ajp = insertelement <4 x float> poison, float %i.ajo, i64 0
  %i.ajq = shufflevector <4 x float> %i.ajp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajn, i64 4
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !61
  %i.ajt = insertelement <4 x float> poison, float %i.ajs, i64 0
  %i.aju = shufflevector <4 x float> %i.ajt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajd, <4 x float> nofpclass(nan inf) %i.ajq)
  %i.ajw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajv, <4 x float> nofpclass(nan inf) %i.aju)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ab:                                            ; preds = %.lr.ph770
  %i.ajx = fneg fast <4 x float> %i.ajd
  %i.ajy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajx, <4 x float> splat (float f0x42B0C0A5))
  %i.ajz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aka = fmul fast <4 x float> %i.ajz, splat (float f0x3FB8AA3B)
  %i.akb = fadd fast <4 x float> %i.aka, splat (float 5.000000e-01) ; 2 uses
  %i.akc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akb)
  %i.akd = sitofp fast <4 x i32> %i.akc to <4 x float> ; 2 uses
  %i.ake = fcmp fast olt <4 x float> %i.akb, %i.akd
  %i.akf = select <4 x i1> %i.ake, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.akg = fsub fast <4 x float> %i.akd, %i.akf   ; 2 uses
  %i.akh = fmul fast <4 x float> %i.akg, splat (float f0x3F317218)
  %i.aki = fsub fast <4 x float> %i.ajz, %i.akh   ; 8 uses
  %i.akj = fmul fast <4 x float> %i.aki, %i.aki
  %i.akk = fmul fast <4 x float> %i.aki, splat (float f0x39506967)
  %i.akl = fadd fast <4 x float> %i.akk, splat (float f0x3AB743CE)
  %i.akm = fmul fast <4 x float> %i.akl, %i.aki
  %i.akn = fadd fast <4 x float> %i.akm, splat (float f0x3C088908)
  %i.ako = fmul fast <4 x float> %i.akn, %i.aki
  %i.akp = fadd fast <4 x float> %i.ako, splat (float f0x3D2AA9C1)
  %i.akq = fmul fast <4 x float> %i.akp, %i.aki
  %i.akr = fadd fast <4 x float> %i.akq, splat (float f0x3E2AAAAA)
  %i.aks = fmul fast <4 x float> %i.akr, %i.aki
  %i.akt = fadd fast <4 x float> %i.aks, splat (float 5.000000e-01)
  %i.aku = fmul fast <4 x float> %i.akj, %i.akt
  %i.akv = fadd fast <4 x float> %i.aki, %i.aku
  %i.akw = fadd fast <4 x float> %i.akv, splat (float 1.000000e+00)
  %i.akx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akg)
  %i.aky = shl <4 x i32> %i.akx, splat (i32 23)
  %i.akz = add <4 x i32> %i.aky, splat (i32 1065353216)
  %i.ala = bitcast <4 x i32> %i.akz to <4 x float>
  %i.alb = fmul fast <4 x float> %i.akw, %i.ala
  %i.alc = fadd fast <4 x float> %i.alb, splat (float 1.000000e+00)
  %i.ald = fdiv fast <4 x float> splat (float 1.000000e+00), %i.alc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ac:                                            ; preds = %.lr.ph770
  %i.ale = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajd, <4 x float> splat (float f0x42B0C0A5))
  %i.alf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ale, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.alg = fmul fast <4 x float> %i.alf, splat (float f0x3FB8AA3B)
  %i.alh = fadd fast <4 x float> %i.alg, splat (float 5.000000e-01) ; 2 uses
  %i.ali = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.alh)
  %i.alj = sitofp fast <4 x i32> %i.ali to <4 x float> ; 2 uses
  %i.alk = fcmp fast olt <4 x float> %i.alh, %i.alj
  %i.all = select <4 x i1> %i.alk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.alm = fsub fast <4 x float> %i.alj, %i.all   ; 2 uses
  %i.aln = fmul fast <4 x float> %i.alm, splat (float f0x3F317218)
  %i.alo = fsub fast <4 x float> %i.alf, %i.aln   ; 8 uses
  %i.alp = fmul fast <4 x float> %i.alo, %i.alo
  %i.alq = fmul fast <4 x float> %i.alo, splat (float f0x39506967)
  %i.alr = fadd fast <4 x float> %i.alq, splat (float f0x3AB743CE)
  %i.als = fmul fast <4 x float> %i.alr, %i.alo
  %i.alt = fadd fast <4 x float> %i.als, splat (float f0x3C088908)
  %i.alu = fmul fast <4 x float> %i.alt, %i.alo
  %i.alv = fadd fast <4 x float> %i.alu, splat (float f0x3D2AA9C1)
  %i.alw = fmul fast <4 x float> %i.alv, %i.alo
  %i.alx = fadd fast <4 x float> %i.alw, splat (float f0x3E2AAAAA)
  %i.aly = fmul fast <4 x float> %i.alx, %i.alo
  %i.alz = fadd fast <4 x float> %i.aly, splat (float 5.000000e-01)
  %i.ama = fmul fast <4 x float> %i.alp, %i.alz
  %i.amb = fadd fast <4 x float> %i.alo, %i.ama
  %i.amc = fadd fast <4 x float> %i.amb, splat (float 1.000000e+00)
  %i.amd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.alm)
  %i.ame = shl <4 x i32> %i.amd, splat (i32 23)
  %i.amf = add <4 x i32> %i.ame, splat (i32 1065353216)
  %i.amg = bitcast <4 x i32> %i.amf to <4 x float>
  %i.amh = fmul fast <4 x float> %i.amc, %i.amg
  %i.ami = fadd fast <4 x float> %i.amh, splat (float 1.000000e+00) ; 2 uses
  %i.amj = fcmp fast ole <4 x float> %i.ami, zeroinitializer
  %i.amk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ami, <4 x float> splat (float f0x00800000))
  %i.aml = bitcast <4 x float> %i.amk to <4 x i32> ; 2 uses
  %i.amm = lshr <4 x i32> %i.aml, splat (i32 23)
  %i.amn = and <4 x i32> %i.aml, splat (i32 -2139095041)
  %i.amo = or disjoint <4 x i32> %i.amn, splat (i32 1056964608)
  %i.amp = bitcast <4 x i32> %i.amo to <4 x float> ; 3 uses
  %i.amq = add nsw <4 x i32> %i.amm, splat (i32 -127)
  %i.amr = sitofp fast <4 x i32> %i.amq to <4 x float> ; 2 uses
  %i.ams = fadd fast <4 x float> %i.amr, splat (float 1.000000e+00)
  %i.amt = fcmp fast olt <4 x float> %i.amp, splat (float f0x3F3504F3) ; 2 uses
  %i.amu = select <4 x i1> %i.amt, <4 x float> %i.amp, <4 x float> zeroinitializer
  %i.amv = fadd fast <4 x float> %i.amp, splat (float -1.000000e+00)
  %i.amw = select fast <4 x i1> %i.amt, <4 x float> %i.amr, <4 x float> %i.ams
  %i.amx = fadd fast <4 x float> %i.amv, %i.amu   ; 12 uses
  %i.amy = fmul fast <4 x float> %i.amx, %i.amx
  %i.amz = fmul fast <4 x float> %i.amx, splat (float f0x3D9021BB)
  %i.ana = fadd fast <4 x float> %i.amz, splat (float f0xBDEBD1B8)
  %i.anb = fmul fast <4 x float> %i.ana, %i.amx
  %i.anc = fadd fast <4 x float> %i.anb, splat (float f0x3DEF251A)
  %i.and = fmul fast <4 x float> %i.anc, %i.amx
  %i.ane = fadd fast <4 x float> %i.and, splat (float f0xBDFE5D4F)
  %i.anf = fmul fast <4 x float> %i.ane, %i.amx
  %i.ang = fadd fast <4 x float> %i.anf, splat (float f0x3E11E9BF)
  %i.anh = fmul fast <4 x float> %i.ang, %i.amx
  %i.ani = fadd fast <4 x float> %i.anh, splat (float f0xBE2AAE50)
  %i.anj = fmul fast <4 x float> %i.ani, %i.amx
  %i.ank = fadd fast <4 x float> %i.anj, splat (float f0x3E4CCEAC)
  %i.anl = fmul fast <4 x float> %i.ank, %i.amx
  %i.anm = fadd fast <4 x float> %i.anl, splat (float f0xBE7FFFFC)
  %i.ann = fmul fast <4 x float> %i.anm, %i.amx
  %i.ano = fadd fast <4 x float> %i.ann, splat (float f0x3EAAAAAA)
  %i.anp = fmul fast <4 x float> %i.ano, %i.amx
  %reass.mul = fmul fast <4 x float> %i.amw, splat (float f0x3F317218)
  %reass.add733 = fadd fast <4 x float> %i.anp, splat (float -5.000000e-01)
  %reass.mul734 = fmul fast <4 x float> %i.amy, %reass.add733
  %i.anq = fadd fast <4 x float> %reass.mul, %i.amx
  %i.anr = fadd fast <4 x float> %i.anq, %reass.mul734
  %.neg = fmul fast <4 x float> %i.anr, splat (float -2.000000e+00)
  %i.ans = select fast <4 x i1> %i.amj, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.ant = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ans, <4 x float> splat (float f0x42B0C0A5))
  %i.anu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ant, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.anv = fmul fast <4 x float> %i.anu, splat (float f0x3FB8AA3B)
  %i.anw = fadd fast <4 x float> %i.anv, splat (float 5.000000e-01) ; 2 uses
  %i.anx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.anw)
  %i.any = sitofp fast <4 x i32> %i.anx to <4 x float> ; 2 uses
  %i.anz = fcmp fast olt <4 x float> %i.anw, %i.any
  %i.aoa = select <4 x i1> %i.anz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aob = fsub fast <4 x float> %i.any, %i.aoa   ; 2 uses
  %i.aoc = fmul fast <4 x float> %i.aob, splat (float f0x3F317218)
  %i.aod = fsub fast <4 x float> %i.anu, %i.aoc   ; 8 uses
  %i.aoe = fmul fast <4 x float> %i.aod, %i.aod
  %i.aof = fmul fast <4 x float> %i.aod, splat (float f0x39506967)
  %i.aog = fadd fast <4 x float> %i.aof, splat (float f0x3AB743CE)
  %i.aoh = fmul fast <4 x float> %i.aog, %i.aod
  %i.aoi = fadd fast <4 x float> %i.aoh, splat (float f0x3C088908)
  %i.aoj = fmul fast <4 x float> %i.aoi, %i.aod
  %i.aok = fadd fast <4 x float> %i.aoj, splat (float f0x3D2AA9C1)
  %i.aol = fmul fast <4 x float> %i.aok, %i.aod
  %i.aom = fadd fast <4 x float> %i.aol, splat (float f0x3E2AAAAA)
  %i.aon = fmul fast <4 x float> %i.aom, %i.aod
  %i.aoo = fadd fast <4 x float> %i.aon, splat (float 5.000000e-01)
  %i.aop = fmul fast <4 x float> %i.aoe, %i.aoo
  %i.aoq = fadd fast <4 x float> %i.aod, %i.aop
  %i.aor = fadd fast <4 x float> %i.aoq, splat (float 1.000000e+00)
  %i.aos = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aob)
  %i.aot = shl <4 x i32> %i.aos, splat (i32 23)
  %i.aou = add <4 x i32> %i.aot, splat (i32 1065353216)
  %i.aov = bitcast <4 x i32> %i.aou to <4 x float>
  %i.aow = fmul fast <4 x float> %i.aor, %i.aov
  %i.aox = fadd fast <4 x float> %i.aow, splat (float 1.000000e+00)
  %i.aoy = fdiv fast <4 x float> splat (float 2.000000e+00), %i.aox
  %i.aoz = fadd fast <4 x float> %i.aoy, splat (float -1.000000e+00)
  %i.apa = fmul fast <4 x float> %i.aoz, %i.ajd
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ad:                                            ; preds = %.lr.ph770
  %i.apb = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.apc = load float, ptr %i.apb, align 4, !tbaa !61
  %i.apd = insertelement <4 x float> poison, float %i.apc, i64 0
  %i.ape = shufflevector <4 x float> %i.apd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apb, i64 4
  %i.apg = load float, ptr %i.apf, align 4, !tbaa !61
  %i.aph = insertelement <4 x float> poison, float %i.apg, i64 0
  %i.api = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apj = fmul fast <4 x float> %i.ape, %i.ajd
  %i.apk = fadd fast <4 x float> %i.apj, %i.api
  %i.apl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.apk, <4 x float> zeroinitializer)
  %i.apm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.apl, <4 x float> splat (float 1.000000e+00))
  %i.apn = fmul fast <4 x float> %i.apm, %i.ajd
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.lr.ph770, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.0.i = phi nsz <4 x float> [ %i.apn, %bb.ad ], [ %i.aje, %bb.y ], [ %i.ajm, %bb.z ], [ %i.ajw, %bb.aa ], [ %i.ald, %bb.ab ], [ %i.apa, %bb.ac ], [ %i.ajd, %.lr.ph770 ]
  %i.apo = fmul fast <4 x float> %.0.i, %.0131    ; 2 uses
  %i.app = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.apo)
  %i.apq = fadd fast <4 x float> %i.app, %i.apo
  %i.apr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.apq)
  %i.aps = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.apr, <4 x i32> poison)
  %i.apt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aps, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.apu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.apt, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.apv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.apu, <8 x i16> poison)
  %i.apw = shufflevector <16 x i8> %i.apv, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.apw, ptr %.4122768, align 1, !tbaa !62
  %i.apx = getelementptr inbounds nuw i8, ptr %.4769, i64 16 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %.4122768, i64 4 ; 2 uses
  %i.apz = add nuw nsw i32 %.1125767, 4           ; 3 uses
  %i.aqa = or disjoint i32 %i.apz, 3
  %i.aqb = icmp slt i32 %i.aqa, %i.a
  br i1 %i.aqb, label %.lr.ph770, label %.preheader759, !llvm.loop !58

.lr.ph777:                                        ; preds = %.preheader759, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.5776 = phi ptr [ %i.arq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.4.lcssa, %.preheader759 ] ; 2 uses
  %.5123775 = phi ptr [ %i.arr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.4122.lcssa, %.preheader759 ] ; 2 uses
  %.2126774 = phi i32 [ %i.ars, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.1125.lcssa, %.preheader759 ]
  %i.aqc = load i32, ptr %.5776, align 4, !tbaa !22
  %i.aqd = sitofp fast i32 %i.aqc to float
  %i.aqe = fmul fast float %i.b, %i.aqd
  %i.aqf = fadd fast float %i.aqe, %i.vm          ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.ag
    i32 4, label %bb.ai
    i32 5, label %bb.aj
    i32 6, label %bb.ak
  ]

bb.ae:                                            ; preds = %.lr.ph777
  %i.aqg = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.aqf, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %.lr.ph777
  %i.aqh = load ptr, ptr %3, align 8, !tbaa !19
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !61
  %i.aqj = fcmp fast ogt float %i.aqf, 0.000000e+00
  %i.aqk = select fast i1 %i.aqj, float 1.000000e+00, float %i.aqi
  %i.aql = fmul fast float %i.aqk, %i.aqf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ag:                                            ; preds = %.lr.ph777
  %i.aqm = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !61
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqm, i64 4
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !61 ; 2 uses
  %.0685 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aqf, float %i.aqn) ; 2 uses
  %i.aqq = fcmp fast ogt float %.0685, %i.aqp
  br i1 %i.aqq, label %bb.ah, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ah:                                            ; preds = %bb.ag
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ai:                                            ; preds = %.lr.ph777
  %.sroa.speculated43 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.aqf, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated43, float f0xC2B0C0A5)
  %i.aqr = fneg fast float %.sroa.speculated
  %i.aqs = tail call fast float @llvm.exp.f32(float %i.aqr)
  %i.aqt = fadd fast float %i.aqs, 1.000000e+00
  %i.aqu = fdiv fast float 1.000000e+00, %i.aqt
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.aj:                                            ; preds = %.lr.ph777
  %i.aqv = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.aqf)
  %i.aqw = fadd fast float %i.aqv, 1.000000e+00
  %i.aqx = tail call fast float @llvm.log.f32(float %i.aqw)
  %i.aqy = tail call fast float @llvm.tanh.f32(float %i.aqx)
  %i.aqz = fmul fast float %i.aqy, %i.aqf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ak:                                            ; preds = %.lr.ph777
  %i.ara = load ptr, ptr %3, align 8, !tbaa !19   ; 2 uses
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !61 ; 3 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.ara, i64 4
  %i.ard = load float, ptr %i.arc, align 4, !tbaa !61 ; 2 uses
  %i.are = fneg fast float %i.ard
  %i.arf = fdiv fast float %i.are, %i.arb         ; 2 uses
  %i.arg = fcmp fast olt float %i.aqf, %i.arf
  br i1 %i.arg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.arh = fdiv fast float 1.000000e+00, %i.arb
  %i.ari = fadd fast float %i.arf, %i.arh
  %i.arj = fcmp fast ogt float %i.aqf, %i.ari
  br i1 %i.arj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ark = fmul fast float %i.arb, %i.aqf
  %i.arl = fadd fast float %i.ark, %i.ard
  %i.arm = fmul fast float %i.arl, %i.aqf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.ak, %.lr.ph777, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.al, %bb.am
  %.1686 = phi nsz float [ %i.aqf, %.lr.ph777 ], [ %i.aqg, %bb.ae ], [ %i.aql, %bb.af ], [ %i.aqp, %bb.ah ], [ %.0685, %bb.ag ], [ %i.aqu, %bb.ai ], [ %i.aqz, %bb.aj ], [ %i.arm, %bb.am ], [ %i.aqf, %bb.al ], [ 0.000000e+00, %bb.ak ]
  %i.arn = fmul fast float %.1686, %i.j
  %i.aro = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.arn)
  %i.arp = fptosi float %i.aro to i32
  %spec.select.i723 = tail call i32 @llvm.smax.i32(i32 %i.arp, i32 -127)
  %.0.i144724 = tail call i32 @llvm.smin.i32(i32 %spec.select.i723, i32 127)
  %.0.i144 = trunc nsw i32 %.0.i144724 to i8
  store i8 %.0.i144, ptr %.5123775, align 1, !tbaa !62
  %i.arq = getelementptr inbounds nuw i8, ptr %.5776, i64 4
  %i.arr = getelementptr inbounds nuw i8, ptr %.5123775, i64 1
  %i.ars = add nuw nsw i32 %.2126774, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ars, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph777, !llvm.loop !59

.loopexit:                                        ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143, %.preheader759, %.preheader
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
define internal void @_ZNK4ncnn14Requantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #4 personality ptr @__gxx_personality_v0 {
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
end_hunk_0
