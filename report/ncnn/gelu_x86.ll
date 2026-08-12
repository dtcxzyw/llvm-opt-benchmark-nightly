inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@_ZN4ncnn8GELU_x86C2Ev:bb.a
  tail call void @_ZN4ncnn4GELUC2Ev(ptr noundef nonnull align 8 dereferenceable(212) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn8GELU_x86E, i64 16), ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !45
  ret void
}

declare void @_ZN4ncnn4GELUC2Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn8GELU_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(212) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.e, ptr %i.a, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  store i32 %i.n, ptr %i.b, align 4, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.q = mul nsw i32 %i.j, %i.h
  %i.r = mul nsw i32 %i.q, %i.l
  %i.s = mul nsw i32 %i.r, %i.p
  store i32 %i.s, ptr %i.c, align 4, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !41
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.u)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL10gelu_bf16sERNS_3MatEiRKNS_6OptionE.omp_outlined, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.a, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn8GELU_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !19     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %i.h = load i32, ptr %0, align 4, !tbaa !19     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !19
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !19
  %i.k = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %.not153 = icmp sgt i32 %i.k, %i.j
  br i1 %.not153, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.o = sext i32 %i.k to i64
  %i.p = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %i.n, align 8, !tbaa !26
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.loopexit
  %i.q = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ej, %.loopexit ]
  %indvars.iv = phi i64 [ %i.o, %.noexc.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !46, !noalias !47
  %i.s = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !47
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !47
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 4 uses
  %.not65 = icmp eq i32 %i.q, 0
  %i.x = load i32, ptr %5, align 4, !tbaa !19     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 3                     ; 2 uses
  br i1 %.not65, label %.preheader135, label %.preheader137

.preheader137:                                    ; preds = %.noexc
  br i1 %i.y, label %.lr.ph, label %.loopexit136

.preheader135:                                    ; preds = %.noexc
  br i1 %i.y, label %.lr.ph144, label %.loopexit136

.lr.ph:                                           ; preds = %.preheader137, %.lr.ph
  %.059140 = phi ptr [ %i.bf, %.lr.ph ], [ %i.w, %.preheader137 ] ; 3 uses
  %.060139 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.preheader137 ]
  %i.z = load <4 x float>, ptr %.059140, align 1, !tbaa !51 ; 5 uses
  %i.aa = fmul fast <4 x float> %i.z, %i.z
  %i.ab = fmul fast <4 x float> %i.aa, splat (float 4.471500e-02)
  %i.ac = fmul fast <4 x float> %i.ab, %i.z
  %i.ad = fadd fast <4 x float> %i.ac, %i.z
  %i.ae = fmul fast <4 x float> %i.ad, splat (float f0x3F4C4229)
  %i.af = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -9.000000e+00), <4 x float> nofpclass(nan inf) %i.ae)
  %i.ag = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 9.000000e+00), <4 x float> nofpclass(nan inf) %i.af) ; 3 uses
  %i.ah = fmul fast <4 x float> %i.ag, %i.ag      ; 9 uses
  %i.ai = fmul fast <4 x float> %i.ah, splat (float f0x259F25C0)
  %i.aj = fsub fast <4 x float> splat (float f0x2A61337E), %i.ai
  %i.ak = fmul fast <4 x float> %i.aj, %i.ah
  %i.al = fadd fast <4 x float> %i.ak, splat (float f0xAEBD37FF)
  %i.am = fmul fast <4 x float> %i.al, %i.ah
  %i.an = fadd fast <4 x float> %i.am, splat (float f0x335C0041)
  %i.ao = fmul fast <4 x float> %i.an, %i.ah
  %i.ap = fadd fast <4 x float> %i.ao, splat (float f0x3779434A)
  %i.aq = fmul fast <4 x float> %i.ap, %i.ah
  %i.ar = fadd fast <4 x float> %i.aq, splat (float f0x3A270DED)
  %i.as = fmul fast <4 x float> %i.ar, %i.ah
  %i.at = fadd fast <4 x float> %i.as, splat (float f0x3BA059DC)
  %i.au = fmul fast <4 x float> %i.at, %i.ag
  %i.av = fmul fast <4 x float> %i.ah, splat (float f0x35A0D3D8)
  %i.aw = fadd fast <4 x float> %i.av, splat (float f0x38F895D6)
  %i.ax = fmul fast <4 x float> %i.aw, %i.ah
  %i.ay = fadd fast <4 x float> %i.ax, splat (float f0x3B14AA05)
  %i.az = fmul fast <4 x float> %i.ay, %i.ah
  %i.ba = fadd fast <4 x float> %i.az, splat (float f0x3BA059DC)
  %i.bb = fdiv fast <4 x float> %i.au, %i.ba
  %i.bc = fadd fast <4 x float> %i.bb, splat (float 1.000000e+00)
  %i.bd = fmul fast <4 x float> %i.z, splat (float 5.000000e-01)
  %i.be = fmul fast <4 x float> %i.bd, %i.bc
  store <4 x float> %i.be, ptr %.059140, align 1, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %.059140, i64 16 ; 2 uses
  %i.bg = add nuw nsw i32 %.060139, 4             ; 3 uses
  %i.bh = or disjoint i32 %i.bg, 3
  %i.bi = load i32, ptr %5, align 4, !tbaa !19    ; 2 uses
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.loopexit136, !llvm.loop !52

.lr.ph144:                                        ; preds = %.preheader135, %.lr.ph144
  %.1143 = phi ptr [ %i.ed, %.lr.ph144 ], [ %i.w, %.preheader135 ] ; 3 uses
  %.161142 = phi i32 [ %i.ee, %.lr.ph144 ], [ 0, %.preheader135 ]
  %i.bk = load <4 x float>, ptr %.1143, align 1, !tbaa !51 ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bk, splat (float f0x3F3504F3) ; 6 uses
  %i.bm = bitcast <4 x float> %i.bl to <4 x i32>
  %i.bn = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bl) ; 8 uses
  %i.bo = fmul fast <4 x float> %i.bl, %i.bl      ; 6 uses
  %i.bp = fcmp fast ule <4 x float> %i.bn, splat (float f0x3F6D8000)
  %i.bq = fmul fast <4 x float> %i.bn, splat (float f0x37910000)
  %i.br = fsub fast <4 x float> splat (float f0x39C8E7D9), %i.bq
  %i.bs = fmul fast <4 x float> %i.bn, splat (float f0xBB7E8A1C)
  %i.bt = fadd fast <4 x float> %i.bs, splat (float f0x3CC6B1A1)
  %i.bu = fmul fast <4 x float> %i.br, %i.bo
  %i.bv = fadd fast <4 x float> %i.bt, %i.bu
  %i.bw = fmul fast <4 x float> %i.bv, %i.bn
  %i.bx = fadd fast <4 x float> %i.bw, splat (float f0xBDDAAE5C)
  %i.by = fmul fast <4 x float> %i.bx, %i.bn
  %i.bz = fadd fast <4 x float> %i.by, splat (float f0xBF228550)
  %i.ca = fmul fast <4 x float> %i.bz, %i.bn
  %i.cb = fadd fast <4 x float> %i.ca, splat (float f0xBE03CE86)
  %i.cc = fmul fast <4 x float> %i.cb, %i.bn
  %i.cd = fsub fast <4 x float> %i.cc, %i.bn
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cd, <4 x float> splat (float f0x42B0C0A5))
  %i.cf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ce, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cg = fmul fast <4 x float> %i.cf, splat (float f0x3FB8AA3B)
  %i.ch = fadd fast <4 x float> %i.cg, splat (float 5.000000e-01) ; 2 uses
  %i.ci = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ch)
  %i.cj = sitofp fast <4 x i32> %i.ci to <4 x float> ; 2 uses
  %i.ck = fcmp fast olt <4 x float> %i.ch, %i.cj
  %i.cl = select <4 x i1> %i.ck, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cm = fsub fast <4 x float> %i.cj, %i.cl      ; 2 uses
  %i.cn = fmul fast <4 x float> %i.cm, splat (float f0x3F317218)
  %i.co = fsub fast <4 x float> %i.cf, %i.cn      ; 8 uses
  %i.cp = fmul fast <4 x float> %i.co, %i.co
  %i.cq = fmul fast <4 x float> %i.co, splat (float f0x39506967)
  %i.cr = fadd fast <4 x float> %i.cq, splat (float f0x3AB743CE)
  %i.cs = fmul fast <4 x float> %i.cr, %i.co
  %i.ct = fadd fast <4 x float> %i.cs, splat (float f0x3C088908)
  %i.cu = fmul fast <4 x float> %i.ct, %i.co
  %i.cv = fadd fast <4 x float> %i.cu, splat (float f0x3D2AA9C1)
  %i.cw = fmul fast <4 x float> %i.cv, %i.co
  %i.cx = fadd fast <4 x float> %i.cw, splat (float f0x3E2AAAAA)
  %i.cy = fmul fast <4 x float> %i.cx, %i.co
  %i.cz = fadd fast <4 x float> %i.cy, splat (float 5.000000e-01)
  %i.da = fmul fast <4 x float> %i.cp, %i.cz
  %i.db = fadd fast <4 x float> %i.co, splat (float 1.000000e+00)
  %i.dc = fadd fast <4 x float> %i.db, %i.da
  %i.dd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cm)
  %i.de = shl <4 x i32> %i.dd, splat (i32 23)
  %i.df = add <4 x i32> %i.de, splat (i32 1065353216)
  %i.dg = bitcast <4 x i32> %i.df to <4 x float>
  %i.dh = fmul fast <4 x float> %i.dc, %i.dg
  %i.di = fsub fast <4 x float> splat (float 1.000000e+00), %i.dh
  %i.dj = and <4 x i32> %i.bm, splat (i32 -2147483648)
  %i.dk = bitcast <4 x float> %i.di to <4 x i32>
  %i.dl = xor <4 x i32> %i.dj, %i.dk
  %i.dm = fmul fast <4 x float> %i.bo, splat (float f0x3A1C7000)
  %i.dn = fsub fast <4 x float> splat (float f0x3BA38D2C), %i.dm
  %i.do = fmul fast <4 x float> %i.dn, %i.bo
  %i.dp = fadd fast <4 x float> %i.do, splat (float f0xBCDB48D9)
  %i.dq = fmul fast <4 x float> %i.dp, %i.bo
  %i.dr = fadd fast <4 x float> %i.dq, splat (float f0x3DE70E22)
  %i.ds = fmul fast <4 x float> %i.dr, %i.bo
  %i.dt = fadd fast <4 x float> %i.ds, splat (float f0xBEC09380)
  %i.du = fmul fast <4 x float> %i.dt, %i.bo
  %i.dv = fadd fast <4 x float> %i.du, splat (float f0x3E0375D4)
  %i.dw = fmul fast <4 x float> %i.dv, %i.bl
  %i.dx = fadd fast <4 x float> %i.dw, %i.bl
  %i.dy = bitcast <4 x i32> %i.dl to <4 x float>
  %i.dz = select <4 x i1> %i.bp, <4 x float> %i.dx, <4 x float> %i.dy
  %i.ea = fadd fast <4 x float> %i.dz, splat (float 1.000000e+00)
  %i.eb = fmul fast <4 x float> %i.bk, splat (float 5.000000e-01)
  %i.ec = fmul fast <4 x float> %i.eb, %i.ea
  store <4 x float> %i.ec, ptr %.1143, align 1, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %.1143, i64 16 ; 2 uses
  %i.ee = add nuw nsw i32 %.161142, 4             ; 3 uses
  %i.ef = or disjoint i32 %i.ee, 3
  %i.eg = load i32, ptr %5, align 4, !tbaa !19    ; 2 uses
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph144, label %.loopexit136, !llvm.loop !54

.loopexit136:                                     ; preds = %.lr.ph, %.lr.ph144, %.preheader137, %.preheader135
  %i.ei = phi i32 [ %i.eg, %.lr.ph144 ], [ %i.x, %.preheader135 ], [ %i.x, %.preheader137 ], [ %i.bi, %.lr.ph ] ; 4 uses
  %.262 = phi i32 [ %i.ee, %.lr.ph144 ], [ 0, %.preheader135 ], [ 0, %.preheader137 ], [ %i.bg, %.lr.ph ] ; 5 uses
  %.2 = phi ptr [ %i.ed, %.lr.ph144 ], [ %i.w, %.preheader135 ], [ %i.w, %.preheader137 ], [ %i.bf, %.lr.ph ] ; 4 uses
  %i.ej = load i32, ptr %i.n, align 8, !tbaa !26  ; 2 uses
  %.not66 = icmp eq i32 %i.ej, 0
  %i.ek = icmp slt i32 %.262, %i.ei               ; 2 uses
  br i1 %.not66, label %.preheader, label %.preheader133

.preheader133:                                    ; preds = %.loopexit136
  br i1 %i.ek, label %.lr.ph149.preheader, label %.loopexit

.lr.ph149.preheader:                              ; preds = %.preheader133
  %i.el = xor i32 %.262, -1
  %i.em = add i32 %i.ei, %i.el                    ; 2 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.em, 3
  br i1 %min.iters.check, label %.lr.ph149.preheader185, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph149.preheader
  %n.vec = and i64 %i.eo, 8589934588              ; 4 uses
  %i.ep = shl nuw nsw i64 %n.vec, 2
  %i.eq = getelementptr i8, ptr %.2, i64 %i.ep
  %i.er = trunc i64 %n.vec to i32
  %i.es = add i32 %.262, %i.er
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.et = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.2, i64 %i.et ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !55 ; 5 uses
  %i.eu = fmul fast <4 x float> %wide.load, splat (float 5.000000e-01)
  %i.ev = fmul fast <4 x float> %wide.load, %wide.load
  %i.ew = fmul fast <4 x float> %i.ev, splat (float 4.471500e-02)
  %i.ex = fmul fast <4 x float> %i.ew, %wide.load
  %i.ey = fadd fast <4 x float> %i.ex, %wide.load
  %i.ez = fmul fast <4 x float> %i.ey, splat (float f0x3F4C4229)
  %i.fa = call fast <4 x float> @llvm.tanh.v4f32(<4 x float> %i.ez)
  %i.fb = fadd fast <4 x float> %i.fa, splat (float 1.000000e+00)
  %i.fc = fmul fast <4 x float> %i.eu, %i.fb
  store <4 x float> %i.fc, ptr %next.gep, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph149.preheader185

.lr.ph149.preheader185:                           ; preds = %.lr.ph149.preheader, %middle.block
  %.3148.ph = phi ptr [ %.2, %.lr.ph149.preheader ], [ %i.eq, %middle.block ]
  %.363147.ph = phi i32 [ %.262, %.lr.ph149.preheader ], [ %i.es, %middle.block ]
  br label %.lr.ph149

.preheader:                                       ; preds = %.loopexit136
  br i1 %i.ek, label %.lr.ph152, label %.loopexit

.lr.ph149:                                        ; preds = %.lr.ph149.preheader185, %.lr.ph149
  %.3148 = phi ptr [ %i.fo, %.lr.ph149 ], [ %.3148.ph, %.lr.ph149.preheader185 ] ; 3 uses
  %.363147 = phi i32 [ %i.fp, %.lr.ph149 ], [ %.363147.ph, %.lr.ph149.preheader185 ]
  %i.fe = load float, ptr %.3148, align 4, !tbaa !55 ; 5 uses
  %i.ff = fmul fast float %i.fe, 5.000000e-01
  %i.fg = fmul fast float %i.fe, %i.fe
  %i.fh = fmul fast float %i.fg, 4.471500e-02
  %i.fi = fmul fast float %i.fh, %i.fe
  %i.fj = fadd fast float %i.fi, %i.fe
  %i.fk = fmul fast float %i.fj, f0x3F4C4229
  %i.fl = call fast float @llvm.tanh.f32(float %i.fk)
  %i.fm = fadd fast float %i.fl, 1.000000e+00
  %i.fn = fmul fast float %i.ff, %i.fm
  store float %i.fn, ptr %.3148, align 4, !tbaa !55
  %i.fo = getelementptr inbounds nuw i8, ptr %.3148, i64 4
  %i.fp = add nuw nsw i32 %.363147, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.fp, %i.ei
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph149, !llvm.loop !60

.lr.ph152:                                        ; preds = %.preheader, %.lr.ph152
  %.4151 = phi ptr [ %i.fw, %.lr.ph152 ], [ %.2, %.preheader ] ; 3 uses
  %.464150 = phi i32 [ %i.fx, %.lr.ph152 ], [ %.262, %.preheader ]
  %i.fq = load float, ptr %.4151, align 4, !tbaa !55 ; 2 uses
  %i.fr = fmul fast float %i.fq, 5.000000e-01
  %i.fs = fmul fast float %i.fq, f0x3F3504F3
  %i.ft = call fast nofpclass(nan inf) float @erff(float noundef nofpclass(nan inf) %i.fs) #15
  %i.fu = fadd fast float %i.ft, 1.000000e+00
  %i.fv = fmul fast float %i.fr, %i.fu
  store float %i.fv, ptr %.4151, align 4, !tbaa !55
  %i.fw = getelementptr inbounds nuw i8, ptr %.4151, i64 4
  %i.fx = add nuw nsw i32 %.464150, 1             ; 2 uses
  %exitcond160.not = icmp eq i32 %i.fx, %i.ei
  br i1 %exitcond160.not, label %.loopexit, label %.lr.ph152, !llvm.loop !61

.loopexit:                                        ; preds = %.lr.ph149, %.lr.ph152, %middle.block, %.preheader133, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond162.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond162.not, label %._crit_edge, label %.noexc

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @erff(float noundef nofpclass(nan inf)) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare !callback !62 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10gelu_bf16sERNS_3MatEiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !19     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %i.h = load i32, ptr %0, align 4, !tbaa !19     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !19
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !19
  %i.k = load i32, ptr %i.a, align 4, !tbaa !19   ; 2 uses
  %.not161 = icmp sgt i32 %i.k, %i.j
  br i1 %.not161, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !19
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.loopexit
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.fc, %.loopexit ]
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !46, !noalias !64
  %i.r = load i64, ptr %i.l, align 8, !tbaa !50, !noalias !64
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !64
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 4 uses
  %.not67 = icmp eq i32 %i.p, 0
  %i.w = load i32, ptr %5, align 4, !tbaa !19     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 3                     ; 2 uses
  br i1 %.not67, label %.preheader143, label %.preheader145

.preheader145:                                    ; preds = %.noexc
  br i1 %i.x, label %.lr.ph, label %.loopexit144

.preheader143:                                    ; preds = %.noexc
  br i1 %i.x, label %.lr.ph152, label %.loopexit144

.lr.ph:                                           ; preds = %.preheader145, %.lr.ph
  %.061148 = phi ptr [ %i.bo, %.lr.ph ], [ %i.v, %.preheader145 ] ; 3 uses
  %.062147 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %.preheader145 ]
  %i.y = load i64, ptr %.061148, align 1, !tbaa !51
  %i.z = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %i.aa = bitcast <2 x i64> %i.z to <8 x i16>
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = bitcast <8 x i16> %i.ab to <4 x float>  ; 5 uses
  %i.ad = fmul fast <4 x float> %i.ac, %i.ac
  %i.ae = fmul fast <4 x float> %i.ad, splat (float 4.471500e-02)
  %i.af = fmul fast <4 x float> %i.ae, %i.ac
  %i.ag = fadd fast <4 x float> %i.af, %i.ac
  %i.ah = fmul fast <4 x float> %i.ag, splat (float f0x3F4C4229)
  %i.ai = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -9.000000e+00), <4 x float> nofpclass(nan inf) %i.ah)
  %i.aj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float 9.000000e+00), <4 x float> nofpclass(nan inf) %i.ai) ; 3 uses
  %i.ak = fmul fast <4 x float> %i.aj, %i.aj      ; 9 uses
  %i.al = fmul fast <4 x float> %i.ak, splat (float f0x259F25C0)
  %i.am = fsub fast <4 x float> splat (float f0x2A61337E), %i.al
  %i.an = fmul fast <4 x float> %i.am, %i.ak
  %i.ao = fadd fast <4 x float> %i.an, splat (float f0xAEBD37FF)
  %i.ap = fmul fast <4 x float> %i.ao, %i.ak
  %i.aq = fadd fast <4 x float> %i.ap, splat (float f0x335C0041)
  %i.ar = fmul fast <4 x float> %i.aq, %i.ak
  %i.as = fadd fast <4 x float> %i.ar, splat (float f0x3779434A)
  %i.at = fmul fast <4 x float> %i.as, %i.ak
  %i.au = fadd fast <4 x float> %i.at, splat (float f0x3A270DED)
  %i.av = fmul fast <4 x float> %i.au, %i.ak
  %i.aw = fadd fast <4 x float> %i.av, splat (float f0x3BA059DC)
  %i.ax = fmul fast <4 x float> %i.aw, %i.aj
  %i.ay = fmul fast <4 x float> %i.ak, splat (float f0x35A0D3D8)
  %i.az = fadd fast <4 x float> %i.ay, splat (float f0x38F895D6)
  %i.ba = fmul fast <4 x float> %i.az, %i.ak
  %i.bb = fadd fast <4 x float> %i.ba, splat (float f0x3B14AA05)
  %i.bc = fmul fast <4 x float> %i.bb, %i.ak
  %i.bd = fadd fast <4 x float> %i.bc, splat (float f0x3BA059DC)
  %i.be = fdiv fast <4 x float> %i.ax, %i.bd
  %i.bf = fadd fast <4 x float> %i.be, splat (float 1.000000e+00)
  %i.bg = fmul fast <4 x float> %i.ac, splat (float 5.000000e-01)
  %i.bh = fmul fast <4 x float> %i.bg, %i.bf
  %i.bi = bitcast <4 x float> %i.bh to <8 x i16>
  %i.bj = shufflevector <8 x i16> %i.bi, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.bk = bitcast <8 x i16> %i.bj to <4 x float>
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bm = bitcast <4 x float> %i.bl to <2 x i64>
  %i.bn = extractelement <2 x i64> %i.bm, i64 0
  store i64 %i.bn, ptr %.061148, align 1, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %.061148, i64 8 ; 2 uses
  %i.bp = add nuw nsw i32 %.062147, 4             ; 3 uses
  %i.bq = or disjoint i32 %i.bp, 3
  %i.br = load i32, ptr %5, align 4, !tbaa !19    ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph, label %.loopexit144, !llvm.loop !67

.lr.ph152:                                        ; preds = %.preheader143, %.lr.ph152
  %.1151 = phi ptr [ %i.ew, %.lr.ph152 ], [ %i.v, %.preheader143 ] ; 3 uses
  %.163150 = phi i32 [ %i.ex, %.lr.ph152 ], [ 0, %.preheader143 ]
  %i.bt = load i64, ptr %.1151, align 1, !tbaa !51
  %i.bu = insertelement <2 x i64> poison, i64 %i.bt, i64 0
  %i.bv = bitcast <2 x i64> %i.bu to <8 x i16>
  %i.bw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bx = bitcast <8 x i16> %i.bw to <4 x float>  ; 2 uses
  %i.by = fmul fast <4 x float> %i.bx, splat (float f0x3F3504F3) ; 6 uses
  %i.bz = bitcast <4 x float> %i.by to <4 x i32>
  %i.ca = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.by) ; 8 uses
  %i.cb = fmul fast <4 x float> %i.by, %i.by      ; 6 uses
  %i.cc = fcmp fast ule <4 x float> %i.ca, splat (float f0x3F6D8000)
  %i.cd = fmul fast <4 x float> %i.ca, splat (float f0x37910000)
  %i.ce = fsub fast <4 x float> splat (float f0x39C8E7D9), %i.cd
  %i.cf = fmul fast <4 x float> %i.ca, splat (float f0xBB7E8A1C)
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0x3CC6B1A1)
  %i.ch = fmul fast <4 x float> %i.ce, %i.cb
  %i.ci = fadd fast <4 x float> %i.cg, %i.ch
  %i.cj = fmul fast <4 x float> %i.ci, %i.ca
  %i.ck = fadd fast <4 x float> %i.cj, splat (float f0xBDDAAE5C)
  %i.cl = fmul fast <4 x float> %i.ck, %i.ca
  %i.cm = fadd fast <4 x float> %i.cl, splat (float f0xBF228550)
  %i.cn = fmul fast <4 x float> %i.cm, %i.ca
  %i.co = fadd fast <4 x float> %i.cn, splat (float f0xBE03CE86)
  %i.cp = fmul fast <4 x float> %i.co, %i.ca
  %i.cq = fsub fast <4 x float> %i.cp, %i.ca
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cq, <4 x float> splat (float f0x42B0C0A5))
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ct = fmul fast <4 x float> %i.cs, splat (float f0x3FB8AA3B)
  %i.cu = fadd fast <4 x float> %i.ct, splat (float 5.000000e-01) ; 2 uses
  %i.cv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cu)
  %i.cw = sitofp fast <4 x i32> %i.cv to <4 x float> ; 2 uses
  %i.cx = fcmp fast olt <4 x float> %i.cu, %i.cw
  %i.cy = select <4 x i1> %i.cx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cz = fsub fast <4 x float> %i.cw, %i.cy      ; 2 uses
  %i.da = fmul fast <4 x float> %i.cz, splat (float f0x3F317218)
  %i.db = fsub fast <4 x float> %i.cs, %i.da      ; 8 uses
  %i.dc = fmul fast <4 x float> %i.db, %i.db
  %i.dd = fmul fast <4 x float> %i.db, splat (float f0x39506967)
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3AB743CE)
  %i.df = fmul fast <4 x float> %i.de, %i.db
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0x3C088908)
  %i.dh = fmul fast <4 x float> %i.dg, %i.db
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3D2AA9C1)
  %i.dj = fmul fast <4 x float> %i.di, %i.db
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0x3E2AAAAA)
  %i.dl = fmul fast <4 x float> %i.dk, %i.db
  %i.dm = fadd fast <4 x float> %i.dl, splat (float 5.000000e-01)
  %i.dn = fmul fast <4 x float> %i.dc, %i.dm
  %i.do = fadd fast <4 x float> %i.db, splat (float 1.000000e+00)
  %i.dp = fadd fast <4 x float> %i.do, %i.dn
  %i.dq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cz)
  %i.dr = shl <4 x i32> %i.dq, splat (i32 23)
  %i.ds = add <4 x i32> %i.dr, splat (i32 1065353216)
  %i.dt = bitcast <4 x i32> %i.ds to <4 x float>
  %i.du = fmul fast <4 x float> %i.dp, %i.dt
  %i.dv = fsub fast <4 x float> splat (float 1.000000e+00), %i.du
  %i.dw = and <4 x i32> %i.bz, splat (i32 -2147483648)
  %i.dx = bitcast <4 x float> %i.dv to <4 x i32>
  %i.dy = xor <4 x i32> %i.dw, %i.dx
  %i.dz = fmul fast <4 x float> %i.cb, splat (float f0x3A1C7000)
  %i.ea = fsub fast <4 x float> splat (float f0x3BA38D2C), %i.dz
  %i.eb = fmul fast <4 x float> %i.ea, %i.cb
  %i.ec = fadd fast <4 x float> %i.eb, splat (float f0xBCDB48D9)
  %i.ed = fmul fast <4 x float> %i.ec, %i.cb
  %i.ee = fadd fast <4 x float> %i.ed, splat (float f0x3DE70E22)
  %i.ef = fmul fast <4 x float> %i.ee, %i.cb
  %i.eg = fadd fast <4 x float> %i.ef, splat (float f0xBEC09380)
  %i.eh = fmul fast <4 x float> %i.eg, %i.cb
  %i.ei = fadd fast <4 x float> %i.eh, splat (float f0x3E0375D4)
  %i.ej = fmul fast <4 x float> %i.ei, %i.by
  %i.ek = fadd fast <4 x float> %i.ej, %i.by
  %i.el = bitcast <4 x i32> %i.dy to <4 x float>
  %i.em = select <4 x i1> %i.cc, <4 x float> %i.ek, <4 x float> %i.el
  %i.en = fadd fast <4 x float> %i.em, splat (float 1.000000e+00)
  %i.eo = fmul fast <4 x float> %i.bx, splat (float 5.000000e-01)
  %i.ep = fmul fast <4 x float> %i.eo, %i.en
  %i.eq = bitcast <4 x float> %i.ep to <8 x i16>
  %i.er = shufflevector <8 x i16> %i.eq, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.es = bitcast <8 x i16> %i.er to <4 x float>
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eu = bitcast <4 x float> %i.et to <2 x i64>
  %i.ev = extractelement <2 x i64> %i.eu, i64 0
  store i64 %i.ev, ptr %.1151, align 1, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %.1151, i64 8 ; 2 uses
  %i.ex = add nuw nsw i32 %.163150, 4             ; 3 uses
  %i.ey = or disjoint i32 %i.ex, 3
  %i.ez = load i32, ptr %5, align 4, !tbaa !19    ; 2 uses
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph152, label %.loopexit144, !llvm.loop !68

.loopexit144:                                     ; preds = %.lr.ph, %.lr.ph152, %.preheader145, %.preheader143
  %i.fb = phi i32 [ %i.ez, %.lr.ph152 ], [ %i.w, %.preheader143 ], [ %i.w, %.preheader145 ], [ %i.br, %.lr.ph ] ; 4 uses
  %.264 = phi i32 [ %i.ex, %.lr.ph152 ], [ 0, %.preheader143 ], [ 0, %.preheader145 ], [ %i.bp, %.lr.ph ] ; 5 uses
  %.2 = phi ptr [ %i.ew, %.lr.ph152 ], [ %i.v, %.preheader143 ], [ %i.v, %.preheader145 ], [ %i.bo, %.lr.ph ] ; 4 uses
  %i.fc = load i32, ptr %4, align 4, !tbaa !19    ; 2 uses
  %.not68 = icmp eq i32 %i.fc, 0
  %i.fd = icmp slt i32 %.264, %i.fb               ; 2 uses
  br i1 %.not68, label %.preheader, label %.preheader141

.preheader141:                                    ; preds = %.loopexit144
  br i1 %i.fd, label %.lr.ph157.preheader, label %.loopexit

.lr.ph157.preheader:                              ; preds = %.preheader141
  %i.fe = xor i32 %.264, -1
  %i.ff = add i32 %i.fb, %i.fe                    ; 2 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ff, 7
  br i1 %min.iters.check, label %.lr.ph157.preheader193, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph157.preheader
  %n.vec = and i64 %i.fh, 8589934584              ; 4 uses
  %i.fi = shl nuw nsw i64 %n.vec, 1
  %i.fj = getelementptr i8, ptr %.2, i64 %i.fi
  %i.fk = trunc i64 %n.vec to i32
  %i.fl = add i32 %.264, %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fm = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2, i64 %i.fm ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !69
  %i.fn = zext <8 x i16> %wide.load to <8 x i32>
  %i.fo = shl nuw <8 x i32> %i.fn, splat (i32 16)
  %i.fp = bitcast <8 x i32> %i.fo to <8 x float>  ; 5 uses
  %i.fq = fmul fast <8 x float> %i.fp, splat (float 5.000000e-01)
  %i.fr = fmul fast <8 x float> %i.fp, %i.fp
  %i.fs = fmul fast <8 x float> %i.fr, splat (float 4.471500e-02)
  %i.ft = fmul fast <8 x float> %i.fs, %i.fp
  %i.fu = fadd fast <8 x float> %i.ft, %i.fp
  %i.fv = fmul fast <8 x float> %i.fu, splat (float f0x3F4C4229)
  %i.fw = call fast <8 x float> @llvm.tanh.v8f32(<8 x float> %i.fv)
  %i.fx = fadd fast <8 x float> %i.fw, splat (float 1.000000e+00)
  %i.fy = fmul fast <8 x float> %i.fq, %i.fx
  %i.fz = bitcast <8 x float> %i.fy to <8 x i32>
  %i.ga = lshr <8 x i32> %i.fz, splat (i32 16)
  %i.gb = trunc nuw <8 x i32> %i.ga to <8 x i16>
  store <8 x i16> %i.gb, ptr %next.gep, align 2, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph157.preheader193

.lr.ph157.preheader193:                           ; preds = %.lr.ph157.preheader, %middle.block
  %.3156.ph = phi ptr [ %.2, %.lr.ph157.preheader ], [ %i.fj, %middle.block ]
  %.365155.ph = phi i32 [ %.264, %.lr.ph157.preheader ], [ %i.fl, %middle.block ]
  br label %.lr.ph157

.preheader:                                       ; preds = %.loopexit144
  br i1 %i.fd, label %.lr.ph160, label %.loopexit

.lr.ph157:                                        ; preds = %.lr.ph157.preheader193, %.lr.ph157
  %.3156 = phi ptr [ %i.gt, %.lr.ph157 ], [ %.3156.ph, %.lr.ph157.preheader193 ] ; 3 uses
  %.365155 = phi i32 [ %i.gu, %.lr.ph157 ], [ %.365155.ph, %.lr.ph157.preheader193 ]
  %i.gd = load i16, ptr %.3156, align 2, !tbaa !69
  %i.ge = zext i16 %i.gd to i32
  %i.gf = shl nuw i32 %i.ge, 16
  %i.gg = bitcast i32 %i.gf to float              ; 5 uses
  %i.gh = fmul fast float %i.gg, 5.000000e-01
  %i.gi = fmul fast float %i.gg, %i.gg
  %i.gj = fmul fast float %i.gi, 4.471500e-02
  %i.gk = fmul fast float %i.gj, %i.gg
  %i.gl = fadd fast float %i.gk, %i.gg
  %i.gm = fmul fast float %i.gl, f0x3F4C4229
  %i.gn = call fast float @llvm.tanh.f32(float %i.gm)
  %i.go = fadd fast float %i.gn, 1.000000e+00
  %i.gp = fmul fast float %i.gh, %i.go
  %i.gq = bitcast float %i.gp to i32
  %i.gr = lshr i32 %i.gq, 16
  %i.gs = trunc nuw i32 %i.gr to i16
  store i16 %i.gs, ptr %.3156, align 2, !tbaa !69
  %i.gt = getelementptr inbounds nuw i8, ptr %.3156, i64 2
  %i.gu = add nuw nsw i32 %.365155, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gu, %i.fb
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph157, !llvm.loop !72

.lr.ph160:                                        ; preds = %.preheader, %.lr.ph160
  %.4159 = phi ptr [ %i.hh, %.lr.ph160 ], [ %.2, %.preheader ] ; 3 uses
  %.466158 = phi i32 [ %i.hi, %.lr.ph160 ], [ %.264, %.preheader ]
  %i.gv = load i16, ptr %.4159, align 2, !tbaa !69
  %i.gw = zext i16 %i.gv to i32
  %i.gx = shl nuw i32 %i.gw, 16
  %i.gy = bitcast i32 %i.gx to float              ; 2 uses
  %i.gz = fmul fast float %i.gy, f0x3F3504F3
  %i.ha = call fast nofpclass(nan inf) float @erff(float noundef nofpclass(nan inf) %i.gz) #15
  %i.hb = fmul fast float %i.ha, 5.000000e-01
  %i.hc = fadd fast float %i.hb, 5.000000e-01
  %i.hd = fmul fast float %i.hc, %i.gy
  %i.he = bitcast float %i.hd to i32
  %i.hf = lshr i32 %i.he, 16
  %i.hg = trunc nuw i32 %i.hf to i16
  store i16 %i.hg, ptr %.4159, align 2, !tbaa !69
  %i.hh = getelementptr inbounds nuw i8, ptr %.4159, i64 2
  %i.hi = add nuw nsw i32 %.466158, 1             ; 2 uses
  %exitcond168.not = icmp eq i32 %i.hi, %i.fb
  br i1 %exitcond168.not, label %.loopexit, label %.lr.ph160, !llvm.loop !73

.loopexit:                                        ; preds = %.lr.ph157, %.lr.ph160, %middle.block, %.preheader141, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond170.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond170.not, label %._crit_edge, label %.noexc

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.tanh.v4f32(<4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #9

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_erff" "_ZGVcN8v_erff" "_ZGVdN8v_erff" "_ZGVeN16v_erff" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind willreturn memory(none) }
end_hunk_0
