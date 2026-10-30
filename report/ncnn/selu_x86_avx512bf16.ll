Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/selu_x86_avx512bf16?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4ncnn21selu_bf16s_avx512bf16ERNS_3MatEffRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef nofpclass(nan inf) %1, float noundef nofpclass(nan inf) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store float %1, ptr %i.a, align 4, !tbaa !10
  store float %2, ptr %i.b, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !22
  store i32 %i.m, ptr %i.c, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.p = mul nsw i32 %i.i, %i.g
  %i.q = mul nsw i32 %i.p, %i.k
  %i.r = mul nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.d, align 4, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.t)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL10selu_bf16sERNS_3MatEffRKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10selu_bf16sERNS_3MatEffRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !16     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.h = load i32, ptr %0, align 4, !tbaa !16     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !16
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !16
  %i.k = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %.not177 = icmp sgt i32 %i.k, %i.j
  br i1 %.not177, label %._crit_edge179, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %6, align 4, !tbaa !16
  %broadcast.splatinsert = insertelement <16 x ptr> poison, ptr %4, i64 0
  %broadcast.splat = shufflevector <16 x ptr> %broadcast.splatinsert, <16 x ptr> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <16 x ptr> poison, ptr %5, i64 0
  %broadcast.splat228 = shufflevector <16 x ptr> %broadcast.splatinsert227, <16 x ptr> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <8 x ptr> poison, ptr %4, i64 0
  %broadcast.splat232 = shufflevector <8 x ptr> %broadcast.splatinsert231, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <8 x ptr> poison, ptr %5, i64 0
  %broadcast.splat234 = shufflevector <8 x ptr> %broadcast.splatinsert233, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge176
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dp, %._crit_edge176 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge176 ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !35, !noalias !36
  %i.r = load i64, ptr %i.l, align 8, !tbaa !37, !noalias !36
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !36
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = load float, ptr %4, align 4, !tbaa !10
  %i.x = load float, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.y = fdiv fast float %i.w, %i.x               ; 2 uses
  %i.z = insertelement <16 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <16 x float> %i.z, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ab = insertelement <16 x float> poison, float %i.x, i64 0
  %i.ac = shufflevector <16 x float> %i.ab, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ad = icmp sgt i32 %i.p, 15
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.064157 = phi i32 [ %i.bl, %.lr.ph ], [ 0, %.noexc ]
  %.065156 = phi ptr [ %i.bk, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.ae = load <16 x bfloat>, ptr %.065156, align 1, !tbaa !39
  %i.af = fpext fast <16 x bfloat> %i.ae to <16 x float> ; 2 uses
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> zeroinitializer, <16 x float> nofpclass(nan inf) %i.af, i32 4)
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> zeroinitializer, <16 x float> nofpclass(nan inf) %i.af, i32 4)
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ai, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.al = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ak, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.am = fcmp fast ogt <16 x float> %i.al, %i.ak
  %i.an = fadd fast <16 x float> %i.al, splat (float -1.000000e+00)
  %i.ao = select fast <16 x i1> %i.am, <16 x float> %i.an, <16 x float> %i.al ; 2 uses
  %i.ap = fneg fast <16 x float> %i.ao            ; 2 uses
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ap, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.aj)
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ap, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.aq) ; 8 uses
  %i.as = fmul fast <16 x float> %i.ar, %i.ar
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3C088908))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3D2AA9C1))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3E2AAAAA))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float 5.000000e-01))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.ar)
  %i.az = fadd fast <16 x float> %i.ay, splat (float 1.000000e+00)
  %i.ba = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ao, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bb = shl <16 x i32> %i.ba, splat (i32 23)
  %i.bc = add <16 x i32> %i.bb, splat (i32 1065353216)
  %i.bd = bitcast <16 x i32> %i.bc to <16 x float>
  %i.be = fmul fast <16 x float> %i.az, %i.bd
  %i.bf = fadd fast <16 x float> %i.be, splat (float -1.000000e+00)
  %i.bg = fmul fast <16 x float> %i.bf, %i.aa
  %i.bh = fadd fast <16 x float> %i.bg, %i.ag
  %i.bi = fmul fast <16 x float> %i.bh, %i.ac
  %i.bj = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bi)
  store <16 x bfloat> %i.bj, ptr %.065156, align 1, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.065156, i64 32 ; 2 uses
  %i.bl = add nuw nsw i32 %.064157, 16            ; 3 uses
  %i.bm = or disjoint i32 %i.bl, 15
  %i.bn = load i32, ptr %6, align 4, !tbaa !16    ; 2 uses
  %i.bo = icmp slt i32 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !29

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre189 = load float, ptr %4, align 4, !tbaa !10
  %.pre190 = load float, ptr %5, align 4, !tbaa !10 ; 2 uses
  %.pre193 = fdiv fast float %.pre189, %.pre190
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %.pre-phi = phi float [ %.pre193, %._crit_edge.loopexit ], [ %i.y, %.noexc ] ; 2 uses
  %i.bp = phi i32 [ %i.bn, %._crit_edge.loopexit ], [ %i.p, %.noexc ] ; 2 uses
  %i.bq = phi float [ %.pre190, %._crit_edge.loopexit ], [ %i.x, %.noexc ] ; 2 uses
  %.065.lcssa = phi ptr [ %i.bk, %._crit_edge.loopexit ], [ %i.v, %.noexc ] ; 2 uses
  %.064.lcssa.a = phi i32 [ %i.bl, %._crit_edge.loopexit ], [ 0, %.noexc ] ; 3 uses
  %i.br = insertelement <8 x float> poison, float %.pre-phi, i64 0
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bt = insertelement <8 x float> poison, float %i.bq, i64 0
  %i.bu = shufflevector <8 x float> %i.bt, <8 x float> poison, <8 x i32> zeroinitializer
  %7 = or disjoint i32 %.064.lcssa.a, 7
  %i.bv = icmp slt i32 %7, %i.bp
  br i1 %i.bv, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %._crit_edge, %.lr.ph162
  %.1160 = phi i32 [ %i.dd, %.lr.ph162 ], [ %.064.lcssa.a, %._crit_edge ]
  %.166159 = phi ptr [ %i.dc, %.lr.ph162 ], [ %.065.lcssa, %._crit_edge ] ; 3 uses
  %i.bw = load <8 x bfloat>, ptr %.166159, align 1, !tbaa !39
  %i.bx = fpext fast <8 x bfloat> %i.bw to <8 x float> ; 2 uses
  %i.by = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.bx)
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.bx)
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bz, <8 x float> splat (float f0x42B0C0A5))
  %i.cb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cb, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cd = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cc, i32 1) ; 2 uses
  %i.ce = fcmp fast ogt <8 x float> %i.cd, %i.cc
  %i.cf = select <8 x i1> %i.ce, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cg = fsub fast <8 x float> %i.cd, %i.cf      ; 2 uses
  %i.ch = fneg fast <8 x float> %i.cg             ; 2 uses
  %i.ci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ch, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cb)
  %i.cj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ch, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ci) ; 8 uses
  %i.ck = fmul fast <8 x float> %i.cj, %i.cj
  %i.cl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cj, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.cm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cl, <8 x float> nofpclass(nan inf) %i.cj, <8 x float> splat (float f0x3C088908))
  %i.cn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.cj, <8 x float> splat (float f0x3D2AA9C1))
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) %i.cj, <8 x float> splat (float f0x3E2AAAAA))
  %i.cp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.co, <8 x float> nofpclass(nan inf) %i.cj, <8 x float> splat (float 5.000000e-01))
  %i.cq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> nofpclass(nan inf) %i.ck, <8 x float> nofpclass(nan inf) %i.cj)
  %i.cr = fadd fast <8 x float> %i.cq, splat (float 1.000000e+00)
  %i.cs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg)
  %i.ct = shl <8 x i32> %i.cs, splat (i32 23)
  %i.cu = add <8 x i32> %i.ct, splat (i32 1065353216)
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>
  %i.cw = fmul fast <8 x float> %i.cr, %i.cv
  %i.cx = fadd fast <8 x float> %i.cw, splat (float -1.000000e+00)
  %i.cy = fmul fast <8 x float> %i.cx, %i.bs
  %i.cz = fadd fast <8 x float> %i.cy, %i.by
  %i.da = fmul fast <8 x float> %i.cz, %i.bu
  %i.db = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.da)
  store <8 x bfloat> %i.db, ptr %.166159, align 1, !tbaa !39
  %i.dc = getelementptr inbounds nuw i8, ptr %.166159, i64 16 ; 2 uses
  %i.dd = add nuw nsw i32 %.1160, 8               ; 3 uses
  %i.de = or disjoint i32 %i.dd, 7
  %i.df = load i32, ptr %6, align 4, !tbaa !16    ; 2 uses
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %.lr.ph162, label %._crit_edge163.loopexit, !llvm.loop !30

._crit_edge163.loopexit:                          ; preds = %.lr.ph162
  %.pre191 = load float, ptr %4, align 4, !tbaa !10
  %.pre192 = load float, ptr %5, align 4, !tbaa !10 ; 2 uses
  %.pre194 = fdiv fast float %.pre191, %.pre192
  br label %._crit_edge163

._crit_edge163:                                   ; preds = %._crit_edge163.loopexit, %._crit_edge
  %.pre-phi195 = phi float [ %.pre194, %._crit_edge163.loopexit ], [ %.pre-phi, %._crit_edge ]
  %i.dh = phi i32 [ %i.df, %._crit_edge163.loopexit ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.di = phi float [ %.pre192, %._crit_edge163.loopexit ], [ %i.bq, %._crit_edge ]
  %.166.lcssa = phi ptr [ %i.dc, %._crit_edge163.loopexit ], [ %.065.lcssa, %._crit_edge ] ; 2 uses
  %.1.lcssa = phi i32 [ %i.dd, %._crit_edge163.loopexit ], [ %.064.lcssa.a, %._crit_edge ] ; 3 uses
  %i.dj = insertelement <4 x float> poison, float %.pre-phi195, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dm = or disjoint i32 %.1.lcssa, 3
  %i.dn = icmp slt i32 %i.dm, %i.dh
  br i1 %i.dn, label %.lr.ph169.preheader, label %.preheader

.lr.ph169.preheader:                              ; preds = %._crit_edge163
  %i.do = shufflevector <4 x float> %i.dl, <4 x float> poison, <8 x i32> zeroinitializer
  br label %.lr.ph169

.preheader:                                       ; preds = %.lr.ph169, %._crit_edge163
  %i.dp = phi i32 [ %i.dh, %._crit_edge163 ], [ %i.gt, %.lr.ph169 ] ; 4 uses
  %.267.lcssa = phi ptr [ %.166.lcssa, %._crit_edge163 ], [ %i.gq, %.lr.ph169 ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge163 ], [ %i.gr, %.lr.ph169 ] ; 5 uses
  %i.dq = icmp slt i32 %.2.lcssa, %i.dp
  br i1 %i.dq, label %iter.check, label %._crit_edge176

iter.check:                                       ; preds = %.preheader
  %i.dr = xor i32 %.2.lcssa, -1
  %i.ds = add i32 %i.dp, %i.dr                    ; 3 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nuw nsw i64 %i.dt, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ds, 7
  br i1 %min.iters.check, label %.lr.ph175.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check226 = icmp ult i32 %i.ds, 15
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dv = and i64 %i.du, 8
  %n.vec = and i64 %i.du, 8589934576              ; 5 uses
  %i.dw = trunc i64 %n.vec to i32
  %i.dx = add i32 %.2.lcssa, %i.dw
  %i.dy = shl nuw nsw i64 %n.vec, 1
  %i.dz = getelementptr i8, ptr %.267.lcssa, i64 %i.dy
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.267.lcssa, i64 %i.ea ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !42
  %i.eb = zext <16 x i16> %wide.load to <16 x i32>
  %i.ec = shl nuw <16 x i32> %i.eb, splat (i32 16)
  %i.ed = bitcast <16 x i32> %i.ec to <16 x float> ; 3 uses
  %i.ee = fcmp fast olt <16 x float> %i.ed, zeroinitializer ; 2 uses
  %i.ef = call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.ed)
  %i.eg = fadd fast <16 x float> %i.ef, splat (float -1.000000e+00)
  %predphi = select <16 x i1> %i.ee, <16 x ptr> %broadcast.splat, <16 x ptr> %broadcast.splat228
  %predphi229 = select <16 x i1> %i.ee, <16 x float> %i.eg, <16 x float> %i.ed
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %predphi, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !10
  %i.eh = fmul fast <16 x float> %wide.masked.gather, %predphi229
  %i.ei = bitcast <16 x float> %i.eh to <16 x i32>
  %i.ej = lshr <16 x i32> %i.ei, splat (i32 16)
  %i.ek = trunc nuw <16 x i32> %i.ej to <16 x i16>
  store <16 x i16> %i.ek, ptr %next.gep, align 2, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %._crit_edge176, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph175.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec230 = and i64 %i.du, 8589934584           ; 4 uses
  %i.em = trunc i64 %n.vec230 to i32
  %i.en = add i32 %.2.lcssa, %i.em
  %i.eo = shl nuw nsw i64 %n.vec230, 1
  %i.ep = getelementptr i8, ptr %.267.lcssa, i64 %i.eo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index235 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next241, %vec.epilog.vector.body ] ; 2 uses
  %i.eq = shl i64 %index235, 1
  %next.gep236 = getelementptr i8, ptr %.267.lcssa, i64 %i.eq ; 2 uses
  %wide.load237 = load <8 x i16>, ptr %next.gep236, align 2, !tbaa !42
  %i.er = zext <8 x i16> %wide.load237 to <8 x i32>
  %i.es = shl nuw <8 x i32> %i.er, splat (i32 16)
  %i.et = bitcast <8 x i32> %i.es to <8 x float>  ; 3 uses
  %i.eu = fcmp fast olt <8 x float> %i.et, zeroinitializer ; 2 uses
  %i.ev = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.et)
  %i.ew = fadd fast <8 x float> %i.ev, splat (float -1.000000e+00)
  %predphi238 = select <8 x i1> %i.eu, <8 x ptr> %broadcast.splat232, <8 x ptr> %broadcast.splat234
  %predphi239 = select <8 x i1> %i.eu, <8 x float> %i.ew, <8 x float> %i.et
  %wide.masked.gather240 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %predphi238, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !10
  %i.ex = fmul fast <8 x float> %wide.masked.gather240, %predphi239
  %i.ey = bitcast <8 x float> %i.ex to <8 x i32>
  %i.ez = lshr <8 x i32> %i.ey, splat (i32 16)
  %i.fa = trunc nuw <8 x i32> %i.ez to <8 x i16>
  store <8 x i16> %i.fa, ptr %next.gep236, align 2, !tbaa !42
  %index.next241 = add nuw i64 %index235, 8       ; 2 uses
  %i.fb = icmp eq i64 %index.next241, %n.vec230
  br i1 %i.fb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n242 = icmp eq i64 %i.du, %n.vec230
  br i1 %cmp.n242, label %._crit_edge176, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3174.ph = phi i32 [ %.2.lcssa, %iter.check ], [ %i.dx, %vec.epilog.iter.check ], [ %i.en, %vec.epilog.middle.block ]
  %.368173.ph = phi ptr [ %.267.lcssa, %iter.check ], [ %i.dz, %vec.epilog.iter.check ], [ %i.ep, %vec.epilog.middle.block ]
  br label %.lr.ph175

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %.lr.ph169
  %.2167 = phi i32 [ %i.gr, %.lr.ph169 ], [ %.1.lcssa, %.lr.ph169.preheader ]
  %.267166 = phi ptr [ %i.gq, %.lr.ph169 ], [ %.166.lcssa, %.lr.ph169.preheader ] ; 3 uses
  %i.fc = load i64, ptr %.267166, align 1, !tbaa !39
  %i.fd = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %i.fe = bitcast <2 x i64> %i.fd to <8 x i16>
  %i.ff = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fg = bitcast <8 x i16> %i.ff to <4 x float>  ; 2 uses
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.fg)
  %i.fi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.fg)
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fi, <4 x float> splat (float f0x42B0C0A5))
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fl = fmul fast <4 x float> %i.fk, splat (float f0x3FB8AA3B)
  %i.fm = fadd fast <4 x float> %i.fl, splat (float 5.000000e-01) ; 2 uses
  %i.fn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fm)
  %i.fo = sitofp fast <4 x i32> %i.fn to <4 x float> ; 2 uses
  %i.fp = fcmp fast olt <4 x float> %i.fm, %i.fo
  %i.fq = select <4 x i1> %i.fp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fr = fsub fast <4 x float> %i.fo, %i.fq      ; 2 uses
  %i.fs = fneg fast <4 x float> %i.fr             ; 2 uses
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fs, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.fk)
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fs, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ft) ; 8 uses
  %i.fv = fmul fast <4 x float> %i.fu, %i.fu
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fu, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fw, <4 x float> nofpclass(nan inf) %i.fu, <4 x float> splat (float f0x3C088908))
  %i.fy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fx, <4 x float> nofpclass(nan inf) %i.fu, <4 x float> splat (float f0x3D2AA9C1))
  %i.fz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fy, <4 x float> nofpclass(nan inf) %i.fu, <4 x float> splat (float f0x3E2AAAAA))
  %i.ga = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fz, <4 x float> nofpclass(nan inf) %i.fu, <4 x float> splat (float 5.000000e-01))
  %i.gb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ga, <4 x float> nofpclass(nan inf) %i.fv, <4 x float> nofpclass(nan inf) %i.fu)
  %i.gc = fadd fast <4 x float> %i.gb, splat (float 1.000000e+00)
  %i.gd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fr)
  %i.ge = shl <4 x i32> %i.gd, splat (i32 23)
end_hunk_0
