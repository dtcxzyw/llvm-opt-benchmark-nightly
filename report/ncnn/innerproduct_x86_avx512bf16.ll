Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_avx512bf16?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.1:bb.a
  %i.ko = bitcast <8 x i32> %i.kn to <8 x float>
  %i.kp = fmul fast <8 x float> %i.kk, %i.ko
  %i.kq = fadd fast <8 x float> %i.kp, splat (float 1.000000e+00)
  %i.kr = fdiv fast <8 x float> splat (float 1.000000e+00), %i.kq
  %i.ks = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kr, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.kt = fmul fast <8 x float> %i.ks, %i.fu
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc74:                                         ; preds = %._crit_edge
  %i.ku = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !29
  %i.kw = insertelement <8 x float> poison, float %i.kv, i64 0
  %i.kx = shufflevector <8 x float> %i.kw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !29
  %i.la = insertelement <8 x float> poison, float %i.kz, i64 0
  %i.lb = shufflevector <8 x float> %i.la, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> nofpclass(nan inf) %i.kx, <8 x float> nofpclass(nan inf) %i.lb)
  %i.ld = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lc, <8 x float> zeroinitializer)
  %i.le = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ld, <8 x float> splat (float 1.000000e+00))
  %i.lf = fmul fast <8 x float> %i.le, %i.fu
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc74, %.noexc73, %.noexc72, %bb.g, %.noexc, %bb.f, %._crit_edge
  %.0.i = phi nsz <8 x float> [ %i.lf, %.noexc74 ], [ %i.fw, %bb.f ], [ %i.ge, %.noexc ], [ %i.go, %bb.g ], [ %i.ho, %.noexc72 ], [ %i.kt, %.noexc73 ], [ %i.fu, %._crit_edge ]
  %i.lg = load ptr, ptr %9, align 8, !tbaa !17
  %.idx354 = shl nsw i64 %indvars.iv, 4
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 %.idx354
  %i.li = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i)
  store <8 x bfloat> %i.li, ptr %i.lh, align 1, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond349.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond349.not, label %._crit_edge329, label %bb.c

._crit_edge329:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge329, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not267 = icmp sgt i32 %i.k, %i.j
  br i1 %.not267, label %._crit_edge271, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph270, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ %i.n, %.lr.ph270 ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %.not65 = icmp eq ptr %i.p, null
  br i1 %.not65, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %i.r = load <4 x float>, ptr %i.q, align 1, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0233 = phi nsz <4 x float> [ zeroinitializer, %bb.c ], [ %i.r, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !17
  %i.t = load i32, ptr %i.l, align 4, !tbaa !15
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %indvars.iv, %i.u
  %i.w = load i64, ptr %i.m, align 8, !tbaa !24
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !9     ; 9 uses
  %i.ab = icmp sgt i32 %i.aa, 7
  br i1 %i.ab, label %.lr.ph, label %.preheader235

.preheader235.loopexit:                           ; preds = %.lr.ph
  %i.ac = and i32 %i.aa, 2147483640
  %i.ad = fadd fast <8 x float> %i.bm, %i.bl
  br label %.preheader235

.preheader235:                                    ; preds = %.preheader235.loopexit, %bb.e
  %.0231.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bj, %.preheader235.loopexit ] ; 2 uses
  %.0229.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.bk, %.preheader235.loopexit ] ; 2 uses
  %.0227.lcssa = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.ad, %.preheader235.loopexit ]
  %.061.lcssa = phi ptr [ %i.y, %bb.e ], [ %i.bo, %.preheader235.loopexit ] ; 2 uses
  %.058.lcssa = phi ptr [ %i.z, %bb.e ], [ %i.bn, %.preheader235.loopexit ] ; 2 uses
  %.057.lcssa = phi i32 [ 0, %bb.e ], [ %i.ac, %.preheader235.loopexit ] ; 3 uses
  %i.ae = or disjoint i32 %.057.lcssa, 3
  %i.af = icmp slt i32 %i.ae, %i.aa
  br i1 %i.af, label %.lr.ph255, label %.preheader

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.057242 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %bb.e ]
  %.058241 = phi ptr [ %i.bn, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %.061240 = phi ptr [ %i.bo, %.lr.ph ], [ %i.y, %bb.e ] ; 5 uses
  %.0227239 = phi <8 x float> [ %i.bm, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0228238 = phi <8 x float> [ %i.bl, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0229237 = phi <8 x float> [ %i.bk, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %.0231236 = phi <8 x float> [ %i.bj, %.lr.ph ], [ zeroinitializer, %bb.e ]
  %i.ag = load <8 x i16>, ptr %.058241, align 2, !tbaa !26
  %i.ah = zext <8 x i16> %i.ag to <8 x i32>       ; 4 uses
  %i.ai = shl nuw <8 x i32> %i.ah, <i32 16, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = bitcast <8 x i32> %i.ai to <8 x float>
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.al = shl nuw <8 x i32> %i.ah, <i32 poison, i32 poison, i32 16, i32 16, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.am = bitcast <8 x i32> %i.al to <8 x float>
  %i.an = shufflevector <8 x float> %i.am, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.ao = shl nuw <8 x i32> %i.ah, <i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 16, i32 poison, i32 poison>
  %i.ap = bitcast <8 x i32> %i.ao to <8 x float>
  %i.aq = shufflevector <8 x float> %i.ap, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5>
  %i.ar = shl nuw <8 x i32> %i.ah, <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 16>
  %i.as = bitcast <8 x i32> %i.ar to <8 x float>
  %i.at = shufflevector <8 x float> %i.as, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7>
  %i.au = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.061240)
  %i.av = bitcast <16 x i8> %i.au to <8 x bfloat>
  %i.aw = fpext fast <8 x bfloat> %i.av to <8 x float>
  %i.ax = getelementptr inbounds nuw i8, ptr %.061240, i64 16
  %i.ay = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ax)
  %i.az = bitcast <16 x i8> %i.ay to <8 x bfloat>
  %i.ba = fpext fast <8 x bfloat> %i.az to <8 x float>
  %i.bb = getelementptr inbounds nuw i8, ptr %.061240, i64 32
  %i.bc = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bb)
  %i.bd = bitcast <16 x i8> %i.bc to <8 x bfloat>
  %i.be = fpext fast <8 x bfloat> %i.bd to <8 x float>
  %i.bf = getelementptr inbounds nuw i8, ptr %.061240, i64 48
  %i.bg = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bf)
  %i.bh = bitcast <16 x i8> %i.bg to <8 x bfloat>
  %i.bi = fpext fast <8 x bfloat> %i.bh to <8 x float>
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ak, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %.0231236) ; 2 uses
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.an, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %.0229237) ; 2 uses
  %i.bl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %.0228238) ; 2 uses
  %i.bm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) %i.bi, <8 x float> nofpclass(nan inf) %.0227239) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.058241, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.061240, i64 64 ; 2 uses
  %i.bp = add nuw nsw i32 %.057242, 8             ; 2 uses
  %i.bq = or disjoint i32 %i.bp, 7
  %i.br = icmp slt i32 %i.bq, %i.aa
  br i1 %i.br, label %.lr.ph, label %.preheader235.loopexit, !llvm.loop !44

.preheader:                                       ; preds = %.lr.ph255, %.preheader235
  %.1232.lcssa = phi <8 x float> [ %.0231.lcssa, %.preheader235 ], [ %i.cx, %.lr.ph255 ]
  %.1230.lcssa = phi <8 x float> [ %.0229.lcssa, %.preheader235 ], [ %i.cy, %.lr.ph255 ]
  %.162.lcssa = phi ptr [ %.061.lcssa, %.preheader235 ], [ %i.da, %.lr.ph255 ] ; 3 uses
  %.159.lcssa = phi ptr [ %.058.lcssa, %.preheader235 ], [ %i.cz, %.lr.ph255 ] ; 3 uses
  %.1.lcssa = phi i32 [ %.057.lcssa, %.preheader235 ], [ %i.db, %.lr.ph255 ] ; 5 uses
  %i.bs = icmp slt i32 %.1.lcssa, %i.aa
  br i1 %i.bs, label %.lr.ph265.preheader, label %._crit_edge

.lr.ph265.preheader:                              ; preds = %.preheader
  %i.bt = sub i32 %i.aa, %.1.lcssa
  %.neg324 = add i32 %.1.lcssa, 1
  %xtraiter = and i32 %i.bt, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph265.prol.loopexit, label %.lr.ph265.prol

.lr.ph265.prol:                                   ; preds = %.lr.ph265.preheader
  %i.bu = load i16, ptr %.159.lcssa, align 2, !tbaa !26
  %i.bv = zext i16 %i.bu to i32
  %i.bw = shl nuw i32 %i.bv, 16
  %i.bx = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %i.by = bitcast <4 x i32> %i.bx to <4 x float>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = load i64, ptr %.162.lcssa, align 1, !tbaa !23
  %i.cb = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.cc = bitcast <2 x i64> %i.cb to <8 x i16>
  %10 = shufflevector <8 x i16> %i.cc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cd = bitcast <8 x i16> %10 to <4 x float>
  %i.ce = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bz, <4 x float> nofpclass(nan inf) %i.cd, <4 x float> nofpclass(nan inf) %.0233) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.159.lcssa, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.162.lcssa, i64 8
  %i.ch = add nuw nsw i32 %.1.lcssa, 1
  br label %.lr.ph265.prol.loopexit

.lr.ph265.prol.loopexit:                          ; preds = %.lr.ph265.prol, %.lr.ph265.preheader
  %.lcssa323.unr = phi <4 x float> [ poison, %.lr.ph265.preheader ], [ %i.ce, %.lr.ph265.prol ]
  %.2264.unr = phi i32 [ %.1.lcssa, %.lr.ph265.preheader ], [ %i.ch, %.lr.ph265.prol ]
  %.260263.unr = phi ptr [ %.159.lcssa, %.lr.ph265.preheader ], [ %i.cf, %.lr.ph265.prol ]
  %.263262.unr = phi ptr [ %.162.lcssa, %.lr.ph265.preheader ], [ %i.cg, %.lr.ph265.prol ]
  %.1234261.unr = phi <4 x float> [ %.0233, %.lr.ph265.preheader ], [ %i.ce, %.lr.ph265.prol ]
  %i.ci = icmp eq i32 %i.aa, %.neg324
  br i1 %i.ci, label %._crit_edge, label %.lr.ph265

.lr.ph255:                                        ; preds = %.preheader235, %.lr.ph255
  %.1254 = phi i32 [ %i.db, %.lr.ph255 ], [ %.057.lcssa, %.preheader235 ]
  %.159253 = phi ptr [ %i.cz, %.lr.ph255 ], [ %.058.lcssa, %.preheader235 ] ; 2 uses
  %.162252 = phi ptr [ %i.da, %.lr.ph255 ], [ %.061.lcssa, %.preheader235 ] ; 3 uses
  %.1230251 = phi <8 x float> [ %i.cy, %.lr.ph255 ], [ %.0229.lcssa, %.preheader235 ]
  %.1232250 = phi <8 x float> [ %i.cx, %.lr.ph255 ], [ %.0231.lcssa, %.preheader235 ]
  %i.cj = load <4 x i16>, ptr %.159253, align 2, !tbaa !26
  %i.ck = zext <4 x i16> %i.cj to <4 x i32>
  %i.cl = shl nuw <4 x i32> %i.ck, splat (i32 16) ; 2 uses
  %i.cm = shufflevector <4 x i32> %i.cl, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = shufflevector <4 x i32> %i.cl, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.162252)
  %i.cr = bitcast <16 x i8> %i.cq to <8 x bfloat>
  %i.cs = fpext fast <8 x bfloat> %i.cr to <8 x float>
  %i.ct = getelementptr inbounds nuw i8, ptr %.162252, i64 16
  %i.cu = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.ct)
  %i.cv = bitcast <16 x i8> %i.cu to <8 x bfloat>
  %i.cw = fpext fast <8 x bfloat> %i.cv to <8 x float>
  %i.cx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) %i.cs, <8 x float> nofpclass(nan inf) %.1232250) ; 2 uses
  %i.cy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> nofpclass(nan inf) %i.cw, <8 x float> nofpclass(nan inf) %.1230251) ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.159253, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.162252, i64 32 ; 2 uses
  %i.db = add nuw nsw i32 %.1254, 4               ; 3 uses
  %i.dc = or disjoint i32 %i.db, 3
  %i.dd = icmp slt i32 %i.dc, %i.aa
  br i1 %i.dd, label %.lr.ph255, label %.preheader, !llvm.loop !45

.lr.ph265:                                        ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265
  %.2264 = phi i32 [ %i.ee, %.lr.ph265 ], [ %.2264.unr, %.lr.ph265.prol.loopexit ]
  %.260263 = phi ptr [ %i.ec, %.lr.ph265 ], [ %.260263.unr, %.lr.ph265.prol.loopexit ] ; 3 uses
  %.263262 = phi ptr [ %i.ed, %.lr.ph265 ], [ %.263262.unr, %.lr.ph265.prol.loopexit ] ; 3 uses
  %.1234261 = phi <4 x float> [ %i.eb, %.lr.ph265 ], [ %.1234261.unr, %.lr.ph265.prol.loopexit ]
  %i.de = load i16, ptr %.260263, align 2, !tbaa !26
  %i.df = zext i16 %i.de to i32
  %i.dg = shl nuw i32 %i.df, 16
  %i.dh = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %i.di = bitcast <4 x i32> %i.dh to <4 x float>
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = load i64, ptr %.263262, align 1, !tbaa !23
  %i.dl = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %i.dm = bitcast <2 x i64> %i.dl to <8 x i16>
  %11 = shufflevector <8 x i16> %i.dm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dn = bitcast <8 x i16> %11 to <4 x float>
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.dn, <4 x float> nofpclass(nan inf) %.1234261)
  %i.dp = getelementptr inbounds nuw i8, ptr %.260263, i64 2
  %i.dq = getelementptr inbounds nuw i8, ptr %.263262, i64 8
  %i.dr = load i16, ptr %i.dp, align 2, !tbaa !26
  %i.ds = zext i16 %i.dr to i32
  %i.dt = shl nuw i32 %i.ds, 16
  %i.du = insertelement <4 x i32> poison, i32 %i.dt, i64 0
  %i.dv = bitcast <4 x i32> %i.du to <4 x float>
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = load i64, ptr %i.dq, align 1, !tbaa !23
  %i.dy = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %i.dz = bitcast <2 x i64> %i.dy to <8 x i16>
  %12 = shufflevector <8 x i16> %i.dz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ea = bitcast <8 x i16> %12 to <4 x float>
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.do) ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.260263, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.263262, i64 16
  %i.ee = add nuw nsw i32 %.2264, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ee, %i.aa
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph265, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265, %.preheader
  %.1234.lcssa = phi <4 x float> [ %.0233, %.preheader ], [ %.lcssa323.unr, %.lr.ph265.prol.loopexit ], [ %i.eb, %.lr.ph265 ]
  %i.ef = fadd fast <8 x float> %.0227.lcssa, %.1232.lcssa
  %i.eg = fadd fast <8 x float> %i.ef, %.1230.lcssa ; 2 uses
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ei = shufflevector <8 x float> %i.eg, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ej = fadd fast <4 x float> %i.ei, %i.eh
  %i.ek = fadd fast <4 x float> %i.ej, %.1234.lcssa ; 10 uses
  %i.el = load i32, ptr %7, align 4, !tbaa !9
  switch i32 %i.el, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %.noexc
    i32 3, label %bb.g
    i32 4, label %.noexc66
    i32 5, label %.noexc67
    i32 6, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.en = load ptr, ptr %8, align 8, !tbaa !17
  %i.eo = load float, ptr %i.en, align 4, !tbaa !29
  %i.ep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ek)
  %i.eq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ek)
  %i.er = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = fmul fast <4 x float> %i.es, %i.eq
  %i.eu = fadd fast <4 x float> %i.et, %i.ep
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.ev = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !29
  %i.ex = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !29
  %i.fb = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> nofpclass(nan inf) %i.ey)
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fd, <4 x float> nofpclass(nan inf) %i.fc)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc66:                                         ; preds = %._crit_edge
  %i.ff = fneg fast <4 x float> %i.ek
  %i.fg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0x42B0C0A5))
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fi = fmul fast <4 x float> %i.fh, splat (float f0x3FB8AA3B)
  %i.fj = fadd fast <4 x float> %i.fi, splat (float 5.000000e-01) ; 2 uses
  %i.fk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fj)
  %i.fl = sitofp fast <4 x i32> %i.fk to <4 x float> ; 2 uses
  %i.fm = fcmp fast olt <4 x float> %i.fj, %i.fl
  %i.fn = select <4 x i1> %i.fm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fo = fsub fast <4 x float> %i.fl, %i.fn      ; 2 uses
  %i.fp = fneg fast <4 x float> %i.fo             ; 2 uses
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fh)
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fq) ; 8 uses
  %i.fs = fmul fast <4 x float> %i.fr, %i.fr
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> nofpclass(nan inf) %i.fr, <4 x float> splat (float f0x3C088908))
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fu, <4 x float> nofpclass(nan inf) %i.fr, <4 x float> splat (float f0x3D2AA9C1))
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fv, <4 x float> nofpclass(nan inf) %i.fr, <4 x float> splat (float f0x3E2AAAAA))
  %i.fx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fw, <4 x float> nofpclass(nan inf) %i.fr, <4 x float> splat (float 5.000000e-01))
  %i.fy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fx, <4 x float> nofpclass(nan inf) %i.fs, <4 x float> nofpclass(nan inf) %i.fr)
  %i.fz = fadd fast <4 x float> %i.fy, splat (float 1.000000e+00)
  %i.ga = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fo)
  %i.gb = shl <4 x i32> %i.ga, splat (i32 23)
  %i.gc = add <4 x i32> %i.gb, splat (i32 1065353216)
  %i.gd = bitcast <4 x i32> %i.gc to <4 x float>
  %i.ge = fmul fast <4 x float> %i.fz, %i.gd
  %i.gf = fadd fast <4 x float> %i.ge, splat (float 1.000000e+00)
  %i.gg = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gf
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc67:                                         ; preds = %._crit_edge
  %i.gh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ek, <4 x float> splat (float f0x42B0C0A5))
  %i.gi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gj = fmul fast <4 x float> %i.gi, splat (float f0x3FB8AA3B)
  %i.gk = fadd fast <4 x float> %i.gj, splat (float 5.000000e-01) ; 2 uses
  %i.gl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gk)
  %i.gm = sitofp fast <4 x i32> %i.gl to <4 x float> ; 2 uses
  %i.gn = fcmp fast olt <4 x float> %i.gk, %i.gm
  %i.go = select <4 x i1> %i.gn, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gp = fsub fast <4 x float> %i.gm, %i.go      ; 2 uses
  %i.gq = fneg fast <4 x float> %i.gp             ; 2 uses
  %i.gr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gi)
  %i.gs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gr) ; 8 uses
  %i.gt = fmul fast <4 x float> %i.gs, %i.gs
  %i.gu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gs, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gu, <4 x float> nofpclass(nan inf) %i.gs, <4 x float> splat (float f0x3C088908))
  %i.gw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gv, <4 x float> nofpclass(nan inf) %i.gs, <4 x float> splat (float f0x3D2AA9C1))
  %i.gx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gw, <4 x float> nofpclass(nan inf) %i.gs, <4 x float> splat (float f0x3E2AAAAA))
  %i.gy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gx, <4 x float> nofpclass(nan inf) %i.gs, <4 x float> splat (float 5.000000e-01))
  %i.gz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gy, <4 x float> nofpclass(nan inf) %i.gt, <4 x float> nofpclass(nan inf) %i.gs)
  %i.ha = fadd fast <4 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gp)
  %i.hc = shl <4 x i32> %i.hb, splat (i32 23)
  %i.hd = add <4 x i32> %i.hc, splat (i32 1065353216)
  %i.he = bitcast <4 x i32> %i.hd to <4 x float>
  %i.hf = fmul fast <4 x float> %i.ha, %i.he
  %i.hg = fadd fast <4 x float> %i.hf, splat (float 1.000000e+00) ; 2 uses
  %i.hh = fcmp fast ole <4 x float> %i.hg, zeroinitializer
  %i.hi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hg, <4 x float> splat (float f0x00800000))
  %i.hj = bitcast <4 x float> %i.hi to <4 x i32>  ; 2 uses
  %i.hk = lshr <4 x i32> %i.hj, splat (i32 23)
  %i.hl = and <4 x i32> %i.hj, splat (i32 -2139095041)
  %i.hm = or disjoint <4 x i32> %i.hl, splat (i32 1056964608)
  %i.hn = bitcast <4 x i32> %i.hm to <4 x float>  ; 3 uses
  %i.ho = add nsw <4 x i32> %i.hk, splat (i32 -127)
  %i.hp = sitofp fast <4 x i32> %i.ho to <4 x float> ; 2 uses
  %i.hq = fadd fast <4 x float> %i.hp, splat (float 1.000000e+00)
  %i.hr = fcmp fast olt <4 x float> %i.hn, splat (float f0x3F3504F3) ; 2 uses
  %i.hs = select <4 x i1> %i.hr, <4 x float> %i.hn, <4 x float> zeroinitializer
  %i.ht = fadd fast <4 x float> %i.hn, splat (float -1.000000e+00)
  %i.hu = select fast <4 x i1> %i.hr, <4 x float> %i.hp, <4 x float> %i.hq ; 2 uses
  %i.hv = fadd fast <4 x float> %i.ht, %i.hs      ; 12 uses
  %i.hw = fmul fast <4 x float> %i.hv, %i.hv      ; 2 uses
  %i.hx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.hy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hx, <4 x float> nofpclass(nan inf) %i.hv, <4 x float> splat (float f0x3DEF251A))
  %i.hz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hy, <4 x float> nofpclass(nan inf) %i.hv, <4 x float> splat (float f0xBDFE5D4F))
  %i.ia = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hz, <4 x float> nofpclass(nan inf) %i.hv, <4 x float> splat (float f0x3E11E9BF))
  %i.ib = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ia, <4 x float> nofpclass(nan inf) %i.hv, <4 x float> splat (float f0xBE2AAE50))
  %i.ic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ib, <4 x float> nofpclass(nan inf) %i.hv, <4 x float> splat (float f0x3E4CCEAC))
  %i.id = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ic, <4 x float> nofpclass(nan inf) %i.hv, <4 x float> splat (float f0xBE7FFFFC))
  %i.ie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.id, <4 x float> nofpclass(nan inf) %i.hv, <4 x float> splat (float f0x3EAAAAAA))
  %i.if = fmul fast <4 x float> %i.hw, %i.hv
  %i.ig = fmul fast <4 x float> %i.if, %i.ie
  %i.ih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hu, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ig)
  %i.ii = fneg fast <4 x float> %i.hw
  %i.ij = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ii, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ih)
  %i.ik = fadd fast <4 x float> %i.ij, %i.hv
  %i.il = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hu, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ik)
  %.neg = fmul fast <4 x float> %i.il, splat (float -2.000000e+00)
  %i.im = select fast <4 x i1> %i.hh, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.in = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.im, <4 x float> splat (float f0x42B0C0A5))
  %i.io = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.in, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ip = fmul fast <4 x float> %i.io, splat (float f0x3FB8AA3B)
  %i.iq = fadd fast <4 x float> %i.ip, splat (float 5.000000e-01) ; 2 uses
  %i.ir = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iq)
  %i.is = sitofp fast <4 x i32> %i.ir to <4 x float> ; 2 uses
  %i.it = fcmp fast olt <4 x float> %i.iq, %i.is
  %i.iu = select <4 x i1> %i.it, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.iv = fsub fast <4 x float> %i.is, %i.iu      ; 2 uses
  %i.iw = fneg fast <4 x float> %i.iv             ; 2 uses
  %i.ix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.io)
  %i.iy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ix) ; 8 uses
  %i.iz = fmul fast <4 x float> %i.iy, %i.iy
  %i.ja = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.jb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ja, <4 x float> nofpclass(nan inf) %i.iy, <4 x float> splat (float f0x3C088908))
  %i.jc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jb, <4 x float> nofpclass(nan inf) %i.iy, <4 x float> splat (float f0x3D2AA9C1))
  %i.jd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jc, <4 x float> nofpclass(nan inf) %i.iy, <4 x float> splat (float f0x3E2AAAAA))
  %i.je = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.jd, <4 x float> nofpclass(nan inf) %i.iy, <4 x float> splat (float 5.000000e-01))
  %i.jf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.je, <4 x float> nofpclass(nan inf) %i.iz, <4 x float> nofpclass(nan inf) %i.iy)
  %i.jg = fadd fast <4 x float> %i.jf, splat (float 1.000000e+00)
  %i.jh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iv)
  %i.ji = shl <4 x i32> %i.jh, splat (i32 23)
  %i.jj = add <4 x i32> %i.ji, splat (i32 1065353216)
  %i.jk = bitcast <4 x i32> %i.jj to <4 x float>
  %i.jl = fmul fast <4 x float> %i.jg, %i.jk
  %i.jm = fadd fast <4 x float> %i.jl, splat (float 1.000000e+00)
  %i.jn = fdiv fast <4 x float> splat (float 2.000000e+00), %i.jm
  %i.jo = fadd fast <4 x float> %i.jn, splat (float -1.000000e+00)
  %i.jp = fmul fast <4 x float> %i.jo, %i.ek
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge
  %i.jq = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !29
  %i.js = insertelement <4 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !29
  %i.jw = insertelement <4 x float> poison, float %i.jv, i64 0
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jy = fmul fast <4 x float> %i.jt, %i.ek
  %i.jz = fadd fast <4 x float> %i.jy, %i.jx
  %i.ka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jz, <4 x float> zeroinitializer)
  %i.kb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ka, <4 x float> splat (float 1.000000e+00))
  %i.kc = fmul fast <4 x float> %i.kb, %i.ek
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.h, %.noexc67, %.noexc66, %bb.g, %.noexc, %bb.f, %._crit_edge
  %.0.i = phi nsz <4 x float> [ %i.kc, %bb.h ], [ %i.em, %bb.f ], [ %i.eu, %.noexc ], [ %i.fe, %bb.g ], [ %i.gg, %.noexc66 ], [ %i.jp, %.noexc67 ], [ %i.ek, %._crit_edge ]
  %i.kd = load ptr, ptr %9, align 8, !tbaa !17
  %.idx290 = shl nsw i64 %indvars.iv, 3
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 %.idx290
  %i.kf = shufflevector <4 x float> %.0.i, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kg = shufflevector <8 x float> %i.kf, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kg)
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.3:bb.a
  %i.jp = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !29
  %i.jr = insertelement <8 x float> poison, float %i.jq, i64 0
  %i.js = shufflevector <8 x float> %i.jr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !29
  %i.jv = insertelement <8 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <8 x float> %i.jv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> nofpclass(nan inf) %i.js, <8 x float> nofpclass(nan inf) %i.jw)
  %i.jy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jx, <8 x float> zeroinitializer)
  %i.jz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.jy, <8 x float> splat (float 1.000000e+00))
  %i.ka = fmul fast <8 x float> %i.jz, %i.ep
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc119, %.noexc118, %.noexc117, %bb.g, %.noexc, %bb.f, %._crit_edge
  %.0.i = phi nsz <8 x float> [ %i.ka, %.noexc119 ], [ %i.er, %bb.f ], [ %i.ez, %.noexc ], [ %i.fj, %bb.g ], [ %i.gj, %.noexc117 ], [ %i.jo, %.noexc118 ], [ %i.ep, %._crit_edge ]
  %i.kb = load ptr, ptr %9, align 8, !tbaa !17
  %i.kc = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i)
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.p
  store <8 x bfloat> %i.kc, ptr %i.kd, align 1, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond395.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond395.not, label %._crit_edge376, label %bb.c

._crit_edge376:                                   ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge376, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not339 = icmp sgt i32 %i.k, %i.j
  br i1 %.not339, label %._crit_edge343, label %.lr.ph342

.lr.ph342:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph342, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.0340 = phi i32 [ %i.k, %.lr.ph342 ], [ %i.ku, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !9
  %i.o = shl nsw i32 %.0340, 2
  %i.p = add nsw i32 %i.n, %i.o                   ; 4 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %.not100 = icmp eq ptr %i.q, null
  %.pre = sext i32 %i.p to i64                    ; 3 uses
  br i1 %.not100, label %._crit_edge364, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.pre
  %i.s = load <4 x float>, ptr %i.r, align 4, !tbaa !29
  br label %._crit_edge364

._crit_edge364:                                   ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi nsz <4 x float> [ %i.s, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !17     ; 4 uses
  %i.u = load i32, ptr %i.l, align 4, !tbaa !15
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr %i.m, align 8, !tbaa !24
  %i.x = mul i64 %i.w, %i.v                       ; 4 uses
  %i.y = mul i64 %i.x, %.pre
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y ; 2 uses
  %i.aa = add nsw i32 %i.p, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = add nsw i32 %i.p, 2
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.x, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ag ; 2 uses
  %i.ai = add nsw i32 %i.p, 3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.x, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.an = load i32, ptr %7, align 4, !tbaa !9     ; 7 uses
  %i.ao = icmp sgt i32 %i.an, 7
  br i1 %i.ao, label %.lr.ph, label %.preheader288

.preheader288.loopexit:                           ; preds = %.lr.ph
  %i.ap = and i32 %i.an, 2147483640
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.loopexit, %._crit_edge364
  %.0287.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge364 ], [ %i.bh, %.preheader288.loopexit ]
  %.0286.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge364 ], [ %i.bi, %.preheader288.loopexit ]
  %.0285.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge364 ], [ %i.bj, %.preheader288.loopexit ]
  %.0284.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge364 ], [ %i.bk, %.preheader288.loopexit ]
  %.096.lcssa = phi ptr [ %i.z, %._crit_edge364 ], [ %i.bm, %.preheader288.loopexit ] ; 2 uses
  %.093.lcssa = phi ptr [ %i.ad, %._crit_edge364 ], [ %i.bn, %.preheader288.loopexit ] ; 2 uses
  %.090.lcssa = phi ptr [ %i.ah, %._crit_edge364 ], [ %i.bo, %.preheader288.loopexit ] ; 2 uses
  %.087.lcssa = phi ptr [ %i.al, %._crit_edge364 ], [ %i.bp, %.preheader288.loopexit ] ; 2 uses
  %.084.lcssa = phi ptr [ %i.am, %._crit_edge364 ], [ %i.bl, %.preheader288.loopexit ] ; 2 uses
  %.083.lcssa = phi i32 [ 0, %._crit_edge364 ], [ %i.ap, %.preheader288.loopexit ] ; 3 uses
  %i.aq = or disjoint i32 %.083.lcssa, 3
  %i.ar = icmp slt i32 %i.aq, %i.an
  br i1 %i.ar, label %.lr.ph319, label %.preheader

.lr.ph:                                           ; preds = %._crit_edge364, %.lr.ph
  %.083298 = phi i32 [ %i.bq, %.lr.ph ], [ 0, %._crit_edge364 ]
  %.084297 = phi ptr [ %i.bl, %.lr.ph ], [ %i.am, %._crit_edge364 ] ; 2 uses
  %.087296 = phi ptr [ %i.bp, %.lr.ph ], [ %i.al, %._crit_edge364 ] ; 2 uses
  %.090295 = phi ptr [ %i.bo, %.lr.ph ], [ %i.ah, %._crit_edge364 ] ; 2 uses
  %.093294 = phi ptr [ %i.bn, %.lr.ph ], [ %i.ad, %._crit_edge364 ] ; 2 uses
  %.096293 = phi ptr [ %i.bm, %.lr.ph ], [ %i.z, %._crit_edge364 ] ; 2 uses
  %.0284292 = phi <8 x float> [ %i.bk, %.lr.ph ], [ zeroinitializer, %._crit_edge364 ]
  %.0285291 = phi <8 x float> [ %i.bj, %.lr.ph ], [ zeroinitializer, %._crit_edge364 ]
  %.0286290 = phi <8 x float> [ %i.bi, %.lr.ph ], [ zeroinitializer, %._crit_edge364 ]
  %.0287289 = phi <8 x float> [ %i.bh, %.lr.ph ], [ zeroinitializer, %._crit_edge364 ]
  %i.as = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.084297)
  %i.at = bitcast <16 x i8> %i.as to <8 x bfloat>
  %i.au = fpext fast <8 x bfloat> %i.at to <8 x float> ; 4 uses
  %i.av = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.096293)
  %i.aw = bitcast <16 x i8> %i.av to <8 x bfloat>
  %i.ax = fpext fast <8 x bfloat> %i.aw to <8 x float>
  %i.ay = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.093294)
  %i.az = bitcast <16 x i8> %i.ay to <8 x bfloat>
  %i.ba = fpext fast <8 x bfloat> %i.az to <8 x float>
  %i.bb = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.090295)
  %i.bc = bitcast <16 x i8> %i.bb to <8 x bfloat>
  %i.bd = fpext fast <8 x bfloat> %i.bc to <8 x float>
  %i.be = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.087296)
  %i.bf = bitcast <16 x i8> %i.be to <8 x bfloat>
  %i.bg = fpext fast <8 x bfloat> %i.bf to <8 x float>
  %i.bh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %.0287289) ; 2 uses
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.ba, <8 x float> nofpclass(nan inf) %.0286290) ; 2 uses
  %i.bj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.bd, <8 x float> nofpclass(nan inf) %.0285291) ; 2 uses
  %i.bk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %.0284292) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.084297, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.096293, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.093294, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.090295, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.087296, i64 16 ; 2 uses
  %i.bq = add nuw nsw i32 %.083298, 8             ; 2 uses
  %i.br = or disjoint i32 %i.bq, 7
  %i.bs = icmp slt i32 %i.br, %i.an
  br i1 %i.bs, label %.lr.ph, label %.preheader288.loopexit, !llvm.loop !49

.preheader:                                       ; preds = %.lr.ph319, %.preheader288
  %.0283.lcssa = phi <4 x float> [ zeroinitializer, %.preheader288 ], [ %i.co, %.lr.ph319 ] ; 2 uses
  %.0282.lcssa = phi <4 x float> [ zeroinitializer, %.preheader288 ], [ %i.cp, %.lr.ph319 ] ; 2 uses
  %.0281.lcssa = phi <4 x float> [ zeroinitializer, %.preheader288 ], [ %i.cq, %.lr.ph319 ] ; 2 uses
  %.0280.lcssa = phi <4 x float> [ zeroinitializer, %.preheader288 ], [ %i.cr, %.lr.ph319 ] ; 2 uses
  %.197.lcssa = phi ptr [ %.096.lcssa, %.preheader288 ], [ %i.ct, %.lr.ph319 ]
  %.194.lcssa = phi ptr [ %.093.lcssa, %.preheader288 ], [ %i.cu, %.lr.ph319 ]
  %.191.lcssa = phi ptr [ %.090.lcssa, %.preheader288 ], [ %i.cv, %.lr.ph319 ]
  %.188.lcssa = phi ptr [ %.087.lcssa, %.preheader288 ], [ %i.cw, %.lr.ph319 ]
  %.185.lcssa = phi ptr [ %.084.lcssa, %.preheader288 ], [ %i.cs, %.lr.ph319 ]
  %.1.lcssa = phi i32 [ %.083.lcssa, %.preheader288 ], [ %i.cx, %.lr.ph319 ] ; 2 uses
  %i.bt = icmp slt i32 %.1.lcssa, %i.an
  br i1 %i.bt, label %.lr.ph337, label %._crit_edge

.lr.ph319:                                        ; preds = %.preheader288, %.lr.ph319
  %.1318 = phi i32 [ %i.cx, %.lr.ph319 ], [ %.083.lcssa, %.preheader288 ]
  %.185317 = phi ptr [ %i.cs, %.lr.ph319 ], [ %.084.lcssa, %.preheader288 ] ; 2 uses
  %.188316 = phi ptr [ %i.cw, %.lr.ph319 ], [ %.087.lcssa, %.preheader288 ] ; 2 uses
  %.191315 = phi ptr [ %i.cv, %.lr.ph319 ], [ %.090.lcssa, %.preheader288 ] ; 2 uses
  %.194314 = phi ptr [ %i.cu, %.lr.ph319 ], [ %.093.lcssa, %.preheader288 ] ; 2 uses
  %.197313 = phi ptr [ %i.ct, %.lr.ph319 ], [ %.096.lcssa, %.preheader288 ] ; 2 uses
  %.0280312 = phi <4 x float> [ %i.cr, %.lr.ph319 ], [ zeroinitializer, %.preheader288 ]
  %.0281311 = phi <4 x float> [ %i.cq, %.lr.ph319 ], [ zeroinitializer, %.preheader288 ]
  %.0282310 = phi <4 x float> [ %i.cp, %.lr.ph319 ], [ zeroinitializer, %.preheader288 ]
  %.0283309 = phi <4 x float> [ %i.co, %.lr.ph319 ], [ zeroinitializer, %.preheader288 ]
  %i.bu = load i64, ptr %.185317, align 1, !tbaa !23
  %i.bv = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %i.bw = bitcast <2 x i64> %i.bv to <8 x i16>
  %11 = shufflevector <8 x i16> %i.bw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.bx = bitcast <8 x i16> %11 to <4 x float>    ; 4 uses
  %i.by = load i64, ptr %.197313, align 1, !tbaa !23
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %12 = shufflevector <8 x i16> %i.ca, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cb = bitcast <8 x i16> %12 to <4 x float>
  %i.cc = load i64, ptr %.194314, align 1, !tbaa !23
  %i.cd = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.ce = bitcast <2 x i64> %i.cd to <8 x i16>
  %13 = shufflevector <8 x i16> %i.ce, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cf = bitcast <8 x i16> %13 to <4 x float>
  %i.cg = load i64, ptr %.191315, align 1, !tbaa !23
  %i.ch = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.ci = bitcast <2 x i64> %i.ch to <8 x i16>
  %14 = shufflevector <8 x i16> %i.ci, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cj = bitcast <8 x i16> %14 to <4 x float>
  %i.ck = load i64, ptr %.188316, align 1, !tbaa !23
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %15 = shufflevector <8 x i16> %i.cm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cn = bitcast <8 x i16> %15 to <4 x float>
  %i.co = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> nofpclass(nan inf) %i.cb, <4 x float> nofpclass(nan inf) %.0283309) ; 2 uses
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> nofpclass(nan inf) %i.cf, <4 x float> nofpclass(nan inf) %.0282310) ; 2 uses
  %i.cq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> nofpclass(nan inf) %i.cj, <4 x float> nofpclass(nan inf) %.0281311) ; 2 uses
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> nofpclass(nan inf) %i.cn, <4 x float> nofpclass(nan inf) %.0280312) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.185317, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.197313, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.194314, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.191315, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.188316, i64 8 ; 2 uses
  %i.cx = add nuw nsw i32 %.1318, 4               ; 3 uses
  %i.cy = or disjoint i32 %i.cx, 3
  %i.cz = icmp slt i32 %i.cy, %i.an
  br i1 %i.cz, label %.lr.ph319, label %.preheader, !llvm.loop !50

.lr.ph337:                                        ; preds = %.preheader, %.lr.ph337
  %.2336 = phi i32 [ %i.eb, %.lr.ph337 ], [ %.1.lcssa, %.preheader ]
  %.286335 = phi ptr [ %i.dw, %.lr.ph337 ], [ %.185.lcssa, %.preheader ] ; 2 uses
  %.289334 = phi ptr [ %i.ea, %.lr.ph337 ], [ %.188.lcssa, %.preheader ] ; 2 uses
  %.292333 = phi ptr [ %i.dz, %.lr.ph337 ], [ %.191.lcssa, %.preheader ] ; 2 uses
  %.295332 = phi ptr [ %i.dy, %.lr.ph337 ], [ %.194.lcssa, %.preheader ] ; 2 uses
  %.298331 = phi ptr [ %i.dx, %.lr.ph337 ], [ %.197.lcssa, %.preheader ] ; 2 uses
  %.sroa.0.1330 = phi <4 x float> [ %i.dv, %.lr.ph337 ], [ %.sroa.0.0, %.preheader ]
  %i.da = load i16, ptr %.286335, align 2, !tbaa !26
  %i.db = zext i16 %i.da to i32
  %i.dc = shl nuw i32 %i.db, 16
  %i.dd = load i16, ptr %.298331, align 2, !tbaa !26
  %i.de = load i16, ptr %.295332, align 2, !tbaa !26
  %i.df = load i16, ptr %.292333, align 2, !tbaa !26
  %i.dg = load i16, ptr %.289334, align 2, !tbaa !26
  %i.dh = zext i16 %i.dd to i32
  %i.di = zext i16 %i.de to i32
  %i.dj = zext i16 %i.df to i32
  %i.dk = zext i16 %i.dg to i32
  %i.dl = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.di, i64 1
  %i.dn = insertelement <4 x i32> %i.dm, i32 %i.dj, i64 2
  %i.do = insertelement <4 x i32> %i.dn, i32 %i.dk, i64 3
  %i.dp = shl nuw <4 x i32> %i.do, splat (i32 16)
  %i.dq = bitcast <4 x i32> %i.dp to <4 x float>
  %i.dr = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %i.ds = bitcast <4 x i32> %i.dr to <4 x float>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = fmul fast <4 x float> %i.dt, %i.dq
  %i.dv = fadd fast <4 x float> %i.du, %.sroa.0.1330 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.286335, i64 2
  %i.dx = getelementptr inbounds nuw i8, ptr %.298331, i64 2
  %i.dy = getelementptr inbounds nuw i8, ptr %.295332, i64 2
  %i.dz = getelementptr inbounds nuw i8, ptr %.292333, i64 2
  %i.ea = getelementptr inbounds nuw i8, ptr %.289334, i64 2
  %i.eb = add nuw nsw i32 %.2336, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph337, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph337, %.preheader
  %.sroa.0.1.lcssa = phi <4 x float> [ %.sroa.0.0, %.preheader ], [ %i.dv, %.lr.ph337 ]
  %i.ec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0287.lcssa, <8 x float> nofpclass(nan inf) %.0286.lcssa)
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %.0285.lcssa, <8 x float> nofpclass(nan inf) %.0284.lcssa)
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.ed) ; 2 uses
  %i.ef = shufflevector <8 x float> %i.ee, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eg = shufflevector <8 x float> %i.ee, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eh = shufflevector <4 x float> %.0283.lcssa, <4 x float> %.0282.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ei = shufflevector <4 x float> %.0281.lcssa, <4 x float> %.0280.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ej = shufflevector <4 x float> %.0283.lcssa, <4 x float> %.0282.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ek = shufflevector <4 x float> %.0281.lcssa, <4 x float> %.0280.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.el = shufflevector <4 x float> %i.eh, <4 x float> %i.ei, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.em = shufflevector <4 x float> %i.ei, <4 x float> %i.eh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.en = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eo = shufflevector <4 x float> %i.ek, <4 x float> %i.ej, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ep = fadd fast <4 x float> %i.em, %i.el
  %i.eq = fadd fast <4 x float> %i.ep, %i.en
  %i.er = fadd fast <4 x float> %i.eq, %i.eo
  %i.es = fadd fast <4 x float> %i.er, %.sroa.0.1.lcssa
  %i.et = fadd fast <4 x float> %i.es, %i.eg
  %i.eu = fadd fast <4 x float> %i.et, %i.ef      ; 10 uses
  %i.ev = load i32, ptr %8, align 4, !tbaa !9
  switch i32 %i.ev, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc
    i32 3, label %bb.f
    i32 4, label %.noexc101
    i32 5, label %.noexc102
    i32 6, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.ew = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eu, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc:                                           ; preds = %._crit_edge
  %i.ex = load ptr, ptr %9, align 8, !tbaa !17
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !29
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.eu)
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.eu)
  %i.fb = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fd = fmul fast <4 x float> %i.fc, %i.fa
  %i.fe = fadd fast <4 x float> %i.fd, %i.ez
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ff = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !29
  %i.fh = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !29
  %i.fl = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eu, <4 x float> nofpclass(nan inf) %i.fi)
  %i.fo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> nofpclass(nan inf) %i.fm)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc101:                                        ; preds = %._crit_edge
  %i.fp = fneg fast <4 x float> %i.eu
  %i.fq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fp, <4 x float> splat (float f0x42B0C0A5))
  %i.fr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fs = fmul fast <4 x float> %i.fr, splat (float f0x3FB8AA3B)
  %i.ft = fadd fast <4 x float> %i.fs, splat (float 5.000000e-01) ; 2 uses
  %i.fu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ft)
  %i.fv = sitofp fast <4 x i32> %i.fu to <4 x float> ; 2 uses
  %i.fw = fcmp fast olt <4 x float> %i.ft, %i.fv
  %i.fx = select <4 x i1> %i.fw, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fy = fsub fast <4 x float> %i.fv, %i.fx      ; 2 uses
  %i.fz = fneg fast <4 x float> %i.fy             ; 2 uses
  %i.ga = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fz, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fr)
  %i.gb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fz, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ga) ; 8 uses
  %i.gc = fmul fast <4 x float> %i.gb, %i.gb
  %i.gd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gb, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ge = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gd, <4 x float> nofpclass(nan inf) %i.gb, <4 x float> splat (float f0x3C088908))
  %i.gf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ge, <4 x float> nofpclass(nan inf) %i.gb, <4 x float> splat (float f0x3D2AA9C1))
  %i.gg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gf, <4 x float> nofpclass(nan inf) %i.gb, <4 x float> splat (float f0x3E2AAAAA))
  %i.gh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gg, <4 x float> nofpclass(nan inf) %i.gb, <4 x float> splat (float 5.000000e-01))
  %i.gi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gh, <4 x float> nofpclass(nan inf) %i.gc, <4 x float> nofpclass(nan inf) %i.gb)
  %i.gj = fadd fast <4 x float> %i.gi, splat (float 1.000000e+00)
  %i.gk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fy)
  %i.gl = shl <4 x i32> %i.gk, splat (i32 23)
  %i.gm = add <4 x i32> %i.gl, splat (i32 1065353216)
  %i.gn = bitcast <4 x i32> %i.gm to <4 x float>
  %i.go = fmul fast <4 x float> %i.gj, %i.gn
  %i.gp = fadd fast <4 x float> %i.go, splat (float 1.000000e+00)
  %i.gq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc102:                                        ; preds = %._crit_edge
  %i.gr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0x42B0C0A5))
  %i.gs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gt = fmul fast <4 x float> %i.gs, splat (float f0x3FB8AA3B)
  %i.gu = fadd fast <4 x float> %i.gt, splat (float 5.000000e-01) ; 2 uses
  %i.gv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gu)
  %i.gw = sitofp fast <4 x i32> %i.gv to <4 x float> ; 2 uses
  %i.gx = fcmp fast olt <4 x float> %i.gu, %i.gw
  %i.gy = select <4 x i1> %i.gx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gz = fsub fast <4 x float> %i.gw, %i.gy      ; 2 uses
  %i.ha = fneg fast <4 x float> %i.gz             ; 2 uses
  %i.hb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ha, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gs)
  %i.hc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ha, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hb) ; 8 uses
  %i.hd = fmul fast <4 x float> %i.hc, %i.hc
  %i.he = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hc, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.hf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.he, <4 x float> nofpclass(nan inf) %i.hc, <4 x float> splat (float f0x3C088908))
  %i.hg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hf, <4 x float> nofpclass(nan inf) %i.hc, <4 x float> splat (float f0x3D2AA9C1))
  %i.hh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hg, <4 x float> nofpclass(nan inf) %i.hc, <4 x float> splat (float f0x3E2AAAAA))
  %i.hi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hh, <4 x float> nofpclass(nan inf) %i.hc, <4 x float> splat (float 5.000000e-01))
  %i.hj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hi, <4 x float> nofpclass(nan inf) %i.hd, <4 x float> nofpclass(nan inf) %i.hc)
  %i.hk = fadd fast <4 x float> %i.hj, splat (float 1.000000e+00)
  %i.hl = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gz)
  %i.hm = shl <4 x i32> %i.hl, splat (i32 23)
  %i.hn = add <4 x i32> %i.hm, splat (i32 1065353216)
  %i.ho = bitcast <4 x i32> %i.hn to <4 x float>
  %i.hp = fmul fast <4 x float> %i.hk, %i.ho
  %i.hq = fadd fast <4 x float> %i.hp, splat (float 1.000000e+00) ; 2 uses
  %i.hr = fcmp fast ole <4 x float> %i.hq, zeroinitializer
  %i.hs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hq, <4 x float> splat (float f0x00800000))
  %i.ht = bitcast <4 x float> %i.hs to <4 x i32>  ; 2 uses
  %i.hu = lshr <4 x i32> %i.ht, splat (i32 23)
  %i.hv = and <4 x i32> %i.ht, splat (i32 -2139095041)
  %i.hw = or disjoint <4 x i32> %i.hv, splat (i32 1056964608)
  %i.hx = bitcast <4 x i32> %i.hw to <4 x float>  ; 3 uses
  %i.hy = add nsw <4 x i32> %i.hu, splat (i32 -127)
  %i.hz = sitofp fast <4 x i32> %i.hy to <4 x float> ; 2 uses
  %i.ia = fadd fast <4 x float> %i.hz, splat (float 1.000000e+00)
  %i.ib = fcmp fast olt <4 x float> %i.hx, splat (float f0x3F3504F3) ; 2 uses
  %i.ic = select <4 x i1> %i.ib, <4 x float> %i.hx, <4 x float> zeroinitializer
  %i.id = fadd fast <4 x float> %i.hx, splat (float -1.000000e+00)
  %i.ie = select fast <4 x i1> %i.ib, <4 x float> %i.hz, <4 x float> %i.ia ; 2 uses
  %i.if = fadd fast <4 x float> %i.id, %i.ic      ; 12 uses
  %i.ig = fmul fast <4 x float> %i.if, %i.if      ; 2 uses
  %i.ih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.if, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ih, <4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float f0x3DEF251A))
  %i.ij = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ii, <4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float f0xBDFE5D4F))
  %i.ik = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ij, <4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float f0x3E11E9BF))
  %i.il = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ik, <4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float f0xBE2AAE50))
  %i.im = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.il, <4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float f0x3E4CCEAC))
  %i.in = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.im, <4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float f0xBE7FFFFC))
  %i.io = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.in, <4 x float> nofpclass(nan inf) %i.if, <4 x float> splat (float f0x3EAAAAAA))
  %i.ip = fmul fast <4 x float> %i.ig, %i.if
  %i.iq = fmul fast <4 x float> %i.ip, %i.io
  %i.ir = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ie, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.iq)
  %i.is = fneg fast <4 x float> %i.ig
  %i.it = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.is, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ir)
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22innerproduct_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined.5:bb.a
  %i.am = bitcast <16 x i8> %i.al to <8 x bfloat>
  %i.an = fpext fast <8 x bfloat> %i.am to <8 x float>
  %i.ao = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.05694.epil.init)
  %i.ap = bitcast <16 x i8> %i.ao to <8 x bfloat>
  %i.aq = fpext fast <8 x bfloat> %i.ap to <8 x float>
  %i.ar = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.an, <8 x float> nofpclass(nan inf) %i.aq, <8 x float> nofpclass(nan inf) %.08893.epil.init)
  %i.as = getelementptr inbounds nuw i8, ptr %.05395.epil.init, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.05694.epil.init, i64 16
  br label %.preheader92

.preheader92:                                     ; preds = %.lr.ph.epil.preheader, %.preheader92.loopexit.unr-lcssa, %._crit_edge129
  %.088.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge129 ], [ %i.bl, %.preheader92.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.epil.preheader ] ; 2 uses
  %.056.lcssa = phi ptr [ %i.ak, %._crit_edge129 ], [ %i.bn, %.preheader92.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.epil.preheader ] ; 2 uses
  %.053.lcssa = phi ptr [ %i.w, %._crit_edge129 ], [ %i.bm, %.preheader92.loopexit.unr-lcssa ], [ %i.as, %.lr.ph.epil.preheader ] ; 2 uses
  %.052.lcssa = phi i32 [ 0, %._crit_edge129 ], [ %i.ab, %.preheader92.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.epil.preheader ] ; 3 uses
  %i.au = or disjoint i32 %.052.lcssa, 3
  %i.av = icmp slt i32 %i.au, %i.x
  br i1 %i.av, label %.lr.ph105, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05395 = phi ptr [ %i.bm, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 3 uses
  %.05694 = phi ptr [ %i.bn, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 3 uses
  %.08893 = phi <8 x float> [ %i.bl, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.aw = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.05395)
  %i.ax = bitcast <16 x i8> %i.aw to <8 x bfloat>
  %i.ay = fpext fast <8 x bfloat> %i.ax to <8 x float>
  %i.az = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.05694)
  %i.ba = bitcast <16 x i8> %i.az to <8 x bfloat>
  %i.bb = fpext fast <8 x bfloat> %i.ba to <8 x float>
  %i.bc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ay, <8 x float> nofpclass(nan inf) %i.bb, <8 x float> nofpclass(nan inf) %.08893)
  %i.bd = getelementptr inbounds nuw i8, ptr %.05395, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.05694, i64 16
  %i.bf = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.bd)
  %i.bg = bitcast <16 x i8> %i.bf to <8 x bfloat>
  %i.bh = fpext fast <8 x bfloat> %i.bg to <8 x float>
  %i.bi = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.be)
  %i.bj = bitcast <16 x i8> %i.bi to <8 x bfloat>
  %i.bk = fpext fast <8 x bfloat> %i.bj to <8 x float>
  %i.bl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.bc) ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05395, i64 32 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.05694, i64 32 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader92.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !52

.preheader:                                       ; preds = %.lr.ph105, %.preheader92
  %.087.lcssa = phi <4 x float> [ zeroinitializer, %.preheader92 ], [ %i.eo, %.lr.ph105 ]
  %.157.lcssa = phi ptr [ %.056.lcssa, %.preheader92 ], [ %i.eq, %.lr.ph105 ] ; 5 uses
  %.154.lcssa = phi ptr [ %.053.lcssa, %.preheader92 ], [ %i.ep, %.lr.ph105 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.052.lcssa, %.preheader92 ], [ %i.er, %.lr.ph105 ] ; 5 uses
  %i.bo = icmp slt i32 %.1.lcssa, %i.x
  br i1 %i.bo, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bp = xor i32 %.1.lcssa, -1
  %i.bq = add i32 %i.x, %i.bp                     ; 3 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nuw nsw i64 %i.br, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bq, 7
  br i1 %min.iters.check, label %.lr.ph114.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check152 = icmp ult i32 %i.bq, 63
  br i1 %min.iters.check152, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bt = and i64 %i.bs, 56
  %n.vec = and i64 %i.bs, 8589934528              ; 5 uses
  %i.bu = trunc i64 %n.vec to i32
  %i.bv = add i32 %.1.lcssa, %i.bu
  %i.bw = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.bx = getelementptr i8, ptr %.154.lcssa, i64 %i.bw
  %i.by = getelementptr i8, ptr %.157.lcssa, i64 %i.bw
  %i.bz = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.059, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ %i.bz, %vector.ph ], [ %i.dj, %vector.body ]
  %vec.phi153 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi154 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi155 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %i.ca = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.154.lcssa, i64 %i.ca ; 4 uses
  %next.gep156 = getelementptr i8, ptr %.157.lcssa, i64 %i.ca ; 4 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 32
  %i.cc = getelementptr i8, ptr %next.gep, i64 64
  %i.cd = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !26
  %wide.load157 = load <16 x i16>, ptr %i.cb, align 2, !tbaa !26
  %wide.load158 = load <16 x i16>, ptr %i.cc, align 2, !tbaa !26
  %wide.load159 = load <16 x i16>, ptr %i.cd, align 2, !tbaa !26
  %i.ce = zext <16 x i16> %wide.load to <16 x i32>
  %i.cf = zext <16 x i16> %wide.load157 to <16 x i32>
  %i.cg = zext <16 x i16> %wide.load158 to <16 x i32>
  %i.ch = zext <16 x i16> %wide.load159 to <16 x i32>
  %i.ci = shl nuw <16 x i32> %i.ce, splat (i32 16)
  %i.cj = shl nuw <16 x i32> %i.cf, splat (i32 16)
  %i.ck = shl nuw <16 x i32> %i.cg, splat (i32 16)
  %i.cl = shl nuw <16 x i32> %i.ch, splat (i32 16)
  %i.cm = bitcast <16 x i32> %i.ci to <16 x float>
  %i.cn = bitcast <16 x i32> %i.cj to <16 x float>
  %i.co = bitcast <16 x i32> %i.ck to <16 x float>
  %i.cp = bitcast <16 x i32> %i.cl to <16 x float>
  %i.cq = getelementptr i8, ptr %next.gep156, i64 32
  %i.cr = getelementptr i8, ptr %next.gep156, i64 64
  %i.cs = getelementptr i8, ptr %next.gep156, i64 96
  %wide.load160 = load <16 x i16>, ptr %next.gep156, align 2, !tbaa !26
  %wide.load161 = load <16 x i16>, ptr %i.cq, align 2, !tbaa !26
  %wide.load162 = load <16 x i16>, ptr %i.cr, align 2, !tbaa !26
  %wide.load163 = load <16 x i16>, ptr %i.cs, align 2, !tbaa !26
  %i.ct = zext <16 x i16> %wide.load160 to <16 x i32>
  %i.cu = zext <16 x i16> %wide.load161 to <16 x i32>
  %i.cv = zext <16 x i16> %wide.load162 to <16 x i32>
  %i.cw = zext <16 x i16> %wide.load163 to <16 x i32>
  %i.cx = shl nuw <16 x i32> %i.ct, splat (i32 16)
  %i.cy = shl nuw <16 x i32> %i.cu, splat (i32 16)
  %i.cz = shl nuw <16 x i32> %i.cv, splat (i32 16)
  %i.da = shl nuw <16 x i32> %i.cw, splat (i32 16)
  %i.db = bitcast <16 x i32> %i.cx to <16 x float>
  %i.dc = bitcast <16 x i32> %i.cy to <16 x float>
  %i.dd = bitcast <16 x i32> %i.cz to <16 x float>
  %i.de = bitcast <16 x i32> %i.da to <16 x float>
  %i.df = fmul fast <16 x float> %i.db, %i.cm
  %i.dg = fmul fast <16 x float> %i.dc, %i.cn
  %i.dh = fmul fast <16 x float> %i.dd, %i.co
  %i.di = fmul fast <16 x float> %i.de, %i.cp
  %i.dj = fadd fast <16 x float> %i.df, %vec.phi  ; 2 uses
  %i.dk = fadd fast <16 x float> %i.dg, %vec.phi153 ; 2 uses
  %i.dl = fadd fast <16 x float> %i.dh, %vec.phi154 ; 2 uses
  %i.dm = fadd fast <16 x float> %i.di, %vec.phi155 ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.dk, %i.dj
  %bin.rdx164 = fadd fast <16 x float> %i.dl, %bin.rdx
  %bin.rdx165 = fadd fast <16 x float> %i.dm, %bin.rdx164
  %i.do = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx165) ; 3 uses
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph114.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.do, %vec.epilog.iter.check ], [ %.059, %vector.main.loop.iter.check ]
  %n.vec166 = and i64 %i.bs, 8589934584           ; 4 uses
  %i.dp = trunc i64 %n.vec166 to i32
  %i.dq = add i32 %.1.lcssa, %i.dp
  %i.dr = shl nuw nsw i64 %n.vec166, 1            ; 2 uses
  %i.ds = getelementptr i8, ptr %.154.lcssa, i64 %i.dr
  %i.dt = getelementptr i8, ptr %.157.lcssa, i64 %i.dr
  %i.du = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index167 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi168 = phi <8 x float> [ %i.du, %vec.epilog.ph ], [ %i.ed, %vec.epilog.vector.body ]
  %i.dv = shl i64 %index167, 1                    ; 2 uses
  %next.gep169 = getelementptr i8, ptr %.154.lcssa, i64 %i.dv
  %next.gep170 = getelementptr i8, ptr %.157.lcssa, i64 %i.dv
  %wide.load171 = load <8 x i16>, ptr %next.gep169, align 2, !tbaa !26
  %i.dw = zext <8 x i16> %wide.load171 to <8 x i32>
  %i.dx = shl nuw <8 x i32> %i.dw, splat (i32 16)
  %i.dy = bitcast <8 x i32> %i.dx to <8 x float>
  %wide.load172 = load <8 x i16>, ptr %next.gep170, align 2, !tbaa !26
  %i.dz = zext <8 x i16> %wide.load172 to <8 x i32>
  %i.ea = shl nuw <8 x i32> %i.dz, splat (i32 16)
  %i.eb = bitcast <8 x i32> %i.ea to <8 x float>
  %i.ec = fmul fast <8 x float> %i.eb, %i.dy
  %i.ed = fadd fast <8 x float> %i.ec, %vec.phi168 ; 2 uses
  %index.next173 = add nuw i64 %index167, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ef = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ed) ; 2 uses
  %cmp.n174 = icmp eq i64 %i.bs, %n.vec166
  br i1 %cmp.n174, label %._crit_edge, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2113.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  %.255112.ph = phi ptr [ %.154.lcssa, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  %.258111.ph = phi ptr [ %.157.lcssa, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.dt, %vec.epilog.middle.block ]
  %.160110.ph = phi float [ %.059, %iter.check ], [ %i.do, %vec.epilog.iter.check ], [ %i.ef, %vec.epilog.middle.block ]
  br label %.lr.ph114

.lr.ph105:                                        ; preds = %.preheader92, %.lr.ph105
  %.1104 = phi i32 [ %i.er, %.lr.ph105 ], [ %.052.lcssa, %.preheader92 ]
  %.154103 = phi ptr [ %i.ep, %.lr.ph105 ], [ %.053.lcssa, %.preheader92 ] ; 2 uses
  %.157102 = phi ptr [ %i.eq, %.lr.ph105 ], [ %.056.lcssa, %.preheader92 ] ; 2 uses
  %.087101 = phi <4 x float> [ %i.eo, %.lr.ph105 ], [ zeroinitializer, %.preheader92 ]
  %i.eg = load i64, ptr %.154103, align 1, !tbaa !23
  %i.eh = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %i.ei = bitcast <2 x i64> %i.eh to <8 x i16>
  %11 = shufflevector <8 x i16> %i.ei, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ej = bitcast <8 x i16> %11 to <4 x float>
  %i.ek = load i64, ptr %.157102, align 1, !tbaa !23
  %i.el = insertelement <2 x i64> poison, i64 %i.ek, i64 0
  %i.em = bitcast <2 x i64> %i.el to <8 x i16>
  %12 = shufflevector <8 x i16> %i.em, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.en = bitcast <8 x i16> %12 to <4 x float>
  %i.eo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ej, <4 x float> nofpclass(nan inf) %i.en, <4 x float> nofpclass(nan inf) %.087101) ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.154103, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.157102, i64 8 ; 2 uses
  %i.er = add nuw nsw i32 %.1104, 4               ; 3 uses
  %i.es = or disjoint i32 %i.er, 3
  %i.et = icmp slt i32 %i.es, %i.x
  br i1 %i.et, label %.lr.ph105, label %.preheader, !llvm.loop !55

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph114
  %.2113 = phi i32 [ %i.fg, %.lr.ph114 ], [ %.2113.ph, %.lr.ph114.preheader ]
  %.255112 = phi ptr [ %i.fe, %.lr.ph114 ], [ %.255112.ph, %.lr.ph114.preheader ] ; 2 uses
  %.258111 = phi ptr [ %i.ff, %.lr.ph114 ], [ %.258111.ph, %.lr.ph114.preheader ] ; 2 uses
  %.160110 = phi float [ %i.fd, %.lr.ph114 ], [ %.160110.ph, %.lr.ph114.preheader ]
  %i.eu = load i16, ptr %.255112, align 2, !tbaa !26
  %i.ev = zext i16 %i.eu to i32
  %i.ew = shl nuw i32 %i.ev, 16
  %i.ex = bitcast i32 %i.ew to float
  %i.ey = load i16, ptr %.258111, align 2, !tbaa !26
  %i.ez = zext i16 %i.ey to i32
  %i.fa = shl nuw i32 %i.ez, 16
  %i.fb = bitcast i32 %i.fa to float
  %i.fc = fmul fast float %i.fb, %i.ex
  %i.fd = fadd fast float %i.fc, %.160110         ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.255112, i64 2
  %i.ff = getelementptr inbounds nuw i8, ptr %.258111, i64 2
  %i.fg = add nuw nsw i32 %.2113, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fg, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph114, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph114, %middle.block, %vec.epilog.middle.block, %.preheader
  %.160.lcssa = phi float [ %.059, %.preheader ], [ %i.ef, %vec.epilog.middle.block ], [ %i.do, %middle.block ], [ %i.fd, %.lr.ph114 ]
  %i.fh = shufflevector <8 x float> %.088.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fi = shufflevector <8 x float> %.088.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fj = fadd fast <4 x float> %i.fi, %i.fh
  %i.fk = fadd fast <4 x float> %i.fj, %.087.lcssa
  %i.fl = call fast float @llvm.vector.reduce.fadd.v4f32(float %.160.lcssa, <4 x float> %i.fk) ; 13 uses
  switch i32 %i.z, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.fm = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.fl, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %._crit_edge
  %i.fn = load ptr, ptr %9, align 8, !tbaa !17
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !29
  %i.fp = fcmp fast ogt float %i.fl, 0.000000e+00
  %i.fq = select fast i1 %i.fp, float 1.000000e+00, float %i.fo
  %i.fr = fmul fast float %i.fq, %i.fl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %._crit_edge
  %i.fs = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !29
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !29
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fl, float %i.ft)
  %spec.select91 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select, float %i.fv)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %._crit_edge
  %.sroa.speculated78 = call nnan ninf nsz float @llvm.minnum.f32(float %i.fl, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated78, float f0xC2B0C0A5)
  %i.fw = fneg fast float %.sroa.speculated
  %i.fx = call fast float @llvm.exp.f32(float %i.fw)
  %i.fy = fadd fast float %i.fx, 1.000000e+00
  %i.fz = fdiv fast float 1.000000e+00, %i.fy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %._crit_edge
  %i.ga = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fl)
  %i.gb = fadd fast float %i.ga, 1.000000e+00
  %i.gc = call fast float @llvm.log.f32(float %i.gb)
  %i.gd = call fast float @llvm.tanh.f32(float %i.gc)
  %i.ge = fmul fast float %i.gd, %i.fl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %._crit_edge
  %i.gf = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !29 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !29 ; 2 uses
  %i.gj = fneg fast float %i.gi
  %i.gk = fdiv fast float %i.gj, %i.gg            ; 2 uses
  %i.gl = fcmp fast olt float %i.fl, %i.gk
  br i1 %i.gl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gm = fdiv fast float 1.000000e+00, %i.gg
  %i.gn = fadd fast float %i.gk, %i.gm
  %i.go = fcmp fast ogt float %i.fl, %i.gn
  br i1 %i.go, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gp = fmul fast float %i.gg, %i.fl
  %i.gq = fadd fast float %i.gp, %i.gi
  %i.gr = fmul fast float %i.gq, %i.fl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.g, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %._crit_edge, %bb.j
  %.190 = phi nsz float [ %i.fl, %._crit_edge ], [ %i.fm, %bb.e ], [ %i.fr, %bb.f ], [ 0.000000e+00, %bb.j ], [ %spec.select91, %bb.g ], [ %i.fz, %bb.h ], [ %i.ge, %bb.i ], [ %i.gr, %bb.l ], [ %i.fl, %bb.k ]
  %i.gs = bitcast float %.190 to i32
  %i.gt = lshr i32 %i.gs, 16
  %i.gu = trunc nuw i32 %i.gt to i16
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %.pre
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !26
  %i.gw = add nuw i32 %.0116, 1
  %exitcond128.not = icmp eq i32 %.0116, %i.l
  br i1 %exitcond128.not, label %._crit_edge119, label %bb.c

._crit_edge119:                                   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge119, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.hadd.ps.256(<8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #10
end_hunk_2
begin_hunk_3_@_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.evp = shufflevector <16 x float> %i.evh, <16 x float> %i.evl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.evq = shufflevector <16 x float> %i.evi, <16 x float> %i.evm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.evr = shufflevector <16 x float> %i.evj, <16 x float> %i.evn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.evs = shufflevector <16 x float> %i.evk, <16 x float> %i.evo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.evt = shufflevector <16 x float> %i.evh, <16 x float> %i.evl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.evu = shufflevector <16 x float> %i.evi, <16 x float> %i.evm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.evv = shufflevector <16 x float> %i.evj, <16 x float> %i.evn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.evw = shufflevector <16 x float> %i.evk, <16 x float> %i.evo, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.evx = shufflevector <16 x float> %i.evp, <16 x float> %i.evq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.evy = shufflevector <16 x float> %i.evr, <16 x float> %i.evs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.evz = shufflevector <16 x float> %i.evt, <16 x float> %i.evu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ewa = shufflevector <16 x float> %i.evv, <16 x float> %i.evw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ewb = shufflevector <16 x float> %i.evp, <16 x float> %i.evq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ewc = shufflevector <16 x float> %i.evr, <16 x float> %i.evs, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ewd = shufflevector <16 x float> %i.evt, <16 x float> %i.evu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ewe = shufflevector <16 x float> %i.evv, <16 x float> %i.evw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ewf = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.evx)
  store <16 x bfloat> %i.ewf, ptr %.07779187, align 1, !tbaa !23
  %i.ewg = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.evy)
  %i.ewh = getelementptr inbounds nuw i8, ptr %.07779187, i64 32
  store <16 x bfloat> %i.ewg, ptr %i.ewh, align 1, !tbaa !23
  %i.ewi = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.evz)
  %i.ewj = getelementptr inbounds nuw i8, ptr %.07779187, i64 64
  store <16 x bfloat> %i.ewi, ptr %i.ewj, align 1, !tbaa !23
  %i.ewk = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ewa)
  %i.ewl = getelementptr inbounds nuw i8, ptr %.07779187, i64 96
  store <16 x bfloat> %i.ewk, ptr %i.ewl, align 1, !tbaa !23
  %i.ewm = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ewb)
  %i.ewn = getelementptr inbounds nuw i8, ptr %.07779187, i64 128
  store <16 x bfloat> %i.ewm, ptr %i.ewn, align 1, !tbaa !23
  %i.ewo = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ewc)
  %i.ewp = getelementptr inbounds nuw i8, ptr %.07779187, i64 160
  store <16 x bfloat> %i.ewo, ptr %i.ewp, align 1, !tbaa !23
  %i.ewq = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ewd)
  %i.ewr = getelementptr inbounds nuw i8, ptr %.07779187, i64 192
  store <16 x bfloat> %i.ewq, ptr %i.ewr, align 1, !tbaa !23
  %i.ews = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ewe)
  %i.ewt = getelementptr inbounds nuw i8, ptr %.07779187, i64 224
  store <16 x bfloat> %i.ews, ptr %i.ewt, align 1, !tbaa !23
  %i.ewu = getelementptr inbounds nuw i8, ptr %.07779187, i64 256
  %indvars.iv.next9612 = add nuw nsw i64 %indvars.iv9611, 1 ; 2 uses
  %i.ewv = load i32, ptr %6, align 4, !tbaa !9
  %i.eww = load i32, ptr %4, align 4, !tbaa !9
  %i.ewx = sdiv i32 %i.ewv, %i.eww
  %i.ewy = sext i32 %i.ewx to i64
  %i.ewz = icmp slt i64 %indvars.iv.next9612, %i.ewy
  br i1 %i.ewz, label %.lr.ph9190, label %.thread7397.loopexit, !llvm.loop !65

.thread7397.loopexit:                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit891
  %.pr8995.pr.pre = load i32, ptr %3, align 4, !tbaa !9 ; 7 uses
  br label %.thread7397

.thread7397:                                      ; preds = %.thread7397.loopexit, %thread-pre-split7395
  %.pr8999.pr9808 = phi i32 [ %.pr8995.pr.pre, %.thread7397.loopexit ], [ %.pr8999.pr9809, %thread-pre-split7395 ] ; 2 uses
  %.pr89919770 = phi i32 [ %.pr8995.pr.pre, %.thread7397.loopexit ], [ %.pr89919771, %thread-pre-split7395 ] ; 2 uses
  %.pr9011.pr9752 = phi i32 [ %.pr8995.pr.pre, %.thread7397.loopexit ], [ %.pr9011.pr9753, %thread-pre-split7395 ] ; 2 uses
  %.pr87019722 = phi i32 [ %.pr8995.pr.pre, %.thread7397.loopexit ], [ %.pr87019723, %thread-pre-split7395 ] ; 2 uses
  %.pr89969704 = phi i32 [ %.pr8995.pr.pre, %.thread7397.loopexit ], [ %.pr89969705, %thread-pre-split7395 ] ; 2 uses
  %.pr82999687 = phi i32 [ %.pr8995.pr.pre, %.thread7397.loopexit ], [ %.pr82999688, %thread-pre-split7395 ] ; 2 uses
  %.pr78979676 = phi i32 [ %.pr8995.pr.pre, %.thread7397.loopexit ], [ %.pr78979677, %thread-pre-split7395 ]
  %i.exa = icmp eq i32 %.pr78979676, 16
  br i1 %i.exa, label %thread-pre-split9005, label %thread-pre-split8298

thread-pre-split9005:                             ; preds = %bb.e, %.thread7397
  %.pr829996879962 = phi i32 [ %.pr82999687, %.thread7397 ], [ %.pr82999693, %bb.e ]
  %.pr899697049961 = phi i32 [ %.pr89969704, %.thread7397 ], [ %.pr89969710, %bb.e ]
  %.pr870197229960 = phi i32 [ %.pr87019722, %.thread7397 ], [ %.pr87019728, %bb.e ]
  %.pr9011.pr97529959 = phi i32 [ %.pr9011.pr9752, %.thread7397 ], [ %.pr9011.pr9758, %bb.e ]
  %.pr899197709958 = phi i32 [ %.pr89919770, %.thread7397 ], [ %.pr89919776, %bb.e ]
  %.pr8999.pr98089957 = phi i32 [ %.pr8999.pr9808, %.thread7397 ], [ %.pr8999.pr9814, %bb.e ]
  %.pr9006 = load i32, ptr %4, align 4, !tbaa !9
  br label %.thread7397.thread9003

.thread7397.thread9003:                           ; preds = %bb.d, %thread-pre-split9005
  %.pr8999.pr9807 = phi i32 [ %.pr8999.pr98089957, %thread-pre-split9005 ], [ %.pr8999.pr9814, %bb.d ] ; 2 uses
  %.pr89919769 = phi i32 [ %.pr899197709958, %thread-pre-split9005 ], [ %.pr89919776, %bb.d ] ; 2 uses
  %.pr9011.pr9751 = phi i32 [ %.pr9011.pr97529959, %thread-pre-split9005 ], [ %.pr9011.pr9758, %bb.d ] ; 2 uses
  %.pr87019721 = phi i32 [ %.pr870197229960, %thread-pre-split9005 ], [ %.pr87019728, %bb.d ] ; 2 uses
  %.pr89969703 = phi i32 [ %.pr899697049961, %thread-pre-split9005 ], [ %.pr89969710, %bb.d ] ; 2 uses
  %.pr82999686 = phi i32 [ %.pr829996879962, %thread-pre-split9005 ], [ %.pr82999693, %bb.d ] ; 2 uses
  %i.exb = phi i32 [ %.pr9006, %thread-pre-split9005 ], [ %i.u, %bb.d ] ; 2 uses
  %i.exc = icmp eq i32 %i.exb, 1
  br i1 %i.exc, label %bb.x, label %.thread7799

bb.x:                                             ; preds = %.thread7397.thread9003
  %i.exd = load i32, ptr %6, align 4, !tbaa !9
  %i.exe = icmp sgt i32 %i.exd, 0
  br i1 %i.exe, label %.lr.ph9218.preheader, label %thread-pre-split7801

.lr.ph9218.preheader:                             ; preds = %bb.x
  %i.exf = load ptr, ptr %5, align 8, !tbaa !17
  %i.exg = load i32, ptr %i.l, align 4, !tbaa !15
  %i.exh = sext i32 %i.exg to i64
  %i.exi = mul nsw i64 %indvars.iv9663, %i.exh
  %i.exj = load i64, ptr %i.m, align 8, !tbaa !24
  %i.exk = mul i64 %i.exi, %i.exj
  %i.exl = getelementptr inbounds nuw i8, ptr %i.exf, i64 %i.exk
  br label %.lr.ph9218

.lr.ph9218:                                       ; preds = %.lr.ph9218.preheader, %bb.ad
  %indvars.iv9615 = phi i64 [ 0, %.lr.ph9218.preheader ], [ %indvars.iv.next9616, %bb.ad ] ; 3 uses
  %.07729215 = phi ptr [ %i.exl, %.lr.ph9218.preheader ], [ %i.fgj, %bb.ad ] ; 2 uses
  %i.exm = load ptr, ptr %7, align 8, !tbaa !17
  %i.exn = load i32, ptr %i.n, align 4, !tbaa !15
  %i.exo = sext i32 %i.exn to i64
  %i.exp = mul nsw i64 %indvars.iv9615, %i.exo
  %i.exq = load i64, ptr %i.o, align 8, !tbaa !24
  %i.exr = mul i64 %i.exp, %i.exq
  %i.exs = getelementptr inbounds nuw i8, ptr %i.exm, i64 %i.exr ; 2 uses
  %i.ext = load ptr, ptr %8, align 8, !tbaa !17
  %i.exu = load i32, ptr %i.p, align 4, !tbaa !15
  %i.exv = sext i32 %i.exu to i64
  %i.exw = mul nsw i64 %indvars.iv9663, %i.exv
  %i.exx = load i64, ptr %i.q, align 8, !tbaa !24
  %i.exy = mul i64 %i.exw, %i.exx
  %i.exz = getelementptr inbounds nuw i8, ptr %i.ext, i64 %i.exy ; 2 uses
  %i.eya = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not815 = icmp eq ptr %i.eya, null
  br i1 %.not815, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph9218
  %i.eyb = getelementptr inbounds nuw [4 x i8], ptr %i.eya, i64 %indvars.iv9615
  %i.eyc = load float, ptr %i.eyb, align 4, !tbaa !29
  %i.eyd = insertelement <16 x float> poison, float %i.eyc, i64 0
  %i.eye = shufflevector <16 x float> %i.eyd, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph9218
  %.05629 = phi nsz <16 x float> [ zeroinitializer, %.lr.ph9218 ], [ %i.eye, %bb.y ] ; 2 uses
  %i.eyf = load i32, ptr %10, align 4, !tbaa !9   ; 7 uses
  %i.eyg = icmp sgt i32 %i.eyf, 3
  br i1 %i.eyg, label %.lr.ph9199, label %.preheader9092

.preheader9092.loopexit:                          ; preds = %.lr.ph9199
  %i.eyh = and i32 %i.eyf, 2147483644
  %i.eyi = fadd fast <16 x float> %i.ezt, %i.ezs
  %i.eyj = fadd fast <16 x float> %i.eyi, %i.ezu
  br label %.preheader9092

.preheader9092:                                   ; preds = %.preheader9092.loopexit, %bb.z
  %.15630.lcssa = phi <16 x float> [ %.05629, %bb.z ], [ %i.ezr, %.preheader9092.loopexit ] ; 3 uses
  %.0769.lcssa = phi ptr [ %i.exs, %bb.z ], [ %i.ezw, %.preheader9092.loopexit ] ; 3 uses
  %.0767.lcssa = phi ptr [ %i.exz, %bb.z ], [ %i.ezv, %.preheader9092.loopexit ] ; 3 uses
  %.0765.lcssa = phi <16 x float> [ zeroinitializer, %bb.z ], [ %i.eyj, %.preheader9092.loopexit ]
  %.0762.lcssa = phi i32 [ 0, %bb.z ], [ %i.eyh, %.preheader9092.loopexit ] ; 4 uses
  %i.eyk = icmp slt i32 %.0762.lcssa, %i.eyf
  br i1 %i.eyk, label %.lr.ph9212.preheader, label %._crit_edge9213

.lr.ph9212.preheader:                             ; preds = %.preheader9092
  %.neg10340 = or disjoint i32 %.0762.lcssa, 1
  %xtraiter10318 = and i32 %i.eyf, 1
  %lcmp.mod10319.not = icmp eq i32 %xtraiter10318, 0
  br i1 %lcmp.mod10319.not, label %.lr.ph9212.prol.loopexit, label %.lr.ph9212.prol

.lr.ph9212.prol:                                  ; preds = %.lr.ph9212.preheader
  %i.eyl = load <16 x bfloat>, ptr %.0767.lcssa, align 1, !tbaa !23
  %i.eym = fpext fast <16 x bfloat> %i.eyl to <16 x float>
  %i.eyn = load i16, ptr %.0769.lcssa, align 2, !tbaa !26
  %i.eyo = zext i16 %i.eyn to i32
  %i.eyp = shl nuw i32 %i.eyo, 16
  %i.eyq = insertelement <16 x i32> poison, i32 %i.eyp, i64 0
  %i.eyr = bitcast <16 x i32> %i.eyq to <16 x float>
  %i.eys = shufflevector <16 x float> %i.eyr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.eyt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eym, <16 x float> nofpclass(nan inf) %i.eys, <16 x float> nofpclass(nan inf) %.15630.lcssa) ; 2 uses
  %i.eyu = getelementptr inbounds nuw i8, ptr %.0767.lcssa, i64 32
  %i.eyv = getelementptr inbounds nuw i8, ptr %.0769.lcssa, i64 2
  %i.eyw = or disjoint i32 %.0762.lcssa, 1
  br label %.lr.ph9212.prol.loopexit

.lr.ph9212.prol.loopexit:                         ; preds = %.lr.ph9212.prol, %.lr.ph9212.preheader
  %.lcssa10240.unr = phi <16 x float> [ poison, %.lr.ph9212.preheader ], [ %i.eyt, %.lr.ph9212.prol ]
  %.17639211.unr = phi i32 [ %.0762.lcssa, %.lr.ph9212.preheader ], [ %i.eyw, %.lr.ph9212.prol ]
  %.17689210.unr = phi ptr [ %.0767.lcssa, %.lr.ph9212.preheader ], [ %i.eyu, %.lr.ph9212.prol ]
  %.17709209.unr = phi ptr [ %.0769.lcssa, %.lr.ph9212.preheader ], [ %i.eyv, %.lr.ph9212.prol ]
  %.256319208.unr = phi <16 x float> [ %.15630.lcssa, %.lr.ph9212.preheader ], [ %i.eyt, %.lr.ph9212.prol ]
  %i.eyx = icmp eq i32 %i.eyf, %.neg10340
  br i1 %i.eyx, label %._crit_edge9213, label %.lr.ph9212

.lr.ph9199:                                       ; preds = %bb.z, %.lr.ph9199
  %.07629197 = phi i32 [ %i.ezx, %.lr.ph9199 ], [ 0, %bb.z ]
  %.07649196 = phi <16 x float> [ %i.ezu, %.lr.ph9199 ], [ zeroinitializer, %bb.z ]
  %.07659195 = phi <16 x float> [ %i.ezt, %.lr.ph9199 ], [ zeroinitializer, %bb.z ]
  %.07669194 = phi <16 x float> [ %i.ezs, %.lr.ph9199 ], [ zeroinitializer, %bb.z ]
  %.07679193 = phi ptr [ %i.ezv, %.lr.ph9199 ], [ %i.exz, %bb.z ] ; 5 uses
  %.07699192 = phi ptr [ %i.ezw, %.lr.ph9199 ], [ %i.exs, %bb.z ] ; 2 uses
  %.156309191 = phi <16 x float> [ %i.ezr, %.lr.ph9199 ], [ %.05629, %bb.z ]
  %i.eyy = load <16 x bfloat>, ptr %.07679193, align 1, !tbaa !23
  %i.eyz = fpext fast <16 x bfloat> %i.eyy to <16 x float>
  %i.eza = getelementptr inbounds nuw i8, ptr %.07679193, i64 32
  %i.ezb = load <16 x bfloat>, ptr %i.eza, align 1, !tbaa !23
  %i.ezc = fpext fast <16 x bfloat> %i.ezb to <16 x float>
  %i.ezd = getelementptr inbounds nuw i8, ptr %.07679193, i64 64
  %i.eze = load <16 x bfloat>, ptr %i.ezd, align 1, !tbaa !23
  %i.ezf = fpext fast <16 x bfloat> %i.eze to <16 x float>
  %i.ezg = getelementptr inbounds nuw i8, ptr %.07679193, i64 96
  %i.ezh = load <16 x bfloat>, ptr %i.ezg, align 1, !tbaa !23
  %i.ezi = fpext fast <16 x bfloat> %i.ezh to <16 x float>
  %i.ezj = load i64, ptr %.07699192, align 1, !tbaa !23
  %i.ezk = insertelement <2 x i64> poison, i64 %i.ezj, i64 0
  %i.ezl = bitcast <2 x i64> %i.ezk to <8 x i16>
  %13 = shufflevector <8 x i16> %i.ezl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ezm = bitcast <8 x i16> %13 to <4 x float>   ; 4 uses
  %i.ezn = shufflevector <4 x float> %i.ezm, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ezo = shufflevector <4 x float> %i.ezm, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ezp = shufflevector <4 x float> %i.ezm, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ezq = shufflevector <4 x float> %i.ezm, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ezr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eyz, <16 x float> nofpclass(nan inf) %i.ezn, <16 x float> nofpclass(nan inf) %.156309191) ; 2 uses
  %i.ezs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ezc, <16 x float> nofpclass(nan inf) %i.ezo, <16 x float> nofpclass(nan inf) %.07669194) ; 2 uses
  %i.ezt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ezf, <16 x float> nofpclass(nan inf) %i.ezp, <16 x float> nofpclass(nan inf) %.07659195) ; 2 uses
  %i.ezu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ezi, <16 x float> nofpclass(nan inf) %i.ezq, <16 x float> nofpclass(nan inf) %.07649196) ; 2 uses
  %i.ezv = getelementptr inbounds nuw i8, ptr %.07679193, i64 128 ; 2 uses
  %i.ezw = getelementptr inbounds nuw i8, ptr %.07699192, i64 8 ; 2 uses
  %i.ezx = add nuw nsw i32 %.07629197, 4          ; 2 uses
  %i.ezy = or disjoint i32 %i.ezx, 3
  %i.ezz = icmp slt i32 %i.ezy, %i.eyf
  br i1 %i.ezz, label %.lr.ph9199, label %.preheader9092.loopexit, !llvm.loop !66

.lr.ph9212:                                       ; preds = %.lr.ph9212.prol.loopexit, %.lr.ph9212
  %.17639211 = phi i32 [ %i.faw, %.lr.ph9212 ], [ %.17639211.unr, %.lr.ph9212.prol.loopexit ]
  %.17689210 = phi ptr [ %i.fau, %.lr.ph9212 ], [ %.17689210.unr, %.lr.ph9212.prol.loopexit ] ; 3 uses
  %.17709209 = phi ptr [ %i.fav, %.lr.ph9212 ], [ %.17709209.unr, %.lr.ph9212.prol.loopexit ] ; 3 uses
  %.256319208 = phi <16 x float> [ %i.fat, %.lr.ph9212 ], [ %.256319208.unr, %.lr.ph9212.prol.loopexit ]
  %i.faa = load <16 x bfloat>, ptr %.17689210, align 1, !tbaa !23
  %i.fab = fpext fast <16 x bfloat> %i.faa to <16 x float>
  %i.fac = load i16, ptr %.17709209, align 2, !tbaa !26
  %i.fad = zext i16 %i.fac to i32
  %i.fae = shl nuw i32 %i.fad, 16
  %i.faf = insertelement <16 x i32> poison, i32 %i.fae, i64 0
  %i.fag = bitcast <16 x i32> %i.faf to <16 x float>
  %i.fah = shufflevector <16 x float> %i.fag, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fab, <16 x float> nofpclass(nan inf) %i.fah, <16 x float> nofpclass(nan inf) %.256319208)
  %i.faj = getelementptr inbounds nuw i8, ptr %.17689210, i64 32
  %i.fak = getelementptr inbounds nuw i8, ptr %.17709209, i64 2
  %i.fal = load <16 x bfloat>, ptr %i.faj, align 1, !tbaa !23
  %i.fam = fpext fast <16 x bfloat> %i.fal to <16 x float>
  %i.fan = load i16, ptr %i.fak, align 2, !tbaa !26
  %i.fao = zext i16 %i.fan to i32
  %i.fap = shl nuw i32 %i.fao, 16
  %i.faq = insertelement <16 x i32> poison, i32 %i.fap, i64 0
  %i.far = bitcast <16 x i32> %i.faq to <16 x float>
  %i.fas = shufflevector <16 x float> %i.far, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fat = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fam, <16 x float> nofpclass(nan inf) %i.fas, <16 x float> nofpclass(nan inf) %i.fai) ; 2 uses
  %i.fau = getelementptr inbounds nuw i8, ptr %.17689210, i64 64
  %i.fav = getelementptr inbounds nuw i8, ptr %.17709209, i64 4
  %i.faw = add nuw nsw i32 %.17639211, 2          ; 2 uses
  %exitcond9614.not.1 = icmp eq i32 %i.faw, %i.eyf
  br i1 %exitcond9614.not.1, label %._crit_edge9213, label %.lr.ph9212, !llvm.loop !67

._crit_edge9213:                                  ; preds = %.lr.ph9212.prol.loopexit, %.lr.ph9212, %.preheader9092
  %.25631.lcssa = phi <16 x float> [ %.15630.lcssa, %.preheader9092 ], [ %.lcssa10240.unr, %.lr.ph9212.prol.loopexit ], [ %i.fat, %.lr.ph9212 ]
  %i.fax = fadd fast <16 x float> %.0765.lcssa, %.25631.lcssa ; 10 uses
  %i.fay = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.fay, label %bb.ad [
    i32 1, label %bb.aa
    i32 2, label %.noexc878
    i32 3, label %bb.ab
    i32 4, label %.noexc879
    i32 5, label %.noexc880
    i32 6, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge9213
  %i.faz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fax, <16 x float> zeroinitializer, i32 4)
  br label %bb.ad

.noexc878:                                        ; preds = %._crit_edge9213
  %i.fba = load ptr, ptr %12, align 8, !tbaa !17
  %i.fbb = load float, ptr %i.fba, align 4, !tbaa !29
  %i.fbc = fcmp fast olt <16 x float> %i.fax, zeroinitializer
  %i.fbd = insertelement <16 x float> poison, float %i.fbb, i64 0
  %i.fbe = shufflevector <16 x float> %i.fbd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fbf = select fast <16 x i1> %i.fbc, <16 x float> %i.fbe, <16 x float> splat (float 1.000000e+00)
  %i.fbg = fmul fast <16 x float> %i.fbf, %i.fax
  br label %bb.ad

bb.ab:                                            ; preds = %._crit_edge9213
  %i.fbh = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.fbi = load float, ptr %i.fbh, align 4, !tbaa !29
  %i.fbj = insertelement <16 x float> poison, float %i.fbi, i64 0
  %i.fbk = shufflevector <16 x float> %i.fbj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fbl = getelementptr inbounds nuw i8, ptr %i.fbh, i64 4
  %i.fbm = load float, ptr %i.fbl, align 4, !tbaa !29
  %i.fbn = insertelement <16 x float> poison, float %i.fbm, i64 0
  %i.fbo = shufflevector <16 x float> %i.fbn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fbp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fax, <16 x float> nofpclass(nan inf) %i.fbk, i32 4)
  %i.fbq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fbp, <16 x float> nofpclass(nan inf) %i.fbo, i32 4)
  br label %bb.ad

.noexc879:                                        ; preds = %._crit_edge9213
  %i.fbr = fneg fast <16 x float> %i.fax
  %i.fbs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fbr, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fbt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fbs, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fbu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fbt, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fbv = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fbu, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fbw = fcmp fast ogt <16 x float> %i.fbv, %i.fbu
  %i.fbx = fadd fast <16 x float> %i.fbv, splat (float -1.000000e+00)
  %i.fby = select fast <16 x i1> %i.fbw, <16 x float> %i.fbx, <16 x float> %i.fbv ; 2 uses
  %i.fbz = fneg fast <16 x float> %i.fby          ; 2 uses
  %i.fca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fbz, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fbt)
  %i.fcb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fbz, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fca) ; 8 uses
  %i.fcc = fmul fast <16 x float> %i.fcb, %i.fcb
  %i.fcd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fcb, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.fce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fcd, <16 x float> nofpclass(nan inf) %i.fcb, <16 x float> splat (float f0x3C088908))
  %i.fcf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fce, <16 x float> nofpclass(nan inf) %i.fcb, <16 x float> splat (float f0x3D2AA9C1))
  %i.fcg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fcf, <16 x float> nofpclass(nan inf) %i.fcb, <16 x float> splat (float f0x3E2AAAAA))
  %i.fch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fcg, <16 x float> nofpclass(nan inf) %i.fcb, <16 x float> splat (float 5.000000e-01))
  %i.fci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fch, <16 x float> nofpclass(nan inf) %i.fcc, <16 x float> nofpclass(nan inf) %i.fcb)
  %i.fcj = fadd fast <16 x float> %i.fci, splat (float 1.000000e+00)
  %i.fck = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fby, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fcl = shl <16 x i32> %i.fck, splat (i32 23)
  %i.fcm = add <16 x i32> %i.fcl, splat (i32 1065353216)
  %i.fcn = bitcast <16 x i32> %i.fcm to <16 x float>
  %i.fco = fmul fast <16 x float> %i.fcj, %i.fcn
  %i.fcp = fadd fast <16 x float> %i.fco, splat (float 1.000000e+00)
  %i.fcq = fdiv fast <16 x float> splat (float 1.000000e+00), %i.fcp
  br label %bb.ad

.noexc880:                                        ; preds = %._crit_edge9213
  %i.fcr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fax, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fcs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fcr, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fcs, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fcu = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fct, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fcv = fcmp fast ogt <16 x float> %i.fcu, %i.fct
  %i.fcw = fadd fast <16 x float> %i.fcu, splat (float -1.000000e+00)
  %i.fcx = select fast <16 x i1> %i.fcv, <16 x float> %i.fcw, <16 x float> %i.fcu ; 2 uses
  %i.fcy = fneg fast <16 x float> %i.fcx          ; 2 uses
  %i.fcz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fcy, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fcs)
  %i.fda = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fcy, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fcz) ; 8 uses
  %i.fdb = fmul fast <16 x float> %i.fda, %i.fda
  %i.fdc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fda, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.fdd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fdc, <16 x float> nofpclass(nan inf) %i.fda, <16 x float> splat (float f0x3C088908))
  %i.fde = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fdd, <16 x float> nofpclass(nan inf) %i.fda, <16 x float> splat (float f0x3D2AA9C1))
  %i.fdf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fde, <16 x float> nofpclass(nan inf) %i.fda, <16 x float> splat (float f0x3E2AAAAA))
  %i.fdg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fdf, <16 x float> nofpclass(nan inf) %i.fda, <16 x float> splat (float 5.000000e-01))
  %i.fdh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fdg, <16 x float> nofpclass(nan inf) %i.fdb, <16 x float> nofpclass(nan inf) %i.fda)
  %i.fdi = fadd fast <16 x float> %i.fdh, splat (float 1.000000e+00)
  %i.fdj = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fcx, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fdk = shl <16 x i32> %i.fdj, splat (i32 23)
  %i.fdl = add <16 x i32> %i.fdk, splat (i32 1065353216)
  %i.fdm = bitcast <16 x i32> %i.fdl to <16 x float>
  %i.fdn = fmul fast <16 x float> %i.fdi, %i.fdm
  %i.fdo = fadd fast <16 x float> %i.fdn, splat (float 1.000000e+00) ; 2 uses
  %i.fdp = fcmp fast ole <16 x float> %i.fdo, zeroinitializer
  %i.fdq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fdo, <16 x float> splat (float f0x00800000), i32 4)
  %i.fdr = bitcast <16 x float> %i.fdq to <16 x i32> ; 2 uses
  %i.fds = lshr <16 x i32> %i.fdr, splat (i32 23)
  %i.fdt = and <16 x i32> %i.fdr, splat (i32 -2139095041)
  %i.fdu = or disjoint <16 x i32> %i.fdt, splat (i32 1056964608)
  %i.fdv = bitcast <16 x i32> %i.fdu to <16 x float> ; 3 uses
  %i.fdw = add nsw <16 x i32> %i.fds, splat (i32 -127)
  %i.fdx = sitofp fast <16 x i32> %i.fdw to <16 x float> ; 2 uses
  %i.fdy = fadd fast <16 x float> %i.fdx, splat (float 1.000000e+00)
  %i.fdz = fcmp fast olt <16 x float> %i.fdv, splat (float f0x3F3504F3) ; 2 uses
  %i.fea = fadd fast <16 x float> %i.fdv, splat (float -1.000000e+00)
  %i.feb = select fast <16 x i1> %i.fdz, <16 x float> %i.fdx, <16 x float> %i.fdy ; 2 uses
  %i.fec = select fast <16 x i1> %i.fdz, <16 x float> %i.fdv, <16 x float> zeroinitializer
  %i.fed = fadd fast <16 x float> %i.fea, %i.fec  ; 12 uses
  %i.fee = fmul fast <16 x float> %i.fed, %i.fed  ; 2 uses
  %i.fef = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fed, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.feg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fef, <16 x float> nofpclass(nan inf) %i.fed, <16 x float> splat (float f0x3DEF251A))
  %i.feh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.feg, <16 x float> nofpclass(nan inf) %i.fed, <16 x float> splat (float f0xBDFE5D4F))
  %i.fei = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.feh, <16 x float> nofpclass(nan inf) %i.fed, <16 x float> splat (float f0x3E11E9BF))
  %i.fej = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fei, <16 x float> nofpclass(nan inf) %i.fed, <16 x float> splat (float f0xBE2AAE50))
  %i.fek = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fej, <16 x float> nofpclass(nan inf) %i.fed, <16 x float> splat (float f0x3E4CCEAC))
  %i.fel = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fek, <16 x float> nofpclass(nan inf) %i.fed, <16 x float> splat (float f0xBE7FFFFC))
  %i.fem = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fel, <16 x float> nofpclass(nan inf) %i.fed, <16 x float> splat (float f0x3EAAAAAA))
  %i.fen = fmul fast <16 x float> %i.fee, %i.fed
  %i.feo = fmul fast <16 x float> %i.fen, %i.fem
  %i.fep = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.feb, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.feo)
  %i.feq = fneg fast <16 x float> %i.fee
  %i.fer = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.feq, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fep)
  %i.fes = fadd fast <16 x float> %i.fer, %i.fed
  %i.fet = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.feb, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fes)
  %.neg9057 = fmul fast <16 x float> %i.fet, splat (float -2.000000e+00)
  %i.feu = select fast <16 x i1> %i.fdp, <16 x float> splat (float +nan(0x3FFFFF)), <16 x float> %.neg9057
  %i.fev = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.feu, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.few = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fev, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fex = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.few, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fey = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fex, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fez = fcmp fast ogt <16 x float> %i.fey, %i.fex
  %i.ffa = fadd fast <16 x float> %i.fey, splat (float -1.000000e+00)
  %i.ffb = select fast <16 x i1> %i.fez, <16 x float> %i.ffa, <16 x float> %i.fey ; 2 uses
  %i.ffc = fneg fast <16 x float> %i.ffb          ; 2 uses
  %i.ffd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ffc, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.few)
  %i.ffe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ffc, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ffd) ; 8 uses
  %i.fff = fmul fast <16 x float> %i.ffe, %i.ffe
  %i.ffg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ffe, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ffh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ffg, <16 x float> nofpclass(nan inf) %i.ffe, <16 x float> splat (float f0x3C088908))
  %i.ffi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ffh, <16 x float> nofpclass(nan inf) %i.ffe, <16 x float> splat (float f0x3D2AA9C1))
  %i.ffj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ffi, <16 x float> nofpclass(nan inf) %i.ffe, <16 x float> splat (float f0x3E2AAAAA))
  %i.ffk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ffj, <16 x float> nofpclass(nan inf) %i.ffe, <16 x float> splat (float 5.000000e-01))
  %i.ffl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ffk, <16 x float> nofpclass(nan inf) %i.fff, <16 x float> nofpclass(nan inf) %i.ffe)
  %i.ffm = fadd fast <16 x float> %i.ffl, splat (float 1.000000e+00)
  %i.ffn = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ffb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ffo = shl <16 x i32> %i.ffn, splat (i32 23)
  %i.ffp = add <16 x i32> %i.ffo, splat (i32 1065353216)
  %i.ffq = bitcast <16 x i32> %i.ffp to <16 x float>
  %i.ffr = fmul fast <16 x float> %i.ffm, %i.ffq
  %i.ffs = fadd fast <16 x float> %i.ffr, splat (float 1.000000e+00)
  %i.fft = fdiv fast <16 x float> splat (float 1.000000e+00), %i.ffs
  %i.ffu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fft, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.ffv = fmul fast <16 x float> %i.ffu, %i.fax
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge9213
  %i.ffw = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.ffx = load float, ptr %i.ffw, align 4, !tbaa !29
  %i.ffy = insertelement <16 x float> poison, float %i.ffx, i64 0
  %i.ffz = shufflevector <16 x float> %i.ffy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fga = getelementptr inbounds nuw i8, ptr %i.ffw, i64 4
  %i.fgb = load float, ptr %i.fga, align 4, !tbaa !29
  %i.fgc = insertelement <16 x float> poison, float %i.fgb, i64 0
  %i.fgd = shufflevector <16 x float> %i.fgc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fge = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fax, <16 x float> nofpclass(nan inf) %i.ffz, <16 x float> nofpclass(nan inf) %i.fgd)
  %i.fgf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fge, <16 x float> zeroinitializer, i32 4)
  %i.fgg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fgf, <16 x float> splat (float 1.000000e+00), i32 4)
  %i.fgh = fmul fast <16 x float> %i.fgg, %i.fax
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.noexc880, %.noexc879, %bb.ab, %.noexc878, %bb.aa, %._crit_edge9213
  %.0.i877 = phi nsz <16 x float> [ %i.fgh, %bb.ac ], [ %i.faz, %bb.aa ], [ %i.fbg, %.noexc878 ], [ %i.fbq, %bb.ab ], [ %i.fcq, %.noexc879 ], [ %i.ffv, %.noexc880 ], [ %i.fax, %._crit_edge9213 ]
  %i.fgi = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %.0.i877)
  store <16 x bfloat> %i.fgi, ptr %.07729215, align 1, !tbaa !23
  %i.fgj = getelementptr inbounds nuw i8, ptr %.07729215, i64 32
  %indvars.iv.next9616 = add nuw nsw i64 %indvars.iv9615, 1 ; 2 uses
  %i.fgk = load i32, ptr %6, align 4, !tbaa !9
  %i.fgl = sext i32 %i.fgk to i64
  %i.fgm = icmp slt i64 %indvars.iv.next9616, %i.fgl
  br i1 %i.fgm, label %.lr.ph9218, label %._crit_edge9219, !llvm.loop !68

._crit_edge9219:                                  ; preds = %bb.ad
  %.pr7798.pre = load i32, ptr %3, align 4, !tbaa !9 ; 7 uses
  %i.fgn = icmp eq i32 %.pr7798.pre, 16
  br i1 %i.fgn, label %thread-pre-split7801, label %thread-pre-split8298

thread-pre-split7801:                             ; preds = %bb.x, %._crit_edge9219
  %.pr829996979915 = phi i32 [ 16, %._crit_edge9219 ], [ %.pr82999686, %bb.x ]
  %.pr899697029914 = phi i32 [ 16, %._crit_edge9219 ], [ %.pr89969703, %bb.x ]
  %.pr870197209913 = phi i32 [ 16, %._crit_edge9219 ], [ %.pr87019721, %bb.x ]
  %.pr9011.pr97509912 = phi i32 [ 16, %._crit_edge9219 ], [ %.pr9011.pr9751, %bb.x ]
  %.pr899197689911 = phi i32 [ 16, %._crit_edge9219 ], [ %.pr89919769, %bb.x ]
  %.pr8999.pr98069910 = phi i32 [ 16, %._crit_edge9219 ], [ %.pr8999.pr9807, %bb.x ]
  %.pr7802 = load i32, ptr %4, align 4, !tbaa !9
  br label %.thread7799

.thread7799:                                      ; preds = %.thread7397.thread9003, %thread-pre-split7801
  %.pr8999.pr9805 = phi i32 [ %.pr8999.pr98069910, %thread-pre-split7801 ], [ %.pr8999.pr9807, %.thread7397.thread9003 ] ; 2 uses
  %.pr89919767 = phi i32 [ %.pr899197689911, %thread-pre-split7801 ], [ %.pr89919769, %.thread7397.thread9003 ] ; 2 uses
  %.pr9011.pr9749 = phi i32 [ %.pr9011.pr97509912, %thread-pre-split7801 ], [ %.pr9011.pr9751, %.thread7397.thread9003 ] ; 2 uses
  %.pr87019719 = phi i32 [ %.pr870197209913, %thread-pre-split7801 ], [ %.pr87019721, %.thread7397.thread9003 ] ; 2 uses
  %.pr89969701 = phi i32 [ %.pr899697029914, %thread-pre-split7801 ], [ %.pr89969703, %.thread7397.thread9003 ] ; 2 uses
  %.pr82999696 = phi i32 [ %.pr829996979915, %thread-pre-split7801 ], [ %.pr82999686, %.thread7397.thread9003 ] ; 2 uses
  %i.fgo = phi i32 [ %.pr7802, %thread-pre-split7801 ], [ %i.exb, %.thread7397.thread9003 ] ; 2 uses
  %i.fgp = icmp eq i32 %i.fgo, 4
  br i1 %i.fgp, label %bb.ae, label %.loopexit.thread

bb.ae:                                            ; preds = %.thread7799
  %i.fgq = load i32, ptr %6, align 4, !tbaa !9
  %i.fgr = icmp sgt i32 %i.fgq, 3
  br i1 %i.fgr, label %.lr.ph9237.preheader, label %.thread8992.thread9019

.lr.ph9237.preheader:                             ; preds = %bb.ae
  %i.fgs = load ptr, ptr %5, align 8, !tbaa !17
  %i.fgt = load i32, ptr %i.l, align 4, !tbaa !15
  %i.fgu = sext i32 %i.fgt to i64
  %i.fgv = mul nsw i64 %indvars.iv9663, %i.fgu
  %i.fgw = load i64, ptr %i.m, align 8, !tbaa !24
  %i.fgx = mul i64 %i.fgv, %i.fgw
  %i.fgy = getelementptr inbounds nuw i8, ptr %i.fgs, i64 %i.fgx
  br label %.lr.ph9237

.lr.ph9237:                                       ; preds = %.lr.ph9237.preheader, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit866
  %indvars.iv9619 = phi i64 [ 0, %.lr.ph9237.preheader ], [ %indvars.iv.next9620, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit866 ] ; 3 uses
  %.07619234 = phi ptr [ %i.fgy, %.lr.ph9237.preheader ], [ %i.gch, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit866 ] ; 5 uses
  %i.fgz = load ptr, ptr %7, align 8, !tbaa !17
  %i.fha = load i32, ptr %i.n, align 4, !tbaa !15
  %i.fhb = sext i32 %i.fha to i64
  %i.fhc = mul nsw i64 %indvars.iv9619, %i.fhb
  %i.fhd = load i64, ptr %i.o, align 8, !tbaa !24
  %i.fhe = mul i64 %i.fhc, %i.fhd
  %i.fhf = getelementptr inbounds nuw i8, ptr %i.fgz, i64 %i.fhe
  %i.fhg = load ptr, ptr %8, align 8, !tbaa !17
  %i.fhh = load i32, ptr %i.p, align 4, !tbaa !15
  %i.fhi = sext i32 %i.fhh to i64
  %i.fhj = mul nsw i64 %indvars.iv9663, %i.fhi
  %i.fhk = load i64, ptr %i.q, align 8, !tbaa !24
  %i.fhl = mul i64 %i.fhj, %i.fhk
  %i.fhm = getelementptr inbounds nuw i8, ptr %i.fhg, i64 %i.fhl
  %i.fhn = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not814 = icmp eq ptr %i.fhn, null
  br i1 %.not814, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph9237
  %.idx9867 = shl nuw nsw i64 %indvars.iv9619, 4
  %i.fho = getelementptr inbounds nuw i8, ptr %i.fhn, i64 %.idx9867 ; 4 uses
  %i.fhp = load float, ptr %i.fho, align 4, !tbaa !29
  %i.fhq = insertelement <16 x float> poison, float %i.fhp, i64 0
  %i.fhr = shufflevector <16 x float> %i.fhq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fhs = getelementptr inbounds nuw i8, ptr %i.fho, i64 4
  %i.fht = load float, ptr %i.fhs, align 4, !tbaa !29
  %i.fhu = insertelement <16 x float> poison, float %i.fht, i64 0
  %i.fhv = shufflevector <16 x float> %i.fhu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fhw = getelementptr inbounds nuw i8, ptr %i.fho, i64 8
  %i.fhx = load float, ptr %i.fhw, align 4, !tbaa !29
  %i.fhy = insertelement <16 x float> poison, float %i.fhx, i64 0
  %i.fhz = shufflevector <16 x float> %i.fhy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fia = getelementptr inbounds nuw i8, ptr %i.fho, i64 12
  %i.fib = load float, ptr %i.fia, align 4, !tbaa !29
  %i.fic = insertelement <16 x float> poison, float %i.fib, i64 0
  %i.fid = shufflevector <16 x float> %i.fic, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph9237
  %.05627 = phi nsz <16 x float> [ zeroinitializer, %.lr.ph9237 ], [ %i.fhr, %bb.af ] ; 2 uses
  %.05625 = phi nsz <16 x float> [ zeroinitializer, %.lr.ph9237 ], [ %i.fhv, %bb.af ] ; 2 uses
  %.05623 = phi nsz <16 x float> [ zeroinitializer, %.lr.ph9237 ], [ %i.fhz, %bb.af ] ; 2 uses
  %.05621 = phi nsz <16 x float> [ zeroinitializer, %.lr.ph9237 ], [ %i.fid, %bb.af ] ; 2 uses
  %i.fie = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.fif = icmp sgt i32 %i.fie, 0
  br i1 %i.fif, label %.lr.ph9228, label %._crit_edge9229

.lr.ph9228:                                       ; preds = %bb.ag, %.lr.ph9228
  %.07579226 = phi i32 [ %i.fiw, %.lr.ph9228 ], [ 0, %bb.ag ]
  %.07589225 = phi ptr [ %i.fiu, %.lr.ph9228 ], [ %i.fhm, %bb.ag ] ; 2 uses
  %.07599224 = phi ptr [ %i.fiv, %.lr.ph9228 ], [ %i.fhf, %bb.ag ] ; 2 uses
  %.156229223 = phi <16 x float> [ %i.fit, %.lr.ph9228 ], [ %.05621, %bb.ag ]
  %.156249222 = phi <16 x float> [ %i.fis, %.lr.ph9228 ], [ %.05623, %bb.ag ]
  %.156269221 = phi <16 x float> [ %i.fir, %.lr.ph9228 ], [ %.05625, %bb.ag ]
  %.156289220 = phi <16 x float> [ %i.fiq, %.lr.ph9228 ], [ %.05627, %bb.ag ]
  %i.fig = load <16 x bfloat>, ptr %.07589225, align 1, !tbaa !23
  %i.fih = fpext fast <16 x bfloat> %i.fig to <16 x float> ; 4 uses
  %i.fii = load i64, ptr %.07599224, align 1, !tbaa !23
  %i.fij = insertelement <2 x i64> poison, i64 %i.fii, i64 0
  %i.fik = bitcast <2 x i64> %i.fij to <8 x i16>
  %14 = shufflevector <8 x i16> %i.fik, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.fil = bitcast <8 x i16> %14 to <4 x float>   ; 4 uses
  %i.fim = shufflevector <4 x float> %i.fil, <4 x float> poison, <16 x i32> zeroinitializer
  %i.fin = shufflevector <4 x float> %i.fil, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.fio = shufflevector <4 x float> %i.fil, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.fip = shufflevector <4 x float> %i.fil, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.fiq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fih, <16 x float> nofpclass(nan inf) %i.fim, <16 x float> nofpclass(nan inf) %.156289220) ; 2 uses
  %i.fir = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fih, <16 x float> nofpclass(nan inf) %i.fin, <16 x float> nofpclass(nan inf) %.156269221) ; 2 uses
  %i.fis = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fih, <16 x float> nofpclass(nan inf) %i.fio, <16 x float> nofpclass(nan inf) %.156249222) ; 2 uses
  %i.fit = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fih, <16 x float> nofpclass(nan inf) %i.fip, <16 x float> nofpclass(nan inf) %.156229223) ; 2 uses
  %i.fiu = getelementptr inbounds nuw i8, ptr %.07589225, i64 32
  %i.fiv = getelementptr inbounds nuw i8, ptr %.07599224, i64 8
  %i.fiw = add nuw nsw i32 %.07579226, 1          ; 2 uses
  %exitcond9618.not = icmp eq i32 %i.fiw, %i.fie
  br i1 %exitcond9618.not, label %._crit_edge9229, label %.lr.ph9228, !llvm.loop !69

._crit_edge9229:                                  ; preds = %.lr.ph9228, %bb.ag
  %.15628.lcssa = phi <16 x float> [ %.05627, %bb.ag ], [ %i.fiq, %.lr.ph9228 ] ; 10 uses
  %.15626.lcssa = phi <16 x float> [ %.05625, %bb.ag ], [ %i.fir, %.lr.ph9228 ] ; 10 uses
  %.15624.lcssa = phi <16 x float> [ %.05623, %bb.ag ], [ %i.fis, %.lr.ph9228 ] ; 10 uses
  %.15622.lcssa = phi <16 x float> [ %.05621, %bb.ag ], [ %i.fit, %.lr.ph9228 ] ; 10 uses
  %i.fix = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.fix, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit866 [
    i32 1, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread
    i32 2, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread7806
    i32 3, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread7809
    i32 4, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread7812
    i32 5, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread7815
    i32 6, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread7818
  ]

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread: ; preds = %._crit_edge9229
  %i.fiy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.15628.lcssa, <16 x float> zeroinitializer, i32 4)
  %i.fiz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.15626.lcssa, <16 x float> zeroinitializer, i32 4)
  %i.fja = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.15624.lcssa, <16 x float> zeroinitializer, i32 4)
  %i.fjb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.15622.lcssa, <16 x float> zeroinitializer, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit866

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread7806: ; preds = %._crit_edge9229
  %i.fjc = load ptr, ptr %12, align 8, !tbaa !17
  %i.fjd = load float, ptr %i.fjc, align 4, !tbaa !29
  %i.fje = fcmp fast olt <16 x float> %.15628.lcssa, zeroinitializer
  %i.fjf = insertelement <16 x float> poison, float %i.fjd, i64 0
  %i.fjg = shufflevector <16 x float> %i.fjf, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.fjh = select fast <16 x i1> %i.fje, <16 x float> %i.fjg, <16 x float> splat (float 1.000000e+00)
  %i.fji = fmul fast <16 x float> %i.fjh, %.15628.lcssa
  %i.fjj = fcmp fast olt <16 x float> %.15626.lcssa, zeroinitializer
  %i.fjk = select fast <16 x i1> %i.fjj, <16 x float> %i.fjg, <16 x float> splat (float 1.000000e+00)
  %i.fjl = fmul fast <16 x float> %i.fjk, %.15626.lcssa
  %i.fjm = fcmp fast olt <16 x float> %.15624.lcssa, zeroinitializer
  %i.fjn = select fast <16 x i1> %i.fjm, <16 x float> %i.fjg, <16 x float> splat (float 1.000000e+00)
  %i.fjo = fmul fast <16 x float> %i.fjn, %.15624.lcssa
  %i.fjp = fcmp fast olt <16 x float> %.15622.lcssa, zeroinitializer
  %i.fjq = select fast <16 x i1> %i.fjp, <16 x float> %i.fjg, <16 x float> splat (float 1.000000e+00)
  %i.fjr = fmul fast <16 x float> %i.fjq, %.15622.lcssa
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit866

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread7809: ; preds = %._crit_edge9229
  %i.fjs = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.fjt = load float, ptr %i.fjs, align 4, !tbaa !29
  %i.fju = insertelement <16 x float> poison, float %i.fjt, i64 0
  %i.fjv = shufflevector <16 x float> %i.fju, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.fjw = getelementptr inbounds nuw i8, ptr %i.fjs, i64 4
  %i.fjx = load float, ptr %i.fjw, align 4, !tbaa !29
  %i.fjy = insertelement <16 x float> poison, float %i.fjx, i64 0
  %i.fjz = shufflevector <16 x float> %i.fjy, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.fka = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.15628.lcssa, <16 x float> nofpclass(nan inf) %i.fjv, i32 4)
  %i.fkb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fka, <16 x float> nofpclass(nan inf) %i.fjz, i32 4)
  %i.fkc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.15626.lcssa, <16 x float> nofpclass(nan inf) %i.fjv, i32 4)
  %i.fkd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fkc, <16 x float> nofpclass(nan inf) %i.fjz, i32 4)
  %i.fke = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.15624.lcssa, <16 x float> nofpclass(nan inf) %i.fjv, i32 4)
  %i.fkf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fke, <16 x float> nofpclass(nan inf) %i.fjz, i32 4)
  %i.fkg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.15622.lcssa, <16 x float> nofpclass(nan inf) %i.fjv, i32 4)
  %i.fkh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fkg, <16 x float> nofpclass(nan inf) %i.fjz, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit866

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread7812: ; preds = %._crit_edge9229
  %i.fki = fneg fast <16 x float> %.15628.lcssa
  %i.fkj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fki, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fkk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fkj, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fkl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fkk, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fkm = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fkl, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fkn = fcmp fast ogt <16 x float> %i.fkm, %i.fkl
  %i.fko = fadd fast <16 x float> %i.fkm, splat (float -1.000000e+00)
  %i.fkp = select fast <16 x i1> %i.fkn, <16 x float> %i.fko, <16 x float> %i.fkm ; 2 uses
  %i.fkq = fneg fast <16 x float> %i.fkp          ; 2 uses
  %i.fkr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fkq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fkk)
  %i.fks = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fkq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fkr) ; 8 uses
  %i.fkt = fmul fast <16 x float> %i.fks, %i.fks
  %i.fku = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fks, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.fkv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fku, <16 x float> nofpclass(nan inf) %i.fks, <16 x float> splat (float f0x3C088908))
  %i.fkw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fkv, <16 x float> nofpclass(nan inf) %i.fks, <16 x float> splat (float f0x3D2AA9C1))
  %i.fkx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fkw, <16 x float> nofpclass(nan inf) %i.fks, <16 x float> splat (float f0x3E2AAAAA))
  %i.fky = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fkx, <16 x float> nofpclass(nan inf) %i.fks, <16 x float> splat (float 5.000000e-01))
  %i.fkz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fky, <16 x float> nofpclass(nan inf) %i.fkt, <16 x float> nofpclass(nan inf) %i.fks)
  %i.fla = fadd fast <16 x float> %i.fkz, splat (float 1.000000e+00)
  %i.flb = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fkp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.flc = shl <16 x i32> %i.flb, splat (i32 23)
  %i.fld = add <16 x i32> %i.flc, splat (i32 1065353216)
  %i.fle = bitcast <16 x i32> %i.fld to <16 x float>
  %i.flf = fmul fast <16 x float> %i.fla, %i.fle
  %i.flg = fadd fast <16 x float> %i.flf, splat (float 1.000000e+00)
  %i.flh = fdiv fast <16 x float> splat (float 1.000000e+00), %i.flg
  %i.fli = fneg fast <16 x float> %.15626.lcssa
  %i.flj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fli, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.flk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.flj, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fll = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.flk, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.flm = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fll, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fln = fcmp fast ogt <16 x float> %i.flm, %i.fll
  %i.flo = fadd fast <16 x float> %i.flm, splat (float -1.000000e+00)
  %i.flp = select fast <16 x i1> %i.fln, <16 x float> %i.flo, <16 x float> %i.flm ; 2 uses
  %i.flq = fneg fast <16 x float> %i.flp          ; 2 uses
  %i.flr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.flq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.flk)
  %i.fls = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.flq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.flr) ; 8 uses
  %i.flt = fmul fast <16 x float> %i.fls, %i.fls
  %i.flu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fls, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.flv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.flu, <16 x float> nofpclass(nan inf) %i.fls, <16 x float> splat (float f0x3C088908))
  %i.flw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.flv, <16 x float> nofpclass(nan inf) %i.fls, <16 x float> splat (float f0x3D2AA9C1))
  %i.flx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.flw, <16 x float> nofpclass(nan inf) %i.fls, <16 x float> splat (float f0x3E2AAAAA))
  %i.fly = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.flx, <16 x float> nofpclass(nan inf) %i.fls, <16 x float> splat (float 5.000000e-01))
  %i.flz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fly, <16 x float> nofpclass(nan inf) %i.flt, <16 x float> nofpclass(nan inf) %i.fls)
  %i.fma = fadd fast <16 x float> %i.flz, splat (float 1.000000e+00)
  %i.fmb = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.flp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fmc = shl <16 x i32> %i.fmb, splat (i32 23)
  %i.fmd = add <16 x i32> %i.fmc, splat (i32 1065353216)
  %i.fme = bitcast <16 x i32> %i.fmd to <16 x float>
  %i.fmf = fmul fast <16 x float> %i.fma, %i.fme
  %i.fmg = fadd fast <16 x float> %i.fmf, splat (float 1.000000e+00)
  %i.fmh = fdiv fast <16 x float> splat (float 1.000000e+00), %i.fmg
  %i.fmi = fneg fast <16 x float> %.15624.lcssa
  %i.fmj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fmi, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fmk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fmj, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fml = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fmk, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fmm = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fml, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fmn = fcmp fast ogt <16 x float> %i.fmm, %i.fml
  %i.fmo = fadd fast <16 x float> %i.fmm, splat (float -1.000000e+00)
  %i.fmp = select fast <16 x i1> %i.fmn, <16 x float> %i.fmo, <16 x float> %i.fmm ; 2 uses
  %i.fmq = fneg fast <16 x float> %i.fmp          ; 2 uses
  %i.fmr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fmq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fmk)
  %i.fms = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fmq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fmr) ; 8 uses
  %i.fmt = fmul fast <16 x float> %i.fms, %i.fms
  %i.fmu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fms, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.fmv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fmu, <16 x float> nofpclass(nan inf) %i.fms, <16 x float> splat (float f0x3C088908))
  %i.fmw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fmv, <16 x float> nofpclass(nan inf) %i.fms, <16 x float> splat (float f0x3D2AA9C1))
  %i.fmx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fmw, <16 x float> nofpclass(nan inf) %i.fms, <16 x float> splat (float f0x3E2AAAAA))
  %i.fmy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fmx, <16 x float> nofpclass(nan inf) %i.fms, <16 x float> splat (float 5.000000e-01))
  %i.fmz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fmy, <16 x float> nofpclass(nan inf) %i.fmt, <16 x float> nofpclass(nan inf) %i.fms)
  %i.fna = fadd fast <16 x float> %i.fmz, splat (float 1.000000e+00)
  %i.fnb = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fmp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fnc = shl <16 x i32> %i.fnb, splat (i32 23)
  %i.fnd = add <16 x i32> %i.fnc, splat (i32 1065353216)
  %i.fne = bitcast <16 x i32> %i.fnd to <16 x float>
  %i.fnf = fmul fast <16 x float> %i.fna, %i.fne
  %i.fng = fadd fast <16 x float> %i.fnf, splat (float 1.000000e+00)
  %i.fnh = fdiv fast <16 x float> splat (float 1.000000e+00), %i.fng
  %i.fni = fneg fast <16 x float> %.15622.lcssa
  %i.fnj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fni, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fnk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fnj, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fnl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fnk, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fnm = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fnl, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fnn = fcmp fast ogt <16 x float> %i.fnm, %i.fnl
  %i.fno = fadd fast <16 x float> %i.fnm, splat (float -1.000000e+00)
  %i.fnp = select fast <16 x i1> %i.fnn, <16 x float> %i.fno, <16 x float> %i.fnm ; 2 uses
  %i.fnq = fneg fast <16 x float> %i.fnp          ; 2 uses
  %i.fnr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fnq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fnk)
  %i.fns = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fnq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fnr) ; 8 uses
  %i.fnt = fmul fast <16 x float> %i.fns, %i.fns
  %i.fnu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fns, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.fnv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fnu, <16 x float> nofpclass(nan inf) %i.fns, <16 x float> splat (float f0x3C088908))
  %i.fnw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fnv, <16 x float> nofpclass(nan inf) %i.fns, <16 x float> splat (float f0x3D2AA9C1))
  %i.fnx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fnw, <16 x float> nofpclass(nan inf) %i.fns, <16 x float> splat (float f0x3E2AAAAA))
  %i.fny = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fnx, <16 x float> nofpclass(nan inf) %i.fns, <16 x float> splat (float 5.000000e-01))
  %i.fnz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fny, <16 x float> nofpclass(nan inf) %i.fnt, <16 x float> nofpclass(nan inf) %i.fns)
  %i.foa = fadd fast <16 x float> %i.fnz, splat (float 1.000000e+00)
  %i.fob = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.fnp, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.foc = shl <16 x i32> %i.fob, splat (i32 23)
  %i.fod = add <16 x i32> %i.foc, splat (i32 1065353216)
  %i.foe = bitcast <16 x i32> %i.fod to <16 x float>
  %i.fof = fmul fast <16 x float> %i.foa, %i.foe
  %i.fog = fadd fast <16 x float> %i.fof, splat (float 1.000000e+00)
  %i.foh = fdiv fast <16 x float> splat (float 1.000000e+00), %i.fog
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit866

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit876.thread7815: ; preds = %._crit_edge9229
  %i.foi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %.15628.lcssa, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.foj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.foi, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fok = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.foj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fol = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fok, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fom = fcmp fast ogt <16 x float> %i.fol, %i.fok
  %i.fon = fadd fast <16 x float> %i.fol, splat (float -1.000000e+00)
  %i.foo = select fast <16 x i1> %i.fom, <16 x float> %i.fon, <16 x float> %i.fol ; 2 uses
  %i.fop = fneg fast <16 x float> %i.foo          ; 2 uses
  %i.foq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fop, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.foj)
  %i.for = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fop, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.foq) ; 8 uses
  %i.fos = fmul fast <16 x float> %i.for, %i.for
  %i.fot = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.for, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.fou = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fot, <16 x float> nofpclass(nan inf) %i.for, <16 x float> splat (float f0x3C088908))
  %i.fov = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fou, <16 x float> nofpclass(nan inf) %i.for, <16 x float> splat (float f0x3D2AA9C1))
  %i.fow = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fov, <16 x float> nofpclass(nan inf) %i.for, <16 x float> splat (float f0x3E2AAAAA))
  %i.fox = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fow, <16 x float> nofpclass(nan inf) %i.for, <16 x float> splat (float 5.000000e-01))
  %i.foy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fox, <16 x float> nofpclass(nan inf) %i.fos, <16 x float> nofpclass(nan inf) %i.for)
end_hunk_3
begin_hunk_4_@_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.koq = fmul fast <8 x float> %i.kol, %i.kop
  %i.kor = fadd fast <8 x float> %i.koq, splat (float 1.000000e+00)
  %i.kos = fdiv fast <8 x float> splat (float 1.000000e+00), %i.kor
  %i.kot = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kos, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.kou = fmul fast <8 x float> %i.kot, %.05582.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1144

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8718: ; preds = %._crit_edge9342
  %i.kov = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.kow = load float, ptr %i.kov, align 4, !tbaa !29
  %i.kox = insertelement <8 x float> poison, float %i.kow, i64 0
  %i.koy = shufflevector <8 x float> %i.kox, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.koz = getelementptr inbounds nuw i8, ptr %i.kov, i64 4
  %i.kpa = load float, ptr %i.koz, align 4, !tbaa !29
  %i.kpb = insertelement <8 x float> poison, float %i.kpa, i64 0
  %i.kpc = shufflevector <8 x float> %i.kpb, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.kpd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.15586.lcssa, <8 x float> nofpclass(nan inf) %i.koy, <8 x float> nofpclass(nan inf) %i.kpc)
  %i.kpe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kpd, <8 x float> zeroinitializer)
  %i.kpf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kpe, <8 x float> splat (float 1.000000e+00))
  %i.kpg = fmul fast <8 x float> %i.kpf, %.15586.lcssa
  %i.kph = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.05584.lcssa, <8 x float> nofpclass(nan inf) %i.koy, <8 x float> nofpclass(nan inf) %i.kpc)
  %i.kpi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kph, <8 x float> zeroinitializer)
  %i.kpj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kpi, <8 x float> splat (float 1.000000e+00))
  %i.kpk = fmul fast <8 x float> %i.kpj, %.05584.lcssa
  %i.kpl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.05583.lcssa, <8 x float> nofpclass(nan inf) %i.koy, <8 x float> nofpclass(nan inf) %i.kpc)
  %i.kpm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kpl, <8 x float> zeroinitializer)
  %i.kpn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kpm, <8 x float> splat (float 1.000000e+00))
  %i.kpo = fmul fast <8 x float> %i.kpn, %.05583.lcssa
  %i.kpp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.05582.lcssa, <8 x float> nofpclass(nan inf) %i.koy, <8 x float> nofpclass(nan inf) %i.kpc)
  %i.kpq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kpp, <8 x float> zeroinitializer)
  %i.kpr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kpq, <8 x float> splat (float 1.000000e+00))
  %i.kps = fmul fast <8 x float> %i.kpr, %.05582.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1144

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1144:  ; preds = %._crit_edge9342, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8718, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8715, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8712, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8709, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8706, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread
  %.0.i11458760 = phi <8 x float> [ %i.kpo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8718 ], [ %i.jwp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread ], [ %i.jxg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8706 ], [ %i.jxy, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8709 ], [ %i.kba, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8712 ], [ %i.klp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8715 ], [ %.05583.lcssa, %._crit_edge9342 ] ; 2 uses
  %.0.i1157870587248758 = phi <8 x float> [ %i.kpg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8718 ], [ %i.jwn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread ], [ %i.jwy, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8706 ], [ %i.jxu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8709 ], [ %i.jza, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8712 ], [ %i.kff, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8715 ], [ %.15586.lcssa, %._crit_edge9342 ] ; 2 uses
  %.0.i115187268756 = phi <8 x float> [ %i.kpk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8718 ], [ %i.jwo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread ], [ %i.jxc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8706 ], [ %i.jxw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8709 ], [ %i.kaa, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8712 ], [ %i.kik, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8715 ], [ %.05584.lcssa, %._crit_edge9342 ] ; 2 uses
  %.0.i1139 = phi nsz <8 x float> [ %i.kps, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8718 ], [ %i.jwq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread ], [ %i.jxk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8706 ], [ %i.jya, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8709 ], [ %i.kca, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8712 ], [ %i.kou, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1162.thread8715 ], [ %.05582.lcssa, %._crit_edge9342 ] ; 2 uses
  %i.kpt = shufflevector <8 x float> %.0.i1157870587248758, <8 x float> %.0.i115187268756, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kpu = shufflevector <8 x float> %.0.i1157870587248758, <8 x float> %.0.i115187268756, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kpv = shufflevector <8 x float> %.0.i11458760, <8 x float> %.0.i1139, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kpw = shufflevector <8 x float> %.0.i11458760, <8 x float> %.0.i1139, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kpx = shufflevector <8 x float> %i.kpt, <8 x float> %i.kpv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.kpy = shufflevector <8 x float> %i.kpu, <8 x float> %i.kpw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.kpz = shufflevector <8 x float> %i.kpt, <8 x float> %i.kpv, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.kqa = shufflevector <8 x float> %i.kpu, <8 x float> %i.kpw, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.kqb = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kpx)
  store <8 x bfloat> %i.kqb, ptr %.07329347, align 1, !tbaa !23
  %i.kqc = getelementptr inbounds nuw i8, ptr %.07329347, i64 16
  %i.kqd = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kpy)
  store <8 x bfloat> %i.kqd, ptr %i.kqc, align 1, !tbaa !23
  %i.kqe = getelementptr inbounds nuw i8, ptr %.07329347, i64 32
  %i.kqf = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kpz)
  store <8 x bfloat> %i.kqf, ptr %i.kqe, align 1, !tbaa !23
  %i.kqg = getelementptr inbounds nuw i8, ptr %.07329347, i64 48
  %i.kqh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kqa)
  store <8 x bfloat> %i.kqh, ptr %i.kqg, align 1, !tbaa !23
  %i.kqi = getelementptr inbounds nuw i8, ptr %.07329347, i64 64
  %indvars.iv.next9636 = add nuw nsw i64 %indvars.iv9635, 1 ; 2 uses
  %i.kqj = load i32, ptr %6, align 4, !tbaa !9
  %i.kqk = load i32, ptr %4, align 4, !tbaa !9
  %i.kql = sdiv i32 %i.kqj, %i.kqk
  %i.kqm = sext i32 %i.kql to i64
  %i.kqn = icmp slt i64 %indvars.iv.next9636, %i.kqm
  br i1 %i.kqn, label %.lr.ph9350, label %.thread8702.loopexit, !llvm.loop !80

.thread8702.loopexit:                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1144
  %.pr8998.pr.pre = load i32, ptr %3, align 4, !tbaa !9 ; 4 uses
  br label %.thread8702

.thread8702:                                      ; preds = %.thread8702.loopexit, %bb.av, %bb.au, %thread-pre-split8700
  %.pr8999.pr9798 = phi i32 [ %.pr8998.pr.pre, %.thread8702.loopexit ], [ %.pr8999.pr9799, %bb.av ], [ %.pr8999.pr9799, %bb.au ], [ %.pr8999.pr9799, %thread-pre-split8700 ] ; 3 uses
  %.pr89919785 = phi i32 [ %.pr8998.pr.pre, %.thread8702.loopexit ], [ %.pr89919786, %bb.av ], [ %.pr89919786, %bb.au ], [ %.pr89919786, %thread-pre-split8700 ] ; 3 uses
  %.pr9011.pr9742 = phi i32 [ %.pr8998.pr.pre, %.thread8702.loopexit ], [ %.pr9011.pr9743, %bb.av ], [ %.pr9011.pr9743, %bb.au ], [ %.pr9011.pr9743, %thread-pre-split8700 ] ; 3 uses
  %.pr8998.pr = phi i32 [ %.pr8998.pr.pre, %.thread8702.loopexit ], [ %.pr8998.pr9734, %bb.av ], [ %.pr8998.pr9734, %bb.au ], [ %.pr8998.pr9734, %thread-pre-split8700 ] ; 2 uses
  %i.kqo = icmp eq i32 %.pr8998.pr, 8
  br i1 %i.kqo, label %bb.ay, label %.thread8799

bb.ay:                                            ; preds = %.thread8702
  %i.kqp = load i32, ptr %4, align 4, !tbaa !9    ; 2 uses
  %i.kqq = icmp eq i32 %i.kqp, 1
  br i1 %i.kqq, label %bb.az, label %.thread8798

bb.az:                                            ; preds = %bb.ay
  %i.kqr = load i32, ptr %6, align 4, !tbaa !9
  %i.kqs = icmp sgt i32 %i.kqr, 0
  br i1 %i.kqs, label %.lr.ph9378.preheader, label %thread-pre-split8800

.lr.ph9378.preheader:                             ; preds = %bb.az
  %i.kqt = load ptr, ptr %5, align 8, !tbaa !17
  %i.kqu = load i32, ptr %i.l, align 4, !tbaa !15
  %i.kqv = sext i32 %i.kqu to i64
  %i.kqw = mul nsw i64 %indvars.iv9663, %i.kqv
  %i.kqx = load i64, ptr %i.m, align 8, !tbaa !24
  %i.kqy = mul i64 %i.kqw, %i.kqx
  %i.kqz = getelementptr inbounds nuw i8, ptr %i.kqt, i64 %i.kqy
  br label %.lr.ph9378

.lr.ph9378:                                       ; preds = %.lr.ph9378.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138
  %indvars.iv9639 = phi i64 [ 0, %.lr.ph9378.preheader ], [ %indvars.iv.next9640, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138 ] ; 3 uses
  %.07279375 = phi ptr [ %i.kqz, %.lr.ph9378.preheader ], [ %i.kzy, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138 ] ; 2 uses
  %i.kra = load ptr, ptr %7, align 8, !tbaa !17
  %i.krb = load i32, ptr %i.n, align 4, !tbaa !15
  %i.krc = sext i32 %i.krb to i64
  %i.krd = mul nsw i64 %indvars.iv9639, %i.krc
  %i.kre = load i64, ptr %i.o, align 8, !tbaa !24
  %i.krf = mul i64 %i.krd, %i.kre
  %i.krg = getelementptr inbounds nuw i8, ptr %i.kra, i64 %i.krf ; 2 uses
  %i.krh = load ptr, ptr %8, align 8, !tbaa !17
  %i.kri = load i32, ptr %i.p, align 4, !tbaa !15
  %i.krj = sext i32 %i.kri to i64
  %i.krk = mul nsw i64 %indvars.iv9663, %i.krj
  %i.krl = load i64, ptr %i.q, align 8, !tbaa !24
  %i.krm = mul i64 %i.krk, %i.krl
  %i.krn = getelementptr inbounds nuw i8, ptr %i.krh, i64 %i.krm ; 2 uses
  %i.kro = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not809 = icmp eq ptr %i.kro, null
  br i1 %.not809, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph9378
  %i.krp = getelementptr inbounds nuw [4 x i8], ptr %i.kro, i64 %indvars.iv9639
  %i.krq = load float, ptr %i.krp, align 4, !tbaa !29
  %i.krr = insertelement <8 x float> poison, float %i.krq, i64 0
  %i.krs = shufflevector <8 x float> %i.krr, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph9378
  %.05579 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph9378 ], [ %i.krs, %bb.ba ] ; 2 uses
  %i.krt = load i32, ptr %10, align 4, !tbaa !9   ; 7 uses
  %i.kru = icmp sgt i32 %i.krt, 3
  br i1 %i.kru, label %.lr.ph9359, label %.preheader9089

.preheader9089.loopexit:                          ; preds = %.lr.ph9359
  %i.krv = and i32 %i.krt, 2147483644
  %i.krw = fadd fast <8 x float> %i.kth, %i.ktg
  %i.krx = fadd fast <8 x float> %i.krw, %i.kti
  br label %.preheader9089

.preheader9089:                                   ; preds = %.preheader9089.loopexit, %bb.bb
  %.15580.lcssa = phi <8 x float> [ %.05579, %bb.bb ], [ %i.ktf, %.preheader9089.loopexit ] ; 3 uses
  %.05577.lcssa = phi <8 x float> [ zeroinitializer, %bb.bb ], [ %i.krx, %.preheader9089.loopexit ]
  %.0724.lcssa = phi ptr [ %i.krg, %bb.bb ], [ %i.ktk, %.preheader9089.loopexit ] ; 3 uses
  %.0722.lcssa = phi ptr [ %i.krn, %bb.bb ], [ %i.ktj, %.preheader9089.loopexit ] ; 3 uses
  %.0720.lcssa = phi i32 [ 0, %bb.bb ], [ %i.krv, %.preheader9089.loopexit ] ; 4 uses
  %i.kry = icmp slt i32 %.0720.lcssa, %i.krt
  br i1 %i.kry, label %.lr.ph9372.preheader, label %._crit_edge9373

.lr.ph9372.preheader:                             ; preds = %.preheader9089
  %.neg10342 = or disjoint i32 %.0720.lcssa, 1
  %xtraiter10322 = and i32 %i.krt, 1
  %lcmp.mod10323.not = icmp eq i32 %xtraiter10322, 0
  br i1 %lcmp.mod10323.not, label %.lr.ph9372.prol.loopexit, label %.lr.ph9372.prol

.lr.ph9372.prol:                                  ; preds = %.lr.ph9372.preheader
  %i.krz = load <8 x bfloat>, ptr %.0722.lcssa, align 1, !tbaa !23
  %i.ksa = fpext fast <8 x bfloat> %i.krz to <8 x float>
  %i.ksb = load i16, ptr %.0724.lcssa, align 2, !tbaa !26
  %i.ksc = zext i16 %i.ksb to i32
  %i.ksd = shl nuw i32 %i.ksc, 16
  %i.kse = insertelement <8 x i32> poison, i32 %i.ksd, i64 0
  %i.ksf = bitcast <8 x i32> %i.kse to <8 x float>
  %i.ksg = shufflevector <8 x float> %i.ksf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ksh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ksa, <8 x float> nofpclass(nan inf) %i.ksg, <8 x float> nofpclass(nan inf) %.15580.lcssa) ; 2 uses
  %i.ksi = getelementptr inbounds nuw i8, ptr %.0722.lcssa, i64 16
  %i.ksj = getelementptr inbounds nuw i8, ptr %.0724.lcssa, i64 2
  %i.ksk = or disjoint i32 %.0720.lcssa, 1
  br label %.lr.ph9372.prol.loopexit

.lr.ph9372.prol.loopexit:                         ; preds = %.lr.ph9372.prol, %.lr.ph9372.preheader
  %.lcssa10286.unr = phi <8 x float> [ poison, %.lr.ph9372.preheader ], [ %i.ksh, %.lr.ph9372.prol ]
  %.17219371.unr = phi i32 [ %.0720.lcssa, %.lr.ph9372.preheader ], [ %i.ksk, %.lr.ph9372.prol ]
  %.17239370.unr = phi ptr [ %.0722.lcssa, %.lr.ph9372.preheader ], [ %i.ksi, %.lr.ph9372.prol ]
  %.17259369.unr = phi ptr [ %.0724.lcssa, %.lr.ph9372.preheader ], [ %i.ksj, %.lr.ph9372.prol ]
  %.255819368.unr = phi <8 x float> [ %.15580.lcssa, %.lr.ph9372.preheader ], [ %i.ksh, %.lr.ph9372.prol ]
  %i.ksl = icmp eq i32 %i.krt, %.neg10342
  br i1 %i.ksl, label %._crit_edge9373, label %.lr.ph9372

.lr.ph9359:                                       ; preds = %bb.bb, %.lr.ph9359
  %.07209357 = phi i32 [ %i.ktl, %.lr.ph9359 ], [ 0, %bb.bb ]
  %.07229356 = phi ptr [ %i.ktj, %.lr.ph9359 ], [ %i.krn, %bb.bb ] ; 5 uses
  %.07249355 = phi ptr [ %i.ktk, %.lr.ph9359 ], [ %i.krg, %bb.bb ] ; 2 uses
  %.055769354 = phi <8 x float> [ %i.kti, %.lr.ph9359 ], [ zeroinitializer, %bb.bb ]
  %.055779353 = phi <8 x float> [ %i.kth, %.lr.ph9359 ], [ zeroinitializer, %bb.bb ]
  %.055789352 = phi <8 x float> [ %i.ktg, %.lr.ph9359 ], [ zeroinitializer, %bb.bb ]
  %.155809351 = phi <8 x float> [ %i.ktf, %.lr.ph9359 ], [ %.05579, %bb.bb ]
  %i.ksm = load <8 x bfloat>, ptr %.07229356, align 1, !tbaa !23
  %i.ksn = fpext fast <8 x bfloat> %i.ksm to <8 x float>
  %i.kso = getelementptr inbounds nuw i8, ptr %.07229356, i64 16
  %i.ksp = load <8 x bfloat>, ptr %i.kso, align 1, !tbaa !23
  %i.ksq = fpext fast <8 x bfloat> %i.ksp to <8 x float>
  %i.ksr = getelementptr inbounds nuw i8, ptr %.07229356, i64 32
  %i.kss = load <8 x bfloat>, ptr %i.ksr, align 1, !tbaa !23
  %i.kst = fpext fast <8 x bfloat> %i.kss to <8 x float>
  %i.ksu = getelementptr inbounds nuw i8, ptr %.07229356, i64 48
  %i.ksv = load <8 x bfloat>, ptr %i.ksu, align 1, !tbaa !23
  %i.ksw = fpext fast <8 x bfloat> %i.ksv to <8 x float>
  %i.ksx = load i64, ptr %.07249355, align 1, !tbaa !23
  %i.ksy = insertelement <2 x i64> poison, i64 %i.ksx, i64 0
  %i.ksz = bitcast <2 x i64> %i.ksy to <8 x i16>
  %15 = shufflevector <8 x i16> %i.ksz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.kta = bitcast <8 x i16> %15 to <4 x float>   ; 4 uses
  %i.ktb = shufflevector <4 x float> %i.kta, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ktc = shufflevector <4 x float> %i.kta, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ktd = shufflevector <4 x float> %i.kta, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.kte = shufflevector <4 x float> %i.kta, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ktf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ksn, <8 x float> nofpclass(nan inf) %i.ktb, <8 x float> nofpclass(nan inf) %.155809351) ; 2 uses
  %i.ktg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ksq, <8 x float> nofpclass(nan inf) %i.ktc, <8 x float> nofpclass(nan inf) %.055789352) ; 2 uses
  %i.kth = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kst, <8 x float> nofpclass(nan inf) %i.ktd, <8 x float> nofpclass(nan inf) %.055779353) ; 2 uses
  %i.kti = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ksw, <8 x float> nofpclass(nan inf) %i.kte, <8 x float> nofpclass(nan inf) %.055769354) ; 2 uses
  %i.ktj = getelementptr inbounds nuw i8, ptr %.07229356, i64 64 ; 2 uses
  %i.ktk = getelementptr inbounds nuw i8, ptr %.07249355, i64 8 ; 2 uses
  %i.ktl = add nuw nsw i32 %.07209357, 4          ; 2 uses
  %i.ktm = or disjoint i32 %i.ktl, 3
  %i.ktn = icmp slt i32 %i.ktm, %i.krt
  br i1 %i.ktn, label %.lr.ph9359, label %.preheader9089.loopexit, !llvm.loop !81

.lr.ph9372:                                       ; preds = %.lr.ph9372.prol.loopexit, %.lr.ph9372
  %.17219371 = phi i32 [ %i.kuk, %.lr.ph9372 ], [ %.17219371.unr, %.lr.ph9372.prol.loopexit ]
  %.17239370 = phi ptr [ %i.kui, %.lr.ph9372 ], [ %.17239370.unr, %.lr.ph9372.prol.loopexit ] ; 3 uses
  %.17259369 = phi ptr [ %i.kuj, %.lr.ph9372 ], [ %.17259369.unr, %.lr.ph9372.prol.loopexit ] ; 3 uses
  %.255819368 = phi <8 x float> [ %i.kuh, %.lr.ph9372 ], [ %.255819368.unr, %.lr.ph9372.prol.loopexit ]
  %i.kto = load <8 x bfloat>, ptr %.17239370, align 1, !tbaa !23
  %i.ktp = fpext fast <8 x bfloat> %i.kto to <8 x float>
  %i.ktq = load i16, ptr %.17259369, align 2, !tbaa !26
  %i.ktr = zext i16 %i.ktq to i32
  %i.kts = shl nuw i32 %i.ktr, 16
  %i.ktt = insertelement <8 x i32> poison, i32 %i.kts, i64 0
  %i.ktu = bitcast <8 x i32> %i.ktt to <8 x float>
  %i.ktv = shufflevector <8 x float> %i.ktu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ktw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ktp, <8 x float> nofpclass(nan inf) %i.ktv, <8 x float> nofpclass(nan inf) %.255819368)
  %i.ktx = getelementptr inbounds nuw i8, ptr %.17239370, i64 16
  %i.kty = getelementptr inbounds nuw i8, ptr %.17259369, i64 2
  %i.ktz = load <8 x bfloat>, ptr %i.ktx, align 1, !tbaa !23
  %i.kua = fpext fast <8 x bfloat> %i.ktz to <8 x float>
  %i.kub = load i16, ptr %i.kty, align 2, !tbaa !26
  %i.kuc = zext i16 %i.kub to i32
  %i.kud = shl nuw i32 %i.kuc, 16
  %i.kue = insertelement <8 x i32> poison, i32 %i.kud, i64 0
  %i.kuf = bitcast <8 x i32> %i.kue to <8 x float>
  %i.kug = shufflevector <8 x float> %i.kuf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kuh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kua, <8 x float> nofpclass(nan inf) %i.kug, <8 x float> nofpclass(nan inf) %i.ktw) ; 2 uses
  %i.kui = getelementptr inbounds nuw i8, ptr %.17239370, i64 32
  %i.kuj = getelementptr inbounds nuw i8, ptr %.17259369, i64 4
  %i.kuk = add nuw nsw i32 %.17219371, 2          ; 2 uses
  %exitcond9638.not.1 = icmp eq i32 %i.kuk, %i.krt
  br i1 %exitcond9638.not.1, label %._crit_edge9373, label %.lr.ph9372, !llvm.loop !82

._crit_edge9373:                                  ; preds = %.lr.ph9372.prol.loopexit, %.lr.ph9372, %.preheader9089
  %.25581.lcssa = phi <8 x float> [ %.15580.lcssa, %.preheader9089 ], [ %.lcssa10286.unr, %.lr.ph9372.prol.loopexit ], [ %i.kuh, %.lr.ph9372 ]
  %i.kul = fadd fast <8 x float> %.05577.lcssa, %.25581.lcssa ; 10 uses
  %i.kum = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.kum, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138 [
    i32 1, label %bb.bc
    i32 2, label %.noexc1134
    i32 3, label %bb.bd
    i32 4, label %.noexc1135
    i32 5, label %.noexc1136
    i32 6, label %.noexc1137
  ]

bb.bc:                                            ; preds = %._crit_edge9373
  %i.kun = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kul, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138

.noexc1134:                                       ; preds = %._crit_edge9373
  %i.kuo = load ptr, ptr %12, align 8, !tbaa !17
  %i.kup = load float, ptr %i.kuo, align 4, !tbaa !29
  %i.kuq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.kul)
  %i.kur = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.kul)
  %i.kus = insertelement <8 x float> poison, float %i.kup, i64 0
  %i.kut = shufflevector <8 x float> %i.kus, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kuu = fmul fast <8 x float> %i.kut, %i.kur
  %i.kuv = fadd fast <8 x float> %i.kuu, %i.kuq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138

bb.bd:                                            ; preds = %._crit_edge9373
  %i.kuw = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.kux = load float, ptr %i.kuw, align 4, !tbaa !29
  %i.kuy = insertelement <8 x float> poison, float %i.kux, i64 0
  %i.kuz = shufflevector <8 x float> %i.kuy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kva = getelementptr inbounds nuw i8, ptr %i.kuw, i64 4
  %i.kvb = load float, ptr %i.kva, align 4, !tbaa !29
  %i.kvc = insertelement <8 x float> poison, float %i.kvb, i64 0
  %i.kvd = shufflevector <8 x float> %i.kvc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kve = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kul, <8 x float> nofpclass(nan inf) %i.kuz)
  %i.kvf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kve, <8 x float> nofpclass(nan inf) %i.kvd)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138

.noexc1135:                                       ; preds = %._crit_edge9373
  %i.kvg = fneg fast <8 x float> %i.kul
  %i.kvh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kvg, <8 x float> splat (float f0x42B0C0A5))
  %i.kvi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kvh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kvj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kvi, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.kvk = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kvj, i32 1) ; 2 uses
  %i.kvl = fcmp fast ogt <8 x float> %i.kvk, %i.kvj
  %i.kvm = select <8 x i1> %i.kvl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kvn = fsub fast <8 x float> %i.kvk, %i.kvm   ; 2 uses
  %i.kvo = fneg fast <8 x float> %i.kvn           ; 2 uses
  %i.kvp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kvo, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.kvi)
  %i.kvq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kvo, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.kvp) ; 8 uses
  %i.kvr = fmul fast <8 x float> %i.kvq, %i.kvq
  %i.kvs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kvq, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.kvt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kvs, <8 x float> nofpclass(nan inf) %i.kvq, <8 x float> splat (float f0x3C088908))
  %i.kvu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kvt, <8 x float> nofpclass(nan inf) %i.kvq, <8 x float> splat (float f0x3D2AA9C1))
  %i.kvv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kvu, <8 x float> nofpclass(nan inf) %i.kvq, <8 x float> splat (float f0x3E2AAAAA))
  %i.kvw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kvv, <8 x float> nofpclass(nan inf) %i.kvq, <8 x float> splat (float 5.000000e-01))
  %i.kvx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kvw, <8 x float> nofpclass(nan inf) %i.kvr, <8 x float> nofpclass(nan inf) %i.kvq)
  %i.kvy = fadd fast <8 x float> %i.kvx, splat (float 1.000000e+00)
  %i.kvz = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kvn)
  %i.kwa = shl <8 x i32> %i.kvz, splat (i32 23)
  %i.kwb = add <8 x i32> %i.kwa, splat (i32 1065353216)
  %i.kwc = bitcast <8 x i32> %i.kwb to <8 x float>
  %i.kwd = fmul fast <8 x float> %i.kvy, %i.kwc
  %i.kwe = fadd fast <8 x float> %i.kwd, splat (float 1.000000e+00)
  %i.kwf = fdiv fast <8 x float> splat (float 1.000000e+00), %i.kwe
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138

.noexc1136:                                       ; preds = %._crit_edge9373
  %i.kwg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kul, <8 x float> splat (float f0x42B0C0A5))
  %i.kwh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kwg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kwi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwh, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.kwj = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kwi, i32 1) ; 2 uses
  %i.kwk = fcmp fast ogt <8 x float> %i.kwj, %i.kwi
  %i.kwl = select <8 x i1> %i.kwk, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kwm = fsub fast <8 x float> %i.kwj, %i.kwl   ; 2 uses
  %i.kwn = fneg fast <8 x float> %i.kwm           ; 2 uses
  %i.kwo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kwn, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.kwh)
  %i.kwp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kwn, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.kwo) ; 8 uses
  %i.kwq = fmul fast <8 x float> %i.kwp, %i.kwp
  %i.kwr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwp, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.kws = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwr, <8 x float> nofpclass(nan inf) %i.kwp, <8 x float> splat (float f0x3C088908))
  %i.kwt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kws, <8 x float> nofpclass(nan inf) %i.kwp, <8 x float> splat (float f0x3D2AA9C1))
  %i.kwu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwt, <8 x float> nofpclass(nan inf) %i.kwp, <8 x float> splat (float f0x3E2AAAAA))
  %i.kwv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwu, <8 x float> nofpclass(nan inf) %i.kwp, <8 x float> splat (float 5.000000e-01))
  %i.kww = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwv, <8 x float> nofpclass(nan inf) %i.kwq, <8 x float> nofpclass(nan inf) %i.kwp)
  %i.kwx = fadd fast <8 x float> %i.kww, splat (float 1.000000e+00)
  %i.kwy = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kwm)
  %i.kwz = shl <8 x i32> %i.kwy, splat (i32 23)
  %i.kxa = add <8 x i32> %i.kwz, splat (i32 1065353216)
  %i.kxb = bitcast <8 x i32> %i.kxa to <8 x float>
  %i.kxc = fmul fast <8 x float> %i.kwx, %i.kxb
  %i.kxd = fadd fast <8 x float> %i.kxc, splat (float 1.000000e+00) ; 2 uses
  %i.kxe = fcmp fast ole <8 x float> %i.kxd, zeroinitializer
  %i.kxf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kxd, <8 x float> splat (float f0x00800000))
  %i.kxg = bitcast <8 x float> %i.kxf to <8 x i32> ; 2 uses
  %i.kxh = lshr <8 x i32> %i.kxg, splat (i32 23)
  %i.kxi = and <8 x i32> %i.kxg, splat (i32 -2139095041)
  %i.kxj = or disjoint <8 x i32> %i.kxi, splat (i32 1056964608)
  %i.kxk = bitcast <8 x i32> %i.kxj to <8 x float> ; 3 uses
  %i.kxl = add nsw <8 x i32> %i.kxh, splat (i32 -127)
  %i.kxm = sitofp fast <8 x i32> %i.kxl to <8 x float> ; 2 uses
  %i.kxn = fadd fast <8 x float> %i.kxm, splat (float 1.000000e+00)
  %i.kxo = fcmp fast olt <8 x float> %i.kxk, splat (float f0x3F3504F3) ; 2 uses
  %i.kxp = select <8 x i1> %i.kxo, <8 x float> %i.kxk, <8 x float> zeroinitializer
  %i.kxq = fadd fast <8 x float> %i.kxk, splat (float -1.000000e+00)
  %i.kxr = select fast <8 x i1> %i.kxo, <8 x float> %i.kxm, <8 x float> %i.kxn ; 2 uses
  %i.kxs = fadd fast <8 x float> %i.kxq, %i.kxp   ; 12 uses
  %i.kxt = fmul fast <8 x float> %i.kxs, %i.kxs   ; 2 uses
  %i.kxu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kxs, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.kxv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kxu, <8 x float> nofpclass(nan inf) %i.kxs, <8 x float> splat (float f0x3DEF251A))
  %i.kxw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kxv, <8 x float> nofpclass(nan inf) %i.kxs, <8 x float> splat (float f0xBDFE5D4F))
  %i.kxx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kxw, <8 x float> nofpclass(nan inf) %i.kxs, <8 x float> splat (float f0x3E11E9BF))
  %i.kxy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kxx, <8 x float> nofpclass(nan inf) %i.kxs, <8 x float> splat (float f0xBE2AAE50))
  %i.kxz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kxy, <8 x float> nofpclass(nan inf) %i.kxs, <8 x float> splat (float f0x3E4CCEAC))
  %i.kya = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kxz, <8 x float> nofpclass(nan inf) %i.kxs, <8 x float> splat (float f0xBE7FFFFC))
  %i.kyb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kya, <8 x float> nofpclass(nan inf) %i.kxs, <8 x float> splat (float f0x3EAAAAAA))
  %i.kyc = fmul fast <8 x float> %i.kxt, %i.kxs
  %i.kyd = fmul fast <8 x float> %i.kyc, %i.kyb
  %i.kye = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kxr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.kyd)
  %i.kyf = fneg fast <8 x float> %i.kxt
  %i.kyg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kyf, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.kye)
  %i.kyh = fadd fast <8 x float> %i.kyg, %i.kxs
  %i.kyi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kxr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.kyh)
  %.neg9031 = fmul fast <8 x float> %i.kyi, splat (float -2.000000e+00)
  %i.kyj = select fast <8 x i1> %i.kxe, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg9031
  %i.kyk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kyj, <8 x float> splat (float f0x42B0C0A5))
  %i.kyl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kyk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kym = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kyl, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.kyn = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kym, i32 1) ; 2 uses
  %i.kyo = fcmp fast ogt <8 x float> %i.kyn, %i.kym
  %i.kyp = select <8 x i1> %i.kyo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kyq = fsub fast <8 x float> %i.kyn, %i.kyp   ; 2 uses
  %i.kyr = fneg fast <8 x float> %i.kyq           ; 2 uses
  %i.kys = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kyr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.kyl)
  %i.kyt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kyr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.kys) ; 8 uses
  %i.kyu = fmul fast <8 x float> %i.kyt, %i.kyt
  %i.kyv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kyt, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.kyw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kyv, <8 x float> nofpclass(nan inf) %i.kyt, <8 x float> splat (float f0x3C088908))
  %i.kyx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kyw, <8 x float> nofpclass(nan inf) %i.kyt, <8 x float> splat (float f0x3D2AA9C1))
  %i.kyy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kyx, <8 x float> nofpclass(nan inf) %i.kyt, <8 x float> splat (float f0x3E2AAAAA))
  %i.kyz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kyy, <8 x float> nofpclass(nan inf) %i.kyt, <8 x float> splat (float 5.000000e-01))
  %i.kza = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kyz, <8 x float> nofpclass(nan inf) %i.kyu, <8 x float> nofpclass(nan inf) %i.kyt)
  %i.kzb = fadd fast <8 x float> %i.kza, splat (float 1.000000e+00)
  %i.kzc = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kyq)
  %i.kzd = shl <8 x i32> %i.kzc, splat (i32 23)
  %i.kze = add <8 x i32> %i.kzd, splat (i32 1065353216)
  %i.kzf = bitcast <8 x i32> %i.kze to <8 x float>
  %i.kzg = fmul fast <8 x float> %i.kzb, %i.kzf
  %i.kzh = fadd fast <8 x float> %i.kzg, splat (float 1.000000e+00)
  %i.kzi = fdiv fast <8 x float> splat (float 1.000000e+00), %i.kzh
  %i.kzj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kzi, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.kzk = fmul fast <8 x float> %i.kzj, %i.kul
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138

.noexc1137:                                       ; preds = %._crit_edge9373
  %i.kzl = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.kzm = load float, ptr %i.kzl, align 4, !tbaa !29
  %i.kzn = insertelement <8 x float> poison, float %i.kzm, i64 0
  %i.kzo = shufflevector <8 x float> %i.kzn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kzp = getelementptr inbounds nuw i8, ptr %i.kzl, i64 4
  %i.kzq = load float, ptr %i.kzp, align 4, !tbaa !29
  %i.kzr = insertelement <8 x float> poison, float %i.kzq, i64 0
  %i.kzs = shufflevector <8 x float> %i.kzr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kzt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kul, <8 x float> nofpclass(nan inf) %i.kzo, <8 x float> nofpclass(nan inf) %i.kzs)
  %i.kzu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kzt, <8 x float> zeroinitializer)
  %i.kzv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kzu, <8 x float> splat (float 1.000000e+00))
  %i.kzw = fmul fast <8 x float> %i.kzv, %i.kul
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138:  ; preds = %.noexc1137, %.noexc1136, %.noexc1135, %bb.bd, %.noexc1134, %bb.bc, %._crit_edge9373
  %.0.i1133 = phi nsz <8 x float> [ %i.kzw, %.noexc1137 ], [ %i.kun, %bb.bc ], [ %i.kuv, %.noexc1134 ], [ %i.kvf, %bb.bd ], [ %i.kwf, %.noexc1135 ], [ %i.kzk, %.noexc1136 ], [ %i.kul, %._crit_edge9373 ]
  %i.kzx = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1133)
  store <8 x bfloat> %i.kzx, ptr %.07279375, align 1, !tbaa !23
  %i.kzy = getelementptr inbounds nuw i8, ptr %.07279375, i64 16
  %indvars.iv.next9640 = add nuw nsw i64 %indvars.iv9639, 1 ; 2 uses
  %i.kzz = load i32, ptr %6, align 4, !tbaa !9
  %i.laa = sext i32 %i.kzz to i64
  %i.lab = icmp slt i64 %indvars.iv.next9640, %i.laa
  br i1 %i.lab, label %.lr.ph9378, label %._crit_edge9379, !llvm.loop !83

._crit_edge9379:                                  ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1138
  %.pr8797.pre = load i32, ptr %3, align 4, !tbaa !9 ; 5 uses
  %i.lac = icmp eq i32 %.pr8797.pre, 8
  br i1 %i.lac, label %thread-pre-split8800, label %.thread8799

thread-pre-split8800:                             ; preds = %bb.az, %._crit_edge9379
  %.pr9011.pr97419935 = phi i32 [ 8, %._crit_edge9379 ], [ %.pr9011.pr9742, %bb.az ]
  %.pr899197849934 = phi i32 [ 8, %._crit_edge9379 ], [ %.pr89919785, %bb.az ]
  %.pr8999.pr97979933 = phi i32 [ 8, %._crit_edge9379 ], [ %.pr8999.pr9798, %bb.az ]
  %.pr8801 = load i32, ptr %4, align 4, !tbaa !9
  br label %.thread8798

.thread8798:                                      ; preds = %bb.ay, %thread-pre-split8800
  %.pr8999.pr9796 = phi i32 [ %.pr8999.pr97979933, %thread-pre-split8800 ], [ %.pr8999.pr9798, %bb.ay ] ; 2 uses
  %.pr89919783 = phi i32 [ %.pr899197849934, %thread-pre-split8800 ], [ %.pr89919785, %bb.ay ] ; 2 uses
  %.pr9011.pr9740 = phi i32 [ %.pr9011.pr97419935, %thread-pre-split8800 ], [ %.pr9011.pr9742, %bb.ay ] ; 2 uses
  %i.lad = phi i32 [ %.pr8801, %thread-pre-split8800 ], [ %i.kqp, %bb.ay ]
  %i.lae = icmp eq i32 %i.lad, 4
  br i1 %i.lae, label %bb.be, label %.thread8799.thread

bb.be:                                            ; preds = %.thread8798
  %i.laf = load i32, ptr %6, align 4, !tbaa !9
  %i.lag = icmp sgt i32 %i.laf, 3
  br i1 %i.lag, label %.lr.ph9397.preheader, label %.thread8799.thread

.lr.ph9397.preheader:                             ; preds = %bb.be
  %i.lah = load ptr, ptr %5, align 8, !tbaa !17
  %i.lai = load i32, ptr %i.l, align 4, !tbaa !15
  %i.laj = sext i32 %i.lai to i64
  %i.lak = mul nsw i64 %indvars.iv9663, %i.laj
  %i.lal = load i64, ptr %i.m, align 8, !tbaa !24
  %i.lam = mul i64 %i.lak, %i.lal
  %i.lan = getelementptr inbounds nuw i8, ptr %i.lah, i64 %i.lam
  br label %.lr.ph9397

.lr.ph9397:                                       ; preds = %.lr.ph9397.preheader, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %indvars.iv9643 = phi i64 [ 0, %.lr.ph9397.preheader ], [ %indvars.iv.next9644, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.07199394 = phi ptr [ %i.lan, %.lr.ph9397.preheader ], [ %i.lwa, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ] ; 5 uses
  %i.lao = load ptr, ptr %7, align 8, !tbaa !17
  %i.lap = load i32, ptr %i.n, align 4, !tbaa !15
  %i.laq = sext i32 %i.lap to i64
  %i.lar = mul nsw i64 %indvars.iv9643, %i.laq
  %i.las = load i64, ptr %i.o, align 8, !tbaa !24
  %i.lat = mul i64 %i.lar, %i.las
  %i.lau = getelementptr inbounds nuw i8, ptr %i.lao, i64 %i.lat
  %i.lav = load ptr, ptr %8, align 8, !tbaa !17
  %i.law = load i32, ptr %i.p, align 4, !tbaa !15
  %i.lax = sext i32 %i.law to i64
  %i.lay = mul nsw i64 %indvars.iv9663, %i.lax
  %i.laz = load i64, ptr %i.q, align 8, !tbaa !24
  %i.lba = mul i64 %i.lay, %i.laz
  %i.lbb = getelementptr inbounds nuw i8, ptr %i.lav, i64 %i.lba
  %i.lbc = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not808 = icmp eq ptr %i.lbc, null
  br i1 %.not808, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph9397
  %.idx9872 = shl nuw nsw i64 %indvars.iv9643, 4
  %i.lbd = getelementptr inbounds nuw i8, ptr %i.lbc, i64 %.idx9872 ; 4 uses
  %i.lbe = load float, ptr %i.lbd, align 4, !tbaa !29
  %i.lbf = insertelement <8 x float> poison, float %i.lbe, i64 0
  %i.lbg = shufflevector <8 x float> %i.lbf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lbh = getelementptr inbounds nuw i8, ptr %i.lbd, i64 4
  %i.lbi = load float, ptr %i.lbh, align 4, !tbaa !29
  %i.lbj = insertelement <8 x float> poison, float %i.lbi, i64 0
  %i.lbk = shufflevector <8 x float> %i.lbj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lbl = getelementptr inbounds nuw i8, ptr %i.lbd, i64 8
  %i.lbm = load float, ptr %i.lbl, align 4, !tbaa !29
  %i.lbn = insertelement <8 x float> poison, float %i.lbm, i64 0
  %i.lbo = shufflevector <8 x float> %i.lbn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lbp = getelementptr inbounds nuw i8, ptr %i.lbd, i64 12
  %i.lbq = load float, ptr %i.lbp, align 4, !tbaa !29
  %i.lbr = insertelement <8 x float> poison, float %i.lbq, i64 0
  %i.lbs = shufflevector <8 x float> %i.lbr, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph9397
  %.05574 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph9397 ], [ %i.lbg, %bb.bf ] ; 2 uses
  %.05572 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph9397 ], [ %i.lbk, %bb.bf ] ; 2 uses
  %.05570 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph9397 ], [ %i.lbo, %bb.bf ] ; 2 uses
  %.05568 = phi nsz <8 x float> [ zeroinitializer, %.lr.ph9397 ], [ %i.lbs, %bb.bf ] ; 2 uses
  %i.lbt = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.lbu = icmp sgt i32 %i.lbt, 0
  br i1 %i.lbu, label %.lr.ph9388, label %._crit_edge9389

.lr.ph9388:                                       ; preds = %bb.bg, %.lr.ph9388
  %.07159386 = phi i32 [ %i.lcl, %.lr.ph9388 ], [ 0, %bb.bg ]
  %.07169385 = phi ptr [ %i.lcj, %.lr.ph9388 ], [ %i.lbb, %bb.bg ] ; 2 uses
  %.07179384 = phi ptr [ %i.lck, %.lr.ph9388 ], [ %i.lau, %bb.bg ] ; 2 uses
  %.155699383 = phi <8 x float> [ %i.lci, %.lr.ph9388 ], [ %.05568, %bb.bg ]
  %.155719382 = phi <8 x float> [ %i.lch, %.lr.ph9388 ], [ %.05570, %bb.bg ]
  %.155739381 = phi <8 x float> [ %i.lcg, %.lr.ph9388 ], [ %.05572, %bb.bg ]
  %.155759380 = phi <8 x float> [ %i.lcf, %.lr.ph9388 ], [ %.05574, %bb.bg ]
  %i.lbv = load <8 x bfloat>, ptr %.07169385, align 1, !tbaa !23
  %i.lbw = fpext fast <8 x bfloat> %i.lbv to <8 x float> ; 4 uses
  %i.lbx = load i64, ptr %.07179384, align 1, !tbaa !23
  %i.lby = insertelement <2 x i64> poison, i64 %i.lbx, i64 0
  %i.lbz = bitcast <2 x i64> %i.lby to <8 x i16>
  %16 = shufflevector <8 x i16> %i.lbz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.lca = bitcast <8 x i16> %16 to <4 x float>   ; 4 uses
  %i.lcb = shufflevector <4 x float> %i.lca, <4 x float> poison, <8 x i32> zeroinitializer
  %i.lcc = shufflevector <4 x float> %i.lca, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.lcd = shufflevector <4 x float> %i.lca, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.lce = shufflevector <4 x float> %i.lca, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.lcf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbw, <8 x float> nofpclass(nan inf) %i.lcb, <8 x float> nofpclass(nan inf) %.155759380) ; 2 uses
  %i.lcg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbw, <8 x float> nofpclass(nan inf) %i.lcc, <8 x float> nofpclass(nan inf) %.155739381) ; 2 uses
  %i.lch = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbw, <8 x float> nofpclass(nan inf) %i.lcd, <8 x float> nofpclass(nan inf) %.155719382) ; 2 uses
  %i.lci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lbw, <8 x float> nofpclass(nan inf) %i.lce, <8 x float> nofpclass(nan inf) %.155699383) ; 2 uses
  %i.lcj = getelementptr inbounds nuw i8, ptr %.07169385, i64 16
  %i.lck = getelementptr inbounds nuw i8, ptr %.07179384, i64 8
  %i.lcl = add nuw nsw i32 %.07159386, 1          ; 2 uses
  %exitcond9642.not = icmp eq i32 %i.lcl, %i.lbt
  br i1 %exitcond9642.not, label %._crit_edge9389, label %.lr.ph9388, !llvm.loop !84

._crit_edge9389:                                  ; preds = %.lr.ph9388, %bb.bg
  %.15575.lcssa = phi <8 x float> [ %.05574, %bb.bg ], [ %i.lcf, %.lr.ph9388 ] ; 10 uses
  %.15573.lcssa = phi <8 x float> [ %.05572, %bb.bg ], [ %i.lcg, %.lr.ph9388 ] ; 10 uses
  %.15571.lcssa = phi <8 x float> [ %.05570, %bb.bg ], [ %i.lch, %.lr.ph9388 ] ; 10 uses
  %.15569.lcssa = phi <8 x float> [ %.05568, %bb.bg ], [ %i.lci, %.lr.ph9388 ] ; 10 uses
  %i.lcm = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.lcm, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8805
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8808
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8811
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8814
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8817
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread: ; preds = %._crit_edge9389
  %i.lcn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15575.lcssa, <8 x float> zeroinitializer)
  %i.lco = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15573.lcssa, <8 x float> zeroinitializer)
  %i.lcp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15571.lcssa, <8 x float> zeroinitializer)
  %i.lcq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15569.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8805: ; preds = %._crit_edge9389
  %i.lcr = load ptr, ptr %12, align 8, !tbaa !17
  %i.lcs = load float, ptr %i.lcr, align 4, !tbaa !29
  %i.lct = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.15575.lcssa)
  %i.lcu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.15575.lcssa)
  %i.lcv = insertelement <8 x float> poison, float %i.lcs, i64 0
  %i.lcw = shufflevector <8 x float> %i.lcv, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.lcx = fmul fast <8 x float> %i.lcw, %i.lcu
  %i.lcy = fadd fast <8 x float> %i.lcx, %i.lct
  %i.lcz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.15573.lcssa)
  %i.lda = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.15573.lcssa)
  %i.ldb = fmul fast <8 x float> %i.lcw, %i.lda
  %i.ldc = fadd fast <8 x float> %i.ldb, %i.lcz
  %i.ldd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.15571.lcssa)
  %i.lde = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.15571.lcssa)
  %i.ldf = fmul fast <8 x float> %i.lcw, %i.lde
  %i.ldg = fadd fast <8 x float> %i.ldf, %i.ldd
  %i.ldh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.15569.lcssa)
  %i.ldi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.15569.lcssa)
  %i.ldj = fmul fast <8 x float> %i.lcw, %i.ldi
  %i.ldk = fadd fast <8 x float> %i.ldj, %i.ldh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8808: ; preds = %._crit_edge9389
  %i.ldl = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.ldm = load float, ptr %i.ldl, align 4, !tbaa !29
  %i.ldn = insertelement <8 x float> poison, float %i.ldm, i64 0
  %i.ldo = shufflevector <8 x float> %i.ldn, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ldp = getelementptr inbounds nuw i8, ptr %i.ldl, i64 4
  %i.ldq = load float, ptr %i.ldp, align 4, !tbaa !29
  %i.ldr = insertelement <8 x float> poison, float %i.ldq, i64 0
  %i.lds = shufflevector <8 x float> %i.ldr, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ldt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15575.lcssa, <8 x float> nofpclass(nan inf) %i.ldo)
  %i.ldu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ldt, <8 x float> nofpclass(nan inf) %i.lds)
  %i.ldv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15573.lcssa, <8 x float> nofpclass(nan inf) %i.ldo)
  %i.ldw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ldv, <8 x float> nofpclass(nan inf) %i.lds)
  %i.ldx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15571.lcssa, <8 x float> nofpclass(nan inf) %i.ldo)
  %i.ldy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ldx, <8 x float> nofpclass(nan inf) %i.lds)
  %i.ldz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.15569.lcssa, <8 x float> nofpclass(nan inf) %i.ldo)
  %i.lea = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ldz, <8 x float> nofpclass(nan inf) %i.lds)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8811: ; preds = %._crit_edge9389
  %i.leb = fneg fast <8 x float> %.15575.lcssa
  %i.lec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.leb, <8 x float> splat (float f0x42B0C0A5))
  %i.led = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lec, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.led, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.lef = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.lee, i32 1) ; 2 uses
  %i.leg = fcmp fast ogt <8 x float> %i.lef, %i.lee
  %i.leh = select <8 x i1> %i.leg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lei = fsub fast <8 x float> %i.lef, %i.leh   ; 2 uses
  %i.lej = fneg fast <8 x float> %i.lei           ; 2 uses
  %i.lek = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lej, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.led)
  %i.lel = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lej, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lek) ; 8 uses
  %i.lem = fmul fast <8 x float> %i.lel, %i.lel
  %i.len = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lel, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.leo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.len, <8 x float> nofpclass(nan inf) %i.lel, <8 x float> splat (float f0x3C088908))
  %i.lep = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.leo, <8 x float> nofpclass(nan inf) %i.lel, <8 x float> splat (float f0x3D2AA9C1))
  %i.leq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lep, <8 x float> nofpclass(nan inf) %i.lel, <8 x float> splat (float f0x3E2AAAAA))
  %i.ler = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.leq, <8 x float> nofpclass(nan inf) %i.lel, <8 x float> splat (float 5.000000e-01))
  %i.les = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ler, <8 x float> nofpclass(nan inf) %i.lem, <8 x float> nofpclass(nan inf) %i.lel)
  %i.let = fadd fast <8 x float> %i.les, splat (float 1.000000e+00)
  %i.leu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lei)
  %i.lev = shl <8 x i32> %i.leu, splat (i32 23)
  %i.lew = add <8 x i32> %i.lev, splat (i32 1065353216)
  %i.lex = bitcast <8 x i32> %i.lew to <8 x float>
  %i.ley = fmul fast <8 x float> %i.let, %i.lex
  %i.lez = fadd fast <8 x float> %i.ley, splat (float 1.000000e+00)
  %i.lfa = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lez
  %i.lfb = fneg fast <8 x float> %.15573.lcssa
  %i.lfc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lfb, <8 x float> splat (float f0x42B0C0A5))
  %i.lfd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lfc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lfe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lfd, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.lff = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.lfe, i32 1) ; 2 uses
  %i.lfg = fcmp fast ogt <8 x float> %i.lff, %i.lfe
  %i.lfh = select <8 x i1> %i.lfg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lfi = fsub fast <8 x float> %i.lff, %i.lfh   ; 2 uses
  %i.lfj = fneg fast <8 x float> %i.lfi           ; 2 uses
  %i.lfk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lfj, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.lfd)
  %i.lfl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lfj, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lfk) ; 8 uses
  %i.lfm = fmul fast <8 x float> %i.lfl, %i.lfl
  %i.lfn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lfl, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.lfo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lfn, <8 x float> nofpclass(nan inf) %i.lfl, <8 x float> splat (float f0x3C088908))
  %i.lfp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lfo, <8 x float> nofpclass(nan inf) %i.lfl, <8 x float> splat (float f0x3D2AA9C1))
  %i.lfq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lfp, <8 x float> nofpclass(nan inf) %i.lfl, <8 x float> splat (float f0x3E2AAAAA))
  %i.lfr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lfq, <8 x float> nofpclass(nan inf) %i.lfl, <8 x float> splat (float 5.000000e-01))
  %i.lfs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lfr, <8 x float> nofpclass(nan inf) %i.lfm, <8 x float> nofpclass(nan inf) %i.lfl)
  %i.lft = fadd fast <8 x float> %i.lfs, splat (float 1.000000e+00)
  %i.lfu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lfi)
  %i.lfv = shl <8 x i32> %i.lfu, splat (i32 23)
  %i.lfw = add <8 x i32> %i.lfv, splat (i32 1065353216)
  %i.lfx = bitcast <8 x i32> %i.lfw to <8 x float>
  %i.lfy = fmul fast <8 x float> %i.lft, %i.lfx
  %i.lfz = fadd fast <8 x float> %i.lfy, splat (float 1.000000e+00)
  %i.lga = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lfz
  %i.lgb = fneg fast <8 x float> %.15571.lcssa
  %i.lgc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lgb, <8 x float> splat (float f0x42B0C0A5))
  %i.lgd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lgc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lge = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lgd, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.lgf = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.lge, i32 1) ; 2 uses
  %i.lgg = fcmp fast ogt <8 x float> %i.lgf, %i.lge
  %i.lgh = select <8 x i1> %i.lgg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lgi = fsub fast <8 x float> %i.lgf, %i.lgh   ; 2 uses
  %i.lgj = fneg fast <8 x float> %i.lgi           ; 2 uses
  %i.lgk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lgj, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.lgd)
  %i.lgl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lgj, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lgk) ; 8 uses
  %i.lgm = fmul fast <8 x float> %i.lgl, %i.lgl
  %i.lgn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lgl, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.lgo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lgn, <8 x float> nofpclass(nan inf) %i.lgl, <8 x float> splat (float f0x3C088908))
  %i.lgp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lgo, <8 x float> nofpclass(nan inf) %i.lgl, <8 x float> splat (float f0x3D2AA9C1))
  %i.lgq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lgp, <8 x float> nofpclass(nan inf) %i.lgl, <8 x float> splat (float f0x3E2AAAAA))
  %i.lgr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lgq, <8 x float> nofpclass(nan inf) %i.lgl, <8 x float> splat (float 5.000000e-01))
  %i.lgs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lgr, <8 x float> nofpclass(nan inf) %i.lgm, <8 x float> nofpclass(nan inf) %i.lgl)
  %i.lgt = fadd fast <8 x float> %i.lgs, splat (float 1.000000e+00)
  %i.lgu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lgi)
  %i.lgv = shl <8 x i32> %i.lgu, splat (i32 23)
  %i.lgw = add <8 x i32> %i.lgv, splat (i32 1065353216)
  %i.lgx = bitcast <8 x i32> %i.lgw to <8 x float>
  %i.lgy = fmul fast <8 x float> %i.lgt, %i.lgx
  %i.lgz = fadd fast <8 x float> %i.lgy, splat (float 1.000000e+00)
  %i.lha = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lgz
  %i.lhb = fneg fast <8 x float> %.15569.lcssa
  %i.lhc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lhb, <8 x float> splat (float f0x42B0C0A5))
  %i.lhd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lhc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lhe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lhd, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.lhf = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.lhe, i32 1) ; 2 uses
  %i.lhg = fcmp fast ogt <8 x float> %i.lhf, %i.lhe
  %i.lhh = select <8 x i1> %i.lhg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lhi = fsub fast <8 x float> %i.lhf, %i.lhh   ; 2 uses
  %i.lhj = fneg fast <8 x float> %i.lhi           ; 2 uses
  %i.lhk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lhj, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.lhd)
  %i.lhl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lhj, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lhk) ; 8 uses
  %i.lhm = fmul fast <8 x float> %i.lhl, %i.lhl
  %i.lhn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lhl, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.lho = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lhn, <8 x float> nofpclass(nan inf) %i.lhl, <8 x float> splat (float f0x3C088908))
  %i.lhp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lho, <8 x float> nofpclass(nan inf) %i.lhl, <8 x float> splat (float f0x3D2AA9C1))
  %i.lhq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lhp, <8 x float> nofpclass(nan inf) %i.lhl, <8 x float> splat (float f0x3E2AAAAA))
  %i.lhr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lhq, <8 x float> nofpclass(nan inf) %i.lhl, <8 x float> splat (float 5.000000e-01))
  %i.lhs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lhr, <8 x float> nofpclass(nan inf) %i.lhm, <8 x float> nofpclass(nan inf) %i.lhl)
  %i.lht = fadd fast <8 x float> %i.lhs, splat (float 1.000000e+00)
  %i.lhu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lhi)
  %i.lhv = shl <8 x i32> %i.lhu, splat (i32 23)
  %i.lhw = add <8 x i32> %i.lhv, splat (i32 1065353216)
  %i.lhx = bitcast <8 x i32> %i.lhw to <8 x float>
  %i.lhy = fmul fast <8 x float> %i.lht, %i.lhx
  %i.lhz = fadd fast <8 x float> %i.lhy, splat (float 1.000000e+00)
  %i.lia = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lhz
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8814: ; preds = %._crit_edge9389
  %i.lib = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %.15575.lcssa, <8 x float> splat (float f0x42B0C0A5))
  %i.lic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lib, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lid = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lic, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.lie = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.lid, i32 1) ; 2 uses
  %i.lif = fcmp fast ogt <8 x float> %i.lie, %i.lid
  %i.lig = select <8 x i1> %i.lif, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lih = fsub fast <8 x float> %i.lie, %i.lig   ; 2 uses
  %i.lii = fneg fast <8 x float> %i.lih           ; 2 uses
  %i.lij = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lii, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.lic)
  %i.lik = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lii, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lij) ; 8 uses
  %i.lil = fmul fast <8 x float> %i.lik, %i.lik
  %i.lim = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lik, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.lin = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lim, <8 x float> nofpclass(nan inf) %i.lik, <8 x float> splat (float f0x3C088908))
end_hunk_4
begin_hunk_5_@_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.lsp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lsn, <8 x float> splat (float f0x00800000))
  %i.lsq = bitcast <8 x float> %i.lsp to <8 x i32> ; 2 uses
  %i.lsr = lshr <8 x i32> %i.lsq, splat (i32 23)
  %i.lss = and <8 x i32> %i.lsq, splat (i32 -2139095041)
  %i.lst = or disjoint <8 x i32> %i.lss, splat (i32 1056964608)
  %i.lsu = bitcast <8 x i32> %i.lst to <8 x float> ; 3 uses
  %i.lsv = add nsw <8 x i32> %i.lsr, splat (i32 -127)
  %i.lsw = sitofp fast <8 x i32> %i.lsv to <8 x float> ; 2 uses
  %i.lsx = fadd fast <8 x float> %i.lsw, splat (float 1.000000e+00)
  %i.lsy = fcmp fast olt <8 x float> %i.lsu, splat (float f0x3F3504F3) ; 2 uses
  %i.lsz = select <8 x i1> %i.lsy, <8 x float> %i.lsu, <8 x float> zeroinitializer
  %i.lta = fadd fast <8 x float> %i.lsu, splat (float -1.000000e+00)
  %i.ltb = select fast <8 x i1> %i.lsy, <8 x float> %i.lsw, <8 x float> %i.lsx ; 2 uses
  %i.ltc = fadd fast <8 x float> %i.lta, %i.lsz   ; 12 uses
  %i.ltd = fmul fast <8 x float> %i.ltc, %i.ltc   ; 2 uses
  %i.lte = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltc, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ltf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lte, <8 x float> nofpclass(nan inf) %i.ltc, <8 x float> splat (float f0x3DEF251A))
  %i.ltg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltf, <8 x float> nofpclass(nan inf) %i.ltc, <8 x float> splat (float f0xBDFE5D4F))
  %i.lth = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltg, <8 x float> nofpclass(nan inf) %i.ltc, <8 x float> splat (float f0x3E11E9BF))
  %i.lti = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lth, <8 x float> nofpclass(nan inf) %i.ltc, <8 x float> splat (float f0xBE2AAE50))
  %i.ltj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lti, <8 x float> nofpclass(nan inf) %i.ltc, <8 x float> splat (float f0x3E4CCEAC))
  %i.ltk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltj, <8 x float> nofpclass(nan inf) %i.ltc, <8 x float> splat (float f0xBE7FFFFC))
  %i.ltl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltk, <8 x float> nofpclass(nan inf) %i.ltc, <8 x float> splat (float f0x3EAAAAAA))
  %i.ltm = fmul fast <8 x float> %i.ltd, %i.ltc
  %i.ltn = fmul fast <8 x float> %i.ltm, %i.ltl
  %i.lto = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltb, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ltn)
  %i.ltp = fneg fast <8 x float> %i.ltd
  %i.ltq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ltp, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.lto)
  %i.ltr = fadd fast <8 x float> %i.ltq, %i.ltc
  %i.lts = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltb, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ltr)
  %.neg9030 = fmul fast <8 x float> %i.lts, splat (float -2.000000e+00)
  %i.ltt = select fast <8 x i1> %i.lso, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg9030
  %i.ltu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ltt, <8 x float> splat (float f0x42B0C0A5))
  %i.ltv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ltu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ltw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltv, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ltx = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ltw, i32 1) ; 2 uses
  %i.lty = fcmp fast ogt <8 x float> %i.ltx, %i.ltw
  %i.ltz = select <8 x i1> %i.lty, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lua = fsub fast <8 x float> %i.ltx, %i.ltz   ; 2 uses
  %i.lub = fneg fast <8 x float> %i.lua           ; 2 uses
  %i.luc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lub, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ltv)
  %i.lud = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lub, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.luc) ; 8 uses
  %i.lue = fmul fast <8 x float> %i.lud, %i.lud
  %i.luf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lud, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.lug = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.luf, <8 x float> nofpclass(nan inf) %i.lud, <8 x float> splat (float f0x3C088908))
  %i.luh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lug, <8 x float> nofpclass(nan inf) %i.lud, <8 x float> splat (float f0x3D2AA9C1))
  %i.lui = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.luh, <8 x float> nofpclass(nan inf) %i.lud, <8 x float> splat (float f0x3E2AAAAA))
  %i.luj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lui, <8 x float> nofpclass(nan inf) %i.lud, <8 x float> splat (float 5.000000e-01))
  %i.luk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.luj, <8 x float> nofpclass(nan inf) %i.lue, <8 x float> nofpclass(nan inf) %i.lud)
  %i.lul = fadd fast <8 x float> %i.luk, splat (float 1.000000e+00)
  %i.lum = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lua)
  %i.lun = shl <8 x i32> %i.lum, splat (i32 23)
  %i.luo = add <8 x i32> %i.lun, splat (i32 1065353216)
  %i.lup = bitcast <8 x i32> %i.luo to <8 x float>
  %i.luq = fmul fast <8 x float> %i.lul, %i.lup
  %i.lur = fadd fast <8 x float> %i.luq, splat (float 1.000000e+00)
  %i.lus = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lur
  %i.lut = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lus, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.luu = fmul fast <8 x float> %i.lut, %.15569.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8817: ; preds = %._crit_edge9389
  %i.luv = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.luw = load float, ptr %i.luv, align 4, !tbaa !29
  %i.lux = insertelement <8 x float> poison, float %i.luw, i64 0
  %i.luy = shufflevector <8 x float> %i.lux, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.luz = getelementptr inbounds nuw i8, ptr %i.luv, i64 4
  %i.lva = load float, ptr %i.luz, align 4, !tbaa !29
  %i.lvb = insertelement <8 x float> poison, float %i.lva, i64 0
  %i.lvc = shufflevector <8 x float> %i.lvb, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.lvd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.15575.lcssa, <8 x float> nofpclass(nan inf) %i.luy, <8 x float> nofpclass(nan inf) %i.lvc)
  %i.lve = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lvd, <8 x float> zeroinitializer)
  %i.lvf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lve, <8 x float> splat (float 1.000000e+00))
  %i.lvg = fmul fast <8 x float> %i.lvf, %.15575.lcssa
  %i.lvh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.15573.lcssa, <8 x float> nofpclass(nan inf) %i.luy, <8 x float> nofpclass(nan inf) %i.lvc)
  %i.lvi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lvh, <8 x float> zeroinitializer)
  %i.lvj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lvi, <8 x float> splat (float 1.000000e+00))
  %i.lvk = fmul fast <8 x float> %i.lvj, %.15573.lcssa
  %i.lvl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.15571.lcssa, <8 x float> nofpclass(nan inf) %i.luy, <8 x float> nofpclass(nan inf) %i.lvc)
  %i.lvm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lvl, <8 x float> zeroinitializer)
  %i.lvn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lvm, <8 x float> splat (float 1.000000e+00))
  %i.lvo = fmul fast <8 x float> %i.lvn, %.15571.lcssa
  %i.lvp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.15569.lcssa, <8 x float> nofpclass(nan inf) %i.luy, <8 x float> nofpclass(nan inf) %i.lvc)
  %i.lvq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lvp, <8 x float> zeroinitializer)
  %i.lvr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lvq, <8 x float> splat (float 1.000000e+00))
  %i.lvs = fmul fast <8 x float> %i.lvr, %.15569.lcssa
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge9389, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8817, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8814, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8811, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8808, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8805, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread
  %.0.i11158859 = phi <8 x float> [ %i.lvo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8817 ], [ %i.lcp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread ], [ %i.ldg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8805 ], [ %i.ldy, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8808 ], [ %i.lha, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8811 ], [ %i.lrp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8814 ], [ %.15571.lcssa, %._crit_edge9389 ]
  %.0.i1127880488238857 = phi <8 x float> [ %i.lvg, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8817 ], [ %i.lcn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread ], [ %i.lcy, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8805 ], [ %i.ldu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8808 ], [ %i.lfa, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8811 ], [ %i.llf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8814 ], [ %.15575.lcssa, %._crit_edge9389 ]
  %.0.i112188258855 = phi <8 x float> [ %i.lvk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8817 ], [ %i.lco, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread ], [ %i.ldc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8805 ], [ %i.ldw, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8808 ], [ %i.lga, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8811 ], [ %i.lok, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8814 ], [ %.15573.lcssa, %._crit_edge9389 ]
  %.0.i1110 = phi nsz <8 x float> [ %i.lvs, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8817 ], [ %i.lcq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread ], [ %i.ldk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8805 ], [ %i.lea, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8808 ], [ %i.lia, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8811 ], [ %i.luu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit1132.thread8814 ], [ %.15569.lcssa, %._crit_edge9389 ]
  %i.lvt = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1127880488238857)
  store <8 x bfloat> %i.lvt, ptr %.07199394, align 1, !tbaa !23
  %i.lvu = getelementptr inbounds nuw i8, ptr %.07199394, i64 16
  %i.lvv = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i112188258855)
  store <8 x bfloat> %i.lvv, ptr %i.lvu, align 1, !tbaa !23
  %i.lvw = getelementptr inbounds nuw i8, ptr %.07199394, i64 32
  %i.lvx = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i11158859)
  store <8 x bfloat> %i.lvx, ptr %i.lvw, align 1, !tbaa !23
  %i.lvy = getelementptr inbounds nuw i8, ptr %.07199394, i64 48
  %i.lvz = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i1110)
  store <8 x bfloat> %i.lvz, ptr %i.lvy, align 1, !tbaa !23
  %i.lwa = getelementptr inbounds nuw i8, ptr %.07199394, i64 64
  %indvars.iv.next9644 = add nuw nsw i64 %indvars.iv9643, 1 ; 2 uses
  %i.lwb = load i32, ptr %6, align 4, !tbaa !9
  %i.lwc = load i32, ptr %4, align 4, !tbaa !9
  %i.lwd = sdiv i32 %i.lwb, %i.lwc
  %i.lwe = sext i32 %i.lwd to i64
  %i.lwf = icmp slt i64 %indvars.iv.next9644, %i.lwe
  br i1 %i.lwf, label %.lr.ph9397, label %thread-pre-split8895.loopexit, !llvm.loop !85

thread-pre-split8895.loopexit:                    ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.pr8896.pre = load i32, ptr %3, align 4, !tbaa !9 ; 4 uses
  br label %.thread8799

.thread8799:                                      ; preds = %thread-pre-split8895.loopexit, %.thread8702, %._crit_edge9379
  %.pr8999.pr9794 = phi i32 [ %.pr8999.pr9798, %.thread8702 ], [ %.pr8797.pre, %._crit_edge9379 ], [ %.pr8896.pre, %thread-pre-split8895.loopexit ] ; 3 uses
  %.pr89919781 = phi i32 [ %.pr89919785, %.thread8702 ], [ %.pr8797.pre, %._crit_edge9379 ], [ %.pr8896.pre, %thread-pre-split8895.loopexit ] ; 3 uses
  %.pr9011.pr9738 = phi i32 [ %.pr9011.pr9742, %.thread8702 ], [ %.pr8797.pre, %._crit_edge9379 ], [ %.pr8896.pre, %thread-pre-split8895.loopexit ] ; 3 uses
  %i.lwg = phi i32 [ %.pr8998.pr, %.thread8702 ], [ %.pr8797.pre, %._crit_edge9379 ], [ %.pr8896.pre, %thread-pre-split8895.loopexit ]
  %i.lwh = icmp eq i32 %i.lwg, 4
  br i1 %i.lwh, label %bb.bh, label %.thread8799.thread

bb.bh:                                            ; preds = %.thread8799
  %i.lwi = load i32, ptr %4, align 4, !tbaa !9
  %i.lwj = icmp eq i32 %i.lwi, 4
  br i1 %i.lwj, label %bb.bi, label %.thread8799.thread

bb.bi:                                            ; preds = %bb.bh
  %i.lwk = load i32, ptr %6, align 4, !tbaa !9
  %i.lwl = icmp sgt i32 %i.lwk, 3
  br i1 %i.lwl, label %.lr.ph9415.preheader, label %.thread8799.thread

.lr.ph9415.preheader:                             ; preds = %bb.bi
  %i.lwm = load ptr, ptr %5, align 8, !tbaa !17
  %i.lwn = load i32, ptr %i.l, align 4, !tbaa !15
  %i.lwo = sext i32 %i.lwn to i64
  %i.lwp = mul nsw i64 %indvars.iv9663, %i.lwo
  %i.lwq = load i64, ptr %i.m, align 8, !tbaa !24
  %i.lwr = mul i64 %i.lwp, %i.lwq
  %i.lws = getelementptr inbounds nuw i8, ptr %i.lwm, i64 %i.lwr
  br label %.lr.ph9415

.lr.ph9415:                                       ; preds = %.lr.ph9415.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230
  %indvars.iv9647 = phi i64 [ 0, %.lr.ph9415.preheader ], [ %indvars.iv.next9648, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230 ] ; 3 uses
  %.07149412 = phi ptr [ %i.lws, %.lr.ph9415.preheader ], [ %i.mta, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230 ] ; 3 uses
  %i.lwt = load ptr, ptr %7, align 8, !tbaa !17
  %i.lwu = load i32, ptr %i.n, align 4, !tbaa !15
  %i.lwv = sext i32 %i.lwu to i64
  %i.lww = mul nsw i64 %indvars.iv9647, %i.lwv
  %i.lwx = load i64, ptr %i.o, align 8, !tbaa !24
  %i.lwy = mul i64 %i.lww, %i.lwx
  %i.lwz = getelementptr inbounds nuw i8, ptr %i.lwt, i64 %i.lwy
  %i.lxa = load ptr, ptr %8, align 8, !tbaa !17
  %i.lxb = load i32, ptr %i.p, align 4, !tbaa !15
  %i.lxc = sext i32 %i.lxb to i64
  %i.lxd = mul nsw i64 %indvars.iv9663, %i.lxc
  %i.lxe = load i64, ptr %i.q, align 8, !tbaa !24
  %i.lxf = mul i64 %i.lxd, %i.lxe
  %i.lxg = getelementptr inbounds nuw i8, ptr %i.lxa, i64 %i.lxf
  %i.lxh = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not807 = icmp eq ptr %i.lxh, null
  br i1 %.not807, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph9415
  %.idx9873 = shl nuw nsw i64 %indvars.iv9647, 4
  %i.lxi = getelementptr inbounds nuw i8, ptr %i.lxh, i64 %.idx9873
  %i.lxj = load <4 x float>, ptr %i.lxi, align 1, !tbaa !23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph9415
  %.05566 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph9415 ], [ %i.lxj, %bb.bj ] ; 8 uses
  %i.lxk = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.lxl = icmp sgt i32 %i.lxk, 0
  br i1 %i.lxl, label %.lr.ph9406, label %._crit_edge9407

.lr.ph9406:                                       ; preds = %bb.bk, %.lr.ph9406
  %.07109404 = phi i32 [ %i.lyh, %.lr.ph9406 ], [ 0, %bb.bk ]
  %.07119403 = phi ptr [ %i.lyf, %.lr.ph9406 ], [ %i.lxg, %bb.bk ] ; 2 uses
  %.07129402 = phi ptr [ %i.lyg, %.lr.ph9406 ], [ %i.lwz, %bb.bk ] ; 2 uses
  %.055639401 = phi <4 x float> [ %i.lye, %.lr.ph9406 ], [ %.05566, %bb.bk ]
  %.055649400 = phi <4 x float> [ %i.lyd, %.lr.ph9406 ], [ %.05566, %bb.bk ]
  %.055659399 = phi <4 x float> [ %i.lyc, %.lr.ph9406 ], [ %.05566, %bb.bk ]
  %.155679398 = phi <4 x float> [ %i.lyb, %.lr.ph9406 ], [ %.05566, %bb.bk ]
  %i.lxm = load <4 x i16>, ptr %.07119403, align 2, !tbaa !26
  %i.lxn = zext <4 x i16> %i.lxm to <4 x i32>
  %i.lxo = shl nuw <4 x i32> %i.lxn, splat (i32 16) ; 4 uses
  %i.lxp = bitcast <4 x i32> %i.lxo to <4 x float>
  %i.lxq = shufflevector <4 x float> %i.lxp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lxr = bitcast <4 x i32> %i.lxo to <4 x float>
  %i.lxs = shufflevector <4 x float> %i.lxr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lxt = bitcast <4 x i32> %i.lxo to <4 x float>
  %i.lxu = shufflevector <4 x float> %i.lxt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.lxv = bitcast <4 x i32> %i.lxo to <4 x float>
  %i.lxw = shufflevector <4 x float> %i.lxv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.lxx = load i64, ptr %.07129402, align 1, !tbaa !23
  %i.lxy = insertelement <2 x i64> poison, i64 %i.lxx, i64 0
  %i.lxz = bitcast <2 x i64> %i.lxy to <8 x i16>
  %17 = shufflevector <8 x i16> %i.lxz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.lya = bitcast <8 x i16> %17 to <4 x float>   ; 4 uses
  %i.lyb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lxq, <4 x float> nofpclass(nan inf) %i.lya, <4 x float> nofpclass(nan inf) %.155679398) ; 2 uses
  %i.lyc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lxs, <4 x float> nofpclass(nan inf) %i.lya, <4 x float> nofpclass(nan inf) %.055659399) ; 2 uses
  %i.lyd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lxu, <4 x float> nofpclass(nan inf) %i.lya, <4 x float> nofpclass(nan inf) %.055649400) ; 2 uses
  %i.lye = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lxw, <4 x float> nofpclass(nan inf) %i.lya, <4 x float> nofpclass(nan inf) %.055639401) ; 2 uses
  %i.lyf = getelementptr inbounds nuw i8, ptr %.07119403, i64 8
  %i.lyg = getelementptr inbounds nuw i8, ptr %.07129402, i64 8
  %i.lyh = add nuw nsw i32 %.07109404, 1          ; 2 uses
  %exitcond9646.not = icmp eq i32 %i.lyh, %i.lxk
  br i1 %exitcond9646.not, label %._crit_edge9407, label %.lr.ph9406, !llvm.loop !86

._crit_edge9407:                                  ; preds = %.lr.ph9406, %bb.bk
  %.15567.lcssa = phi <4 x float> [ %.05566, %bb.bk ], [ %i.lyb, %.lr.ph9406 ] ; 10 uses
  %.05565.lcssa = phi <4 x float> [ %.05566, %bb.bk ], [ %i.lyc, %.lr.ph9406 ] ; 10 uses
  %.05564.lcssa = phi <4 x float> [ %.05566, %bb.bk ], [ %i.lyd, %.lr.ph9406 ] ; 10 uses
  %.05563.lcssa = phi <4 x float> [ %.05566, %bb.bk ], [ %i.lye, %.lr.ph9406 ] ; 10 uses
  %i.lyi = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.lyi, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230 [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8900
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8903
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8906
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8909
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8912
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread: ; preds = %._crit_edge9407
  %i.lyj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.15567.lcssa, <4 x float> zeroinitializer)
  %i.lyk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05565.lcssa, <4 x float> zeroinitializer)
  %i.lyl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05564.lcssa, <4 x float> zeroinitializer)
  %i.lym = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05563.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8900: ; preds = %._crit_edge9407
  %i.lyn = load ptr, ptr %12, align 8, !tbaa !17
  %i.lyo = load float, ptr %i.lyn, align 4, !tbaa !29
  %i.lyp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.15567.lcssa)
  %i.lyq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.15567.lcssa)
  %i.lyr = insertelement <4 x float> poison, float %i.lyo, i64 0
  %i.lys = shufflevector <4 x float> %i.lyr, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lyt = fmul fast <4 x float> %i.lys, %i.lyq
  %i.lyu = fadd fast <4 x float> %i.lyt, %i.lyp
  %i.lyv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.05565.lcssa)
  %i.lyw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.05565.lcssa)
  %i.lyx = fmul fast <4 x float> %i.lys, %i.lyw
  %i.lyy = fadd fast <4 x float> %i.lyx, %i.lyv
  %i.lyz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.05564.lcssa)
  %i.lza = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.05564.lcssa)
  %i.lzb = fmul fast <4 x float> %i.lys, %i.lza
  %i.lzc = fadd fast <4 x float> %i.lzb, %i.lyz
  %i.lzd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.05563.lcssa)
  %i.lze = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.05563.lcssa)
  %i.lzf = fmul fast <4 x float> %i.lys, %i.lze
  %i.lzg = fadd fast <4 x float> %i.lzf, %i.lzd
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8903: ; preds = %._crit_edge9407
  %i.lzh = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.lzi = load float, ptr %i.lzh, align 4, !tbaa !29
  %i.lzj = insertelement <4 x float> poison, float %i.lzi, i64 0
  %i.lzk = shufflevector <4 x float> %i.lzj, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lzl = getelementptr inbounds nuw i8, ptr %i.lzh, i64 4
  %i.lzm = load float, ptr %i.lzl, align 4, !tbaa !29
  %i.lzn = insertelement <4 x float> poison, float %i.lzm, i64 0
  %i.lzo = shufflevector <4 x float> %i.lzn, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lzp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.15567.lcssa, <4 x float> nofpclass(nan inf) %i.lzk)
  %i.lzq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lzp, <4 x float> nofpclass(nan inf) %i.lzo)
  %i.lzr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05565.lcssa, <4 x float> nofpclass(nan inf) %i.lzk)
  %i.lzs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lzr, <4 x float> nofpclass(nan inf) %i.lzo)
  %i.lzt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05564.lcssa, <4 x float> nofpclass(nan inf) %i.lzk)
  %i.lzu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lzt, <4 x float> nofpclass(nan inf) %i.lzo)
  %i.lzv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.05563.lcssa, <4 x float> nofpclass(nan inf) %i.lzk)
  %i.lzw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lzv, <4 x float> nofpclass(nan inf) %i.lzo)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8906: ; preds = %._crit_edge9407
  %i.lzx = fneg fast <4 x float> %.15567.lcssa
  %i.lzy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lzx, <4 x float> splat (float f0x42B0C0A5))
  %i.lzz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lzy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.maa = fmul fast <4 x float> %i.lzz, splat (float f0x3FB8AA3B)
  %i.mab = fadd fast <4 x float> %i.maa, splat (float 5.000000e-01) ; 2 uses
  %i.mac = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mab)
  %i.mad = sitofp fast <4 x i32> %i.mac to <4 x float> ; 2 uses
  %i.mae = fcmp fast olt <4 x float> %i.mab, %i.mad
  %i.maf = select <4 x i1> %i.mae, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mag = fsub fast <4 x float> %i.mad, %i.maf   ; 2 uses
  %i.mah = fneg fast <4 x float> %i.mag           ; 2 uses
  %i.mai = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mah, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.lzz)
  %i.maj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mah, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mai) ; 8 uses
  %i.mak = fmul fast <4 x float> %i.maj, %i.maj
  %i.mal = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.maj, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mam = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mal, <4 x float> nofpclass(nan inf) %i.maj, <4 x float> splat (float f0x3C088908))
  %i.man = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mam, <4 x float> nofpclass(nan inf) %i.maj, <4 x float> splat (float f0x3D2AA9C1))
  %i.mao = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.man, <4 x float> nofpclass(nan inf) %i.maj, <4 x float> splat (float f0x3E2AAAAA))
  %i.map = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mao, <4 x float> nofpclass(nan inf) %i.maj, <4 x float> splat (float 5.000000e-01))
  %i.maq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.map, <4 x float> nofpclass(nan inf) %i.mak, <4 x float> nofpclass(nan inf) %i.maj)
  %i.mar = fadd fast <4 x float> %i.maq, splat (float 1.000000e+00)
  %i.mas = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mag)
  %i.mat = shl <4 x i32> %i.mas, splat (i32 23)
  %i.mau = add <4 x i32> %i.mat, splat (i32 1065353216)
  %i.mav = bitcast <4 x i32> %i.mau to <4 x float>
  %i.maw = fmul fast <4 x float> %i.mar, %i.mav
  %i.max = fadd fast <4 x float> %i.maw, splat (float 1.000000e+00)
  %i.may = fdiv fast <4 x float> splat (float 1.000000e+00), %i.max
  %i.maz = fneg fast <4 x float> %.05565.lcssa
  %i.mba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.maz, <4 x float> splat (float f0x42B0C0A5))
  %i.mbb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mba, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mbc = fmul fast <4 x float> %i.mbb, splat (float f0x3FB8AA3B)
  %i.mbd = fadd fast <4 x float> %i.mbc, splat (float 5.000000e-01) ; 2 uses
  %i.mbe = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mbd)
  %i.mbf = sitofp fast <4 x i32> %i.mbe to <4 x float> ; 2 uses
  %i.mbg = fcmp fast olt <4 x float> %i.mbd, %i.mbf
  %i.mbh = select <4 x i1> %i.mbg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mbi = fsub fast <4 x float> %i.mbf, %i.mbh   ; 2 uses
  %i.mbj = fneg fast <4 x float> %i.mbi           ; 2 uses
  %i.mbk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mbj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mbb)
  %i.mbl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mbj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mbk) ; 8 uses
  %i.mbm = fmul fast <4 x float> %i.mbl, %i.mbl
  %i.mbn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbl, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mbo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbn, <4 x float> nofpclass(nan inf) %i.mbl, <4 x float> splat (float f0x3C088908))
  %i.mbp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbo, <4 x float> nofpclass(nan inf) %i.mbl, <4 x float> splat (float f0x3D2AA9C1))
  %i.mbq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbp, <4 x float> nofpclass(nan inf) %i.mbl, <4 x float> splat (float f0x3E2AAAAA))
  %i.mbr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbq, <4 x float> nofpclass(nan inf) %i.mbl, <4 x float> splat (float 5.000000e-01))
  %i.mbs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mbr, <4 x float> nofpclass(nan inf) %i.mbm, <4 x float> nofpclass(nan inf) %i.mbl)
  %i.mbt = fadd fast <4 x float> %i.mbs, splat (float 1.000000e+00)
  %i.mbu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mbi)
  %i.mbv = shl <4 x i32> %i.mbu, splat (i32 23)
  %i.mbw = add <4 x i32> %i.mbv, splat (i32 1065353216)
  %i.mbx = bitcast <4 x i32> %i.mbw to <4 x float>
  %i.mby = fmul fast <4 x float> %i.mbt, %i.mbx
  %i.mbz = fadd fast <4 x float> %i.mby, splat (float 1.000000e+00)
  %i.mca = fdiv fast <4 x float> splat (float 1.000000e+00), %i.mbz
  %i.mcb = fneg fast <4 x float> %.05564.lcssa
  %i.mcc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mcb, <4 x float> splat (float f0x42B0C0A5))
  %i.mcd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mcc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mce = fmul fast <4 x float> %i.mcd, splat (float f0x3FB8AA3B)
  %i.mcf = fadd fast <4 x float> %i.mce, splat (float 5.000000e-01) ; 2 uses
  %i.mcg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mcf)
  %i.mch = sitofp fast <4 x i32> %i.mcg to <4 x float> ; 2 uses
  %i.mci = fcmp fast olt <4 x float> %i.mcf, %i.mch
  %i.mcj = select <4 x i1> %i.mci, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mck = fsub fast <4 x float> %i.mch, %i.mcj   ; 2 uses
  %i.mcl = fneg fast <4 x float> %i.mck           ; 2 uses
  %i.mcm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mcl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mcd)
  %i.mcn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mcl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mcm) ; 8 uses
  %i.mco = fmul fast <4 x float> %i.mcn, %i.mcn
  %i.mcp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcn, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mcq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcp, <4 x float> nofpclass(nan inf) %i.mcn, <4 x float> splat (float f0x3C088908))
  %i.mcr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcq, <4 x float> nofpclass(nan inf) %i.mcn, <4 x float> splat (float f0x3D2AA9C1))
  %i.mcs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcr, <4 x float> nofpclass(nan inf) %i.mcn, <4 x float> splat (float f0x3E2AAAAA))
  %i.mct = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcs, <4 x float> nofpclass(nan inf) %i.mcn, <4 x float> splat (float 5.000000e-01))
  %i.mcu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mct, <4 x float> nofpclass(nan inf) %i.mco, <4 x float> nofpclass(nan inf) %i.mcn)
  %i.mcv = fadd fast <4 x float> %i.mcu, splat (float 1.000000e+00)
  %i.mcw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mck)
  %i.mcx = shl <4 x i32> %i.mcw, splat (i32 23)
  %i.mcy = add <4 x i32> %i.mcx, splat (i32 1065353216)
  %i.mcz = bitcast <4 x i32> %i.mcy to <4 x float>
  %i.mda = fmul fast <4 x float> %i.mcv, %i.mcz
  %i.mdb = fadd fast <4 x float> %i.mda, splat (float 1.000000e+00)
  %i.mdc = fdiv fast <4 x float> splat (float 1.000000e+00), %i.mdb
  %i.mdd = fneg fast <4 x float> %.05563.lcssa
  %i.mde = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mdd, <4 x float> splat (float f0x42B0C0A5))
  %i.mdf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mde, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mdg = fmul fast <4 x float> %i.mdf, splat (float f0x3FB8AA3B)
  %i.mdh = fadd fast <4 x float> %i.mdg, splat (float 5.000000e-01) ; 2 uses
  %i.mdi = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mdh)
  %i.mdj = sitofp fast <4 x i32> %i.mdi to <4 x float> ; 2 uses
  %i.mdk = fcmp fast olt <4 x float> %i.mdh, %i.mdj
  %i.mdl = select <4 x i1> %i.mdk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mdm = fsub fast <4 x float> %i.mdj, %i.mdl   ; 2 uses
  %i.mdn = fneg fast <4 x float> %i.mdm           ; 2 uses
  %i.mdo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mdn, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mdf)
  %i.mdp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mdn, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mdo) ; 8 uses
  %i.mdq = fmul fast <4 x float> %i.mdp, %i.mdp
  %i.mdr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mdp, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mds = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mdr, <4 x float> nofpclass(nan inf) %i.mdp, <4 x float> splat (float f0x3C088908))
  %i.mdt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mds, <4 x float> nofpclass(nan inf) %i.mdp, <4 x float> splat (float f0x3D2AA9C1))
  %i.mdu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mdt, <4 x float> nofpclass(nan inf) %i.mdp, <4 x float> splat (float f0x3E2AAAAA))
  %i.mdv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mdu, <4 x float> nofpclass(nan inf) %i.mdp, <4 x float> splat (float 5.000000e-01))
  %i.mdw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mdv, <4 x float> nofpclass(nan inf) %i.mdq, <4 x float> nofpclass(nan inf) %i.mdp)
  %i.mdx = fadd fast <4 x float> %i.mdw, splat (float 1.000000e+00)
  %i.mdy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mdm)
  %i.mdz = shl <4 x i32> %i.mdy, splat (i32 23)
  %i.mea = add <4 x i32> %i.mdz, splat (i32 1065353216)
  %i.meb = bitcast <4 x i32> %i.mea to <4 x float>
  %i.mec = fmul fast <4 x float> %i.mdx, %i.meb
  %i.med = fadd fast <4 x float> %i.mec, splat (float 1.000000e+00)
  %i.mee = fdiv fast <4 x float> splat (float 1.000000e+00), %i.med
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8909: ; preds = %._crit_edge9407
  %i.mef = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.15567.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.meg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mef, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.meh = fmul fast <4 x float> %i.meg, splat (float f0x3FB8AA3B)
  %i.mei = fadd fast <4 x float> %i.meh, splat (float 5.000000e-01) ; 2 uses
  %i.mej = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mei)
  %i.mek = sitofp fast <4 x i32> %i.mej to <4 x float> ; 2 uses
  %i.mel = fcmp fast olt <4 x float> %i.mei, %i.mek
  %i.mem = select <4 x i1> %i.mel, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.men = fsub fast <4 x float> %i.mek, %i.mem   ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.mpv = fmul fast <4 x float> %i.mpu, %i.mpu   ; 2 uses
  %i.mpw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpu, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.mpx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpw, <4 x float> nofpclass(nan inf) %i.mpu, <4 x float> splat (float f0x3DEF251A))
  %i.mpy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpx, <4 x float> nofpclass(nan inf) %i.mpu, <4 x float> splat (float f0xBDFE5D4F))
  %i.mpz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpy, <4 x float> nofpclass(nan inf) %i.mpu, <4 x float> splat (float f0x3E11E9BF))
  %i.mqa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpz, <4 x float> nofpclass(nan inf) %i.mpu, <4 x float> splat (float f0xBE2AAE50))
  %i.mqb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mqa, <4 x float> nofpclass(nan inf) %i.mpu, <4 x float> splat (float f0x3E4CCEAC))
  %i.mqc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mqb, <4 x float> nofpclass(nan inf) %i.mpu, <4 x float> splat (float f0xBE7FFFFC))
  %i.mqd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mqc, <4 x float> nofpclass(nan inf) %i.mpu, <4 x float> splat (float f0x3EAAAAAA))
  %i.mqe = fmul fast <4 x float> %i.mpv, %i.mpu
  %i.mqf = fmul fast <4 x float> %i.mqe, %i.mqd
  %i.mqg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpt, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mqf)
  %i.mqh = fneg fast <4 x float> %i.mpv
  %i.mqi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mqh, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.mqg)
  %i.mqj = fadd fast <4 x float> %i.mqi, %i.mpu
  %i.mqk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpt, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mqj)
  %.neg9026 = fmul fast <4 x float> %i.mqk, splat (float -2.000000e+00)
  %i.mql = select fast <4 x i1> %i.mpg, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg9026
  %i.mqm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mql, <4 x float> splat (float f0x42B0C0A5))
  %i.mqn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mqm, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mqo = fmul fast <4 x float> %i.mqn, splat (float f0x3FB8AA3B)
  %i.mqp = fadd fast <4 x float> %i.mqo, splat (float 5.000000e-01) ; 2 uses
  %i.mqq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mqp)
  %i.mqr = sitofp fast <4 x i32> %i.mqq to <4 x float> ; 2 uses
  %i.mqs = fcmp fast olt <4 x float> %i.mqp, %i.mqr
  %i.mqt = select <4 x i1> %i.mqs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mqu = fsub fast <4 x float> %i.mqr, %i.mqt   ; 2 uses
  %i.mqv = fneg fast <4 x float> %i.mqu           ; 2 uses
  %i.mqw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mqv, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mqn)
  %i.mqx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mqv, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mqw) ; 8 uses
  %i.mqy = fmul fast <4 x float> %i.mqx, %i.mqx
  %i.mqz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mqx, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mra = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mqz, <4 x float> nofpclass(nan inf) %i.mqx, <4 x float> splat (float f0x3C088908))
  %i.mrb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mra, <4 x float> nofpclass(nan inf) %i.mqx, <4 x float> splat (float f0x3D2AA9C1))
  %i.mrc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mrb, <4 x float> nofpclass(nan inf) %i.mqx, <4 x float> splat (float f0x3E2AAAAA))
  %i.mrd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mrc, <4 x float> nofpclass(nan inf) %i.mqx, <4 x float> splat (float 5.000000e-01))
  %i.mre = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mrd, <4 x float> nofpclass(nan inf) %i.mqy, <4 x float> nofpclass(nan inf) %i.mqx)
  %i.mrf = fadd fast <4 x float> %i.mre, splat (float 1.000000e+00)
  %i.mrg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mqu)
  %i.mrh = shl <4 x i32> %i.mrg, splat (i32 23)
  %i.mri = add <4 x i32> %i.mrh, splat (i32 1065353216)
  %i.mrj = bitcast <4 x i32> %i.mri to <4 x float>
  %i.mrk = fmul fast <4 x float> %i.mrf, %i.mrj
  %i.mrl = fadd fast <4 x float> %i.mrk, splat (float 1.000000e+00)
  %i.mrm = fdiv fast <4 x float> splat (float 2.000000e+00), %i.mrl
  %i.mrn = fadd fast <4 x float> %i.mrm, splat (float -1.000000e+00)
  %i.mro = fmul fast <4 x float> %i.mrn, %.05563.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8912: ; preds = %._crit_edge9407
  %i.mrp = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.mrq = load float, ptr %i.mrp, align 4, !tbaa !29
  %i.mrr = insertelement <4 x float> poison, float %i.mrq, i64 0
  %i.mrs = shufflevector <4 x float> %i.mrr, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mrt = getelementptr inbounds nuw i8, ptr %i.mrp, i64 4
  %i.mru = load float, ptr %i.mrt, align 4, !tbaa !29
  %i.mrv = insertelement <4 x float> poison, float %i.mru, i64 0
  %i.mrw = shufflevector <4 x float> %i.mrv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mrx = fmul fast <4 x float> %i.mrs, %.15567.lcssa
  %i.mry = fadd fast <4 x float> %i.mrx, %i.mrw
  %i.mrz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mry, <4 x float> zeroinitializer)
  %i.msa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mrz, <4 x float> splat (float 1.000000e+00))
  %i.msb = fmul fast <4 x float> %i.msa, %.15567.lcssa
  %i.msc = fmul fast <4 x float> %i.mrs, %.05565.lcssa
  %i.msd = fadd fast <4 x float> %i.msc, %i.mrw
  %i.mse = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.msd, <4 x float> zeroinitializer)
  %i.msf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mse, <4 x float> splat (float 1.000000e+00))
  %i.msg = fmul fast <4 x float> %i.msf, %.05565.lcssa
  %i.msh = fmul fast <4 x float> %i.mrs, %.05564.lcssa
  %i.msi = fadd fast <4 x float> %i.msh, %i.mrw
  %i.msj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.msi, <4 x float> zeroinitializer)
  %i.msk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.msj, <4 x float> splat (float 1.000000e+00))
  %i.msl = fmul fast <4 x float> %i.msk, %.05564.lcssa
  %i.msm = fmul fast <4 x float> %i.mrs, %.05563.lcssa
  %i.msn = fadd fast <4 x float> %i.msm, %i.mrw
  %i.mso = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.msn, <4 x float> zeroinitializer)
  %i.msp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mso, <4 x float> splat (float 1.000000e+00))
  %i.msq = fmul fast <4 x float> %i.msp, %.05563.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230:  ; preds = %._crit_edge9407, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8912, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8909, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8906, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8903, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8900, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread
  %.0.i12318954 = phi <4 x float> [ %i.msl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8912 ], [ %i.lyl, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread ], [ %i.lzc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8900 ], [ %i.lzu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8903 ], [ %i.mdc, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8906 ], [ %i.mof, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8909 ], [ %.05564.lcssa, %._crit_edge9407 ] ; 2 uses
  %.0.i1241889989188952 = phi <4 x float> [ %i.msb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8912 ], [ %i.lyj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread ], [ %i.lyu, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8900 ], [ %i.lzq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8903 ], [ %i.may, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8906 ], [ %i.mhn, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8909 ], [ %.15567.lcssa, %._crit_edge9407 ] ; 2 uses
  %.0.i123689208950 = phi <4 x float> [ %i.msg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8912 ], [ %i.lyk, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread ], [ %i.lyy, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8900 ], [ %i.lzs, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8903 ], [ %i.mca, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8906 ], [ %i.mkw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8909 ], [ %.05565.lcssa, %._crit_edge9407 ] ; 2 uses
  %.0.i1226 = phi nsz <4 x float> [ %i.msq, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8912 ], [ %i.lym, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread ], [ %i.lzg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8900 ], [ %i.lzw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8903 ], [ %i.mee, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8906 ], [ %i.mro, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1245.thread8909 ], [ %.05563.lcssa, %._crit_edge9407 ] ; 2 uses
  %i.msr = shufflevector <4 x float> %.0.i1241889989188952, <4 x float> %.0.i123689208950, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.mss = shufflevector <4 x float> %.0.i12318954, <4 x float> %.0.i1226, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.mst = shufflevector <4 x float> %.0.i1241889989188952, <4 x float> %.0.i123689208950, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.msu = shufflevector <4 x float> %.0.i12318954, <4 x float> %.0.i1226, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.msv = shufflevector <4 x float> %i.msr, <4 x float> %i.mss, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.msw = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.msv)
  %i.msx = shufflevector <4 x float> %i.mst, <4 x float> %i.msu, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 2, i32 3, i32 6, i32 7>
  %i.msy = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.msx)
  store <8 x bfloat> %i.msw, ptr %.07149412, align 1, !tbaa !23
  %i.msz = getelementptr inbounds nuw i8, ptr %.07149412, i64 16
  store <8 x bfloat> %i.msy, ptr %i.msz, align 1, !tbaa !23
  %i.mta = getelementptr inbounds nuw i8, ptr %.07149412, i64 32
  %indvars.iv.next9648 = add nuw nsw i64 %indvars.iv9647, 1 ; 2 uses
  %i.mtb = load i32, ptr %6, align 4, !tbaa !9
  %i.mtc = load i32, ptr %4, align 4, !tbaa !9
  %i.mtd = sdiv i32 %i.mtb, %i.mtc
  %i.mte = sext i32 %i.mtd to i64
  %i.mtf = icmp slt i64 %indvars.iv.next9648, %i.mte
  br i1 %i.mtf, label %.lr.ph9415, label %.thread8799.thread.loopexit, !llvm.loop !87

.thread8799.thread.loopexit:                      ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1230
  %.pr9011.pr.pre = load i32, ptr %3, align 4, !tbaa !9 ; 3 uses
  br label %.thread8799.thread

.thread8799.thread:                               ; preds = %.thread8798, %bb.be, %.thread8799.thread.loopexit, %bb.bi, %bb.bh, %.thread8799
  %.pr8999.pr9793 = phi i32 [ %.pr9011.pr.pre, %.thread8799.thread.loopexit ], [ %.pr8999.pr9794, %bb.bi ], [ %.pr8999.pr9794, %bb.bh ], [ %.pr8999.pr9794, %.thread8799 ], [ %.pr8999.pr9796, %bb.be ], [ %.pr8999.pr9796, %.thread8798 ] ; 2 uses
  %.pr89919780 = phi i32 [ %.pr9011.pr.pre, %.thread8799.thread.loopexit ], [ %.pr89919781, %bb.bi ], [ %.pr89919781, %bb.bh ], [ %.pr89919781, %.thread8799 ], [ %.pr89919783, %bb.be ], [ %.pr89919783, %.thread8798 ]
  %.pr9011.pr = phi i32 [ %.pr9011.pr.pre, %.thread8799.thread.loopexit ], [ %.pr9011.pr9738, %bb.bi ], [ %.pr9011.pr9738, %bb.bh ], [ %.pr9011.pr9738, %.thread8799 ], [ %.pr9011.pr9740, %bb.be ], [ %.pr9011.pr9740, %.thread8798 ] ; 2 uses
  %i.mtg = icmp eq i32 %.pr9011.pr, 1
  br i1 %i.mtg, label %thread-pre-split9012, label %thread-pre-split8990

thread-pre-split9012:                             ; preds = %.thread8799.thread
  %.pr9013 = load i32, ptr %4, align 4, !tbaa !9
  br label %.thread8799.thread.thread

.thread8799.thread.thread:                        ; preds = %bb.ao, %thread-pre-split9012
  %.pr8999.pr9792 = phi i32 [ %.pr8999.pr9793, %thread-pre-split9012 ], [ %.pr8999.pr9801, %bb.ao ] ; 2 uses
  %.pr89919779 = phi i32 [ %.pr89919780, %thread-pre-split9012 ], [ %.pr89919788, %bb.ao ] ; 2 uses
  %.pr9011.pr9761 = phi i32 [ 1, %thread-pre-split9012 ], [ %.pr9011.pr9745, %bb.ao ]
  %.pr87019731 = phi i32 [ 1, %thread-pre-split9012 ], [ %.pr87019732, %bb.ao ]
  %i.mth = phi i32 [ %.pr9013, %thread-pre-split9012 ], [ %i.jia, %bb.ao ] ; 2 uses
  %i.mti = icmp eq i32 %i.mth, 4
  br i1 %i.mti, label %bb.bl, label %.thread8992.thread

bb.bl:                                            ; preds = %.thread8799.thread.thread
  %i.mtj = load i32, ptr %6, align 4, !tbaa !9
  %i.mtk = icmp sgt i32 %i.mtj, 3
  br i1 %i.mtk, label %.lr.ph9427.preheader, label %thread-pre-split8990

.lr.ph9427.preheader:                             ; preds = %bb.bl
  %i.mtl = load ptr, ptr %5, align 8, !tbaa !17
  %i.mtm = load i32, ptr %i.l, align 4, !tbaa !15
  %i.mtn = sext i32 %i.mtm to i64
  %i.mto = mul nsw i64 %indvars.iv9663, %i.mtn
  %i.mtp = load i64, ptr %i.m, align 8, !tbaa !24
  %i.mtq = mul i64 %i.mto, %i.mtp
  %i.mtr = getelementptr inbounds nuw i8, ptr %i.mtl, i64 %i.mtq
  br label %.lr.ph9427

.lr.ph9427:                                       ; preds = %.lr.ph9427.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225
  %indvars.iv9651 = phi i64 [ 0, %.lr.ph9427.preheader ], [ %indvars.iv.next9652, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225 ] ; 3 uses
  %.07069424 = phi ptr [ %i.mtr, %.lr.ph9427.preheader ], [ %i.nbs, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225 ] ; 2 uses
  %i.mts = load ptr, ptr %7, align 8, !tbaa !17
  %i.mtt = load i32, ptr %i.n, align 4, !tbaa !15
  %i.mtu = sext i32 %i.mtt to i64
  %i.mtv = mul nsw i64 %indvars.iv9651, %i.mtu
  %i.mtw = load i64, ptr %i.o, align 8, !tbaa !24
  %i.mtx = mul i64 %i.mtv, %i.mtw
  %i.mty = getelementptr inbounds nuw i8, ptr %i.mts, i64 %i.mtx ; 2 uses
  %i.mtz = load ptr, ptr %8, align 8, !tbaa !17
  %i.mua = load i32, ptr %i.p, align 4, !tbaa !15
  %i.mub = sext i32 %i.mua to i64
  %i.muc = mul nsw i64 %indvars.iv9663, %i.mub
  %i.mud = load i64, ptr %i.q, align 8, !tbaa !24
  %i.mue = mul i64 %i.muc, %i.mud
  %i.muf = getelementptr inbounds nuw i8, ptr %i.mtz, i64 %i.mue ; 2 uses
  %i.mug = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not806 = icmp eq ptr %i.mug, null
  br i1 %.not806, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph9427
  %.idx9874 = shl nuw nsw i64 %indvars.iv9651, 4
  %i.muh = getelementptr inbounds nuw i8, ptr %i.mug, i64 %.idx9874
  %i.mui = load <4 x float>, ptr %i.muh, align 1, !tbaa !23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph9427
  %.05561 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph9427 ], [ %i.mui, %bb.bm ] ; 3 uses
  %i.muj = load i32, ptr %10, align 4, !tbaa !9   ; 5 uses
  %i.muk = icmp sgt i32 %i.muj, 0
  br i1 %i.muk, label %.lr.ph9421.preheader, label %._crit_edge9422

.lr.ph9421.preheader:                             ; preds = %bb.bn
  %xtraiter10324 = and i32 %i.muj, 1
  %i.mul = icmp eq i32 %i.muj, 1
  br i1 %i.mul, label %.lr.ph9421.epil.preheader, label %.lr.ph9421.preheader.new

.lr.ph9421.preheader.new:                         ; preds = %.lr.ph9421.preheader
  %unroll_iter10328 = and i32 %i.muj, 2147483646
  br label %.lr.ph9421

.lr.ph9421:                                       ; preds = %.lr.ph9421, %.lr.ph9421.preheader.new
  %.07039418 = phi ptr [ %i.muf, %.lr.ph9421.preheader.new ], [ %i.mvk, %.lr.ph9421 ] ; 3 uses
  %.07049417 = phi ptr [ %i.mty, %.lr.ph9421.preheader.new ], [ %i.mvl, %.lr.ph9421 ] ; 3 uses
  %.155629416 = phi <4 x float> [ %.05561, %.lr.ph9421.preheader.new ], [ %i.mvj, %.lr.ph9421 ]
  %niter10329 = phi i32 [ 0, %.lr.ph9421.preheader.new ], [ %niter10329.next.1, %.lr.ph9421 ]
  %i.mum = load i16, ptr %.07039418, align 2, !tbaa !26
  %i.mun = zext i16 %i.mum to i32
  %i.muo = shl nuw i32 %i.mun, 16
  %i.mup = insertelement <4 x i32> poison, i32 %i.muo, i64 0
  %i.muq = bitcast <4 x i32> %i.mup to <4 x float>
  %i.mur = shufflevector <4 x float> %i.muq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mus = load i64, ptr %.07049417, align 1, !tbaa !23
  %i.mut = insertelement <2 x i64> poison, i64 %i.mus, i64 0
  %i.muu = bitcast <2 x i64> %i.mut to <8 x i16>
  %18 = shufflevector <8 x i16> %i.muu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.muv = bitcast <8 x i16> %18 to <4 x float>
  %i.muw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mur, <4 x float> nofpclass(nan inf) %i.muv, <4 x float> nofpclass(nan inf) %.155629416)
  %i.mux = getelementptr inbounds nuw i8, ptr %.07039418, i64 2
  %i.muy = getelementptr inbounds nuw i8, ptr %.07049417, i64 8
  %i.muz = load i16, ptr %i.mux, align 2, !tbaa !26
  %i.mva = zext i16 %i.muz to i32
  %i.mvb = shl nuw i32 %i.mva, 16
  %i.mvc = insertelement <4 x i32> poison, i32 %i.mvb, i64 0
  %i.mvd = bitcast <4 x i32> %i.mvc to <4 x float>
  %i.mve = shufflevector <4 x float> %i.mvd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mvf = load i64, ptr %i.muy, align 1, !tbaa !23
  %i.mvg = insertelement <2 x i64> poison, i64 %i.mvf, i64 0
  %i.mvh = bitcast <2 x i64> %i.mvg to <8 x i16>
  %19 = shufflevector <8 x i16> %i.mvh, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.mvi = bitcast <8 x i16> %19 to <4 x float>
  %i.mvj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mve, <4 x float> nofpclass(nan inf) %i.mvi, <4 x float> nofpclass(nan inf) %i.muw) ; 3 uses
  %i.mvk = getelementptr inbounds nuw i8, ptr %.07039418, i64 4 ; 2 uses
  %i.mvl = getelementptr inbounds nuw i8, ptr %.07049417, i64 16 ; 2 uses
  %niter10329.next.1 = add nuw nsw i32 %niter10329, 2 ; 2 uses
  %niter10329.ncmp.1 = icmp eq i32 %niter10329.next.1, %unroll_iter10328
  br i1 %niter10329.ncmp.1, label %._crit_edge9422.loopexit.unr-lcssa, label %.lr.ph9421, !llvm.loop !88

._crit_edge9422.loopexit.unr-lcssa:               ; preds = %.lr.ph9421
  %lcmp.mod10325.not = icmp eq i32 %xtraiter10324, 0
  br i1 %lcmp.mod10325.not, label %._crit_edge9422, label %.lr.ph9421.epil.preheader

.lr.ph9421.epil.preheader:                        ; preds = %._crit_edge9422.loopexit.unr-lcssa, %.lr.ph9421.preheader
  %.07039418.epil.init = phi ptr [ %i.muf, %.lr.ph9421.preheader ], [ %i.mvk, %._crit_edge9422.loopexit.unr-lcssa ]
  %.07049417.epil.init = phi ptr [ %i.mty, %.lr.ph9421.preheader ], [ %i.mvl, %._crit_edge9422.loopexit.unr-lcssa ]
  %.155629416.epil.init = phi <4 x float> [ %.05561, %.lr.ph9421.preheader ], [ %i.mvj, %._crit_edge9422.loopexit.unr-lcssa ]
  %lcmp.mod10327 = trunc i32 %i.muj to i1
  call void @llvm.assume(i1 %lcmp.mod10327)
  %i.mvm = load i16, ptr %.07039418.epil.init, align 2, !tbaa !26
  %i.mvn = zext i16 %i.mvm to i32
  %i.mvo = shl nuw i32 %i.mvn, 16
  %i.mvp = insertelement <4 x i32> poison, i32 %i.mvo, i64 0
  %i.mvq = bitcast <4 x i32> %i.mvp to <4 x float>
  %i.mvr = shufflevector <4 x float> %i.mvq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mvs = load i64, ptr %.07049417.epil.init, align 1, !tbaa !23
  %i.mvt = insertelement <2 x i64> poison, i64 %i.mvs, i64 0
  %i.mvu = bitcast <2 x i64> %i.mvt to <8 x i16>
  %20 = shufflevector <8 x i16> %i.mvu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.mvv = bitcast <8 x i16> %20 to <4 x float>
  %i.mvw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mvr, <4 x float> nofpclass(nan inf) %i.mvv, <4 x float> nofpclass(nan inf) %.155629416.epil.init)
  br label %._crit_edge9422

._crit_edge9422:                                  ; preds = %.lr.ph9421.epil.preheader, %._crit_edge9422.loopexit.unr-lcssa, %bb.bn
  %.15562.lcssa = phi <4 x float> [ %.05561, %bb.bn ], [ %i.mvj, %._crit_edge9422.loopexit.unr-lcssa ], [ %i.mvw, %.lr.ph9421.epil.preheader ] ; 10 uses
  %i.mvx = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.mvx, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225 [
    i32 1, label %bb.bo
    i32 2, label %.noexc1222
    i32 3, label %bb.bp
    i32 4, label %.noexc1223
    i32 5, label %.noexc1224
    i32 6, label %bb.bq
  ]

bb.bo:                                            ; preds = %._crit_edge9422
  %i.mvy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.15562.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225

.noexc1222:                                       ; preds = %._crit_edge9422
  %i.mvz = load ptr, ptr %12, align 8, !tbaa !17
  %i.mwa = load float, ptr %i.mvz, align 4, !tbaa !29
  %i.mwb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.15562.lcssa)
  %i.mwc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.15562.lcssa)
  %i.mwd = insertelement <4 x float> poison, float %i.mwa, i64 0
  %i.mwe = shufflevector <4 x float> %i.mwd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mwf = fmul fast <4 x float> %i.mwe, %i.mwc
  %i.mwg = fadd fast <4 x float> %i.mwf, %i.mwb
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225

bb.bp:                                            ; preds = %._crit_edge9422
  %i.mwh = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.mwi = load float, ptr %i.mwh, align 4, !tbaa !29
  %i.mwj = insertelement <4 x float> poison, float %i.mwi, i64 0
  %i.mwk = shufflevector <4 x float> %i.mwj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mwl = getelementptr inbounds nuw i8, ptr %i.mwh, i64 4
  %i.mwm = load float, ptr %i.mwl, align 4, !tbaa !29
  %i.mwn = insertelement <4 x float> poison, float %i.mwm, i64 0
  %i.mwo = shufflevector <4 x float> %i.mwn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mwp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.15562.lcssa, <4 x float> nofpclass(nan inf) %i.mwk)
  %i.mwq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mwp, <4 x float> nofpclass(nan inf) %i.mwo)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225

.noexc1223:                                       ; preds = %._crit_edge9422
  %i.mwr = fneg fast <4 x float> %.15562.lcssa
  %i.mws = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mwr, <4 x float> splat (float f0x42B0C0A5))
  %i.mwt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mws, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mwu = fmul fast <4 x float> %i.mwt, splat (float f0x3FB8AA3B)
  %i.mwv = fadd fast <4 x float> %i.mwu, splat (float 5.000000e-01) ; 2 uses
  %i.mww = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mwv)
  %i.mwx = sitofp fast <4 x i32> %i.mww to <4 x float> ; 2 uses
  %i.mwy = fcmp fast olt <4 x float> %i.mwv, %i.mwx
  %i.mwz = select <4 x i1> %i.mwy, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mxa = fsub fast <4 x float> %i.mwx, %i.mwz   ; 2 uses
  %i.mxb = fneg fast <4 x float> %i.mxa           ; 2 uses
  %i.mxc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mxb, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mwt)
  %i.mxd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mxb, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mxc) ; 8 uses
  %i.mxe = fmul fast <4 x float> %i.mxd, %i.mxd
  %i.mxf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxd, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mxg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxf, <4 x float> nofpclass(nan inf) %i.mxd, <4 x float> splat (float f0x3C088908))
  %i.mxh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxg, <4 x float> nofpclass(nan inf) %i.mxd, <4 x float> splat (float f0x3D2AA9C1))
  %i.mxi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxh, <4 x float> nofpclass(nan inf) %i.mxd, <4 x float> splat (float f0x3E2AAAAA))
  %i.mxj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxi, <4 x float> nofpclass(nan inf) %i.mxd, <4 x float> splat (float 5.000000e-01))
  %i.mxk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mxj, <4 x float> nofpclass(nan inf) %i.mxe, <4 x float> nofpclass(nan inf) %i.mxd)
  %i.mxl = fadd fast <4 x float> %i.mxk, splat (float 1.000000e+00)
  %i.mxm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mxa)
  %i.mxn = shl <4 x i32> %i.mxm, splat (i32 23)
  %i.mxo = add <4 x i32> %i.mxn, splat (i32 1065353216)
  %i.mxp = bitcast <4 x i32> %i.mxo to <4 x float>
  %i.mxq = fmul fast <4 x float> %i.mxl, %i.mxp
  %i.mxr = fadd fast <4 x float> %i.mxq, splat (float 1.000000e+00)
  %i.mxs = fdiv fast <4 x float> splat (float 1.000000e+00), %i.mxr
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225

.noexc1224:                                       ; preds = %._crit_edge9422
  %i.mxt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.15562.lcssa, <4 x float> splat (float f0x42B0C0A5))
  %i.mxu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mxt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mxv = fmul fast <4 x float> %i.mxu, splat (float f0x3FB8AA3B)
  %i.mxw = fadd fast <4 x float> %i.mxv, splat (float 5.000000e-01) ; 2 uses
  %i.mxx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mxw)
  %i.mxy = sitofp fast <4 x i32> %i.mxx to <4 x float> ; 2 uses
  %i.mxz = fcmp fast olt <4 x float> %i.mxw, %i.mxy
  %i.mya = select <4 x i1> %i.mxz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.myb = fsub fast <4 x float> %i.mxy, %i.mya   ; 2 uses
  %i.myc = fneg fast <4 x float> %i.myb           ; 2 uses
  %i.myd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.myc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mxu)
  %i.mye = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.myc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.myd) ; 8 uses
  %i.myf = fmul fast <4 x float> %i.mye, %i.mye
  %i.myg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mye, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.myh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myg, <4 x float> nofpclass(nan inf) %i.mye, <4 x float> splat (float f0x3C088908))
  %i.myi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myh, <4 x float> nofpclass(nan inf) %i.mye, <4 x float> splat (float f0x3D2AA9C1))
  %i.myj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myi, <4 x float> nofpclass(nan inf) %i.mye, <4 x float> splat (float f0x3E2AAAAA))
  %i.myk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myj, <4 x float> nofpclass(nan inf) %i.mye, <4 x float> splat (float 5.000000e-01))
  %i.myl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myk, <4 x float> nofpclass(nan inf) %i.myf, <4 x float> nofpclass(nan inf) %i.mye)
  %i.mym = fadd fast <4 x float> %i.myl, splat (float 1.000000e+00)
  %i.myn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.myb)
  %i.myo = shl <4 x i32> %i.myn, splat (i32 23)
  %i.myp = add <4 x i32> %i.myo, splat (i32 1065353216)
  %i.myq = bitcast <4 x i32> %i.myp to <4 x float>
  %i.myr = fmul fast <4 x float> %i.mym, %i.myq
  %i.mys = fadd fast <4 x float> %i.myr, splat (float 1.000000e+00) ; 2 uses
  %i.myt = fcmp fast ole <4 x float> %i.mys, zeroinitializer
  %i.myu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mys, <4 x float> splat (float f0x00800000))
  %i.myv = bitcast <4 x float> %i.myu to <4 x i32> ; 2 uses
  %i.myw = lshr <4 x i32> %i.myv, splat (i32 23)
  %i.myx = and <4 x i32> %i.myv, splat (i32 -2139095041)
  %i.myy = or disjoint <4 x i32> %i.myx, splat (i32 1056964608)
  %i.myz = bitcast <4 x i32> %i.myy to <4 x float> ; 3 uses
  %i.mza = add nsw <4 x i32> %i.myw, splat (i32 -127)
  %i.mzb = sitofp fast <4 x i32> %i.mza to <4 x float> ; 2 uses
  %i.mzc = fadd fast <4 x float> %i.mzb, splat (float 1.000000e+00)
  %i.mzd = fcmp fast olt <4 x float> %i.myz, splat (float f0x3F3504F3) ; 2 uses
  %i.mze = select <4 x i1> %i.mzd, <4 x float> %i.myz, <4 x float> zeroinitializer
  %i.mzf = fadd fast <4 x float> %i.myz, splat (float -1.000000e+00)
  %i.mzg = select fast <4 x i1> %i.mzd, <4 x float> %i.mzb, <4 x float> %i.mzc ; 2 uses
  %i.mzh = fadd fast <4 x float> %i.mzf, %i.mze   ; 12 uses
  %i.mzi = fmul fast <4 x float> %i.mzh, %i.mzh   ; 2 uses
  %i.mzj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzh, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.mzk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzj, <4 x float> nofpclass(nan inf) %i.mzh, <4 x float> splat (float f0x3DEF251A))
  %i.mzl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzk, <4 x float> nofpclass(nan inf) %i.mzh, <4 x float> splat (float f0xBDFE5D4F))
  %i.mzm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzl, <4 x float> nofpclass(nan inf) %i.mzh, <4 x float> splat (float f0x3E11E9BF))
  %i.mzn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzm, <4 x float> nofpclass(nan inf) %i.mzh, <4 x float> splat (float f0xBE2AAE50))
  %i.mzo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzn, <4 x float> nofpclass(nan inf) %i.mzh, <4 x float> splat (float f0x3E4CCEAC))
  %i.mzp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzo, <4 x float> nofpclass(nan inf) %i.mzh, <4 x float> splat (float f0xBE7FFFFC))
  %i.mzq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzp, <4 x float> nofpclass(nan inf) %i.mzh, <4 x float> splat (float f0x3EAAAAAA))
  %i.mzr = fmul fast <4 x float> %i.mzi, %i.mzh
  %i.mzs = fmul fast <4 x float> %i.mzr, %i.mzq
  %i.mzt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzg, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mzs)
  %i.mzu = fneg fast <4 x float> %i.mzi
  %i.mzv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mzu, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.mzt)
  %i.mzw = fadd fast <4 x float> %i.mzv, %i.mzh
  %i.mzx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzg, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mzw)
  %.neg9022 = fmul fast <4 x float> %i.mzx, splat (float -2.000000e+00)
  %i.mzy = select fast <4 x i1> %i.myt, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg9022
  %i.mzz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mzy, <4 x float> splat (float f0x42B0C0A5))
  %i.naa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mzz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nab = fmul fast <4 x float> %i.naa, splat (float f0x3FB8AA3B)
  %i.nac = fadd fast <4 x float> %i.nab, splat (float 5.000000e-01) ; 2 uses
  %i.nad = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nac)
  %i.nae = sitofp fast <4 x i32> %i.nad to <4 x float> ; 2 uses
  %i.naf = fcmp fast olt <4 x float> %i.nac, %i.nae
  %i.nag = select <4 x i1> %i.naf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nah = fsub fast <4 x float> %i.nae, %i.nag   ; 2 uses
  %i.nai = fneg fast <4 x float> %i.nah           ; 2 uses
  %i.naj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nai, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.naa)
  %i.nak = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nai, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.naj) ; 8 uses
  %i.nal = fmul fast <4 x float> %i.nak, %i.nak
  %i.nam = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nak, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.nan = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nam, <4 x float> nofpclass(nan inf) %i.nak, <4 x float> splat (float f0x3C088908))
  %i.nao = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nan, <4 x float> nofpclass(nan inf) %i.nak, <4 x float> splat (float f0x3D2AA9C1))
  %i.nap = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nao, <4 x float> nofpclass(nan inf) %i.nak, <4 x float> splat (float f0x3E2AAAAA))
  %i.naq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nap, <4 x float> nofpclass(nan inf) %i.nak, <4 x float> splat (float 5.000000e-01))
  %i.nar = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.naq, <4 x float> nofpclass(nan inf) %i.nal, <4 x float> nofpclass(nan inf) %i.nak)
  %i.nas = fadd fast <4 x float> %i.nar, splat (float 1.000000e+00)
  %i.nat = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nah)
  %i.nau = shl <4 x i32> %i.nat, splat (i32 23)
  %i.nav = add <4 x i32> %i.nau, splat (i32 1065353216)
  %i.naw = bitcast <4 x i32> %i.nav to <4 x float>
  %i.nax = fmul fast <4 x float> %i.nas, %i.naw
  %i.nay = fadd fast <4 x float> %i.nax, splat (float 1.000000e+00)
  %i.naz = fdiv fast <4 x float> splat (float 2.000000e+00), %i.nay
  %i.nba = fadd fast <4 x float> %i.naz, splat (float -1.000000e+00)
  %i.nbb = fmul fast <4 x float> %i.nba, %.15562.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225

bb.bq:                                            ; preds = %._crit_edge9422
  %i.nbc = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.nbd = load float, ptr %i.nbc, align 4, !tbaa !29
  %i.nbe = insertelement <4 x float> poison, float %i.nbd, i64 0
  %i.nbf = shufflevector <4 x float> %i.nbe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nbg = getelementptr inbounds nuw i8, ptr %i.nbc, i64 4
  %i.nbh = load float, ptr %i.nbg, align 4, !tbaa !29
  %i.nbi = insertelement <4 x float> poison, float %i.nbh, i64 0
  %i.nbj = shufflevector <4 x float> %i.nbi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nbk = fmul fast <4 x float> %i.nbf, %.15562.lcssa
  %i.nbl = fadd fast <4 x float> %i.nbk, %i.nbj
  %i.nbm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nbl, <4 x float> zeroinitializer)
  %i.nbn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nbm, <4 x float> splat (float 1.000000e+00))
  %i.nbo = fmul fast <4 x float> %i.nbn, %.15562.lcssa
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225:  ; preds = %bb.bq, %.noexc1224, %.noexc1223, %bb.bp, %.noexc1222, %bb.bo, %._crit_edge9422
  %.0.i1221 = phi nsz <4 x float> [ %i.nbo, %bb.bq ], [ %i.mvy, %bb.bo ], [ %i.mwg, %.noexc1222 ], [ %i.mwq, %bb.bp ], [ %i.mxs, %.noexc1223 ], [ %i.nbb, %.noexc1224 ], [ %.15562.lcssa, %._crit_edge9422 ]
  %i.nbp = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %.0.i1221)
  %i.nbq = bitcast <8 x bfloat> %i.nbp to <2 x i64>
  %i.nbr = extractelement <2 x i64> %i.nbq, i64 0
  store i64 %i.nbr, ptr %.07069424, align 1, !tbaa !23
  %i.nbs = getelementptr inbounds nuw i8, ptr %.07069424, i64 8
  %indvars.iv.next9652 = add nuw nsw i64 %indvars.iv9651, 1 ; 2 uses
  %i.nbt = load i32, ptr %6, align 4, !tbaa !9
  %i.nbu = load i32, ptr %4, align 4, !tbaa !9
  %i.nbv = sdiv i32 %i.nbt, %i.nbu
  %i.nbw = sext i32 %i.nbv to i64
  %i.nbx = icmp slt i64 %indvars.iv.next9652, %i.nbw
  br i1 %i.nbx, label %.lr.ph9427, label %thread-pre-split8990.loopexit, !llvm.loop !89

thread-pre-split8990.loopexit:                    ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit1225
  %.pr8991.pre = load i32, ptr %3, align 4, !tbaa !9 ; 2 uses
  br label %thread-pre-split8990

thread-pre-split8990:                             ; preds = %bb.bl, %thread-pre-split8990.loopexit, %.thread8799.thread
  %.pr8999.pr9789 = phi i32 [ %.pr8999.pr9793, %.thread8799.thread ], [ %.pr8991.pre, %thread-pre-split8990.loopexit ], [ %.pr8999.pr9792, %bb.bl ] ; 3 uses
  %i.nby = phi i32 [ %.pr9011.pr, %.thread8799.thread ], [ %.pr8991.pre, %thread-pre-split8990.loopexit ], [ %.pr89919779, %bb.bl ]
  %i.nbz = icmp eq i32 %i.nby, 4
  br i1 %i.nbz, label %bb.br, label %.thread8992

bb.br:                                            ; preds = %thread-pre-split8990
  %i.nca = load i32, ptr %4, align 4, !tbaa !9
  %i.ncb = icmp eq i32 %i.nca, 1
  br i1 %i.ncb, label %bb.bs, label %.thread8992

bb.bs:                                            ; preds = %bb.br
  %i.ncc = load i32, ptr %6, align 4, !tbaa !9
  %i.ncd = icmp sgt i32 %i.ncc, 0
  br i1 %i.ncd, label %.lr.ph9455.preheader, label %.thread8992

.lr.ph9455.preheader:                             ; preds = %bb.bs
  %i.nce = load ptr, ptr %5, align 8, !tbaa !17
  %i.ncf = load i32, ptr %i.l, align 4, !tbaa !15
  %i.ncg = sext i32 %i.ncf to i64
  %i.nch = mul nsw i64 %indvars.iv9663, %i.ncg
  %i.nci = load i64, ptr %i.m, align 8, !tbaa !24
  %i.ncj = mul i64 %i.nch, %i.nci
  %i.nck = getelementptr inbounds nuw i8, ptr %i.nce, i64 %i.ncj
  br label %.lr.ph9455

.lr.ph9455:                                       ; preds = %.lr.ph9455.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv9655 = phi i64 [ 0, %.lr.ph9455.preheader ], [ %indvars.iv.next9656, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.07019452 = phi ptr [ %i.nck, %.lr.ph9455.preheader ], [ %i.nmg, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.ncl = load ptr, ptr %7, align 8, !tbaa !17
  %i.ncm = load i32, ptr %i.n, align 4, !tbaa !15
  %i.ncn = sext i32 %i.ncm to i64
  %i.nco = mul nsw i64 %indvars.iv9655, %i.ncn
  %i.ncp = load i64, ptr %i.o, align 8, !tbaa !24
  %i.ncq = mul i64 %i.nco, %i.ncp
  %i.ncr = getelementptr inbounds nuw i8, ptr %i.ncl, i64 %i.ncq ; 2 uses
  %i.ncs = load ptr, ptr %8, align 8, !tbaa !17
  %i.nct = load i32, ptr %i.p, align 4, !tbaa !15
  %i.ncu = sext i32 %i.nct to i64
  %i.ncv = mul nsw i64 %indvars.iv9663, %i.ncu
  %i.ncw = load i64, ptr %i.q, align 8, !tbaa !24
  %i.ncx = mul i64 %i.ncv, %i.ncw
  %i.ncy = getelementptr inbounds nuw i8, ptr %i.ncs, i64 %i.ncx ; 2 uses
  %i.ncz = load ptr, ptr %9, align 8, !tbaa !19   ; 2 uses
  %.not805 = icmp eq ptr %i.ncz, null
  br i1 %.not805, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph9455
  %i.nda = getelementptr inbounds nuw [4 x i8], ptr %i.ncz, i64 %indvars.iv9655
  %i.ndb = load float, ptr %i.nda, align 4, !tbaa !29
  %i.ndc = insertelement <4 x float> poison, float %i.ndb, i64 0
  %i.ndd = shufflevector <4 x float> %i.ndc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph9455
  %.05558 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph9455 ], [ %i.ndd, %bb.bt ] ; 2 uses
  %i.nde = load i32, ptr %10, align 4, !tbaa !9   ; 7 uses
  %i.ndf = icmp sgt i32 %i.nde, 3
  br i1 %i.ndf, label %.lr.ph9436, label %.preheader9088

.preheader9088.loopexit:                          ; preds = %.lr.ph9436
  %i.ndg = and i32 %i.nde, 2147483644
  %i.ndh = fadd fast <4 x float> %i.nfc, %i.nfb
  %i.ndi = fadd fast <4 x float> %i.ndh, %i.nfd
  br label %.preheader9088

.preheader9088:                                   ; preds = %.preheader9088.loopexit, %bb.bu
  %.15559.lcssa = phi <4 x float> [ %.05558, %bb.bu ], [ %i.nfa, %.preheader9088.loopexit ] ; 3 uses
  %.05556.lcssa = phi <4 x float> [ zeroinitializer, %bb.bu ], [ %i.ndi, %.preheader9088.loopexit ]
  %.0698.lcssa = phi ptr [ %i.ncr, %bb.bu ], [ %i.nff, %.preheader9088.loopexit ] ; 3 uses
  %.0696.lcssa = phi ptr [ %i.ncy, %bb.bu ], [ %i.nfe, %.preheader9088.loopexit ] ; 3 uses
  %.0694.lcssa = phi i32 [ 0, %bb.bu ], [ %i.ndg, %.preheader9088.loopexit ] ; 4 uses
  %i.ndj = icmp slt i32 %.0694.lcssa, %i.nde
  br i1 %i.ndj, label %.lr.ph9449.preheader, label %._crit_edge9450

.lr.ph9449.preheader:                             ; preds = %.preheader9088
  %.neg10343 = or disjoint i32 %.0694.lcssa, 1
  %xtraiter10330 = and i32 %i.nde, 1
  %lcmp.mod10331.not = icmp eq i32 %xtraiter10330, 0
  br i1 %lcmp.mod10331.not, label %.lr.ph9449.prol.loopexit, label %.lr.ph9449.prol

.lr.ph9449.prol:                                  ; preds = %.lr.ph9449.preheader
  %i.ndk = load i64, ptr %.0696.lcssa, align 1, !tbaa !23
  %i.ndl = insertelement <2 x i64> poison, i64 %i.ndk, i64 0
  %i.ndm = bitcast <2 x i64> %i.ndl to <8 x i16>
  %21 = shufflevector <8 x i16> %i.ndm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ndn = bitcast <8 x i16> %21 to <4 x float>
  %i.ndo = load i16, ptr %.0698.lcssa, align 2, !tbaa !26
  %i.ndp = zext i16 %i.ndo to i32
  %i.ndq = shl nuw i32 %i.ndp, 16
  %i.ndr = insertelement <4 x i32> poison, i32 %i.ndq, i64 0
  %i.nds = bitcast <4 x i32> %i.ndr to <4 x float>
  %i.ndt = shufflevector <4 x float> %i.nds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ndu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ndn, <4 x float> nofpclass(nan inf) %i.ndt, <4 x float> nofpclass(nan inf) %.15559.lcssa) ; 2 uses
  %i.ndv = getelementptr inbounds nuw i8, ptr %.0696.lcssa, i64 8
  %i.ndw = getelementptr inbounds nuw i8, ptr %.0698.lcssa, i64 2
  %i.ndx = or disjoint i32 %.0694.lcssa, 1
  br label %.lr.ph9449.prol.loopexit

.lr.ph9449.prol.loopexit:                         ; preds = %.lr.ph9449.prol, %.lr.ph9449.preheader
  %.lcssa10302.unr = phi <4 x float> [ poison, %.lr.ph9449.preheader ], [ %i.ndu, %.lr.ph9449.prol ]
  %.16959448.unr = phi i32 [ %.0694.lcssa, %.lr.ph9449.preheader ], [ %i.ndx, %.lr.ph9449.prol ]
  %.16979447.unr = phi ptr [ %.0696.lcssa, %.lr.ph9449.preheader ], [ %i.ndv, %.lr.ph9449.prol ]
  %.16999446.unr = phi ptr [ %.0698.lcssa, %.lr.ph9449.preheader ], [ %i.ndw, %.lr.ph9449.prol ]
  %.255609445.unr = phi <4 x float> [ %.15559.lcssa, %.lr.ph9449.preheader ], [ %i.ndu, %.lr.ph9449.prol ]
  %i.ndy = icmp eq i32 %i.nde, %.neg10343
  br i1 %i.ndy, label %._crit_edge9450, label %.lr.ph9449

.lr.ph9436:                                       ; preds = %bb.bu, %.lr.ph9436
  %.06949434 = phi i32 [ %i.nfg, %.lr.ph9436 ], [ 0, %bb.bu ]
  %.06969433 = phi ptr [ %i.nfe, %.lr.ph9436 ], [ %i.ncy, %bb.bu ] ; 5 uses
  %.06989432 = phi ptr [ %i.nff, %.lr.ph9436 ], [ %i.ncr, %bb.bu ] ; 2 uses
  %.055559431 = phi <4 x float> [ %i.nfd, %.lr.ph9436 ], [ zeroinitializer, %bb.bu ]
  %.055569430 = phi <4 x float> [ %i.nfc, %.lr.ph9436 ], [ zeroinitializer, %bb.bu ]
  %.055579429 = phi <4 x float> [ %i.nfb, %.lr.ph9436 ], [ zeroinitializer, %bb.bu ]
  %.155599428 = phi <4 x float> [ %i.nfa, %.lr.ph9436 ], [ %.05558, %bb.bu ]
  %i.ndz = load i64, ptr %.06969433, align 1, !tbaa !23
  %i.nea = insertelement <2 x i64> poison, i64 %i.ndz, i64 0
  %i.neb = bitcast <2 x i64> %i.nea to <8 x i16>
  %22 = shufflevector <8 x i16> %i.neb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nec = bitcast <8 x i16> %22 to <4 x float>
  %i.ned = getelementptr inbounds nuw i8, ptr %.06969433, i64 8
  %i.nee = load i64, ptr %i.ned, align 1, !tbaa !23
  %i.nef = insertelement <2 x i64> poison, i64 %i.nee, i64 0
  %i.neg = bitcast <2 x i64> %i.nef to <8 x i16>
  %23 = shufflevector <8 x i16> %i.neg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.neh = bitcast <8 x i16> %23 to <4 x float>
  %i.nei = getelementptr inbounds nuw i8, ptr %.06969433, i64 16
  %i.nej = load i64, ptr %i.nei, align 1, !tbaa !23
  %i.nek = insertelement <2 x i64> poison, i64 %i.nej, i64 0
  %i.nel = bitcast <2 x i64> %i.nek to <8 x i16>
  %24 = shufflevector <8 x i16> %i.nel, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nem = bitcast <8 x i16> %24 to <4 x float>
  %i.nen = getelementptr inbounds nuw i8, ptr %.06969433, i64 24
  %i.neo = load i64, ptr %i.nen, align 1, !tbaa !23
  %i.nep = insertelement <2 x i64> poison, i64 %i.neo, i64 0
  %i.neq = bitcast <2 x i64> %i.nep to <8 x i16>
  %25 = shufflevector <8 x i16> %i.neq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ner = bitcast <8 x i16> %25 to <4 x float>
  %i.nes = load i64, ptr %.06989432, align 1, !tbaa !23
  %i.net = insertelement <2 x i64> poison, i64 %i.nes, i64 0
  %i.neu = bitcast <2 x i64> %i.net to <8 x i16>
  %26 = shufflevector <8 x i16> %i.neu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nev = bitcast <8 x i16> %26 to <4 x float>   ; 4 uses
  %i.new = shufflevector <4 x float> %i.nev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nex = shufflevector <4 x float> %i.nev, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ney = shufflevector <4 x float> %i.nev, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.nez = shufflevector <4 x float> %i.nev, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.nfa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nec, <4 x float> nofpclass(nan inf) %i.new, <4 x float> nofpclass(nan inf) %.155599428) ; 2 uses
  %i.nfb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.neh, <4 x float> nofpclass(nan inf) %i.nex, <4 x float> nofpclass(nan inf) %.055579429) ; 2 uses
  %i.nfc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nem, <4 x float> nofpclass(nan inf) %i.ney, <4 x float> nofpclass(nan inf) %.055569430) ; 2 uses
  %i.nfd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ner, <4 x float> nofpclass(nan inf) %i.nez, <4 x float> nofpclass(nan inf) %.055559431) ; 2 uses
  %i.nfe = getelementptr inbounds nuw i8, ptr %.06969433, i64 32 ; 2 uses
  %i.nff = getelementptr inbounds nuw i8, ptr %.06989432, i64 8 ; 2 uses
  %i.nfg = add nuw nsw i32 %.06949434, 4          ; 2 uses
  %i.nfh = or disjoint i32 %i.nfg, 3
  %i.nfi = icmp slt i32 %i.nfh, %i.nde
  br i1 %i.nfi, label %.lr.ph9436, label %.preheader9088.loopexit, !llvm.loop !90

.lr.ph9449:                                       ; preds = %.lr.ph9449.prol.loopexit, %.lr.ph9449
  %.16959448 = phi i32 [ %i.ngj, %.lr.ph9449 ], [ %.16959448.unr, %.lr.ph9449.prol.loopexit ]
  %.16979447 = phi ptr [ %i.ngh, %.lr.ph9449 ], [ %.16979447.unr, %.lr.ph9449.prol.loopexit ] ; 3 uses
  %.16999446 = phi ptr [ %i.ngi, %.lr.ph9449 ], [ %.16999446.unr, %.lr.ph9449.prol.loopexit ] ; 3 uses
  %.255609445 = phi <4 x float> [ %i.ngg, %.lr.ph9449 ], [ %.255609445.unr, %.lr.ph9449.prol.loopexit ]
  %i.nfj = load i64, ptr %.16979447, align 1, !tbaa !23
  %i.nfk = insertelement <2 x i64> poison, i64 %i.nfj, i64 0
  %i.nfl = bitcast <2 x i64> %i.nfk to <8 x i16>
  %27 = shufflevector <8 x i16> %i.nfl, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nfm = bitcast <8 x i16> %27 to <4 x float>
  %i.nfn = load i16, ptr %.16999446, align 2, !tbaa !26
  %i.nfo = zext i16 %i.nfn to i32
  %i.nfp = shl nuw i32 %i.nfo, 16
  %i.nfq = insertelement <4 x i32> poison, i32 %i.nfp, i64 0
  %i.nfr = bitcast <4 x i32> %i.nfq to <4 x float>
  %i.nfs = shufflevector <4 x float> %i.nfr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfm, <4 x float> nofpclass(nan inf) %i.nfs, <4 x float> nofpclass(nan inf) %.255609445)
  %i.nfu = getelementptr inbounds nuw i8, ptr %.16979447, i64 8
  %i.nfv = getelementptr inbounds nuw i8, ptr %.16999446, i64 2
  %i.nfw = load i64, ptr %i.nfu, align 1, !tbaa !23
  %i.nfx = insertelement <2 x i64> poison, i64 %i.nfw, i64 0
  %i.nfy = bitcast <2 x i64> %i.nfx to <8 x i16>
  %28 = shufflevector <8 x i16> %i.nfy, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nfz = bitcast <8 x i16> %28 to <4 x float>
  %i.nga = load i16, ptr %i.nfv, align 2, !tbaa !26
  %i.ngb = zext i16 %i.nga to i32
  %i.ngc = shl nuw i32 %i.ngb, 16
  %i.ngd = insertelement <4 x i32> poison, i32 %i.ngc, i64 0
  %i.nge = bitcast <4 x i32> %i.ngd to <4 x float>
  %i.ngf = shufflevector <4 x float> %i.nge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ngg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfz, <4 x float> nofpclass(nan inf) %i.ngf, <4 x float> nofpclass(nan inf) %i.nft) ; 2 uses
  %i.ngh = getelementptr inbounds nuw i8, ptr %.16979447, i64 16
  %i.ngi = getelementptr inbounds nuw i8, ptr %.16999446, i64 4
  %i.ngj = add nuw nsw i32 %.16959448, 2          ; 2 uses
  %exitcond9654.not.1 = icmp eq i32 %i.ngj, %i.nde
  br i1 %exitcond9654.not.1, label %._crit_edge9450, label %.lr.ph9449, !llvm.loop !91

._crit_edge9450:                                  ; preds = %.lr.ph9449.prol.loopexit, %.lr.ph9449, %.preheader9088
  %.25560.lcssa = phi <4 x float> [ %.15559.lcssa, %.preheader9088 ], [ %.lcssa10302.unr, %.lr.ph9449.prol.loopexit ], [ %i.ngg, %.lr.ph9449 ]
  %i.ngk = fadd fast <4 x float> %.05556.lcssa, %.25560.lcssa ; 10 uses
  %i.ngl = load i32, ptr %11, align 4, !tbaa !9
  switch i32 %i.ngl, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.bv
    i32 2, label %.noexc1218
    i32 3, label %bb.bw
    i32 4, label %.noexc1219
    i32 5, label %.noexc1220
    i32 6, label %bb.bx
  ]

bb.bv:                                            ; preds = %._crit_edge9450
  %i.ngm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ngk, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc1218:                                       ; preds = %._crit_edge9450
  %i.ngn = load ptr, ptr %12, align 8, !tbaa !17
  %i.ngo = load float, ptr %i.ngn, align 4, !tbaa !29
  %i.ngp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ngk)
  %i.ngq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ngk)
  %i.ngr = insertelement <4 x float> poison, float %i.ngo, i64 0
  %i.ngs = shufflevector <4 x float> %i.ngr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ngt = fmul fast <4 x float> %i.ngs, %i.ngq
  %i.ngu = fadd fast <4 x float> %i.ngt, %i.ngp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bw:                                            ; preds = %._crit_edge9450
  %i.ngv = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.ngw = load float, ptr %i.ngv, align 4, !tbaa !29
  %i.ngx = insertelement <4 x float> poison, float %i.ngw, i64 0
  %i.ngy = shufflevector <4 x float> %i.ngx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ngz = getelementptr inbounds nuw i8, ptr %i.ngv, i64 4
  %i.nha = load float, ptr %i.ngz, align 4, !tbaa !29
  %i.nhb = insertelement <4 x float> poison, float %i.nha, i64 0
  %i.nhc = shufflevector <4 x float> %i.nhb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nhd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ngk, <4 x float> nofpclass(nan inf) %i.ngy)
  %i.nhe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nhd, <4 x float> nofpclass(nan inf) %i.nhc)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc1219:                                       ; preds = %._crit_edge9450
  %i.nhf = fneg fast <4 x float> %i.ngk
  %i.nhg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nhf, <4 x float> splat (float f0x42B0C0A5))
  %i.nhh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nhg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nhi = fmul fast <4 x float> %i.nhh, splat (float f0x3FB8AA3B)
  %i.nhj = fadd fast <4 x float> %i.nhi, splat (float 5.000000e-01) ; 2 uses
  %i.nhk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nhj)
  %i.nhl = sitofp fast <4 x i32> %i.nhk to <4 x float> ; 2 uses
  %i.nhm = fcmp fast olt <4 x float> %i.nhj, %i.nhl
  %i.nhn = select <4 x i1> %i.nhm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nho = fsub fast <4 x float> %i.nhl, %i.nhn   ; 2 uses
  %i.nhp = fneg fast <4 x float> %i.nho           ; 2 uses
  %i.nhq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nhp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nhh)
  %i.nhr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nhp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nhq) ; 8 uses
  %i.nhs = fmul fast <4 x float> %i.nhr, %i.nhr
  %i.nht = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.nhu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nht, <4 x float> nofpclass(nan inf) %i.nhr, <4 x float> splat (float f0x3C088908))
  %i.nhv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhu, <4 x float> nofpclass(nan inf) %i.nhr, <4 x float> splat (float f0x3D2AA9C1))
  %i.nhw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhv, <4 x float> nofpclass(nan inf) %i.nhr, <4 x float> splat (float f0x3E2AAAAA))
  %i.nhx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhw, <4 x float> nofpclass(nan inf) %i.nhr, <4 x float> splat (float 5.000000e-01))
  %i.nhy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nhx, <4 x float> nofpclass(nan inf) %i.nhs, <4 x float> nofpclass(nan inf) %i.nhr)
  %i.nhz = fadd fast <4 x float> %i.nhy, splat (float 1.000000e+00)
  %i.nia = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nho)
  %i.nib = shl <4 x i32> %i.nia, splat (i32 23)
  %i.nic = add <4 x i32> %i.nib, splat (i32 1065353216)
  %i.nid = bitcast <4 x i32> %i.nic to <4 x float>
  %i.nie = fmul fast <4 x float> %i.nhz, %i.nid
  %i.nif = fadd fast <4 x float> %i.nie, splat (float 1.000000e+00)
  %i.nig = fdiv fast <4 x float> splat (float 1.000000e+00), %i.nif
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc1220:                                       ; preds = %._crit_edge9450
  %i.nih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ngk, <4 x float> splat (float f0x42B0C0A5))
  %i.nii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nih, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nij = fmul fast <4 x float> %i.nii, splat (float f0x3FB8AA3B)
  %i.nik = fadd fast <4 x float> %i.nij, splat (float 5.000000e-01) ; 2 uses
  %i.nil = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nik)
  %i.nim = sitofp fast <4 x i32> %i.nil to <4 x float> ; 2 uses
  %i.nin = fcmp fast olt <4 x float> %i.nik, %i.nim
  %i.nio = select <4 x i1> %i.nin, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nip = fsub fast <4 x float> %i.nim, %i.nio   ; 2 uses
  %i.niq = fneg fast <4 x float> %i.nip           ; 2 uses
  %i.nir = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.niq, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nii)
  %i.nis = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.niq, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nir) ; 8 uses
  %i.nit = fmul fast <4 x float> %i.nis, %i.nis
  %i.niu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nis, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.niv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.niu, <4 x float> nofpclass(nan inf) %i.nis, <4 x float> splat (float f0x3C088908))
  %i.niw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.niv, <4 x float> nofpclass(nan inf) %i.nis, <4 x float> splat (float f0x3D2AA9C1))
  %i.nix = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.niw, <4 x float> nofpclass(nan inf) %i.nis, <4 x float> splat (float f0x3E2AAAAA))
  %i.niy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nix, <4 x float> nofpclass(nan inf) %i.nis, <4 x float> splat (float 5.000000e-01))
  %i.niz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.niy, <4 x float> nofpclass(nan inf) %i.nit, <4 x float> nofpclass(nan inf) %i.nis)
  %i.nja = fadd fast <4 x float> %i.niz, splat (float 1.000000e+00)
  %i.njb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nip)
  %i.njc = shl <4 x i32> %i.njb, splat (i32 23)
  %i.njd = add <4 x i32> %i.njc, splat (i32 1065353216)
  %i.nje = bitcast <4 x i32> %i.njd to <4 x float>
  %i.njf = fmul fast <4 x float> %i.nja, %i.nje
  %i.njg = fadd fast <4 x float> %i.njf, splat (float 1.000000e+00) ; 2 uses
  %i.njh = fcmp fast ole <4 x float> %i.njg, zeroinitializer
  %i.nji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.njg, <4 x float> splat (float f0x00800000))
  %i.njj = bitcast <4 x float> %i.nji to <4 x i32> ; 2 uses
  %i.njk = lshr <4 x i32> %i.njj, splat (i32 23)
  %i.njl = and <4 x i32> %i.njj, splat (i32 -2139095041)
  %i.njm = or disjoint <4 x i32> %i.njl, splat (i32 1056964608)
  %i.njn = bitcast <4 x i32> %i.njm to <4 x float> ; 3 uses
  %i.njo = add nsw <4 x i32> %i.njk, splat (i32 -127)
  %i.njp = sitofp fast <4 x i32> %i.njo to <4 x float> ; 2 uses
  %i.njq = fadd fast <4 x float> %i.njp, splat (float 1.000000e+00)
  %i.njr = fcmp fast olt <4 x float> %i.njn, splat (float f0x3F3504F3) ; 2 uses
  %i.njs = select <4 x i1> %i.njr, <4 x float> %i.njn, <4 x float> zeroinitializer
  %i.njt = fadd fast <4 x float> %i.njn, splat (float -1.000000e+00)
  %i.nju = select fast <4 x i1> %i.njr, <4 x float> %i.njp, <4 x float> %i.njq ; 2 uses
  %i.njv = fadd fast <4 x float> %i.njt, %i.njs   ; 12 uses
  %i.njw = fmul fast <4 x float> %i.njv, %i.njv   ; 2 uses
  %i.njx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.njv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.njy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.njx, <4 x float> nofpclass(nan inf) %i.njv, <4 x float> splat (float f0x3DEF251A))
  %i.njz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.njy, <4 x float> nofpclass(nan inf) %i.njv, <4 x float> splat (float f0xBDFE5D4F))
  %i.nka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.njz, <4 x float> nofpclass(nan inf) %i.njv, <4 x float> splat (float f0x3E11E9BF))
  %i.nkb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nka, <4 x float> nofpclass(nan inf) %i.njv, <4 x float> splat (float f0xBE2AAE50))
  %i.nkc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkb, <4 x float> nofpclass(nan inf) %i.njv, <4 x float> splat (float f0x3E4CCEAC))
  %i.nkd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkc, <4 x float> nofpclass(nan inf) %i.njv, <4 x float> splat (float f0xBE7FFFFC))
  %i.nke = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkd, <4 x float> nofpclass(nan inf) %i.njv, <4 x float> splat (float f0x3EAAAAAA))
  %i.nkf = fmul fast <4 x float> %i.njw, %i.njv
  %i.nkg = fmul fast <4 x float> %i.nkf, %i.nke
  %i.nkh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nju, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nkg)
  %i.nki = fneg fast <4 x float> %i.njw
  %i.nkj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nki, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.nkh)
  %i.nkk = fadd fast <4 x float> %i.nkj, %i.njv
  %i.nkl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nju, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nkk)
  %.neg = fmul fast <4 x float> %i.nkl, splat (float -2.000000e+00)
  %i.nkm = select fast <4 x i1> %i.njh, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.nkn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nkm, <4 x float> splat (float f0x42B0C0A5))
  %i.nko = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nkn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nkp = fmul fast <4 x float> %i.nko, splat (float f0x3FB8AA3B)
  %i.nkq = fadd fast <4 x float> %i.nkp, splat (float 5.000000e-01) ; 2 uses
  %i.nkr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nkq)
  %i.nks = sitofp fast <4 x i32> %i.nkr to <4 x float> ; 2 uses
  %i.nkt = fcmp fast olt <4 x float> %i.nkq, %i.nks
  %i.nku = select <4 x i1> %i.nkt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nkv = fsub fast <4 x float> %i.nks, %i.nku   ; 2 uses
  %i.nkw = fneg fast <4 x float> %i.nkv           ; 2 uses
  %i.nkx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nkw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nko)
  %i.nky = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nkw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nkx) ; 8 uses
  %i.nkz = fmul fast <4 x float> %i.nky, %i.nky
  %i.nla = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nky, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.nlb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nla, <4 x float> nofpclass(nan inf) %i.nky, <4 x float> splat (float f0x3C088908))
  %i.nlc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nlb, <4 x float> nofpclass(nan inf) %i.nky, <4 x float> splat (float f0x3D2AA9C1))
  %i.nld = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nlc, <4 x float> nofpclass(nan inf) %i.nky, <4 x float> splat (float f0x3E2AAAAA))
  %i.nle = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nld, <4 x float> nofpclass(nan inf) %i.nky, <4 x float> splat (float 5.000000e-01))
  %i.nlf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nle, <4 x float> nofpclass(nan inf) %i.nkz, <4 x float> nofpclass(nan inf) %i.nky)
  %i.nlg = fadd fast <4 x float> %i.nlf, splat (float 1.000000e+00)
  %i.nlh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nkv)
  %i.nli = shl <4 x i32> %i.nlh, splat (i32 23)
  %i.nlj = add <4 x i32> %i.nli, splat (i32 1065353216)
  %i.nlk = bitcast <4 x i32> %i.nlj to <4 x float>
  %i.nll = fmul fast <4 x float> %i.nlg, %i.nlk
  %i.nlm = fadd fast <4 x float> %i.nll, splat (float 1.000000e+00)
  %i.nln = fdiv fast <4 x float> splat (float 2.000000e+00), %i.nlm
  %i.nlo = fadd fast <4 x float> %i.nln, splat (float -1.000000e+00)
  %i.nlp = fmul fast <4 x float> %i.nlo, %i.ngk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.bx:                                            ; preds = %._crit_edge9450
  %i.nlq = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.nlr = load float, ptr %i.nlq, align 4, !tbaa !29
  %i.nls = insertelement <4 x float> poison, float %i.nlr, i64 0
  %i.nlt = shufflevector <4 x float> %i.nls, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nlu = getelementptr inbounds nuw i8, ptr %i.nlq, i64 4
  %i.nlv = load float, ptr %i.nlu, align 4, !tbaa !29
  %i.nlw = insertelement <4 x float> poison, float %i.nlv, i64 0
  %i.nlx = shufflevector <4 x float> %i.nlw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nly = fmul fast <4 x float> %i.nlt, %i.ngk
  %i.nlz = fadd fast <4 x float> %i.nly, %i.nlx
  %i.nma = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nlz, <4 x float> zeroinitializer)
  %i.nmb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nma, <4 x float> splat (float 1.000000e+00))
  %i.nmc = fmul fast <4 x float> %i.nmb, %i.ngk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.bx, %.noexc1220, %.noexc1219, %bb.bw, %.noexc1218, %bb.bv, %._crit_edge9450
  %.0.i1217 = phi nsz <4 x float> [ %i.nmc, %bb.bx ], [ %i.ngm, %bb.bv ], [ %i.ngu, %.noexc1218 ], [ %i.nhe, %bb.bw ], [ %i.nig, %.noexc1219 ], [ %i.nlp, %.noexc1220 ], [ %i.ngk, %._crit_edge9450 ]
  %i.nmd = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %.0.i1217)
  %i.nme = bitcast <8 x bfloat> %i.nmd to <2 x i64>
  %i.nmf = extractelement <2 x i64> %i.nme, i64 0
  store i64 %i.nmf, ptr %.07019452, align 1, !tbaa !23
  %i.nmg = getelementptr inbounds nuw i8, ptr %.07019452, i64 8
end_hunk_6
begin_hunk_7_@_ZN4ncnnL27innerproduct_gemm_bf16s_sseERKNS_3MatERS0_S2_S2_iS2_RKNS_6OptionE.omp_outlined:bb.a
  %.055549456.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph9461.preheader ], [ %i.nor, %.preheader9087.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod10337)
  %i.nnu = load <8 x bfloat>, ptr %.06869458.epil.init, align 1, !tbaa !23
  %i.nnv = fpext fast <8 x bfloat> %i.nnu to <8 x float>
  %i.nnw = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.06899457.epil.init)
  %i.nnx = bitcast <16 x i8> %i.nnw to <8 x bfloat>
  %i.nny = fpext fast <8 x bfloat> %i.nnx to <8 x float>
  %i.nnz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nnv, <8 x float> nofpclass(nan inf) %i.nny, <8 x float> nofpclass(nan inf) %.055549456.epil.init)
  %i.noa = getelementptr inbounds nuw i8, ptr %.06869458.epil.init, i64 16
  %i.nob = getelementptr inbounds nuw i8, ptr %.06899457.epil.init, i64 16
  br label %.preheader9087

.preheader9087:                                   ; preds = %.lr.ph9461.epil.preheader, %.preheader9087.loopexit.unr-lcssa, %bb.cb
  %.05554.lcssa = phi <8 x float> [ zeroinitializer, %bb.cb ], [ %i.nor, %.preheader9087.loopexit.unr-lcssa ], [ %i.nnz, %.lr.ph9461.epil.preheader ] ; 2 uses
  %.0689.lcssa = phi ptr [ %i.nnr, %bb.cb ], [ %i.not, %.preheader9087.loopexit.unr-lcssa ], [ %i.nob, %.lr.ph9461.epil.preheader ] ; 2 uses
  %.0686.lcssa = phi ptr [ %i.nng, %bb.cb ], [ %i.nos, %.preheader9087.loopexit.unr-lcssa ], [ %i.noa, %.lr.ph9461.epil.preheader ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.cb ], [ %i.nnl, %.preheader9087.loopexit.unr-lcssa ], [ %i.nnl, %.lr.ph9461.epil.preheader ] ; 3 uses
  %i.noc = or disjoint i32 %.0.lcssa, 3
  %i.nod = icmp slt i32 %i.noc, %i.nni
  br i1 %i.nod, label %.lr.ph9471, label %.preheader

.lr.ph9461:                                       ; preds = %.lr.ph9461.preheader, %.lr.ph9461
  %.06869458 = phi ptr [ %i.nos, %.lr.ph9461 ], [ %i.nng, %.lr.ph9461.preheader ] ; 3 uses
  %.06899457 = phi ptr [ %i.not, %.lr.ph9461 ], [ %i.nnr, %.lr.ph9461.preheader ] ; 3 uses
  %.055549456 = phi <8 x float> [ %i.nor, %.lr.ph9461 ], [ zeroinitializer, %.lr.ph9461.preheader ]
  %niter10339 = phi i32 [ %niter10339.next.1, %.lr.ph9461 ], [ 0, %.lr.ph9461.preheader ]
  %i.noe = load <8 x bfloat>, ptr %.06869458, align 1, !tbaa !23
  %i.nof = fpext fast <8 x bfloat> %i.noe to <8 x float>
  %i.nog = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %.06899457)
  %i.noh = bitcast <16 x i8> %i.nog to <8 x bfloat>
  %i.noi = fpext fast <8 x bfloat> %i.noh to <8 x float>
  %i.noj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nof, <8 x float> nofpclass(nan inf) %i.noi, <8 x float> nofpclass(nan inf) %.055549456)
  %i.nok = getelementptr inbounds nuw i8, ptr %.06869458, i64 16
  %i.nol = getelementptr inbounds nuw i8, ptr %.06899457, i64 16
  %i.nom = load <8 x bfloat>, ptr %i.nok, align 1, !tbaa !23
  %i.non = fpext fast <8 x bfloat> %i.nom to <8 x float>
  %i.noo = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr nonnull %i.nol)
  %i.nop = bitcast <16 x i8> %i.noo to <8 x bfloat>
  %i.noq = fpext fast <8 x bfloat> %i.nop to <8 x float>
  %i.nor = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.non, <8 x float> nofpclass(nan inf) %i.noq, <8 x float> nofpclass(nan inf) %i.noj) ; 3 uses
  %i.nos = getelementptr inbounds nuw i8, ptr %.06869458, i64 32 ; 3 uses
  %i.not = getelementptr inbounds nuw i8, ptr %.06899457, i64 32 ; 3 uses
  %niter10339.next.1 = add i32 %niter10339, 2     ; 2 uses
  %niter10339.ncmp.1.not = icmp eq i32 %niter10339.next.1, %unroll_iter10338
  br i1 %niter10339.ncmp.1.not, label %.preheader9087.loopexit.unr-lcssa, label %.lr.ph9461, !llvm.loop !93

.preheader:                                       ; preds = %.lr.ph9471, %.preheader9087
  %.05553.lcssa = phi <4 x float> [ zeroinitializer, %.preheader9087 ], [ %i.nru, %.lr.ph9471 ]
  %.1690.lcssa = phi ptr [ %.0689.lcssa, %.preheader9087 ], [ %i.nrw, %.lr.ph9471 ] ; 5 uses
  %.1687.lcssa = phi ptr [ %.0686.lcssa, %.preheader9087 ], [ %i.nrv, %.lr.ph9471 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader9087 ], [ %i.nrx, %.lr.ph9471 ] ; 5 uses
  %i.nou = icmp slt i32 %.1.lcssa, %i.nni
  br i1 %i.nou, label %iter.check, label %._crit_edge9481

iter.check:                                       ; preds = %.preheader
  %i.nov = xor i32 %.1.lcssa, -1
  %i.now = add i32 %i.nni, %i.nov                 ; 3 uses
  %i.nox = zext i32 %i.now to i64
  %i.noy = add nuw nsw i64 %i.nox, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.now, 7
  br i1 %min.iters.check, label %.lr.ph9480.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10179 = icmp ult i32 %i.now, 63
  br i1 %min.iters.check10179, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.noz = and i64 %i.noy, 56
  %n.vec = and i64 %i.noy, 8589934528             ; 5 uses
  %i.npa = trunc i64 %n.vec to i32
  %i.npb = add i32 %.1.lcssa, %i.npa
  %i.npc = shl nuw nsw i64 %n.vec, 1              ; 2 uses
  %i.npd = getelementptr i8, ptr %.1687.lcssa, i64 %i.npc
  %i.npe = getelementptr i8, ptr %.1690.lcssa, i64 %i.npc
  %i.npf = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0684, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ %i.npf, %vector.ph ], [ %i.nqp, %vector.body ]
  %vec.phi10180 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.nqq, %vector.body ]
  %vec.phi10181 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.nqr, %vector.body ]
  %vec.phi10182 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.nqs, %vector.body ]
  %i.npg = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.1687.lcssa, i64 %i.npg ; 4 uses
  %next.gep10183 = getelementptr i8, ptr %.1690.lcssa, i64 %i.npg ; 4 uses
  %i.nph = getelementptr i8, ptr %next.gep, i64 32
  %i.npi = getelementptr i8, ptr %next.gep, i64 64
  %i.npj = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !26
  %wide.load10184 = load <16 x i16>, ptr %i.nph, align 2, !tbaa !26
  %wide.load10185 = load <16 x i16>, ptr %i.npi, align 2, !tbaa !26
  %wide.load10186 = load <16 x i16>, ptr %i.npj, align 2, !tbaa !26
  %i.npk = zext <16 x i16> %wide.load to <16 x i32>
  %i.npl = zext <16 x i16> %wide.load10184 to <16 x i32>
  %i.npm = zext <16 x i16> %wide.load10185 to <16 x i32>
  %i.npn = zext <16 x i16> %wide.load10186 to <16 x i32>
  %i.npo = shl nuw <16 x i32> %i.npk, splat (i32 16)
  %i.npp = shl nuw <16 x i32> %i.npl, splat (i32 16)
  %i.npq = shl nuw <16 x i32> %i.npm, splat (i32 16)
  %i.npr = shl nuw <16 x i32> %i.npn, splat (i32 16)
  %i.nps = bitcast <16 x i32> %i.npo to <16 x float>
  %i.npt = bitcast <16 x i32> %i.npp to <16 x float>
  %i.npu = bitcast <16 x i32> %i.npq to <16 x float>
  %i.npv = bitcast <16 x i32> %i.npr to <16 x float>
  %i.npw = getelementptr i8, ptr %next.gep10183, i64 32
  %i.npx = getelementptr i8, ptr %next.gep10183, i64 64
  %i.npy = getelementptr i8, ptr %next.gep10183, i64 96
  %wide.load10187 = load <16 x i16>, ptr %next.gep10183, align 2, !tbaa !26
  %wide.load10188 = load <16 x i16>, ptr %i.npw, align 2, !tbaa !26
  %wide.load10189 = load <16 x i16>, ptr %i.npx, align 2, !tbaa !26
  %wide.load10190 = load <16 x i16>, ptr %i.npy, align 2, !tbaa !26
  %i.npz = zext <16 x i16> %wide.load10187 to <16 x i32>
  %i.nqa = zext <16 x i16> %wide.load10188 to <16 x i32>
  %i.nqb = zext <16 x i16> %wide.load10189 to <16 x i32>
  %i.nqc = zext <16 x i16> %wide.load10190 to <16 x i32>
  %i.nqd = shl nuw <16 x i32> %i.npz, splat (i32 16)
  %i.nqe = shl nuw <16 x i32> %i.nqa, splat (i32 16)
  %i.nqf = shl nuw <16 x i32> %i.nqb, splat (i32 16)
  %i.nqg = shl nuw <16 x i32> %i.nqc, splat (i32 16)
  %i.nqh = bitcast <16 x i32> %i.nqd to <16 x float>
  %i.nqi = bitcast <16 x i32> %i.nqe to <16 x float>
  %i.nqj = bitcast <16 x i32> %i.nqf to <16 x float>
  %i.nqk = bitcast <16 x i32> %i.nqg to <16 x float>
  %i.nql = fmul fast <16 x float> %i.nqh, %i.nps
  %i.nqm = fmul fast <16 x float> %i.nqi, %i.npt
  %i.nqn = fmul fast <16 x float> %i.nqj, %i.npu
  %i.nqo = fmul fast <16 x float> %i.nqk, %i.npv
  %i.nqp = fadd fast <16 x float> %i.nql, %vec.phi ; 2 uses
  %i.nqq = fadd fast <16 x float> %i.nqm, %vec.phi10180 ; 2 uses
  %i.nqr = fadd fast <16 x float> %i.nqn, %vec.phi10181 ; 2 uses
  %i.nqs = fadd fast <16 x float> %i.nqo, %vec.phi10182 ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.nqt = icmp eq i64 %index.next, %n.vec
  br i1 %i.nqt, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.nqq, %i.nqp
  %bin.rdx10191 = fadd fast <16 x float> %i.nqr, %bin.rdx
  %bin.rdx10192 = fadd fast <16 x float> %i.nqs, %bin.rdx10191
  %i.nqu = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx10192) ; 3 uses
  %cmp.n = icmp eq i64 %i.noy, %n.vec
  br i1 %cmp.n, label %._crit_edge9481, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.noz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph9480.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.nqu, %vec.epilog.iter.check ], [ %.0684, %vector.main.loop.iter.check ]
  %n.vec10193 = and i64 %i.noy, 8589934584        ; 4 uses
  %i.nqv = trunc i64 %n.vec10193 to i32
  %i.nqw = add i32 %.1.lcssa, %i.nqv
  %i.nqx = shl nuw nsw i64 %n.vec10193, 1         ; 2 uses
  %i.nqy = getelementptr i8, ptr %.1687.lcssa, i64 %i.nqx
  %i.nqz = getelementptr i8, ptr %.1690.lcssa, i64 %i.nqx
  %i.nra = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10194 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next10200, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi10195 = phi <8 x float> [ %i.nra, %vec.epilog.ph ], [ %i.nrj, %vec.epilog.vector.body ]
  %i.nrb = shl i64 %index10194, 1                 ; 2 uses
  %next.gep10196 = getelementptr i8, ptr %.1687.lcssa, i64 %i.nrb
  %next.gep10197 = getelementptr i8, ptr %.1690.lcssa, i64 %i.nrb
  %wide.load10198 = load <8 x i16>, ptr %next.gep10196, align 2, !tbaa !26
  %i.nrc = zext <8 x i16> %wide.load10198 to <8 x i32>
  %i.nrd = shl nuw <8 x i32> %i.nrc, splat (i32 16)
  %i.nre = bitcast <8 x i32> %i.nrd to <8 x float>
  %wide.load10199 = load <8 x i16>, ptr %next.gep10197, align 2, !tbaa !26
  %i.nrf = zext <8 x i16> %wide.load10199 to <8 x i32>
  %i.nrg = shl nuw <8 x i32> %i.nrf, splat (i32 16)
  %i.nrh = bitcast <8 x i32> %i.nrg to <8 x float>
  %i.nri = fmul fast <8 x float> %i.nrh, %i.nre
  %i.nrj = fadd fast <8 x float> %i.nri, %vec.phi10195 ; 2 uses
  %index.next10200 = add nuw i64 %index10194, 8   ; 2 uses
  %i.nrk = icmp eq i64 %index.next10200, %n.vec10193
  br i1 %i.nrk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.nrl = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nrj) ; 2 uses
  %cmp.n10201 = icmp eq i64 %i.noy, %n.vec10193
  br i1 %cmp.n10201, label %._crit_edge9481, label %.lr.ph9480.preheader

.lr.ph9480.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.29479.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.npb, %vec.epilog.iter.check ], [ %i.nqw, %vec.epilog.middle.block ]
  %.16859478.ph = phi float [ %.0684, %iter.check ], [ %i.nqu, %vec.epilog.iter.check ], [ %i.nrl, %vec.epilog.middle.block ]
  %.26889477.ph = phi ptr [ %.1687.lcssa, %iter.check ], [ %i.npd, %vec.epilog.iter.check ], [ %i.nqy, %vec.epilog.middle.block ]
  %.26919476.ph = phi ptr [ %.1690.lcssa, %iter.check ], [ %i.npe, %vec.epilog.iter.check ], [ %i.nqz, %vec.epilog.middle.block ]
  br label %.lr.ph9480

.lr.ph9471:                                       ; preds = %.preheader9087, %.lr.ph9471
  %.19470 = phi i32 [ %i.nrx, %.lr.ph9471 ], [ %.0.lcssa, %.preheader9087 ]
  %.16879469 = phi ptr [ %i.nrv, %.lr.ph9471 ], [ %.0686.lcssa, %.preheader9087 ] ; 2 uses
  %.16909468 = phi ptr [ %i.nrw, %.lr.ph9471 ], [ %.0689.lcssa, %.preheader9087 ] ; 2 uses
  %.055539467 = phi <4 x float> [ %i.nru, %.lr.ph9471 ], [ zeroinitializer, %.preheader9087 ]
  %i.nrm = load i64, ptr %.16879469, align 1, !tbaa !23
  %i.nrn = insertelement <2 x i64> poison, i64 %i.nrm, i64 0
  %i.nro = bitcast <2 x i64> %i.nrn to <8 x i16>
  %29 = shufflevector <8 x i16> %i.nro, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nrp = bitcast <8 x i16> %29 to <4 x float>
  %i.nrq = load i64, ptr %.16909468, align 1, !tbaa !23
  %i.nrr = insertelement <2 x i64> poison, i64 %i.nrq, i64 0
  %i.nrs = bitcast <2 x i64> %i.nrr to <8 x i16>
  %30 = shufflevector <8 x i16> %i.nrs, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nrt = bitcast <8 x i16> %30 to <4 x float>
  %i.nru = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nrp, <4 x float> nofpclass(nan inf) %i.nrt, <4 x float> nofpclass(nan inf) %.055539467) ; 2 uses
  %i.nrv = getelementptr inbounds nuw i8, ptr %.16879469, i64 8 ; 2 uses
  %i.nrw = getelementptr inbounds nuw i8, ptr %.16909468, i64 8 ; 2 uses
  %i.nrx = add nuw nsw i32 %.19470, 4             ; 3 uses
  %i.nry = or disjoint i32 %i.nrx, 3
  %i.nrz = icmp slt i32 %i.nry, %i.nni
  br i1 %i.nrz, label %.lr.ph9471, label %.preheader, !llvm.loop !96

.lr.ph9480:                                       ; preds = %.lr.ph9480.preheader, %.lr.ph9480
  %.29479 = phi i32 [ %i.nsm, %.lr.ph9480 ], [ %.29479.ph, %.lr.ph9480.preheader ]
  %.16859478 = phi float [ %i.nsl, %.lr.ph9480 ], [ %.16859478.ph, %.lr.ph9480.preheader ]
  %.26889477 = phi ptr [ %i.nsa, %.lr.ph9480 ], [ %.26889477.ph, %.lr.ph9480.preheader ] ; 2 uses
  %.26919476 = phi ptr [ %i.nsf, %.lr.ph9480 ], [ %.26919476.ph, %.lr.ph9480.preheader ] ; 2 uses
  %i.nsa = getelementptr inbounds nuw i8, ptr %.26889477, i64 2
  %i.nsb = load i16, ptr %.26889477, align 2, !tbaa !26
  %i.nsc = zext i16 %i.nsb to i32
  %i.nsd = shl nuw i32 %i.nsc, 16
  %i.nse = bitcast i32 %i.nsd to float
  %i.nsf = getelementptr inbounds nuw i8, ptr %.26919476, i64 2
  %i.nsg = load i16, ptr %.26919476, align 2, !tbaa !26
  %i.nsh = zext i16 %i.nsg to i32
  %i.nsi = shl nuw i32 %i.nsh, 16
  %i.nsj = bitcast i32 %i.nsi to float
  %i.nsk = fmul fast float %i.nsj, %i.nse
  %i.nsl = fadd fast float %i.nsk, %.16859478     ; 2 uses
  %i.nsm = add nuw nsw i32 %.29479, 1             ; 2 uses
  %exitcond9658.not = icmp eq i32 %i.nsm, %i.nni
  br i1 %exitcond9658.not, label %._crit_edge9481, label %.lr.ph9480, !llvm.loop !97

._crit_edge9481:                                  ; preds = %.lr.ph9480, %middle.block, %vec.epilog.middle.block, %.preheader
  %.1685.lcssa = phi float [ %.0684, %.preheader ], [ %i.nrl, %vec.epilog.middle.block ], [ %i.nqu, %middle.block ], [ %i.nsl, %.lr.ph9480 ]
  %i.nsn = shufflevector <8 x float> %.05554.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nso = shufflevector <8 x float> %.05554.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nsp = fadd fast <4 x float> %i.nso, %i.nsn
  %i.nsq = fadd fast <4 x float> %i.nsp, %.05553.lcssa
  %i.nsr = call fast float @llvm.vector.reduce.fadd.v4f32(float %.1685.lcssa, <4 x float> %i.nsq) ; 13 uses
  switch i32 %i.nnk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.cc
    i32 2, label %bb.cd
    i32 3, label %bb.ce
    i32 4, label %bb.cf
    i32 5, label %bb.cg
    i32 6, label %bb.ch
  ]

bb.cc:                                            ; preds = %._crit_edge9481
  %i.nss = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.nsr, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.cd:                                            ; preds = %._crit_edge9481
  %i.nst = load ptr, ptr %12, align 8, !tbaa !17
  %i.nsu = load float, ptr %i.nst, align 4, !tbaa !29
  %i.nsv = fcmp fast ogt float %i.nsr, 0.000000e+00
  %i.nsw = select fast i1 %i.nsv, float 1.000000e+00, float %i.nsu
  %i.nsx = fmul fast float %i.nsw, %i.nsr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ce:                                            ; preds = %._crit_edge9481
  %i.nsy = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.nsz = load float, ptr %i.nsy, align 4, !tbaa !29
  %i.nta = getelementptr inbounds nuw i8, ptr %i.nsy, i64 4
  %i.ntb = load float, ptr %i.nta, align 4, !tbaa !29
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.nsr, float %i.nsz)
  %spec.select9021 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select, float %i.ntb)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.cf:                                            ; preds = %._crit_edge9481
  %.sroa.speculated2730 = call nnan ninf nsz float @llvm.minnum.f32(float %i.nsr, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2730, float f0xC2B0C0A5)
  %i.ntc = fneg fast float %.sroa.speculated
  %i.ntd = call fast float @llvm.exp.f32(float %i.ntc)
  %i.nte = fadd fast float %i.ntd, 1.000000e+00
  %i.ntf = fdiv fast float 1.000000e+00, %i.nte
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.cg:                                            ; preds = %._crit_edge9481
  %i.ntg = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.nsr)
  %i.nth = fadd fast float %i.ntg, 1.000000e+00
  %i.nti = call fast float @llvm.log.f32(float %i.nth)
  %i.ntj = call fast float @llvm.tanh.f32(float %i.nti)
  %i.ntk = fmul fast float %i.ntj, %i.nsr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ch:                                            ; preds = %._crit_edge9481
  %i.ntl = load ptr, ptr %12, align 8, !tbaa !17  ; 2 uses
  %i.ntm = load float, ptr %i.ntl, align 4, !tbaa !29 ; 3 uses
  %i.ntn = getelementptr inbounds nuw i8, ptr %i.ntl, i64 4
  %i.nto = load float, ptr %i.ntn, align 4, !tbaa !29 ; 2 uses
  %i.ntp = fneg fast float %i.nto
  %i.ntq = fdiv fast float %i.ntp, %i.ntm         ; 2 uses
  %i.ntr = fcmp fast olt float %i.nsr, %i.ntq
  br i1 %i.ntr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nts = fdiv fast float 1.000000e+00, %i.ntm
  %i.ntt = fadd fast float %i.ntq, %i.nts
  %i.ntu = fcmp fast ogt float %i.nsr, %i.ntt
  br i1 %i.ntu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ntv = fmul fast float %i.ntm, %i.nsr
  %i.ntw = fadd fast float %i.ntv, %i.nto
  %i.ntx = fmul fast float %i.ntw, %i.nsr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.ce, %bb.cj, %bb.ci, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %._crit_edge9481, %bb.ch
  %.15666 = phi nsz float [ %i.nsr, %._crit_edge9481 ], [ %i.nss, %bb.cc ], [ %i.nsx, %bb.cd ], [ 0.000000e+00, %bb.ch ], [ %spec.select9021, %bb.ce ], [ %i.ntf, %bb.cf ], [ %i.ntk, %bb.cg ], [ %i.ntx, %bb.cj ], [ %i.nsr, %bb.ci ]
  %i.nty = bitcast float %.15666 to i32
  %i.ntz = lshr i32 %i.nty, 16
  %i.nua = trunc nuw i32 %i.ntz to i16
  store i16 %i.nua, ptr %.06939483, align 2, !tbaa !26
  %i.nub = getelementptr inbounds nuw i8, ptr %.06939483, i64 2
  %indvars.iv.next9660 = add nuw nsw i64 %indvars.iv9659, 1 ; 2 uses
  %exitcond9662.not = icmp eq i64 %indvars.iv.next9660, %wide.trip.count
  br i1 %exitcond9662.not, label %.thread8992.thread9019, label %bb.bz, !llvm.loop !98

.thread8992.thread9019:                           ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.ae, %bb.by, %.loopexit.thread, %.thread8992.thread, %.thread8992
  %.pr8999.pr9815 = phi i32 [ %.pr8999.pr, %.thread8992 ], [ %.pr8999.pr9790, %bb.by ], [ %.pr8999.pr98049923, %.loopexit.thread ], [ %.pr8999.pr9790, %.thread8992.thread ], [ %.pr8999.pr9805, %bb.ae ], [ %.pr8999.pr9790, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr89919777 = phi i32 [ %.pr8999.pr, %.thread8992 ], [ %.pr89919778, %bb.by ], [ %.pr899197669924, %.loopexit.thread ], [ %.pr89919778, %.thread8992.thread ], [ %.pr89919767, %bb.ae ], [ %.pr89919778, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr9011.pr9759 = phi i32 [ %.pr8999.pr, %.thread8992 ], [ %.pr9011.pr9760, %bb.by ], [ %.pr9011.pr97489925, %.loopexit.thread ], [ %.pr9011.pr9760, %.thread8992.thread ], [ %.pr9011.pr9749, %bb.ae ], [ %.pr9011.pr9760, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr87019729 = phi i32 [ %.pr8999.pr, %.thread8992 ], [ %.pr87019730, %bb.by ], [ %.pr870197189926, %.loopexit.thread ], [ %.pr87019730, %.thread8992.thread ], [ %.pr87019719, %bb.ae ], [ %.pr87019730, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr89969711 = phi i32 [ %.pr8999.pr, %.thread8992 ], [ 1, %bb.by ], [ %.pr899697009927, %.loopexit.thread ], [ 1, %.thread8992.thread ], [ %.pr89969701, %bb.ae ], [ 1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr82999694 = phi i32 [ %.pr8999.pr, %.thread8992 ], [ 1, %bb.by ], [ %.pr829996959928, %.loopexit.thread ], [ 1, %.thread8992.thread ], [ %.pr82999696, %bb.ae ], [ 1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %.pr78979683 = phi i32 [ %.pr8999.pr, %.thread8992 ], [ 1, %bb.by ], [ 16, %.loopexit.thread ], [ 1, %.thread8992.thread ], [ 16, %bb.ae ], [ 1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ]
  %indvars.iv.next9664 = add nsw i64 %indvars.iv9663, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next9664 to i32
  %exitcond9666.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond9666.not, label %._crit_edge9491, label %bb.c

._crit_edge9491:                                  ; preds = %.thread8992.thread9019, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge9491, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float>) #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn50innerproduct_transform_kernel_bf16s_sse_avx512bf16ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 39
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35, !range !36, !noundef !37
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %3, 15
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %3, 7
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %3, 3
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, i32 4, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i = phi i32 [ 1, %bb.a ], [ 16, %bb.b ], [ %i.j, %bb.d ], [ 8, %bb.c ] ; 4 uses
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i, i1 true)
  switch i32 %i.k, label %.unreachabledefault.i [
    i32 4, label %bb.f
    i32 3, label %bb.u
    i32 2, label %bb.aj
    i32 0, label %bb.ax
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %2, i32 noundef %3, ptr noundef null)
  %i.l = sdiv i32 %3, 16
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %i.l, i64 noundef 32, i32 noundef 16, ptr noundef null)
          to label %.preheader807.i unwind label %bb.m

.preheader807.i:                                  ; preds = %bb.f
  %i.m = icmp sgt i32 %3, 15
  br i1 %i.m, label %.lr.ph900.i, label %._crit_edge901.i

.lr.ph900.i:                                      ; preds = %.preheader807.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = icmp sgt i32 %2, 15
end_hunk_7
