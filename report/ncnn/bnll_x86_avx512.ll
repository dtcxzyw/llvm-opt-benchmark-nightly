Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/bnll_x86_avx512?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@llvm.exp.f32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !29 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #8

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #2

declare void @_ZN4ncnn21bnll_bf16s_avx512bf16ERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10bnll_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not94 = icmp sgt i32 %i.k, %i.j
  br i1 %.not94, label %._crit_edge96, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !18
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge93
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %6, %._crit_edge93 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge93 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !24, !noalias !63
  %i.q = load i64, ptr %i.l, align 8, !tbaa !25, !noalias !63
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !63
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.05286 = phi i32 [ %i.cx, %.lr.ph ], [ 0, %.noexc ]
  %.05385 = phi ptr [ %i.cw, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x i16>, ptr %.05385, align 1, !tbaa !26 ; 2 uses
  %i.x = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.y = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.w, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = shufflevector <16 x i16> %i.x, <16 x i16> %i.y, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ab = bitcast <16 x i16> %i.z to <8 x i32>
  %i.ac = bitcast <16 x i16> %i.aa to <8 x i32>
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float>
  %i.af = bitcast <16 x i32> %i.ad to <8 x i64>
  %i.ag = and <8 x i64> %i.af, splat (i64 9223090564025483264)
  %i.ah = bitcast <8 x i64> %i.ag to <16 x float>
  %i.ai = fneg fast <16 x float> %i.ah
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ai, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.aj, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.am = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.al, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.an = fcmp fast ogt <16 x float> %i.am, %i.al
  %i.ao = fadd fast <16 x float> %i.am, splat (float -1.000000e+00)
  %i.ap = select fast <16 x i1> %i.an, <16 x float> %i.ao, <16 x float> %i.am ; 2 uses
  %i.aq = fneg fast <16 x float> %i.ap            ; 2 uses
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.aq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ak)
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.aq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ar) ; 8 uses
  %i.at = fmul fast <16 x float> %i.as, %i.as
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3C088908))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3D2AA9C1))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3E2AAAAA))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float 5.000000e-01))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.as)
  %i.ba = fadd fast <16 x float> %i.az, splat (float 1.000000e+00)
  %i.bb = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ap, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bc = shl <16 x i32> %i.bb, splat (i32 23)
  %i.bd = add <16 x i32> %i.bc, splat (i32 1065353216)
  %i.be = bitcast <16 x i32> %i.bd to <16 x float>
  %i.bf = fmul fast <16 x float> %i.ba, %i.be
  %i.bg = fadd fast <16 x float> %i.bf, splat (float 1.000000e+00) ; 2 uses
  %i.bh = fcmp fast ole <16 x float> %i.bg, zeroinitializer
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bg, <16 x float> splat (float f0x00800000), i32 4)
  %i.bj = bitcast <16 x float> %i.bi to <16 x i32> ; 2 uses
  %i.bk = lshr <16 x i32> %i.bj, splat (i32 23)
  %i.bl = and <16 x i32> %i.bj, splat (i32 -2139095041)
  %i.bm = or disjoint <16 x i32> %i.bl, splat (i32 1056964608)
  %i.bn = bitcast <16 x i32> %i.bm to <16 x float> ; 3 uses
  %i.bo = add nsw <16 x i32> %i.bk, splat (i32 -127)
  %i.bp = sitofp fast <16 x i32> %i.bo to <16 x float> ; 2 uses
  %i.bq = fadd fast <16 x float> %i.bp, splat (float 1.000000e+00)
  %i.br = fcmp fast olt <16 x float> %i.bn, splat (float f0x3F3504F3) ; 2 uses
  %i.bs = fadd fast <16 x float> %i.bn, splat (float -1.000000e+00)
  %i.bt = select fast <16 x i1> %i.br, <16 x float> %i.bp, <16 x float> %i.bq ; 2 uses
  %i.bu = select fast <16 x i1> %i.br, <16 x float> %i.bn, <16 x float> zeroinitializer
  %i.bv = fadd fast <16 x float> %i.bs, %i.bu     ; 12 uses
  %i.bw = fmul fast <16 x float> %i.bv, %i.bv     ; 2 uses
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3DEF251A))
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.by, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0xBDFE5D4F))
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bz, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3E11E9BF))
  %i.cb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0xBE2AAE50))
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cb, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3E4CCEAC))
  %i.cd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cc, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0xBE7FFFFC))
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cd, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3EAAAAAA))
  %i.cf = fmul fast <16 x float> %i.bw, %i.bv
  %i.cg = fmul fast <16 x float> %i.cf, %i.ce
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cg)
  %i.ci = fneg fast <16 x float> %i.bw
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ci, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ch)
  %i.ck = fadd fast <16 x float> %i.cj, %i.bv
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ck)
  %i.cm = select <16 x i1> %i.bh, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.cl
  %i.cn = call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ae, <16 x float> zeroinitializer)
  %i.co = fadd fast <16 x float> %i.cm, %i.cn
  %i.cp = bitcast <16 x float> %i.co to <16 x i32>
  %i.cq = lshr <16 x i32> %i.cp, splat (i32 16)   ; 2 uses
  %i.cr = shufflevector <16 x i32> %i.cq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cs = shufflevector <16 x i32> %i.cq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ct = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.cr, <8 x i32> %i.cs)
  %i.cu = bitcast <16 x i16> %i.ct to <4 x i64>
  %i.cv = shufflevector <4 x i64> %i.cu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cv, ptr %.05385, align 1, !tbaa !26
  %i.cw = getelementptr inbounds nuw i8, ptr %.05385, i64 32 ; 2 uses
  %i.cx = add nuw nsw i32 %.05286, 16             ; 3 uses
  %i.cy = or disjoint i32 %i.cx, 15
  %i.cz = load i32, ptr %4, align 4, !tbaa !18    ; 2 uses
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.db = phi i32 [ %i.o, %.noexc ], [ %i.cz, %.lr.ph ] ; 4 uses
  %.053.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cw, %.lr.ph ] ; 3 uses
  %.052.lcssa = phi i32 [ 0, %.noexc ], [ %i.cx, %.lr.ph ] ; 3 uses
  %i.dc = icmp slt i32 %.052.lcssa, %i.db
  br i1 %i.dc, label %bb.c, label %5

bb.c:                                             ; preds = %._crit_edge
  %i.dd = sub nuw nsw i32 %i.db, %.052.lcssa
  %notmask = shl nsw i32 -1, %i.dd
  %i.de = trunc i32 %notmask to i16
  %i.df = xor i16 %i.de, -1
  %i.dg = bitcast i16 %i.df to <16 x i1>          ; 2 uses
  %i.dh = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.053.lcssa, <16 x i1> %i.dg, <16 x i16> zeroinitializer) ; 2 uses
  %i.di = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.dj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.dh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dk = shufflevector <16 x i16> %i.di, <16 x i16> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dl = shufflevector <16 x i16> %i.di, <16 x i16> %i.dj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dm = bitcast <16 x i16> %i.dk to <8 x i32>
  %i.dn = bitcast <16 x i16> %i.dl to <8 x i32>
  %i.do = shufflevector <8 x i32> %i.dm, <8 x i32> %i.dn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dp = bitcast <16 x i32> %i.do to <16 x float>
  %i.dq = bitcast <16 x i32> %i.do to <8 x i64>
  %i.dr = and <8 x i64> %i.dq, splat (i64 9223090564025483264)
  %i.ds = bitcast <8 x i64> %i.dr to <16 x float>
  %i.dt = fneg fast <16 x float> %i.ds
  %i.du = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.dt, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.dv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.du, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.dw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dv, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dx = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dw, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.dy = fcmp fast ogt <16 x float> %i.dx, %i.dw
  %i.dz = fadd fast <16 x float> %i.dx, splat (float -1.000000e+00)
  %i.ea = select fast <16 x i1> %i.dy, <16 x float> %i.dz, <16 x float> %i.dx ; 2 uses
  %i.eb = fneg fast <16 x float> %i.ea            ; 2 uses
  %i.ec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.eb, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.dv)
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.eb, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ec) ; 8 uses
  %i.ee = fmul fast <16 x float> %i.ed, %i.ed
  %i.ef = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ed, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.eg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ef, <16 x float> nofpclass(nan inf) %i.ed, <16 x float> splat (float f0x3C088908))
  %i.eh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eg, <16 x float> nofpclass(nan inf) %i.ed, <16 x float> splat (float f0x3D2AA9C1))
  %i.ei = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eh, <16 x float> nofpclass(nan inf) %i.ed, <16 x float> splat (float f0x3E2AAAAA))
  %i.ej = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ei, <16 x float> nofpclass(nan inf) %i.ed, <16 x float> splat (float 5.000000e-01))
  %i.ek = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ej, <16 x float> nofpclass(nan inf) %i.ee, <16 x float> nofpclass(nan inf) %i.ed)
  %i.el = fadd fast <16 x float> %i.ek, splat (float 1.000000e+00)
  %i.em = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ea, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.en = shl <16 x i32> %i.em, splat (i32 23)
  %i.eo = add <16 x i32> %i.en, splat (i32 1065353216)
  %i.ep = bitcast <16 x i32> %i.eo to <16 x float>
  %i.eq = fmul fast <16 x float> %i.el, %i.ep
  %i.er = fadd fast <16 x float> %i.eq, splat (float 1.000000e+00) ; 2 uses
  %i.es = fcmp fast ole <16 x float> %i.er, zeroinitializer
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.er, <16 x float> splat (float f0x00800000), i32 4)
  %i.eu = bitcast <16 x float> %i.et to <16 x i32> ; 2 uses
  %i.ev = lshr <16 x i32> %i.eu, splat (i32 23)
  %i.ew = and <16 x i32> %i.eu, splat (i32 -2139095041)
  %i.ex = or disjoint <16 x i32> %i.ew, splat (i32 1056964608)
  %i.ey = bitcast <16 x i32> %i.ex to <16 x float> ; 3 uses
  %i.ez = add nsw <16 x i32> %i.ev, splat (i32 -127)
  %i.fa = sitofp fast <16 x i32> %i.ez to <16 x float> ; 2 uses
  %i.fb = fadd fast <16 x float> %i.fa, splat (float 1.000000e+00)
  %i.fc = fcmp fast olt <16 x float> %i.ey, splat (float f0x3F3504F3) ; 2 uses
  %i.fd = fadd fast <16 x float> %i.ey, splat (float -1.000000e+00)
  %i.fe = select fast <16 x i1> %i.fc, <16 x float> %i.fa, <16 x float> %i.fb ; 2 uses
  %i.ff = select fast <16 x i1> %i.fc, <16 x float> %i.ey, <16 x float> zeroinitializer
  %i.fg = fadd fast <16 x float> %i.fd, %i.ff     ; 12 uses
  %i.fh = fmul fast <16 x float> %i.fg, %i.fg     ; 2 uses
  %i.fi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fi, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3DEF251A))
  %i.fk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0xBDFE5D4F))
  %i.fl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fk, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3E11E9BF))
  %i.fm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fl, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0xBE2AAE50))
  %i.fn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fm, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3E4CCEAC))
  %i.fo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fn, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0xBE7FFFFC))
  %i.fp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fo, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3EAAAAAA))
  %i.fq = fmul fast <16 x float> %i.fh, %i.fg
  %i.fr = fmul fast <16 x float> %i.fq, %i.fp
  %i.fs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fr)
  %i.ft = fneg fast <16 x float> %i.fh
  %i.fu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ft, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fs)
  %i.fv = fadd fast <16 x float> %i.fu, %i.fg
  %i.fw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fv)
  %i.fx = select <16 x i1> %i.es, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.fw
  %i.fy = call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.dp, <16 x float> zeroinitializer)
  %i.fz = fadd fast <16 x float> %i.fx, %i.fy
  %i.ga = bitcast <16 x float> %i.fz to <16 x i32>
  %i.gb = lshr <16 x i32> %i.ga, splat (i32 16)   ; 2 uses
  %i.gc = shufflevector <16 x i32> %i.gb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gd = shufflevector <16 x i32> %i.gb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ge = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.gc, <8 x i32> %i.gd)
  %i.gf = bitcast <16 x i16> %i.ge to <4 x i64>
  %i.gg = shufflevector <4 x i64> %i.gf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gh = bitcast <4 x i64> %i.gg to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.gh, ptr align 1 %.053.lcssa, <16 x i1> %i.dg)
  %.pre101 = load i32, ptr %4, align 4, !tbaa !18
  br label %5

5:                                                ; preds = %bb.c, %._crit_edge
  %6 = phi i32 [ %.pre101, %bb.c ], [ %i.db, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.db, %bb.c ], [ %.052.lcssa, %._crit_edge ] ; 2 uses
  %7 = icmp slt i32 %.1, %6
  br i1 %7, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %5, %bb.f
  %.290 = phi i32 [ %i.gz, %bb.f ], [ %.1, %5 ]
  %.15489 = phi ptr [ %i.gy, %bb.f ], [ %.053.lcssa, %5 ] ; 3 uses
  %i.gi = load i16, ptr %.15489, align 2, !tbaa !65
  %i.gj = zext i16 %i.gi to i32
  %i.gk = shl nuw i32 %i.gj, 16
  %i.gl = bitcast i32 %i.gk to float              ; 4 uses
  %i.gm = fcmp fast ogt float %i.gl, 0.000000e+00
  br i1 %i.gm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph92
  %i.gn = fneg fast float %i.gl
  %i.go = call fast float @llvm.exp.f32(float %i.gn)
  %i.gp = fadd fast float %i.go, 1.000000e+00
  %i.gq = call fast float @llvm.log.f32(float %i.gp)
  %i.gr = fadd fast float %i.gq, %i.gl
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph92
  %i.gs = call fast float @llvm.exp.f32(float %i.gl)
  %i.gt = fadd fast float %i.gs, 1.000000e+00
  %i.gu = call fast float @llvm.log.f32(float %i.gt)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi nsz float [ %i.gr, %bb.d ], [ %i.gu, %bb.e ]
  %i.gv = bitcast float %.0 to i32
  %i.gw = lshr i32 %i.gv, 16
  %i.gx = trunc nuw i32 %i.gw to i16
  store i16 %i.gx, ptr %.15489, align 2, !tbaa !65
  %i.gy = getelementptr inbounds nuw i8, ptr %.15489, i64 2
  %i.gz = add nuw nsw i32 %.290, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gz, %6
  br i1 %exitcond.not, label %._crit_edge93, label %.lr.ph92, !llvm.loop !62

._crit_edge93:                                    ; preds = %bb.f, %5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ha = load i32, ptr %i.b, align 4, !tbaa !18
  %i.hb = sext i32 %i.ha to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hb
  br i1 %.not.not, label %.noexc, label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge93, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge96, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i16> @llvm.masked.load.v16i16.p0(ptr captures(none), <16 x i1>, <16 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16i16.p0(<16 x i16>, ptr captures(none), <16 x i1>) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #7

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !9, i64 0}
!13 = !{!"_ZTSN4ncnn3MatE", !9, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64}
!14 = !{!13, !6, i64 44}
!15 = !{!13, !6, i64 48}
!16 = !{!13, !6, i64 52}
!17 = !{!13, !6, i64 56}
!18 = !{!6, !6, i64 0}
!19 = !{!13, !6, i64 24}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"_ZTSN4ncnn6OptionE", !20, i64 0, !20, i64 1, !20, i64 2, !20, i64 3, !6, i64 4, !12, i64 8, !12, i64 16, !6, i64 24, !20, i64 28, !20, i64 29, !20, i64 30, !20, i64 31, !20, i64 32, !20, i64 33, !20, i64 34, !20, i64 35, !20, i64 36, !20, i64 37, !20, i64 38, !20, i64 39, !6, i64 40, !20, i64 44, !20, i64 45, !20, i64 46, !20, i64 47, !5, i64 48, !20, i64 49, !20, i64 50, !20, i64 51, !20, i64 52, !20, i64 53, !20, i64 54, !20, i64 55, !20, i64 56, !20, i64 57, !20, i64 58, !20, i64 59, !20, i64 60, !20, i64 61, !20, i64 62, !20, i64 63}
!22 = !{!13, !11, i64 16}
!23 = !{!21, !6, i64 4}
!24 = !{!13, !9, i64 0}
!25 = !{!13, !11, i64 64}
!26 = !{!5, !5, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{i64 2, i64 -1, i64 -1, i1 true}
!29 = !{!28}
!30 = !{!21, !20, i64 32}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"vtable pointer", !4, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 omnipotent char", !9, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !11, i64 8, !5, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIiSaIiEE", !40, i64 0}
!42 = !{!"p1 _ZTSN4ncnn3MatE", !9, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !43, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !45, i64 0}
!47 = !{!"_ZTSN4ncnn5LayerE", !20, i64 8, !20, i64 9, !20, i64 10, !20, i64 11, !20, i64 12, !20, i64 13, !20, i64 14, !20, i64 15, !20, i64 16, !20, i64 17, !20, i64 18, !20, i64 19, !20, i64 20, !20, i64 21, !20, i64 22, !20, i64 23, !20, i64 24, !20, i64 25, !20, i64 26, !20, i64 27, !6, i64 28, !9, i64 32, !6, i64 40, !37, i64 48, !37, i64 80, !41, i64 112, !41, i64 136, !46, i64 160, !46, i64 184}
!48 = !{!47, !20, i64 11}
!49 = !{!47, !20, i64 12}
!50 = distinct !{!50, !"_ZN4ncnn3Mat7channelEi"}
!51 = distinct !{!51, !50, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !27}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
!56 = !{!51}
!57 = !{!"float", !5, i64 0}
!58 = !{!57, !57, i64 0}
!59 = distinct !{!59, !"_ZN4ncnn3Mat7channelEi"}
!60 = distinct !{!60, !59, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = !{!60}
!64 = !{!"short", !5, i64 0}
!65 = !{!64, !64, i64 0}
end_hunk_0
