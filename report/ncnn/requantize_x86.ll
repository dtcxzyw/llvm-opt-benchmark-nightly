Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/requantize_x86?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@_ZNK4ncnn14Requantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL10requantizeEPKiPaRKNS_3MatES5_S5_iS5_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val, i32 %.44.val, ptr nofree readonly captures(none) %.0.val1, i32 %.44.val3, ptr nofree readonly captures(none) %.0.val5, i32 %.44.val7, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = mul i32 %5, %4                           ; 14 uses
  %i.b = load float, ptr %.0.val, align 4, !tbaa !48 ; 3 uses
  %i.c = insertelement <4 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.e = icmp sgt i32 %.44.val, 1
  %i.f = icmp eq i32 %5, 8                        ; 3 uses
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load <4 x float>, ptr %.0.val, align 4, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load <4 x float>, ptr %i.h, align 4, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0682 = phi nsz <4 x float> [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %.0681 = phi nsz <4 x float> [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = load float, ptr %.0.val5, align 4, !tbaa !48 ; 3 uses
  %i.k = insertelement <4 x float> poison, float %i.j, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.m = icmp sgt i32 %.44.val7, 1
  %or.cond3 = and i1 %i.m, %i.f
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load <4 x float>, ptr %.0.val5, align 4, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val5, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0131 = phi nsz <4 x float> [ %i.n, %bb.d ], [ %i.l, %bb.c ] ; 4 uses
  %.0130 = phi nsz <4 x float> [ %i.p, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = icmp eq i32 %.44.val3, 0
  br i1 %i.q, label %.preheader758, label %bb.u

.preheader758:                                    ; preds = %bb.e
  %i.r = icmp sgt i32 %i.a, 7
  br i1 %i.r, label %.lr.ph781.preheader, label %.preheader757

.lr.ph781.preheader:                              ; preds = %.preheader758
  %i.s = load ptr, ptr %3, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load ptr, ptr %3, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load ptr, ptr %3, align 8
  br label %.lr.ph781

.preheader757.loopexit:                           ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140
  %i.x = and i32 %i.a, 2147483640
  br label %.preheader757

.preheader757:                                    ; preds = %.preheader757.loopexit, %.preheader758
  %.0127.lcssa = phi i32 [ 0, %.preheader758 ], [ %i.x, %.preheader757.loopexit ] ; 3 uses
  %.0118.lcssa = phi ptr [ %1, %.preheader758 ], [ %i.mr, %.preheader757.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %.preheader758 ], [ %i.mq, %.preheader757.loopexit ] ; 2 uses
  %i.y = or disjoint i32 %.0127.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.a
  br i1 %i.z, label %.lr.ph788, label %.preheader

.lr.ph781:                                        ; preds = %.lr.ph781.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140
  %.0780 = phi ptr [ %i.mq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ], [ %0, %.lr.ph781.preheader ] ; 3 uses
  %.0118779 = phi ptr [ %i.mr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ], [ %1, %.lr.ph781.preheader ] ; 2 uses
  %.0127778 = phi i32 [ %i.ms, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 ], [ 0, %.lr.ph781.preheader ]
  %i.aa = load <4 x i32>, ptr %.0780, align 1, !tbaa !50
  %i.ab = sitofp fast <4 x i32> %i.aa to <4 x float>
  %i.ac = getelementptr inbounds nuw i8, ptr %.0780, i64 16
  %i.ad = load <4 x i32>, ptr %i.ac, align 1, !tbaa !50
  %i.ae = sitofp fast <4 x i32> %i.ad to <4 x float>
  %i.af = fmul fast <4 x float> %.0682, %i.ab     ; 10 uses
  %i.ag = fmul fast <4 x float> %.0681, %i.ae     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread: ; preds = %.lr.ph781
  %i.ah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> zeroinitializer)
  %i.ai = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ag, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690: ; preds = %.lr.ph781
  %i.aj = load float, ptr %i.w, align 4, !tbaa !48
  %i.ak = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.af)
  %i.al = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.af)
  %i.am = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ao = fmul fast <4 x float> %i.an, %i.al
  %i.ap = fadd fast <4 x float> %i.ao, %i.ak
  %i.aq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ag)
  %i.ar = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ag)
  %i.as = fmul fast <4 x float> %i.an, %i.ar
  %i.at = fadd fast <4 x float> %i.as, %i.aq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693: ; preds = %.lr.ph781
  %i.au = load float, ptr %i.u, align 4, !tbaa !48
  %i.av = insertelement <4 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ax = load float, ptr %i.v, align 4, !tbaa !48
  %i.ay = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> nofpclass(nan inf) %i.aw)
  %i.bb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ba, <4 x float> nofpclass(nan inf) %i.az)
  %i.bc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ag, <4 x float> nofpclass(nan inf) %i.aw)
  %i.bd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bc, <4 x float> nofpclass(nan inf) %i.az)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696: ; preds = %.lr.ph781
  %i.be = fneg fast <4 x float> %i.af
  %i.bf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.be, <4 x float> splat (float f0x42B0C0A5))
  %i.bg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bh = fmul fast <4 x float> %i.bg, splat (float f0x3FB8AA3B)
  %i.bi = fadd fast <4 x float> %i.bh, splat (float 5.000000e-01) ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bi)
  %i.bk = sitofp fast <4 x i32> %i.bj to <4 x float> ; 2 uses
  %i.bl = fcmp fast olt <4 x float> %i.bi, %i.bk
  %i.bm = select <4 x i1> %i.bl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bn = fsub fast <4 x float> %i.bk, %i.bm      ; 2 uses
  %i.bo = fmul fast <4 x float> %i.bn, splat (float f0x3F317218)
  %i.bp = fsub fast <4 x float> %i.bg, %i.bo      ; 8 uses
  %i.bq = fmul fast <4 x float> %i.bp, %i.bp
  %i.br = fmul fast <4 x float> %i.bp, splat (float f0x39506967)
  %i.bs = fadd fast <4 x float> %i.br, splat (float f0x3AB743CE)
  %i.bt = fmul fast <4 x float> %i.bs, %i.bp
  %i.bu = fadd fast <4 x float> %i.bt, splat (float f0x3C088908)
  %i.bv = fmul fast <4 x float> %i.bu, %i.bp
  %i.bw = fadd fast <4 x float> %i.bv, splat (float f0x3D2AA9C1)
  %i.bx = fmul fast <4 x float> %i.bw, %i.bp
  %i.by = fadd fast <4 x float> %i.bx, splat (float f0x3E2AAAAA)
  %i.bz = fmul fast <4 x float> %i.by, %i.bp
  %i.ca = fadd fast <4 x float> %i.bz, splat (float 5.000000e-01)
  %i.cb = fmul fast <4 x float> %i.bq, %i.ca
  %i.cc = fadd fast <4 x float> %i.bp, %i.cb
  %i.cd = fadd fast <4 x float> %i.cc, splat (float 1.000000e+00)
  %i.ce = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bn)
  %i.cf = shl <4 x i32> %i.ce, splat (i32 23)
  %i.cg = add <4 x i32> %i.cf, splat (i32 1065353216)
  %i.ch = bitcast <4 x i32> %i.cg to <4 x float>
  %i.ci = fmul fast <4 x float> %i.cd, %i.ch
  %i.cj = fadd fast <4 x float> %i.ci, splat (float 1.000000e+00)
  %i.ck = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cj
  %i.cl = fneg fast <4 x float> %i.ag
  %i.cm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cl, <4 x float> splat (float f0x42B0C0A5))
  %i.cn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.co = fmul fast <4 x float> %i.cn, splat (float f0x3FB8AA3B)
  %i.cp = fadd fast <4 x float> %i.co, splat (float 5.000000e-01) ; 2 uses
  %i.cq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cp)
  %i.cr = sitofp fast <4 x i32> %i.cq to <4 x float> ; 2 uses
  %i.cs = fcmp fast olt <4 x float> %i.cp, %i.cr
  %i.ct = select <4 x i1> %i.cs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cu = fsub fast <4 x float> %i.cr, %i.ct      ; 2 uses
  %i.cv = fmul fast <4 x float> %i.cu, splat (float f0x3F317218)
  %i.cw = fsub fast <4 x float> %i.cn, %i.cv      ; 8 uses
  %i.cx = fmul fast <4 x float> %i.cw, %i.cw
  %i.cy = fmul fast <4 x float> %i.cw, splat (float f0x39506967)
  %i.cz = fadd fast <4 x float> %i.cy, splat (float f0x3AB743CE)
  %i.da = fmul fast <4 x float> %i.cz, %i.cw
  %i.db = fadd fast <4 x float> %i.da, splat (float f0x3C088908)
  %i.dc = fmul fast <4 x float> %i.db, %i.cw
  %i.dd = fadd fast <4 x float> %i.dc, splat (float f0x3D2AA9C1)
  %i.de = fmul fast <4 x float> %i.dd, %i.cw
  %i.df = fadd fast <4 x float> %i.de, splat (float f0x3E2AAAAA)
  %i.dg = fmul fast <4 x float> %i.df, %i.cw
  %i.dh = fadd fast <4 x float> %i.dg, splat (float 5.000000e-01)
  %i.di = fmul fast <4 x float> %i.cx, %i.dh
  %i.dj = fadd fast <4 x float> %i.cw, %i.di
  %i.dk = fadd fast <4 x float> %i.dj, splat (float 1.000000e+00)
  %i.dl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cu)
  %i.dm = shl <4 x i32> %i.dl, splat (i32 23)
  %i.dn = add <4 x i32> %i.dm, splat (i32 1065353216)
  %i.do = bitcast <4 x i32> %i.dn to <4 x float>
  %i.dp = fmul fast <4 x float> %i.dk, %i.do
  %i.dq = fadd fast <4 x float> %i.dp, splat (float 1.000000e+00)
  %i.dr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699: ; preds = %.lr.ph781
  %i.ds = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.af, <4 x float> splat (float f0x42B0C0A5))
  %i.dt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ds, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.du = fmul fast <4 x float> %i.dt, splat (float f0x3FB8AA3B)
  %i.dv = fadd fast <4 x float> %i.du, splat (float 5.000000e-01) ; 2 uses
  %i.dw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dv)
  %i.dx = sitofp fast <4 x i32> %i.dw to <4 x float> ; 2 uses
  %i.dy = fcmp fast olt <4 x float> %i.dv, %i.dx
  %i.dz = select <4 x i1> %i.dy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ea = fsub fast <4 x float> %i.dx, %i.dz      ; 2 uses
  %i.eb = fmul fast <4 x float> %i.ea, splat (float f0x3F317218)
  %i.ec = fsub fast <4 x float> %i.dt, %i.eb      ; 8 uses
  %i.ed = fmul fast <4 x float> %i.ec, %i.ec
  %i.ee = fmul fast <4 x float> %i.ec, splat (float f0x39506967)
  %i.ef = fadd fast <4 x float> %i.ee, splat (float f0x3AB743CE)
  %i.eg = fmul fast <4 x float> %i.ef, %i.ec
  %i.eh = fadd fast <4 x float> %i.eg, splat (float f0x3C088908)
  %i.ei = fmul fast <4 x float> %i.eh, %i.ec
  %i.ej = fadd fast <4 x float> %i.ei, splat (float f0x3D2AA9C1)
  %i.ek = fmul fast <4 x float> %i.ej, %i.ec
  %i.el = fadd fast <4 x float> %i.ek, splat (float f0x3E2AAAAA)
  %i.em = fmul fast <4 x float> %i.el, %i.ec
  %i.en = fadd fast <4 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = fmul fast <4 x float> %i.ed, %i.en
  %i.ep = fadd fast <4 x float> %i.ec, %i.eo
  %i.eq = fadd fast <4 x float> %i.ep, splat (float 1.000000e+00)
  %i.er = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ea)
  %i.es = shl <4 x i32> %i.er, splat (i32 23)
  %i.et = add <4 x i32> %i.es, splat (i32 1065353216)
  %i.eu = bitcast <4 x i32> %i.et to <4 x float>
  %i.ev = fmul fast <4 x float> %i.eq, %i.eu
  %i.ew = fadd fast <4 x float> %i.ev, splat (float 1.000000e+00) ; 2 uses
  %i.ex = fcmp fast ole <4 x float> %i.ew, zeroinitializer
  %i.ey = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> splat (float f0x00800000))
  %i.ez = bitcast <4 x float> %i.ey to <4 x i32>  ; 2 uses
  %i.fa = lshr <4 x i32> %i.ez, splat (i32 23)
  %i.fb = and <4 x i32> %i.ez, splat (i32 -2139095041)
  %i.fc = or disjoint <4 x i32> %i.fb, splat (i32 1056964608)
  %i.fd = bitcast <4 x i32> %i.fc to <4 x float>  ; 3 uses
  %i.fe = add nsw <4 x i32> %i.fa, splat (i32 -127)
  %i.ff = sitofp fast <4 x i32> %i.fe to <4 x float> ; 2 uses
  %i.fg = fadd fast <4 x float> %i.ff, splat (float 1.000000e+00)
  %i.fh = fcmp fast olt <4 x float> %i.fd, splat (float f0x3F3504F3) ; 2 uses
  %i.fi = select <4 x i1> %i.fh, <4 x float> %i.fd, <4 x float> zeroinitializer
  %i.fj = fadd fast <4 x float> %i.fd, splat (float -1.000000e+00)
  %i.fk = select fast <4 x i1> %i.fh, <4 x float> %i.ff, <4 x float> %i.fg
  %i.fl = fadd fast <4 x float> %i.fj, %i.fi      ; 12 uses
  %i.fm = fmul fast <4 x float> %i.fl, %i.fl      ; 2 uses
  %i.fn = fmul fast <4 x float> %i.fl, splat (float f0x3D9021BB)
  %i.fo = fadd fast <4 x float> %i.fn, splat (float f0xBDEBD1B8)
  %i.fp = fmul fast <4 x float> %i.fo, %i.fl
  %i.fq = fadd fast <4 x float> %i.fp, splat (float f0x3DEF251A)
  %i.fr = fmul fast <4 x float> %i.fq, %i.fl
  %i.fs = fadd fast <4 x float> %i.fr, splat (float f0xBDFE5D4F)
  %i.ft = fmul fast <4 x float> %i.fs, %i.fl
  %i.fu = fadd fast <4 x float> %i.ft, splat (float f0x3E11E9BF)
  %i.fv = fmul fast <4 x float> %i.fu, %i.fl
  %i.fw = fadd fast <4 x float> %i.fv, splat (float f0xBE2AAE50)
  %i.fx = fmul fast <4 x float> %i.fw, %i.fl
  %i.fy = fadd fast <4 x float> %i.fx, splat (float f0x3E4CCEAC)
  %i.fz = fmul fast <4 x float> %i.fy, %i.fl
  %i.ga = fadd fast <4 x float> %i.fz, splat (float f0xBE7FFFFC)
  %i.gb = fmul fast <4 x float> %i.ga, %i.fl
  %i.gc = fadd fast <4 x float> %i.gb, splat (float f0x3EAAAAAA)
  %i.gd = fmul fast <4 x float> %i.fm, %i.fl
  %reass.mul749 = fmul fast <4 x float> %i.gd, %i.gc
  %.neg740 = fmul fast <4 x float> %i.fm, splat (float -5.000000e-01)
  %reass.mul754 = fmul fast <4 x float> %i.fk, splat (float f0x3F317218)
  %6 = fadd fast <4 x float> %i.fl, %.neg740
  %i.ge = fadd fast <4 x float> %reass.mul749, %6
  %i.gf = fadd fast <4 x float> %i.ge, %reass.mul754
  %.neg730 = fmul fast <4 x float> %i.gf, splat (float -2.000000e+00)
  %i.gg = select fast <4 x i1> %i.ex, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg730
  %i.gh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gg, <4 x float> splat (float f0x42B0C0A5))
  %i.gi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gj = fmul fast <4 x float> %i.gi, splat (float f0x3FB8AA3B)
  %i.gk = fadd fast <4 x float> %i.gj, splat (float 5.000000e-01) ; 2 uses
  %i.gl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gk)
  %i.gm = sitofp fast <4 x i32> %i.gl to <4 x float> ; 2 uses
  %i.gn = fcmp fast olt <4 x float> %i.gk, %i.gm
  %i.go = select <4 x i1> %i.gn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gp = fsub fast <4 x float> %i.gm, %i.go      ; 2 uses
  %i.gq = fmul fast <4 x float> %i.gp, splat (float f0x3F317218)
  %i.gr = fsub fast <4 x float> %i.gi, %i.gq      ; 8 uses
  %i.gs = fmul fast <4 x float> %i.gr, %i.gr
  %i.gt = fmul fast <4 x float> %i.gr, splat (float f0x39506967)
  %i.gu = fadd fast <4 x float> %i.gt, splat (float f0x3AB743CE)
  %i.gv = fmul fast <4 x float> %i.gu, %i.gr
  %i.gw = fadd fast <4 x float> %i.gv, splat (float f0x3C088908)
  %i.gx = fmul fast <4 x float> %i.gw, %i.gr
  %i.gy = fadd fast <4 x float> %i.gx, splat (float f0x3D2AA9C1)
  %i.gz = fmul fast <4 x float> %i.gy, %i.gr
  %i.ha = fadd fast <4 x float> %i.gz, splat (float f0x3E2AAAAA)
  %i.hb = fmul fast <4 x float> %i.ha, %i.gr
  %i.hc = fadd fast <4 x float> %i.hb, splat (float 5.000000e-01)
  %i.hd = fmul fast <4 x float> %i.gs, %i.hc
  %i.he = fadd fast <4 x float> %i.gr, %i.hd
  %i.hf = fadd fast <4 x float> %i.he, splat (float 1.000000e+00)
  %i.hg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gp)
  %i.hh = shl <4 x i32> %i.hg, splat (i32 23)
  %i.hi = add <4 x i32> %i.hh, splat (i32 1065353216)
  %i.hj = bitcast <4 x i32> %i.hi to <4 x float>
  %i.hk = fmul fast <4 x float> %i.hf, %i.hj
  %i.hl = fadd fast <4 x float> %i.hk, splat (float 1.000000e+00)
  %i.hm = fdiv fast <4 x float> splat (float 2.000000e+00), %i.hl
  %i.hn = fadd fast <4 x float> %i.hm, splat (float -1.000000e+00)
  %i.ho = fmul fast <4 x float> %i.hn, %i.af
  %i.hp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ag, <4 x float> splat (float f0x42B0C0A5))
  %i.hq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hr = fmul fast <4 x float> %i.hq, splat (float f0x3FB8AA3B)
  %i.hs = fadd fast <4 x float> %i.hr, splat (float 5.000000e-01) ; 2 uses
  %i.ht = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hs)
  %i.hu = sitofp fast <4 x i32> %i.ht to <4 x float> ; 2 uses
  %i.hv = fcmp fast olt <4 x float> %i.hs, %i.hu
  %i.hw = select <4 x i1> %i.hv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hx = fsub fast <4 x float> %i.hu, %i.hw      ; 2 uses
  %i.hy = fmul fast <4 x float> %i.hx, splat (float f0x3F317218)
  %i.hz = fsub fast <4 x float> %i.hq, %i.hy      ; 8 uses
  %i.ia = fmul fast <4 x float> %i.hz, %i.hz
  %i.ib = fmul fast <4 x float> %i.hz, splat (float f0x39506967)
  %i.ic = fadd fast <4 x float> %i.ib, splat (float f0x3AB743CE)
  %i.id = fmul fast <4 x float> %i.ic, %i.hz
  %i.ie = fadd fast <4 x float> %i.id, splat (float f0x3C088908)
  %i.if = fmul fast <4 x float> %i.ie, %i.hz
  %i.ig = fadd fast <4 x float> %i.if, splat (float f0x3D2AA9C1)
  %i.ih = fmul fast <4 x float> %i.ig, %i.hz
  %i.ii = fadd fast <4 x float> %i.ih, splat (float f0x3E2AAAAA)
  %i.ij = fmul fast <4 x float> %i.ii, %i.hz
  %i.ik = fadd fast <4 x float> %i.ij, splat (float 5.000000e-01)
  %i.il = fmul fast <4 x float> %i.ia, %i.ik
  %i.im = fadd fast <4 x float> %i.hz, %i.il
  %i.in = fadd fast <4 x float> %i.im, splat (float 1.000000e+00)
  %i.io = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hx)
  %i.ip = shl <4 x i32> %i.io, splat (i32 23)
  %i.iq = add <4 x i32> %i.ip, splat (i32 1065353216)
  %i.ir = bitcast <4 x i32> %i.iq to <4 x float>
  %i.is = fmul fast <4 x float> %i.in, %i.ir
  %i.it = fadd fast <4 x float> %i.is, splat (float 1.000000e+00) ; 2 uses
  %i.iu = fcmp fast ole <4 x float> %i.it, zeroinitializer
  %i.iv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.it, <4 x float> splat (float f0x00800000))
  %i.iw = bitcast <4 x float> %i.iv to <4 x i32>  ; 2 uses
  %i.ix = lshr <4 x i32> %i.iw, splat (i32 23)
  %i.iy = and <4 x i32> %i.iw, splat (i32 -2139095041)
  %i.iz = or disjoint <4 x i32> %i.iy, splat (i32 1056964608)
  %i.ja = bitcast <4 x i32> %i.iz to <4 x float>  ; 3 uses
  %i.jb = add nsw <4 x i32> %i.ix, splat (i32 -127)
  %i.jc = sitofp fast <4 x i32> %i.jb to <4 x float> ; 2 uses
  %i.jd = fadd fast <4 x float> %i.jc, splat (float 1.000000e+00)
  %i.je = fcmp fast olt <4 x float> %i.ja, splat (float f0x3F3504F3) ; 2 uses
  %i.jf = select <4 x i1> %i.je, <4 x float> %i.ja, <4 x float> zeroinitializer
  %i.jg = fadd fast <4 x float> %i.ja, splat (float -1.000000e+00)
  %i.jh = select fast <4 x i1> %i.je, <4 x float> %i.jc, <4 x float> %i.jd
  %i.ji = fadd fast <4 x float> %i.jg, %i.jf      ; 12 uses
  %i.jj = fmul fast <4 x float> %i.ji, %i.ji      ; 2 uses
  %i.jk = fmul fast <4 x float> %i.ji, splat (float f0x3D9021BB)
  %i.jl = fadd fast <4 x float> %i.jk, splat (float f0xBDEBD1B8)
  %i.jm = fmul fast <4 x float> %i.jl, %i.ji
  %i.jn = fadd fast <4 x float> %i.jm, splat (float f0x3DEF251A)
  %i.jo = fmul fast <4 x float> %i.jn, %i.ji
  %i.jp = fadd fast <4 x float> %i.jo, splat (float f0xBDFE5D4F)
  %i.jq = fmul fast <4 x float> %i.jp, %i.ji
  %i.jr = fadd fast <4 x float> %i.jq, splat (float f0x3E11E9BF)
  %i.js = fmul fast <4 x float> %i.jr, %i.ji
  %i.jt = fadd fast <4 x float> %i.js, splat (float f0xBE2AAE50)
  %i.ju = fmul fast <4 x float> %i.jt, %i.ji
  %i.jv = fadd fast <4 x float> %i.ju, splat (float f0x3E4CCEAC)
  %i.jw = fmul fast <4 x float> %i.jv, %i.ji
  %i.jx = fadd fast <4 x float> %i.jw, splat (float f0xBE7FFFFC)
  %i.jy = fmul fast <4 x float> %i.jx, %i.ji
  %i.jz = fadd fast <4 x float> %i.jy, splat (float f0x3EAAAAAA)
  %i.ka = fmul fast <4 x float> %i.jj, %i.ji
  %reass.mul752 = fmul fast <4 x float> %i.ka, %i.jz
  %.neg742 = fmul fast <4 x float> %i.jj, splat (float -5.000000e-01)
  %reass.mul756 = fmul fast <4 x float> %i.jh, splat (float f0x3F317218)
  %7 = fadd fast <4 x float> %i.ji, %.neg742
  %i.kb = fadd fast <4 x float> %reass.mul752, %7
  %i.kc = fadd fast <4 x float> %i.kb, %reass.mul756
  %.neg731 = fmul fast <4 x float> %i.kc, splat (float -2.000000e+00)
  %i.kd = select fast <4 x i1> %i.iu, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg731
  %i.ke = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.kd, <4 x float> splat (float f0x42B0C0A5))
  %i.kf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ke, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kg = fmul fast <4 x float> %i.kf, splat (float f0x3FB8AA3B)
  %i.kh = fadd fast <4 x float> %i.kg, splat (float 5.000000e-01) ; 2 uses
  %i.ki = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kh)
  %i.kj = sitofp fast <4 x i32> %i.ki to <4 x float> ; 2 uses
  %i.kk = fcmp fast olt <4 x float> %i.kh, %i.kj
  %i.kl = select <4 x i1> %i.kk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.km = fsub fast <4 x float> %i.kj, %i.kl      ; 2 uses
  %i.kn = fmul fast <4 x float> %i.km, splat (float f0x3F317218)
  %i.ko = fsub fast <4 x float> %i.kf, %i.kn      ; 8 uses
  %i.kp = fmul fast <4 x float> %i.ko, %i.ko
  %i.kq = fmul fast <4 x float> %i.ko, splat (float f0x39506967)
  %i.kr = fadd fast <4 x float> %i.kq, splat (float f0x3AB743CE)
  %i.ks = fmul fast <4 x float> %i.kr, %i.ko
  %i.kt = fadd fast <4 x float> %i.ks, splat (float f0x3C088908)
  %i.ku = fmul fast <4 x float> %i.kt, %i.ko
  %i.kv = fadd fast <4 x float> %i.ku, splat (float f0x3D2AA9C1)
  %i.kw = fmul fast <4 x float> %i.kv, %i.ko
  %i.kx = fadd fast <4 x float> %i.kw, splat (float f0x3E2AAAAA)
  %i.ky = fmul fast <4 x float> %i.kx, %i.ko
  %i.kz = fadd fast <4 x float> %i.ky, splat (float 5.000000e-01)
  %i.la = fmul fast <4 x float> %i.kp, %i.kz
  %i.lb = fadd fast <4 x float> %i.ko, %i.la
  %i.lc = fadd fast <4 x float> %i.lb, splat (float 1.000000e+00)
  %i.ld = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.km)
  %i.le = shl <4 x i32> %i.ld, splat (i32 23)
  %i.lf = add <4 x i32> %i.le, splat (i32 1065353216)
  %i.lg = bitcast <4 x i32> %i.lf to <4 x float>
  %i.lh = fmul fast <4 x float> %i.lc, %i.lg
  %i.li = fadd fast <4 x float> %i.lh, splat (float 1.000000e+00)
  %i.lj = fdiv fast <4 x float> splat (float 2.000000e+00), %i.li
  %i.lk = fadd fast <4 x float> %i.lj, splat (float -1.000000e+00)
  %i.ll = fmul fast <4 x float> %i.lk, %i.ag
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702: ; preds = %.lr.ph781
  %i.lm = load float, ptr %i.s, align 4, !tbaa !48
  %i.ln = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lp = load float, ptr %i.t, align 4, !tbaa !48
  %i.lq = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.lr = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ls = fmul fast <4 x float> %i.lo, %i.af
  %i.lt = fadd fast <4 x float> %i.ls, %i.lr
  %i.lu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lt, <4 x float> zeroinitializer)
  %i.lv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lu, <4 x float> splat (float 1.000000e+00))
  %i.lw = fmul fast <4 x float> %i.lv, %i.af
  %i.lx = fmul fast <4 x float> %i.lo, %i.ag
  %i.ly = fadd fast <4 x float> %i.lx, %i.lr
  %i.lz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ly, <4 x float> zeroinitializer)
  %i.ma = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lz, <4 x float> splat (float 1.000000e+00))
  %i.mb = fmul fast <4 x float> %i.ma, %i.ag
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit140:   ; preds = %.lr.ph781, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702
  %.0.i141689 = phi <4 x float> [ %i.lw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702 ], [ %i.ah, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread ], [ %i.ap, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690 ], [ %i.bb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693 ], [ %i.ck, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696 ], [ %i.ho, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699 ], [ %i.af, %.lr.ph781 ]
  %.0.i139 = phi nsz <4 x float> [ %i.mb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread702 ], [ %i.ai, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread ], [ %i.at, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread690 ], [ %i.bd, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread693 ], [ %i.dr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread696 ], [ %i.ll, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit142.thread699 ], [ %i.ag, %.lr.ph781 ]
  %i.mc = fmul fast <4 x float> %.0.i141689, %.0131 ; 2 uses
  %i.md = fmul fast <4 x float> %.0.i139, %.0130  ; 2 uses
  %i.me = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.mc)
  %i.mf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.md)
  %i.mg = fadd fast <4 x float> %i.me, %i.mc
  %i.mh = fadd fast <4 x float> %i.mf, %i.md
  %i.mi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mg)
  %i.mj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mh)
  %i.mk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mi, <4 x i32> %i.mj)
  %i.ml = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mk, <8 x i16> splat (i16 -127))
  %i.mm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ml, <8 x i16> splat (i16 127))
  %i.mn = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mm, <8 x i16> poison)
  %i.mo = bitcast <16 x i8> %i.mn to <2 x i64>
  %i.mp = extractelement <2 x i64> %i.mo, i64 0
  store i64 %i.mp, ptr %.0118779, align 8, !tbaa !51
  %i.mq = getelementptr inbounds nuw i8, ptr %.0780, i64 32 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.0118779, i64 8 ; 2 uses
  %i.ms = add nuw nsw i32 %.0127778, 8            ; 2 uses
  %i.mt = or disjoint i32 %i.ms, 7
  %i.mu = icmp slt i32 %i.mt, %i.a
  br i1 %i.mu, label %.lr.ph781, label %.preheader757.loopexit, !llvm.loop !52

.preheader:                                       ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138, %.preheader757
  %.1128.lcssa = phi i32 [ %.0127.lcssa, %.preheader757 ], [ %i.tu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ] ; 2 uses
  %.1119.lcssa = phi ptr [ %.0118.lcssa, %.preheader757 ], [ %i.tt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader757 ], [ %i.ts, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ]
  %i.mv = icmp slt i32 %.1128.lcssa, %i.a
  br i1 %i.mv, label %.lr.ph795, label %.loopexit

.lr.ph788:                                        ; preds = %.preheader757, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138
  %.1787 = phi ptr [ %i.ts, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ], [ %.0.lcssa, %.preheader757 ] ; 2 uses
  %.1119786 = phi ptr [ %i.tt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ], [ %.0118.lcssa, %.preheader757 ] ; 2 uses
  %.1128785 = phi i32 [ %i.tu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 ], [ %.0127.lcssa, %.preheader757 ]
  %i.mw = load <4 x i32>, ptr %.1787, align 1, !tbaa !50
  %i.mx = sitofp fast <4 x i32> %i.mw to <4 x float>
  %i.my = fmul fast <4 x float> %.0682, %i.mx     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138 [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.f:                                             ; preds = %.lr.ph788
  %i.mz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.my, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.g:                                             ; preds = %.lr.ph788
  %i.na = load ptr, ptr %3, align 8, !tbaa !18
  %i.nb = load float, ptr %i.na, align 4, !tbaa !48
  %i.nc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.my)
  %i.nd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.my)
  %i.ne = insertelement <4 x float> poison, float %i.nb, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = fmul fast <4 x float> %i.nf, %i.nd
  %i.nh = fadd fast <4 x float> %i.ng, %i.nc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.h:                                             ; preds = %.lr.ph788
  %i.ni = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !48
  %i.nk = insertelement <4 x float> poison, float %i.nj, i64 0
  %i.nl = shufflevector <4 x float> %i.nk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !48
  %i.no = insertelement <4 x float> poison, float %i.nn, i64 0
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.my, <4 x float> nofpclass(nan inf) %i.nl)
  %i.nr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nq, <4 x float> nofpclass(nan inf) %i.np)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.i:                                             ; preds = %.lr.ph788
  %i.ns = fneg fast <4 x float> %i.my
  %i.nt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ns, <4 x float> splat (float f0x42B0C0A5))
  %i.nu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nv = fmul fast <4 x float> %i.nu, splat (float f0x3FB8AA3B)
  %i.nw = fadd fast <4 x float> %i.nv, splat (float 5.000000e-01) ; 2 uses
  %i.nx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nw)
  %i.ny = sitofp fast <4 x i32> %i.nx to <4 x float> ; 2 uses
  %i.nz = fcmp fast olt <4 x float> %i.nw, %i.ny
  %i.oa = select <4 x i1> %i.nz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ob = fsub fast <4 x float> %i.ny, %i.oa      ; 2 uses
  %i.oc = fmul fast <4 x float> %i.ob, splat (float f0x3F317218)
  %i.od = fsub fast <4 x float> %i.nu, %i.oc      ; 8 uses
  %i.oe = fmul fast <4 x float> %i.od, %i.od
  %i.of = fmul fast <4 x float> %i.od, splat (float f0x39506967)
  %i.og = fadd fast <4 x float> %i.of, splat (float f0x3AB743CE)
  %i.oh = fmul fast <4 x float> %i.og, %i.od
  %i.oi = fadd fast <4 x float> %i.oh, splat (float f0x3C088908)
  %i.oj = fmul fast <4 x float> %i.oi, %i.od
  %i.ok = fadd fast <4 x float> %i.oj, splat (float f0x3D2AA9C1)
  %i.ol = fmul fast <4 x float> %i.ok, %i.od
  %i.om = fadd fast <4 x float> %i.ol, splat (float f0x3E2AAAAA)
  %i.on = fmul fast <4 x float> %i.om, %i.od
  %i.oo = fadd fast <4 x float> %i.on, splat (float 5.000000e-01)
  %i.op = fmul fast <4 x float> %i.oe, %i.oo
  %i.oq = fadd fast <4 x float> %i.od, %i.op
  %i.or = fadd fast <4 x float> %i.oq, splat (float 1.000000e+00)
  %i.os = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ob)
  %i.ot = shl <4 x i32> %i.os, splat (i32 23)
  %i.ou = add <4 x i32> %i.ot, splat (i32 1065353216)
  %i.ov = bitcast <4 x i32> %i.ou to <4 x float>
  %i.ow = fmul fast <4 x float> %i.or, %i.ov
  %i.ox = fadd fast <4 x float> %i.ow, splat (float 1.000000e+00)
  %i.oy = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ox
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.j:                                             ; preds = %.lr.ph788
  %i.oz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.my, <4 x float> splat (float f0x42B0C0A5))
  %i.pa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pb = fmul fast <4 x float> %i.pa, splat (float f0x3FB8AA3B)
  %i.pc = fadd fast <4 x float> %i.pb, splat (float 5.000000e-01) ; 2 uses
  %i.pd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pc)
  %i.pe = sitofp fast <4 x i32> %i.pd to <4 x float> ; 2 uses
  %i.pf = fcmp fast olt <4 x float> %i.pc, %i.pe
  %i.pg = select <4 x i1> %i.pf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ph = fsub fast <4 x float> %i.pe, %i.pg      ; 2 uses
  %i.pi = fmul fast <4 x float> %i.ph, splat (float f0x3F317218)
  %i.pj = fsub fast <4 x float> %i.pa, %i.pi      ; 8 uses
  %i.pk = fmul fast <4 x float> %i.pj, %i.pj
  %i.pl = fmul fast <4 x float> %i.pj, splat (float f0x39506967)
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0x3AB743CE)
  %i.pn = fmul fast <4 x float> %i.pm, %i.pj
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3C088908)
  %i.pp = fmul fast <4 x float> %i.po, %i.pj
  %i.pq = fadd fast <4 x float> %i.pp, splat (float f0x3D2AA9C1)
  %i.pr = fmul fast <4 x float> %i.pq, %i.pj
  %i.ps = fadd fast <4 x float> %i.pr, splat (float f0x3E2AAAAA)
  %i.pt = fmul fast <4 x float> %i.ps, %i.pj
  %i.pu = fadd fast <4 x float> %i.pt, splat (float 5.000000e-01)
  %i.pv = fmul fast <4 x float> %i.pk, %i.pu
  %i.pw = fadd fast <4 x float> %i.pj, %i.pv
  %i.px = fadd fast <4 x float> %i.pw, splat (float 1.000000e+00)
  %i.py = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ph)
  %i.pz = shl <4 x i32> %i.py, splat (i32 23)
  %i.qa = add <4 x i32> %i.pz, splat (i32 1065353216)
  %i.qb = bitcast <4 x i32> %i.qa to <4 x float>
  %i.qc = fmul fast <4 x float> %i.px, %i.qb
  %i.qd = fadd fast <4 x float> %i.qc, splat (float 1.000000e+00) ; 2 uses
  %i.qe = fcmp fast ole <4 x float> %i.qd, zeroinitializer
  %i.qf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.qd, <4 x float> splat (float f0x00800000))
  %i.qg = bitcast <4 x float> %i.qf to <4 x i32>  ; 2 uses
  %i.qh = lshr <4 x i32> %i.qg, splat (i32 23)
  %i.qi = and <4 x i32> %i.qg, splat (i32 -2139095041)
  %i.qj = or disjoint <4 x i32> %i.qi, splat (i32 1056964608)
  %i.qk = bitcast <4 x i32> %i.qj to <4 x float>  ; 3 uses
  %i.ql = add nsw <4 x i32> %i.qh, splat (i32 -127)
  %i.qm = sitofp fast <4 x i32> %i.ql to <4 x float> ; 2 uses
  %i.qn = fadd fast <4 x float> %i.qm, splat (float 1.000000e+00)
  %i.qo = fcmp fast olt <4 x float> %i.qk, splat (float f0x3F3504F3) ; 2 uses
  %i.qp = select <4 x i1> %i.qo, <4 x float> %i.qk, <4 x float> zeroinitializer
  %i.qq = fadd fast <4 x float> %i.qk, splat (float -1.000000e+00)
  %i.qr = select fast <4 x i1> %i.qo, <4 x float> %i.qm, <4 x float> %i.qn
  %i.qs = fadd fast <4 x float> %i.qq, %i.qp      ; 12 uses
  %i.qt = fmul fast <4 x float> %i.qs, %i.qs      ; 2 uses
  %i.qu = fmul fast <4 x float> %i.qs, splat (float f0x3D9021BB)
  %i.qv = fadd fast <4 x float> %i.qu, splat (float f0xBDEBD1B8)
  %i.qw = fmul fast <4 x float> %i.qv, %i.qs
  %i.qx = fadd fast <4 x float> %i.qw, splat (float f0x3DEF251A)
  %i.qy = fmul fast <4 x float> %i.qx, %i.qs
  %i.qz = fadd fast <4 x float> %i.qy, splat (float f0xBDFE5D4F)
  %i.ra = fmul fast <4 x float> %i.qz, %i.qs
  %i.rb = fadd fast <4 x float> %i.ra, splat (float f0x3E11E9BF)
  %i.rc = fmul fast <4 x float> %i.rb, %i.qs
  %i.rd = fadd fast <4 x float> %i.rc, splat (float f0xBE2AAE50)
  %i.re = fmul fast <4 x float> %i.rd, %i.qs
  %i.rf = fadd fast <4 x float> %i.re, splat (float f0x3E4CCEAC)
  %i.rg = fmul fast <4 x float> %i.rf, %i.qs
  %i.rh = fadd fast <4 x float> %i.rg, splat (float f0xBE7FFFFC)
  %i.ri = fmul fast <4 x float> %i.rh, %i.qs
  %i.rj = fadd fast <4 x float> %i.ri, splat (float f0x3EAAAAAA)
  %i.rk = fmul fast <4 x float> %i.qt, %i.qs
  %reass.mul745 = fmul fast <4 x float> %i.rk, %i.rj
  %.neg738 = fmul fast <4 x float> %i.qt, splat (float -5.000000e-01)
  %reass.mul747 = fmul fast <4 x float> %i.qr, splat (float f0x3F317218)
  %8 = fadd fast <4 x float> %i.qs, %.neg738
  %i.rl = fadd fast <4 x float> %reass.mul745, %8
  %i.rm = fadd fast <4 x float> %i.rl, %reass.mul747
  %.neg729 = fmul fast <4 x float> %i.rm, splat (float -2.000000e+00)
  %i.rn = select fast <4 x i1> %i.qe, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg729
  %i.ro = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rn, <4 x float> splat (float f0x42B0C0A5))
  %i.rp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ro, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.rq = fmul fast <4 x float> %i.rp, splat (float f0x3FB8AA3B)
  %i.rr = fadd fast <4 x float> %i.rq, splat (float 5.000000e-01) ; 2 uses
  %i.rs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rr)
  %i.rt = sitofp fast <4 x i32> %i.rs to <4 x float> ; 2 uses
  %i.ru = fcmp fast olt <4 x float> %i.rr, %i.rt
  %i.rv = select <4 x i1> %i.ru, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.rw = fsub fast <4 x float> %i.rt, %i.rv      ; 2 uses
  %i.rx = fmul fast <4 x float> %i.rw, splat (float f0x3F317218)
  %i.ry = fsub fast <4 x float> %i.rp, %i.rx      ; 8 uses
  %i.rz = fmul fast <4 x float> %i.ry, %i.ry
  %i.sa = fmul fast <4 x float> %i.ry, splat (float f0x39506967)
  %i.sb = fadd fast <4 x float> %i.sa, splat (float f0x3AB743CE)
  %i.sc = fmul fast <4 x float> %i.sb, %i.ry
  %i.sd = fadd fast <4 x float> %i.sc, splat (float f0x3C088908)
  %i.se = fmul fast <4 x float> %i.sd, %i.ry
  %i.sf = fadd fast <4 x float> %i.se, splat (float f0x3D2AA9C1)
  %i.sg = fmul fast <4 x float> %i.sf, %i.ry
  %i.sh = fadd fast <4 x float> %i.sg, splat (float f0x3E2AAAAA)
  %i.si = fmul fast <4 x float> %i.sh, %i.ry
  %i.sj = fadd fast <4 x float> %i.si, splat (float 5.000000e-01)
  %i.sk = fmul fast <4 x float> %i.rz, %i.sj
  %i.sl = fadd fast <4 x float> %i.ry, %i.sk
  %i.sm = fadd fast <4 x float> %i.sl, splat (float 1.000000e+00)
  %i.sn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rw)
  %i.so = shl <4 x i32> %i.sn, splat (i32 23)
  %i.sp = add <4 x i32> %i.so, splat (i32 1065353216)
  %i.sq = bitcast <4 x i32> %i.sp to <4 x float>
  %i.sr = fmul fast <4 x float> %i.sm, %i.sq
  %i.ss = fadd fast <4 x float> %i.sr, splat (float 1.000000e+00)
  %i.st = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ss
  %i.su = fadd fast <4 x float> %i.st, splat (float -1.000000e+00)
  %i.sv = fmul fast <4 x float> %i.su, %i.my
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

bb.k:                                             ; preds = %.lr.ph788
  %i.sw = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !48
  %i.sy = insertelement <4 x float> poison, float %i.sx, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !48
  %i.tc = insertelement <4 x float> poison, float %i.tb, i64 0
  %i.td = shufflevector <4 x float> %i.tc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.te = fmul fast <4 x float> %i.sz, %i.my
  %i.tf = fadd fast <4 x float> %i.te, %i.td
  %i.tg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.tf, <4 x float> zeroinitializer)
  %i.th = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.tg, <4 x float> splat (float 1.000000e+00))
  %i.ti = fmul fast <4 x float> %i.th, %i.my
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit138:   ; preds = %.lr.ph788, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i137 = phi nsz <4 x float> [ %i.ti, %bb.k ], [ %i.mz, %bb.f ], [ %i.nh, %bb.g ], [ %i.nr, %bb.h ], [ %i.oy, %bb.i ], [ %i.sv, %bb.j ], [ %i.my, %.lr.ph788 ]
  %i.tj = fmul fast <4 x float> %.0.i137, %.0131  ; 2 uses
  %i.tk = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tj)
  %i.tl = fadd fast <4 x float> %i.tk, %i.tj
  %i.tm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tl) ; 2 uses
  %i.tn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tm, <4 x i32> %i.tm)
  %i.to = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tn, <8 x i16> splat (i16 -127))
  %i.tp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.to, <8 x i16> splat (i16 127))
  %i.tq = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.tp, <8 x i16> poison)
  %i.tr = shufflevector <16 x i8> %i.tq, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.tr, ptr %.1119786, align 1, !tbaa !50
  %i.ts = getelementptr inbounds nuw i8, ptr %.1787, i64 16 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.1119786, i64 4 ; 2 uses
  %i.tu = add nuw nsw i32 %.1128785, 4            ; 3 uses
  %i.tv = or disjoint i32 %i.tu, 3
  %i.tw = icmp slt i32 %i.tv, %i.a
  br i1 %i.tw, label %.lr.ph788, label %.preheader, !llvm.loop !54

.lr.ph795:                                        ; preds = %.preheader, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143
  %.2794 = phi ptr [ %i.vk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.2120793 = phi ptr [ %i.vl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 ], [ %.1119.lcssa, %.preheader ] ; 2 uses
  %.2129792 = phi i32 [ %i.vm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 ], [ %.1128.lcssa, %.preheader ]
  %i.tx = load i32, ptr %.2794, align 4, !tbaa !23
  %i.ty = sitofp fast i32 %i.tx to float
  %i.tz = fmul fast float %i.b, %i.ty             ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143 [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
  ]

bb.l:                                             ; preds = %.lr.ph795
  %i.ua = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.tz, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.m:                                             ; preds = %.lr.ph795
  %i.ub = load ptr, ptr %3, align 8, !tbaa !18
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !48
  %i.ud = fcmp fast ogt float %i.tz, 0.000000e+00
  %i.ue = select fast i1 %i.ud, float 1.000000e+00, float %i.uc
  %i.uf = fmul fast float %i.ue, %i.tz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.n:                                             ; preds = %.lr.ph795
  %i.ug = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !48
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !48 ; 2 uses
  %.0683 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.tz, float %i.uh) ; 2 uses
  %i.uk = fcmp fast ogt float %.0683, %i.uj
  br i1 %i.uk, label %bb.o, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.o:                                             ; preds = %bb.n
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.p:                                             ; preds = %.lr.ph795
  %.sroa.speculated57 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.tz, float f0x42B0C0A5)
  %.sroa.speculated53 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated57, float f0xC2B0C0A5)
  %i.ul = fneg fast float %.sroa.speculated53
  %i.um = tail call fast float @llvm.exp.f32(float %i.ul)
  %i.un = fadd fast float %i.um, 1.000000e+00
  %i.uo = fdiv fast float 1.000000e+00, %i.un
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.q:                                             ; preds = %.lr.ph795
  %i.up = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.tz)
  %i.uq = fadd fast float %i.up, 1.000000e+00
  %i.ur = tail call fast float @llvm.log.f32(float %i.uq)
  %i.us = tail call fast float @llvm.tanh.f32(float %i.ur)
  %i.ut = fmul fast float %i.us, %i.tz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

bb.r:                                             ; preds = %.lr.ph795
  %i.uu = load ptr, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !48 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !48 ; 2 uses
  %i.uy = fneg fast float %i.ux
  %i.uz = fdiv fast float %i.uy, %i.uv            ; 2 uses
  %i.va = fcmp fast olt float %i.tz, %i.uz
  br i1 %i.va, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.vb = fdiv fast float 1.000000e+00, %i.uv
  %i.vc = fadd fast float %i.uz, %i.vb
  %i.vd = fcmp fast ogt float %i.tz, %i.vc
  br i1 %i.vd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ve = fmul fast float %i.uv, %i.tz
  %i.vf = fadd fast float %i.ve, %i.ux
  %i.vg = fmul fast float %i.vf, %i.tz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit143

_ZL13activation_ssfiRKN4ncnn3MatE.exit143:        ; preds = %bb.r, %.lr.ph795, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.s, %bb.t
  %.1684 = phi nsz float [ %i.tz, %.lr.ph795 ], [ %i.ua, %bb.l ], [ %i.uf, %bb.m ], [ %i.uj, %bb.o ], [ %.0683, %bb.n ], [ %i.uo, %bb.p ], [ %i.ut, %bb.q ], [ %i.vg, %bb.t ], [ %i.tz, %bb.s ], [ 0.000000e+00, %bb.r ]
  %i.vh = fmul fast float %.1684, %i.j
  %i.vi = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.vh)
  %i.vj = fptosi float %i.vi to i32
  %spec.select.i145727 = tail call i32 @llvm.smax.i32(i32 %i.vj, i32 -127)
  %.0.i146728 = tail call i32 @llvm.smin.i32(i32 %spec.select.i145727, i32 127)
  %.0.i146 = trunc nsw i32 %.0.i146728 to i8
  store i8 %.0.i146, ptr %.2120793, align 1, !tbaa !50
  %i.vk = getelementptr inbounds nuw i8, ptr %.2794, i64 4
  %i.vl = getelementptr inbounds nuw i8, ptr %.2120793, i64 1
  %i.vm = add nuw nsw i32 %.2129792, 1            ; 2 uses
  %exitcond808.not = icmp eq i32 %i.vm, %i.a
  br i1 %exitcond808.not, label %.loopexit, label %.lr.ph795, !llvm.loop !55

bb.u:                                             ; preds = %bb.e
  %i.vn = load float, ptr %.0.val1, align 4, !tbaa !48 ; 2 uses
  %i.vo = insertelement <4 x float> poison, float %i.vn, i64 0
  %i.vp = shufflevector <4 x float> %i.vo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vq = icmp sgt i32 %.44.val3, 1
  %or.cond5 = and i1 %i.vq, %i.f
  br i1 %or.cond5, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.vr = load <4 x float>, ptr %.0.val1, align 4, !tbaa !50
  %i.vs = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.vt = load <4 x float>, ptr %i.vs, align 4, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0680 = phi nsz <4 x float> [ %i.vr, %bb.v ], [ %i.vp, %bb.u ] ; 2 uses
  %.0679 = phi nsz <4 x float> [ %i.vt, %bb.v ], [ %i.vp, %bb.u ]
  %i.vu = icmp sgt i32 %i.a, 7
  br i1 %i.vu, label %.lr.ph.preheader, label %.preheader761

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.vv = load ptr, ptr %3, align 8               ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vx = load ptr, ptr %3, align 8               ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.vz = load ptr, ptr %3, align 8
  br label %.lr.ph

.preheader761.loopexit:                           ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134
  %i.wa = and i32 %i.a, 2147483640
  br label %.preheader761

.preheader761:                                    ; preds = %.preheader761.loopexit, %bb.w
  %.0124.lcssa = phi i32 [ 0, %bb.w ], [ %i.wa, %.preheader761.loopexit ] ; 3 uses
  %.3121.lcssa = phi ptr [ %1, %bb.w ], [ %i.aiw, %.preheader761.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %0, %bb.w ], [ %i.aiv, %.preheader761.loopexit ] ; 2 uses
  %i.wb = or disjoint i32 %.0124.lcssa, 3
  %i.wc = icmp slt i32 %i.wb, %i.a
  br i1 %i.wc, label %.lr.ph770, label %.preheader759

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134
  %.3764 = phi ptr [ %i.aiv, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.3121763 = phi ptr [ %i.aiw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.0124762 = phi i32 [ %i.aix, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 ], [ 0, %.lr.ph.preheader ]
  %i.wd = load <4 x i32>, ptr %.3764, align 1, !tbaa !50
  %i.we = sitofp fast <4 x i32> %i.wd to <4 x float>
  %i.wf = getelementptr inbounds nuw i8, ptr %.3764, i64 16
  %i.wg = load <4 x i32>, ptr %i.wf, align 1, !tbaa !50
  %i.wh = sitofp fast <4 x i32> %i.wg to <4 x float>
  %i.wi = fmul fast <4 x float> %.0682, %i.we
  %i.wj = fadd fast <4 x float> %i.wi, %.0680     ; 10 uses
  %i.wk = fmul fast <4 x float> %.0681, %i.wh
  %i.wl = fadd fast <4 x float> %i.wk, %.0679     ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread: ; preds = %.lr.ph
  %i.wm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wj, <4 x float> zeroinitializer)
  %i.wn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wl, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708: ; preds = %.lr.ph
  %i.wo = load float, ptr %i.vz, align 4, !tbaa !48
  %i.wp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wj)
  %i.wq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wj)
  %i.wr = insertelement <4 x float> poison, float %i.wo, i64 0
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wt = fmul fast <4 x float> %i.ws, %i.wq
  %i.wu = fadd fast <4 x float> %i.wt, %i.wp
  %i.wv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wl)
  %i.ww = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.wl)
  %i.wx = fmul fast <4 x float> %i.ws, %i.ww
  %i.wy = fadd fast <4 x float> %i.wx, %i.wv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711: ; preds = %.lr.ph
  %i.wz = load float, ptr %i.vx, align 4, !tbaa !48
  %i.xa = insertelement <4 x float> poison, float %i.wz, i64 0
  %i.xb = shufflevector <4 x float> %i.xa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xc = load float, ptr %i.vy, align 4, !tbaa !48
  %i.xd = insertelement <4 x float> poison, float %i.xc, i64 0
  %i.xe = shufflevector <4 x float> %i.xd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.xf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wj, <4 x float> nofpclass(nan inf) %i.xb)
  %i.xg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xf, <4 x float> nofpclass(nan inf) %i.xe)
  %i.xh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wl, <4 x float> nofpclass(nan inf) %i.xb)
  %i.xi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xh, <4 x float> nofpclass(nan inf) %i.xe)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714: ; preds = %.lr.ph
  %i.xj = fneg fast <4 x float> %i.wj
  %i.xk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.xj, <4 x float> splat (float f0x42B0C0A5))
  %i.xl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xm = fmul fast <4 x float> %i.xl, splat (float f0x3FB8AA3B)
  %i.xn = fadd fast <4 x float> %i.xm, splat (float 5.000000e-01) ; 2 uses
  %i.xo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xn)
  %i.xp = sitofp fast <4 x i32> %i.xo to <4 x float> ; 2 uses
  %i.xq = fcmp fast olt <4 x float> %i.xn, %i.xp
  %i.xr = select <4 x i1> %i.xq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.xs = fsub fast <4 x float> %i.xp, %i.xr      ; 2 uses
  %i.xt = fmul fast <4 x float> %i.xs, splat (float f0x3F317218)
  %i.xu = fsub fast <4 x float> %i.xl, %i.xt      ; 8 uses
  %i.xv = fmul fast <4 x float> %i.xu, %i.xu
  %i.xw = fmul fast <4 x float> %i.xu, splat (float f0x39506967)
  %i.xx = fadd fast <4 x float> %i.xw, splat (float f0x3AB743CE)
  %i.xy = fmul fast <4 x float> %i.xx, %i.xu
  %i.xz = fadd fast <4 x float> %i.xy, splat (float f0x3C088908)
  %i.ya = fmul fast <4 x float> %i.xz, %i.xu
  %i.yb = fadd fast <4 x float> %i.ya, splat (float f0x3D2AA9C1)
  %i.yc = fmul fast <4 x float> %i.yb, %i.xu
  %i.yd = fadd fast <4 x float> %i.yc, splat (float f0x3E2AAAAA)
  %i.ye = fmul fast <4 x float> %i.yd, %i.xu
  %i.yf = fadd fast <4 x float> %i.ye, splat (float 5.000000e-01)
  %i.yg = fmul fast <4 x float> %i.xv, %i.yf
  %i.yh = fadd fast <4 x float> %i.xu, %i.yg
  %i.yi = fadd fast <4 x float> %i.yh, splat (float 1.000000e+00)
  %i.yj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xs)
  %i.yk = shl <4 x i32> %i.yj, splat (i32 23)
  %i.yl = add <4 x i32> %i.yk, splat (i32 1065353216)
  %i.ym = bitcast <4 x i32> %i.yl to <4 x float>
  %i.yn = fmul fast <4 x float> %i.yi, %i.ym
  %i.yo = fadd fast <4 x float> %i.yn, splat (float 1.000000e+00)
  %i.yp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.yo
  %i.yq = fneg fast <4 x float> %i.wl
  %i.yr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yq, <4 x float> splat (float f0x42B0C0A5))
  %i.ys = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yt = fmul fast <4 x float> %i.ys, splat (float f0x3FB8AA3B)
  %i.yu = fadd fast <4 x float> %i.yt, splat (float 5.000000e-01) ; 2 uses
  %i.yv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yu)
  %i.yw = sitofp fast <4 x i32> %i.yv to <4 x float> ; 2 uses
  %i.yx = fcmp fast olt <4 x float> %i.yu, %i.yw
  %i.yy = select <4 x i1> %i.yx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.yz = fsub fast <4 x float> %i.yw, %i.yy      ; 2 uses
  %i.za = fmul fast <4 x float> %i.yz, splat (float f0x3F317218)
  %i.zb = fsub fast <4 x float> %i.ys, %i.za      ; 8 uses
  %i.zc = fmul fast <4 x float> %i.zb, %i.zb
  %i.zd = fmul fast <4 x float> %i.zb, splat (float f0x39506967)
  %i.ze = fadd fast <4 x float> %i.zd, splat (float f0x3AB743CE)
  %i.zf = fmul fast <4 x float> %i.ze, %i.zb
  %i.zg = fadd fast <4 x float> %i.zf, splat (float f0x3C088908)
  %i.zh = fmul fast <4 x float> %i.zg, %i.zb
  %i.zi = fadd fast <4 x float> %i.zh, splat (float f0x3D2AA9C1)
  %i.zj = fmul fast <4 x float> %i.zi, %i.zb
  %i.zk = fadd fast <4 x float> %i.zj, splat (float f0x3E2AAAAA)
  %i.zl = fmul fast <4 x float> %i.zk, %i.zb
  %i.zm = fadd fast <4 x float> %i.zl, splat (float 5.000000e-01)
  %i.zn = fmul fast <4 x float> %i.zc, %i.zm
  %i.zo = fadd fast <4 x float> %i.zb, %i.zn
  %i.zp = fadd fast <4 x float> %i.zo, splat (float 1.000000e+00)
  %i.zq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yz)
  %i.zr = shl <4 x i32> %i.zq, splat (i32 23)
  %i.zs = add <4 x i32> %i.zr, splat (i32 1065353216)
  %i.zt = bitcast <4 x i32> %i.zs to <4 x float>
  %i.zu = fmul fast <4 x float> %i.zp, %i.zt
  %i.zv = fadd fast <4 x float> %i.zu, splat (float 1.000000e+00)
  %i.zw = fdiv fast <4 x float> splat (float 1.000000e+00), %i.zv
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717: ; preds = %.lr.ph
  %i.zx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.wj, <4 x float> splat (float f0x42B0C0A5))
  %i.zy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.zx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.zz = fmul fast <4 x float> %i.zy, splat (float f0x3FB8AA3B)
  %i.aaa = fadd fast <4 x float> %i.zz, splat (float 5.000000e-01) ; 2 uses
  %i.aab = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aaa)
  %i.aac = sitofp fast <4 x i32> %i.aab to <4 x float> ; 2 uses
  %i.aad = fcmp fast olt <4 x float> %i.aaa, %i.aac
  %i.aae = select <4 x i1> %i.aad, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aaf = fsub fast <4 x float> %i.aac, %i.aae   ; 2 uses
  %i.aag = fmul fast <4 x float> %i.aaf, splat (float f0x3F317218)
  %i.aah = fsub fast <4 x float> %i.zy, %i.aag    ; 8 uses
  %i.aai = fmul fast <4 x float> %i.aah, %i.aah
  %i.aaj = fmul fast <4 x float> %i.aah, splat (float f0x39506967)
  %i.aak = fadd fast <4 x float> %i.aaj, splat (float f0x3AB743CE)
  %i.aal = fmul fast <4 x float> %i.aak, %i.aah
  %i.aam = fadd fast <4 x float> %i.aal, splat (float f0x3C088908)
  %i.aan = fmul fast <4 x float> %i.aam, %i.aah
  %i.aao = fadd fast <4 x float> %i.aan, splat (float f0x3D2AA9C1)
  %i.aap = fmul fast <4 x float> %i.aao, %i.aah
  %i.aaq = fadd fast <4 x float> %i.aap, splat (float f0x3E2AAAAA)
  %i.aar = fmul fast <4 x float> %i.aaq, %i.aah
  %i.aas = fadd fast <4 x float> %i.aar, splat (float 5.000000e-01)
  %i.aat = fmul fast <4 x float> %i.aai, %i.aas
  %i.aau = fadd fast <4 x float> %i.aah, %i.aat
  %i.aav = fadd fast <4 x float> %i.aau, splat (float 1.000000e+00)
  %i.aaw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aaf)
  %i.aax = shl <4 x i32> %i.aaw, splat (i32 23)
  %i.aay = add <4 x i32> %i.aax, splat (i32 1065353216)
  %i.aaz = bitcast <4 x i32> %i.aay to <4 x float>
  %i.aba = fmul fast <4 x float> %i.aav, %i.aaz
  %i.abb = fadd fast <4 x float> %i.aba, splat (float 1.000000e+00) ; 2 uses
  %i.abc = fcmp fast ole <4 x float> %i.abb, zeroinitializer
  %i.abd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.abb, <4 x float> splat (float f0x00800000))
  %i.abe = bitcast <4 x float> %i.abd to <4 x i32> ; 2 uses
  %i.abf = lshr <4 x i32> %i.abe, splat (i32 23)
  %i.abg = and <4 x i32> %i.abe, splat (i32 -2139095041)
  %i.abh = or disjoint <4 x i32> %i.abg, splat (i32 1056964608)
  %i.abi = bitcast <4 x i32> %i.abh to <4 x float> ; 3 uses
  %i.abj = add nsw <4 x i32> %i.abf, splat (i32 -127)
  %i.abk = sitofp fast <4 x i32> %i.abj to <4 x float> ; 2 uses
  %i.abl = fadd fast <4 x float> %i.abk, splat (float 1.000000e+00)
  %i.abm = fcmp fast olt <4 x float> %i.abi, splat (float f0x3F3504F3) ; 2 uses
  %i.abn = select <4 x i1> %i.abm, <4 x float> %i.abi, <4 x float> zeroinitializer
  %i.abo = fadd fast <4 x float> %i.abi, splat (float -1.000000e+00)
  %i.abp = select fast <4 x i1> %i.abm, <4 x float> %i.abk, <4 x float> %i.abl
  %i.abq = fadd fast <4 x float> %i.abo, %i.abn   ; 12 uses
  %i.abr = fmul fast <4 x float> %i.abq, %i.abq   ; 2 uses
  %i.abs = fmul fast <4 x float> %i.abq, splat (float f0x3D9021BB)
  %i.abt = fadd fast <4 x float> %i.abs, splat (float f0xBDEBD1B8)
  %i.abu = fmul fast <4 x float> %i.abt, %i.abq
  %i.abv = fadd fast <4 x float> %i.abu, splat (float f0x3DEF251A)
  %i.abw = fmul fast <4 x float> %i.abv, %i.abq
  %i.abx = fadd fast <4 x float> %i.abw, splat (float f0xBDFE5D4F)
  %i.aby = fmul fast <4 x float> %i.abx, %i.abq
  %i.abz = fadd fast <4 x float> %i.aby, splat (float f0x3E11E9BF)
  %i.aca = fmul fast <4 x float> %i.abz, %i.abq
  %i.acb = fadd fast <4 x float> %i.aca, splat (float f0xBE2AAE50)
  %i.acc = fmul fast <4 x float> %i.acb, %i.abq
  %i.acd = fadd fast <4 x float> %i.acc, splat (float f0x3E4CCEAC)
  %i.ace = fmul fast <4 x float> %i.acd, %i.abq
  %i.acf = fadd fast <4 x float> %i.ace, splat (float f0xBE7FFFFC)
  %i.acg = fmul fast <4 x float> %i.acf, %i.abq
  %i.ach = fadd fast <4 x float> %i.acg, splat (float f0x3EAAAAAA)
  %i.aci = fmul fast <4 x float> %i.abr, %i.abq
  %reass.mul736 = fmul fast <4 x float> %i.aci, %i.ach
  %.neg733 = fmul fast <4 x float> %i.abr, splat (float -5.000000e-01)
  %reass.mul741 = fmul fast <4 x float> %i.abp, splat (float f0x3F317218)
  %9 = fadd fast <4 x float> %i.abq, %.neg733
  %i.acj = fadd fast <4 x float> %reass.mul736, %9
  %i.ack = fadd fast <4 x float> %i.acj, %reass.mul741
  %.neg725 = fmul fast <4 x float> %i.ack, splat (float -2.000000e+00)
  %i.acl = select fast <4 x i1> %i.abc, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg725
  %i.acm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.acl, <4 x float> splat (float f0x42B0C0A5))
  %i.acn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.acm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aco = fmul fast <4 x float> %i.acn, splat (float f0x3FB8AA3B)
  %i.acp = fadd fast <4 x float> %i.aco, splat (float 5.000000e-01) ; 2 uses
  %i.acq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acp)
  %i.acr = sitofp fast <4 x i32> %i.acq to <4 x float> ; 2 uses
  %i.acs = fcmp fast olt <4 x float> %i.acp, %i.acr
  %i.act = select <4 x i1> %i.acs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.acu = fsub fast <4 x float> %i.acr, %i.act   ; 2 uses
  %i.acv = fmul fast <4 x float> %i.acu, splat (float f0x3F317218)
  %i.acw = fsub fast <4 x float> %i.acn, %i.acv   ; 8 uses
  %i.acx = fmul fast <4 x float> %i.acw, %i.acw
  %i.acy = fmul fast <4 x float> %i.acw, splat (float f0x39506967)
  %i.acz = fadd fast <4 x float> %i.acy, splat (float f0x3AB743CE)
  %i.ada = fmul fast <4 x float> %i.acz, %i.acw
  %i.adb = fadd fast <4 x float> %i.ada, splat (float f0x3C088908)
  %i.adc = fmul fast <4 x float> %i.adb, %i.acw
  %i.add = fadd fast <4 x float> %i.adc, splat (float f0x3D2AA9C1)
  %i.ade = fmul fast <4 x float> %i.add, %i.acw
  %i.adf = fadd fast <4 x float> %i.ade, splat (float f0x3E2AAAAA)
  %i.adg = fmul fast <4 x float> %i.adf, %i.acw
  %i.adh = fadd fast <4 x float> %i.adg, splat (float 5.000000e-01)
  %i.adi = fmul fast <4 x float> %i.acx, %i.adh
  %i.adj = fadd fast <4 x float> %i.acw, %i.adi
  %i.adk = fadd fast <4 x float> %i.adj, splat (float 1.000000e+00)
  %i.adl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.acu)
  %i.adm = shl <4 x i32> %i.adl, splat (i32 23)
  %i.adn = add <4 x i32> %i.adm, splat (i32 1065353216)
  %i.ado = bitcast <4 x i32> %i.adn to <4 x float>
  %i.adp = fmul fast <4 x float> %i.adk, %i.ado
  %i.adq = fadd fast <4 x float> %i.adp, splat (float 1.000000e+00)
  %i.adr = fdiv fast <4 x float> splat (float 2.000000e+00), %i.adq
  %i.ads = fadd fast <4 x float> %i.adr, splat (float -1.000000e+00)
  %i.adt = fmul fast <4 x float> %i.ads, %i.wj
  %i.adu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.wl, <4 x float> splat (float f0x42B0C0A5))
  %i.adv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.adu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.adw = fmul fast <4 x float> %i.adv, splat (float f0x3FB8AA3B)
  %i.adx = fadd fast <4 x float> %i.adw, splat (float 5.000000e-01) ; 2 uses
  %i.ady = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.adx)
  %i.adz = sitofp fast <4 x i32> %i.ady to <4 x float> ; 2 uses
  %i.aea = fcmp fast olt <4 x float> %i.adx, %i.adz
  %i.aeb = select <4 x i1> %i.aea, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aec = fsub fast <4 x float> %i.adz, %i.aeb   ; 2 uses
  %i.aed = fmul fast <4 x float> %i.aec, splat (float f0x3F317218)
  %i.aee = fsub fast <4 x float> %i.adv, %i.aed   ; 8 uses
  %i.aef = fmul fast <4 x float> %i.aee, %i.aee
  %i.aeg = fmul fast <4 x float> %i.aee, splat (float f0x39506967)
  %i.aeh = fadd fast <4 x float> %i.aeg, splat (float f0x3AB743CE)
  %i.aei = fmul fast <4 x float> %i.aeh, %i.aee
  %i.aej = fadd fast <4 x float> %i.aei, splat (float f0x3C088908)
  %i.aek = fmul fast <4 x float> %i.aej, %i.aee
  %i.ael = fadd fast <4 x float> %i.aek, splat (float f0x3D2AA9C1)
  %i.aem = fmul fast <4 x float> %i.ael, %i.aee
  %i.aen = fadd fast <4 x float> %i.aem, splat (float f0x3E2AAAAA)
  %i.aeo = fmul fast <4 x float> %i.aen, %i.aee
  %i.aep = fadd fast <4 x float> %i.aeo, splat (float 5.000000e-01)
  %i.aeq = fmul fast <4 x float> %i.aef, %i.aep
  %i.aer = fadd fast <4 x float> %i.aee, %i.aeq
  %i.aes = fadd fast <4 x float> %i.aer, splat (float 1.000000e+00)
  %i.aet = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aec)
  %i.aeu = shl <4 x i32> %i.aet, splat (i32 23)
  %i.aev = add <4 x i32> %i.aeu, splat (i32 1065353216)
  %i.aew = bitcast <4 x i32> %i.aev to <4 x float>
  %i.aex = fmul fast <4 x float> %i.aes, %i.aew
  %i.aey = fadd fast <4 x float> %i.aex, splat (float 1.000000e+00) ; 2 uses
  %i.aez = fcmp fast ole <4 x float> %i.aey, zeroinitializer
  %i.afa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aey, <4 x float> splat (float f0x00800000))
  %i.afb = bitcast <4 x float> %i.afa to <4 x i32> ; 2 uses
  %i.afc = lshr <4 x i32> %i.afb, splat (i32 23)
  %i.afd = and <4 x i32> %i.afb, splat (i32 -2139095041)
  %i.afe = or disjoint <4 x i32> %i.afd, splat (i32 1056964608)
  %i.aff = bitcast <4 x i32> %i.afe to <4 x float> ; 3 uses
  %i.afg = add nsw <4 x i32> %i.afc, splat (i32 -127)
  %i.afh = sitofp fast <4 x i32> %i.afg to <4 x float> ; 2 uses
  %i.afi = fadd fast <4 x float> %i.afh, splat (float 1.000000e+00)
  %i.afj = fcmp fast olt <4 x float> %i.aff, splat (float f0x3F3504F3) ; 2 uses
  %i.afk = select <4 x i1> %i.afj, <4 x float> %i.aff, <4 x float> zeroinitializer
  %i.afl = fadd fast <4 x float> %i.aff, splat (float -1.000000e+00)
  %i.afm = select fast <4 x i1> %i.afj, <4 x float> %i.afh, <4 x float> %i.afi
  %i.afn = fadd fast <4 x float> %i.afl, %i.afk   ; 12 uses
  %i.afo = fmul fast <4 x float> %i.afn, %i.afn   ; 2 uses
  %i.afp = fmul fast <4 x float> %i.afn, splat (float f0x3D9021BB)
  %i.afq = fadd fast <4 x float> %i.afp, splat (float f0xBDEBD1B8)
  %i.afr = fmul fast <4 x float> %i.afq, %i.afn
  %i.afs = fadd fast <4 x float> %i.afr, splat (float f0x3DEF251A)
  %i.aft = fmul fast <4 x float> %i.afs, %i.afn
  %i.afu = fadd fast <4 x float> %i.aft, splat (float f0xBDFE5D4F)
  %i.afv = fmul fast <4 x float> %i.afu, %i.afn
  %i.afw = fadd fast <4 x float> %i.afv, splat (float f0x3E11E9BF)
  %i.afx = fmul fast <4 x float> %i.afw, %i.afn
  %i.afy = fadd fast <4 x float> %i.afx, splat (float f0xBE2AAE50)
  %i.afz = fmul fast <4 x float> %i.afy, %i.afn
  %i.aga = fadd fast <4 x float> %i.afz, splat (float f0x3E4CCEAC)
  %i.agb = fmul fast <4 x float> %i.aga, %i.afn
  %i.agc = fadd fast <4 x float> %i.agb, splat (float f0xBE7FFFFC)
  %i.agd = fmul fast <4 x float> %i.agc, %i.afn
  %i.age = fadd fast <4 x float> %i.agd, splat (float f0x3EAAAAAA)
  %i.agf = fmul fast <4 x float> %i.afo, %i.afn
  %reass.mul739 = fmul fast <4 x float> %i.agf, %i.age
  %.neg735 = fmul fast <4 x float> %i.afo, splat (float -5.000000e-01)
  %reass.mul743 = fmul fast <4 x float> %i.afm, splat (float f0x3F317218)
  %10 = fadd fast <4 x float> %i.afn, %.neg735
  %i.agg = fadd fast <4 x float> %reass.mul739, %10
  %i.agh = fadd fast <4 x float> %i.agg, %reass.mul743
  %.neg726 = fmul fast <4 x float> %i.agh, splat (float -2.000000e+00)
  %i.agi = select fast <4 x i1> %i.aez, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg726
  %i.agj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agi, <4 x float> splat (float f0x42B0C0A5))
  %i.agk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agl = fmul fast <4 x float> %i.agk, splat (float f0x3FB8AA3B)
  %i.agm = fadd fast <4 x float> %i.agl, splat (float 5.000000e-01) ; 2 uses
  %i.agn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agm)
  %i.ago = sitofp fast <4 x i32> %i.agn to <4 x float> ; 2 uses
  %i.agp = fcmp fast olt <4 x float> %i.agm, %i.ago
  %i.agq = select <4 x i1> %i.agp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.agr = fsub fast <4 x float> %i.ago, %i.agq   ; 2 uses
  %i.ags = fmul fast <4 x float> %i.agr, splat (float f0x3F317218)
  %i.agt = fsub fast <4 x float> %i.agk, %i.ags   ; 8 uses
  %i.agu = fmul fast <4 x float> %i.agt, %i.agt
  %i.agv = fmul fast <4 x float> %i.agt, splat (float f0x39506967)
  %i.agw = fadd fast <4 x float> %i.agv, splat (float f0x3AB743CE)
  %i.agx = fmul fast <4 x float> %i.agw, %i.agt
  %i.agy = fadd fast <4 x float> %i.agx, splat (float f0x3C088908)
  %i.agz = fmul fast <4 x float> %i.agy, %i.agt
  %i.aha = fadd fast <4 x float> %i.agz, splat (float f0x3D2AA9C1)
  %i.ahb = fmul fast <4 x float> %i.aha, %i.agt
  %i.ahc = fadd fast <4 x float> %i.ahb, splat (float f0x3E2AAAAA)
  %i.ahd = fmul fast <4 x float> %i.ahc, %i.agt
  %i.ahe = fadd fast <4 x float> %i.ahd, splat (float 5.000000e-01)
  %i.ahf = fmul fast <4 x float> %i.agu, %i.ahe
  %i.ahg = fadd fast <4 x float> %i.agt, %i.ahf
  %i.ahh = fadd fast <4 x float> %i.ahg, splat (float 1.000000e+00)
  %i.ahi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agr)
  %i.ahj = shl <4 x i32> %i.ahi, splat (i32 23)
  %i.ahk = add <4 x i32> %i.ahj, splat (i32 1065353216)
  %i.ahl = bitcast <4 x i32> %i.ahk to <4 x float>
  %i.ahm = fmul fast <4 x float> %i.ahh, %i.ahl
  %i.ahn = fadd fast <4 x float> %i.ahm, splat (float 1.000000e+00)
  %i.aho = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ahn
  %i.ahp = fadd fast <4 x float> %i.aho, splat (float -1.000000e+00)
  %i.ahq = fmul fast <4 x float> %i.ahp, %i.wl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720: ; preds = %.lr.ph
  %i.ahr = load float, ptr %i.vv, align 4, !tbaa !48
  %i.ahs = insertelement <4 x float> poison, float %i.ahr, i64 0
  %i.aht = shufflevector <4 x float> %i.ahs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahu = load float, ptr %i.vw, align 4, !tbaa !48
  %i.ahv = insertelement <4 x float> poison, float %i.ahu, i64 0
  %i.ahw = shufflevector <4 x float> %i.ahv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahx = fmul fast <4 x float> %i.aht, %i.wj
  %i.ahy = fadd fast <4 x float> %i.ahx, %i.ahw
  %i.ahz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahy, <4 x float> zeroinitializer)
  %i.aia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ahz, <4 x float> splat (float 1.000000e+00))
  %i.aib = fmul fast <4 x float> %i.aia, %i.wj
  %i.aic = fmul fast <4 x float> %i.aht, %i.wl
  %i.aid = fadd fast <4 x float> %i.aic, %i.ahw
  %i.aie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aid, <4 x float> zeroinitializer)
  %i.aif = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aie, <4 x float> splat (float 1.000000e+00))
  %i.aig = fmul fast <4 x float> %i.aif, %i.wl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit134:   ; preds = %.lr.ph, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720
  %.0.i135707 = phi <4 x float> [ %i.aib, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720 ], [ %i.wm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread ], [ %i.wu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708 ], [ %i.xg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711 ], [ %i.yp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714 ], [ %i.adt, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717 ], [ %i.wj, %.lr.ph ]
  %.0.i133 = phi nsz <4 x float> [ %i.aig, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread720 ], [ %i.wn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread ], [ %i.wy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread708 ], [ %i.xi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread711 ], [ %i.zw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread714 ], [ %i.ahq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit136.thread717 ], [ %i.wl, %.lr.ph ]
  %i.aih = fmul fast <4 x float> %.0.i135707, %.0131 ; 2 uses
  %i.aii = fmul fast <4 x float> %.0.i133, %.0130 ; 2 uses
  %i.aij = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aih)
  %i.aik = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aii)
  %i.ail = fadd fast <4 x float> %i.aij, %i.aih
  %i.aim = fadd fast <4 x float> %i.aik, %i.aii
  %i.ain = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ail)
  %i.aio = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aim)
  %i.aip = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ain, <4 x i32> %i.aio)
  %i.aiq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aip, <8 x i16> splat (i16 -127))
  %i.air = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aiq, <8 x i16> splat (i16 127))
  %i.ais = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.air, <8 x i16> poison)
  %i.ait = bitcast <16 x i8> %i.ais to <2 x i64>
  %i.aiu = extractelement <2 x i64> %i.ait, i64 0
  store i64 %i.aiu, ptr %.3121763, align 8, !tbaa !51
  %i.aiv = getelementptr inbounds nuw i8, ptr %.3764, i64 32 ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.3121763, i64 8 ; 2 uses
  %i.aix = add nuw nsw i32 %.0124762, 8           ; 2 uses
  %i.aiy = or disjoint i32 %i.aix, 7
  %i.aiz = icmp slt i32 %i.aiy, %i.a
  br i1 %i.aiz, label %.lr.ph, label %.preheader761.loopexit, !llvm.loop !56

.preheader759:                                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.preheader761
  %.1125.lcssa = phi i32 [ %.0124.lcssa, %.preheader761 ], [ %i.aqa, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %.4122.lcssa = phi ptr [ %.3121.lcssa, %.preheader761 ], [ %i.apz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader761 ], [ %i.apy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.aja = icmp slt i32 %.1125.lcssa, %i.a
  br i1 %i.aja, label %.lr.ph777, label %.loopexit

.lr.ph770:                                        ; preds = %.preheader761, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.4769 = phi ptr [ %i.apy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.3.lcssa, %.preheader761 ] ; 2 uses
  %.4122768 = phi ptr [ %i.apz, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.3121.lcssa, %.preheader761 ] ; 2 uses
  %.1125767 = phi i32 [ %i.aqa, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.0124.lcssa, %.preheader761 ]
  %i.ajb = load <4 x i32>, ptr %.4769, align 1, !tbaa !50
  %i.ajc = sitofp fast <4 x i32> %i.ajb to <4 x float>
  %i.ajd = fmul fast <4 x float> %.0682, %i.ajc
  %i.aje = fadd fast <4 x float> %i.ajd, %.0680   ; 10 uses
  switch i32 %2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.aa
    i32 5, label %bb.ab
    i32 6, label %bb.ac
  ]

bb.x:                                             ; preds = %.lr.ph770
  %i.ajf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aje, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.y:                                             ; preds = %.lr.ph770
  %i.ajg = load ptr, ptr %3, align 8, !tbaa !18
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !48
  %i.aji = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aje)
  %i.ajj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aje)
  %i.ajk = insertelement <4 x float> poison, float %i.ajh, i64 0
  %i.ajl = shufflevector <4 x float> %i.ajk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajm = fmul fast <4 x float> %i.ajl, %i.ajj
  %i.ajn = fadd fast <4 x float> %i.ajm, %i.aji
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.z:                                             ; preds = %.lr.ph770
  %i.ajo = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !48
  %i.ajq = insertelement <4 x float> poison, float %i.ajp, i64 0
  %i.ajr = shufflevector <4 x float> %i.ajq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajo, i64 4
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !48
  %i.aju = insertelement <4 x float> poison, float %i.ajt, i64 0
  %i.ajv = shufflevector <4 x float> %i.aju, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aje, <4 x float> nofpclass(nan inf) %i.ajr)
  %i.ajx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajw, <4 x float> nofpclass(nan inf) %i.ajv)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.aa:                                            ; preds = %.lr.ph770
  %i.ajy = fneg fast <4 x float> %i.aje
  %i.ajz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajy, <4 x float> splat (float f0x42B0C0A5))
  %i.aka = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akb = fmul fast <4 x float> %i.aka, splat (float f0x3FB8AA3B)
  %i.akc = fadd fast <4 x float> %i.akb, splat (float 5.000000e-01) ; 2 uses
  %i.akd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akc)
  %i.ake = sitofp fast <4 x i32> %i.akd to <4 x float> ; 2 uses
  %i.akf = fcmp fast olt <4 x float> %i.akc, %i.ake
  %i.akg = select <4 x i1> %i.akf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.akh = fsub fast <4 x float> %i.ake, %i.akg   ; 2 uses
  %i.aki = fmul fast <4 x float> %i.akh, splat (float f0x3F317218)
  %i.akj = fsub fast <4 x float> %i.aka, %i.aki   ; 8 uses
  %i.akk = fmul fast <4 x float> %i.akj, %i.akj
  %i.akl = fmul fast <4 x float> %i.akj, splat (float f0x39506967)
  %i.akm = fadd fast <4 x float> %i.akl, splat (float f0x3AB743CE)
  %i.akn = fmul fast <4 x float> %i.akm, %i.akj
  %i.ako = fadd fast <4 x float> %i.akn, splat (float f0x3C088908)
  %i.akp = fmul fast <4 x float> %i.ako, %i.akj
  %i.akq = fadd fast <4 x float> %i.akp, splat (float f0x3D2AA9C1)
  %i.akr = fmul fast <4 x float> %i.akq, %i.akj
  %i.aks = fadd fast <4 x float> %i.akr, splat (float f0x3E2AAAAA)
  %i.akt = fmul fast <4 x float> %i.aks, %i.akj
  %i.aku = fadd fast <4 x float> %i.akt, splat (float 5.000000e-01)
  %i.akv = fmul fast <4 x float> %i.akk, %i.aku
  %i.akw = fadd fast <4 x float> %i.akj, %i.akv
  %i.akx = fadd fast <4 x float> %i.akw, splat (float 1.000000e+00)
  %i.aky = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akh)
  %i.akz = shl <4 x i32> %i.aky, splat (i32 23)
  %i.ala = add <4 x i32> %i.akz, splat (i32 1065353216)
  %i.alb = bitcast <4 x i32> %i.ala to <4 x float>
  %i.alc = fmul fast <4 x float> %i.akx, %i.alb
  %i.ald = fadd fast <4 x float> %i.alc, splat (float 1.000000e+00)
  %i.ale = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ald
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ab:                                            ; preds = %.lr.ph770
  %i.alf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aje, <4 x float> splat (float f0x42B0C0A5))
  %i.alg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.alf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.alh = fmul fast <4 x float> %i.alg, splat (float f0x3FB8AA3B)
  %i.ali = fadd fast <4 x float> %i.alh, splat (float 5.000000e-01) ; 2 uses
  %i.alj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ali)
  %i.alk = sitofp fast <4 x i32> %i.alj to <4 x float> ; 2 uses
  %i.all = fcmp fast olt <4 x float> %i.ali, %i.alk
  %i.alm = select <4 x i1> %i.all, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aln = fsub fast <4 x float> %i.alk, %i.alm   ; 2 uses
  %i.alo = fmul fast <4 x float> %i.aln, splat (float f0x3F317218)
  %i.alp = fsub fast <4 x float> %i.alg, %i.alo   ; 8 uses
  %i.alq = fmul fast <4 x float> %i.alp, %i.alp
  %i.alr = fmul fast <4 x float> %i.alp, splat (float f0x39506967)
  %i.als = fadd fast <4 x float> %i.alr, splat (float f0x3AB743CE)
  %i.alt = fmul fast <4 x float> %i.als, %i.alp
  %i.alu = fadd fast <4 x float> %i.alt, splat (float f0x3C088908)
  %i.alv = fmul fast <4 x float> %i.alu, %i.alp
  %i.alw = fadd fast <4 x float> %i.alv, splat (float f0x3D2AA9C1)
  %i.alx = fmul fast <4 x float> %i.alw, %i.alp
  %i.aly = fadd fast <4 x float> %i.alx, splat (float f0x3E2AAAAA)
  %i.alz = fmul fast <4 x float> %i.aly, %i.alp
  %i.ama = fadd fast <4 x float> %i.alz, splat (float 5.000000e-01)
  %i.amb = fmul fast <4 x float> %i.alq, %i.ama
  %i.amc = fadd fast <4 x float> %i.alp, %i.amb
  %i.amd = fadd fast <4 x float> %i.amc, splat (float 1.000000e+00)
  %i.ame = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aln)
  %i.amf = shl <4 x i32> %i.ame, splat (i32 23)
  %i.amg = add <4 x i32> %i.amf, splat (i32 1065353216)
  %i.amh = bitcast <4 x i32> %i.amg to <4 x float>
  %i.ami = fmul fast <4 x float> %i.amd, %i.amh
  %i.amj = fadd fast <4 x float> %i.ami, splat (float 1.000000e+00) ; 2 uses
  %i.amk = fcmp fast ole <4 x float> %i.amj, zeroinitializer
  %i.aml = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amj, <4 x float> splat (float f0x00800000))
  %i.amm = bitcast <4 x float> %i.aml to <4 x i32> ; 2 uses
  %i.amn = lshr <4 x i32> %i.amm, splat (i32 23)
  %i.amo = and <4 x i32> %i.amm, splat (i32 -2139095041)
  %i.amp = or disjoint <4 x i32> %i.amo, splat (i32 1056964608)
  %i.amq = bitcast <4 x i32> %i.amp to <4 x float> ; 3 uses
  %i.amr = add nsw <4 x i32> %i.amn, splat (i32 -127)
  %i.ams = sitofp fast <4 x i32> %i.amr to <4 x float> ; 2 uses
  %i.amt = fadd fast <4 x float> %i.ams, splat (float 1.000000e+00)
  %i.amu = fcmp fast olt <4 x float> %i.amq, splat (float f0x3F3504F3) ; 2 uses
  %i.amv = select <4 x i1> %i.amu, <4 x float> %i.amq, <4 x float> zeroinitializer
  %i.amw = fadd fast <4 x float> %i.amq, splat (float -1.000000e+00)
  %i.amx = select fast <4 x i1> %i.amu, <4 x float> %i.ams, <4 x float> %i.amt
  %i.amy = fadd fast <4 x float> %i.amw, %i.amv   ; 12 uses
  %i.amz = fmul fast <4 x float> %i.amy, %i.amy   ; 2 uses
  %i.ana = fmul fast <4 x float> %i.amy, splat (float f0x3D9021BB)
  %i.anb = fadd fast <4 x float> %i.ana, splat (float f0xBDEBD1B8)
  %i.anc = fmul fast <4 x float> %i.anb, %i.amy
  %i.and = fadd fast <4 x float> %i.anc, splat (float f0x3DEF251A)
  %i.ane = fmul fast <4 x float> %i.and, %i.amy
  %i.anf = fadd fast <4 x float> %i.ane, splat (float f0xBDFE5D4F)
  %i.ang = fmul fast <4 x float> %i.anf, %i.amy
  %i.anh = fadd fast <4 x float> %i.ang, splat (float f0x3E11E9BF)
  %i.ani = fmul fast <4 x float> %i.anh, %i.amy
  %i.anj = fadd fast <4 x float> %i.ani, splat (float f0xBE2AAE50)
  %i.ank = fmul fast <4 x float> %i.anj, %i.amy
  %i.anl = fadd fast <4 x float> %i.ank, splat (float f0x3E4CCEAC)
  %i.anm = fmul fast <4 x float> %i.anl, %i.amy
  %i.ann = fadd fast <4 x float> %i.anm, splat (float f0xBE7FFFFC)
  %i.ano = fmul fast <4 x float> %i.ann, %i.amy
  %i.anp = fadd fast <4 x float> %i.ano, splat (float f0x3EAAAAAA)
  %i.anq = fmul fast <4 x float> %i.amz, %i.amy
  %reass.mul.a = fmul fast <4 x float> %i.anq, %i.anp
  %.neg732 = fmul fast <4 x float> %i.amz, splat (float -5.000000e-01)
  %reass.mul734 = fmul fast <4 x float> %i.amx, splat (float f0x3F317218)
  %11 = fadd fast <4 x float> %i.amy, %.neg732
  %i.anr = fadd fast <4 x float> %reass.mul.a, %11
  %i.ans = fadd fast <4 x float> %i.anr, %reass.mul734
  %.neg = fmul fast <4 x float> %i.ans, splat (float -2.000000e+00)
  %i.ant = select fast <4 x i1> %i.amk, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.anu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ant, <4 x float> splat (float f0x42B0C0A5))
  %i.anv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.anu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.anw = fmul fast <4 x float> %i.anv, splat (float f0x3FB8AA3B)
  %i.anx = fadd fast <4 x float> %i.anw, splat (float 5.000000e-01) ; 2 uses
  %i.any = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.anx)
  %i.anz = sitofp fast <4 x i32> %i.any to <4 x float> ; 2 uses
  %i.aoa = fcmp fast olt <4 x float> %i.anx, %i.anz
  %i.aob = select <4 x i1> %i.aoa, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aoc = fsub fast <4 x float> %i.anz, %i.aob   ; 2 uses
  %i.aod = fmul fast <4 x float> %i.aoc, splat (float f0x3F317218)
  %i.aoe = fsub fast <4 x float> %i.anv, %i.aod   ; 8 uses
  %i.aof = fmul fast <4 x float> %i.aoe, %i.aoe
  %i.aog = fmul fast <4 x float> %i.aoe, splat (float f0x39506967)
  %i.aoh = fadd fast <4 x float> %i.aog, splat (float f0x3AB743CE)
  %i.aoi = fmul fast <4 x float> %i.aoh, %i.aoe
  %i.aoj = fadd fast <4 x float> %i.aoi, splat (float f0x3C088908)
  %i.aok = fmul fast <4 x float> %i.aoj, %i.aoe
  %i.aol = fadd fast <4 x float> %i.aok, splat (float f0x3D2AA9C1)
  %i.aom = fmul fast <4 x float> %i.aol, %i.aoe
  %i.aon = fadd fast <4 x float> %i.aom, splat (float f0x3E2AAAAA)
  %i.aoo = fmul fast <4 x float> %i.aon, %i.aoe
  %i.aop = fadd fast <4 x float> %i.aoo, splat (float 5.000000e-01)
  %i.aoq = fmul fast <4 x float> %i.aof, %i.aop
  %i.aor = fadd fast <4 x float> %i.aoe, %i.aoq
  %i.aos = fadd fast <4 x float> %i.aor, splat (float 1.000000e+00)
  %i.aot = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aoc)
  %i.aou = shl <4 x i32> %i.aot, splat (i32 23)
  %i.aov = add <4 x i32> %i.aou, splat (i32 1065353216)
  %i.aow = bitcast <4 x i32> %i.aov to <4 x float>
  %i.aox = fmul fast <4 x float> %i.aos, %i.aow
  %i.aoy = fadd fast <4 x float> %i.aox, splat (float 1.000000e+00)
  %i.aoz = fdiv fast <4 x float> splat (float 2.000000e+00), %i.aoy
  %i.apa = fadd fast <4 x float> %i.aoz, splat (float -1.000000e+00)
  %i.apb = fmul fast <4 x float> %i.apa, %i.aje
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ac:                                            ; preds = %.lr.ph770
  %i.apc = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.apd = load float, ptr %i.apc, align 4, !tbaa !48
  %i.ape = insertelement <4 x float> poison, float %i.apd, i64 0
  %i.apf = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 4
  %i.aph = load float, ptr %i.apg, align 4, !tbaa !48
  %i.api = insertelement <4 x float> poison, float %i.aph, i64 0
  %i.apj = shufflevector <4 x float> %i.api, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apk = fmul fast <4 x float> %i.apf, %i.aje
  %i.apl = fadd fast <4 x float> %i.apk, %i.apj
  %i.apm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.apl, <4 x float> zeroinitializer)
  %i.apn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.apm, <4 x float> splat (float 1.000000e+00))
  %i.apo = fmul fast <4 x float> %i.apn, %i.aje
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %.lr.ph770, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i = phi nsz <4 x float> [ %i.apo, %bb.ac ], [ %i.ajf, %bb.x ], [ %i.ajn, %bb.y ], [ %i.ajx, %bb.z ], [ %i.ale, %bb.aa ], [ %i.apb, %bb.ab ], [ %i.aje, %.lr.ph770 ]
  %i.app = fmul fast <4 x float> %.0.i, %.0131    ; 2 uses
  %i.apq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.app)
  %i.apr = fadd fast <4 x float> %i.apq, %i.app
  %i.aps = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.apr) ; 2 uses
  %i.apt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aps, <4 x i32> %i.aps)
  %i.apu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.apt, <8 x i16> splat (i16 -127))
  %i.apv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.apu, <8 x i16> splat (i16 127))
  %i.apw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.apv, <8 x i16> poison)
  %i.apx = shufflevector <16 x i8> %i.apw, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.apx, ptr %.4122768, align 1, !tbaa !50
  %i.apy = getelementptr inbounds nuw i8, ptr %.4769, i64 16 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %.4122768, i64 4 ; 2 uses
  %i.aqa = add nuw nsw i32 %.1125767, 4           ; 3 uses
  %i.aqb = or disjoint i32 %i.aqa, 3
  %i.aqc = icmp slt i32 %i.aqb, %i.a
  br i1 %i.aqc, label %.lr.ph770, label %.preheader759, !llvm.loop !57

.lr.ph777:                                        ; preds = %.preheader759, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.5776 = phi ptr [ %i.arr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.4.lcssa, %.preheader759 ] ; 2 uses
  %.5123775 = phi ptr [ %i.ars, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.4122.lcssa, %.preheader759 ] ; 2 uses
  %.2126774 = phi i32 [ %i.art, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.1125.lcssa, %.preheader759 ]
  %i.aqd = load i32, ptr %.5776, align 4, !tbaa !23
  %i.aqe = sitofp fast i32 %i.aqd to float
  %i.aqf = fmul fast float %i.b, %i.aqe
  %i.aqg = fadd fast float %i.aqf, %i.vn          ; 13 uses
  switch i32 %2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.ah
    i32 5, label %bb.ai
    i32 6, label %bb.aj
  ]

bb.ad:                                            ; preds = %.lr.ph777
  %i.aqh = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.aqg, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ae:                                            ; preds = %.lr.ph777
  %i.aqi = load ptr, ptr %3, align 8, !tbaa !18
  %i.aqj = load float, ptr %i.aqi, align 4, !tbaa !48
  %i.aqk = fcmp fast ogt float %i.aqg, 0.000000e+00
  %i.aql = select fast i1 %i.aqk, float 1.000000e+00, float %i.aqj
  %i.aqm = fmul fast float %i.aql, %i.aqg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %.lr.ph777
  %i.aqn = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.aqo = load float, ptr %i.aqn, align 4, !tbaa !48
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqn, i64 4
  %i.aqq = load float, ptr %i.aqp, align 4, !tbaa !48 ; 2 uses
  %.0685 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aqg, float %i.aqo) ; 2 uses
  %i.aqr = fcmp fast ogt float %.0685, %i.aqq
  br i1 %i.aqr, label %bb.ag, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ag:                                            ; preds = %bb.af
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ah:                                            ; preds = %.lr.ph777
  %.sroa.speculated43 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.aqg, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated43, float f0xC2B0C0A5)
  %i.aqs = fneg fast float %.sroa.speculated
  %i.aqt = tail call fast float @llvm.exp.f32(float %i.aqs)
  %i.aqu = fadd fast float %i.aqt, 1.000000e+00
  %i.aqv = fdiv fast float 1.000000e+00, %i.aqu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ai:                                            ; preds = %.lr.ph777
  %i.aqw = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.aqg)
  %i.aqx = fadd fast float %i.aqw, 1.000000e+00
  %i.aqy = tail call fast float @llvm.log.f32(float %i.aqx)
  %i.aqz = tail call fast float @llvm.tanh.f32(float %i.aqy)
  %i.ara = fmul fast float %i.aqz, %i.aqg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.aj:                                            ; preds = %.lr.ph777
  %i.arb = load ptr, ptr %3, align 8, !tbaa !18   ; 2 uses
  %i.arc = load float, ptr %i.arb, align 4, !tbaa !48 ; 3 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arb, i64 4
  %i.are = load float, ptr %i.ard, align 4, !tbaa !48 ; 2 uses
  %i.arf = fneg fast float %i.are
  %i.arg = fdiv fast float %i.arf, %i.arc         ; 2 uses
  %i.arh = fcmp fast olt float %i.aqg, %i.arg
  br i1 %i.arh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ari = fdiv fast float 1.000000e+00, %i.arc
  %i.arj = fadd fast float %i.arg, %i.ari
  %i.ark = fcmp fast ogt float %i.aqg, %i.arj
  br i1 %i.ark, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.arl = fmul fast float %i.arc, %i.aqg
  %i.arm = fadd fast float %i.arl, %i.are
  %i.arn = fmul fast float %i.arm, %i.aqg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.aj, %.lr.ph777, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ak, %bb.al
  %.1686 = phi nsz float [ %i.aqg, %.lr.ph777 ], [ %i.aqh, %bb.ad ], [ %i.aqm, %bb.ae ], [ %i.aqq, %bb.ag ], [ %.0685, %bb.af ], [ %i.aqv, %bb.ah ], [ %i.ara, %bb.ai ], [ %i.arn, %bb.al ], [ %i.aqg, %bb.ak ], [ 0.000000e+00, %bb.aj ]
  %i.aro = fmul fast float %.1686, %i.j
  %i.arp = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aro)
  %i.arq = fptosi float %i.arp to i32
  %spec.select.i723 = tail call i32 @llvm.smax.i32(i32 %i.arq, i32 -127)
  %.0.i144724 = tail call i32 @llvm.smin.i32(i32 %spec.select.i723, i32 127)
  %.0.i144 = trunc nsw i32 %.0.i144724 to i8
  store i8 %.0.i144, ptr %.5123775, align 1, !tbaa !50
  %i.arr = getelementptr inbounds nuw i8, ptr %.5776, i64 4
  %i.ars = getelementptr inbounds nuw i8, ptr %.5123775, i64 1
  %i.art = add nuw nsw i32 %.2126774, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.art, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph777, !llvm.loop !58

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
declare !callback !59 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #5

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn14Requantize_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #4 personality ptr @__gxx_personality_v0 {
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
