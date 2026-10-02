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
  %broadcast.splatinsert232 = insertelement <8 x ptr> poison, ptr %4, i64 0
  %broadcast.splat233 = shufflevector <8 x ptr> %broadcast.splatinsert232, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert234 = insertelement <8 x ptr> poison, ptr %5, i64 0
  %broadcast.splat235 = shufflevector <8 x ptr> %broadcast.splatinsert234, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge176
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dq, %._crit_edge176 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge176 ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !35, !noalias !48
  %i.r = load i64, ptr %i.l, align 8, !tbaa !37, !noalias !48
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !48
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
  %.064.lcssa = phi i32 [ %i.bl, %._crit_edge.loopexit ], [ 0, %.noexc ] ; 3 uses
  %i.br = insertelement <8 x float> poison, float %.pre-phi, i64 0
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bt = insertelement <8 x float> poison, float %i.bq, i64 0
  %i.bu = shufflevector <8 x float> %i.bt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bv = or disjoint i32 %.064.lcssa, 7
  %i.bw = icmp slt i32 %i.bv, %i.bp
  br i1 %i.bw, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %._crit_edge, %.lr.ph162
  %.1160 = phi i32 [ %i.de, %.lr.ph162 ], [ %.064.lcssa, %._crit_edge ]
  %.166159 = phi ptr [ %i.dd, %.lr.ph162 ], [ %.065.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load <8 x bfloat>, ptr %.166159, align 1, !tbaa !39
  %i.by = fpext fast <8 x bfloat> %i.bx to <8 x float> ; 2 uses
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.by)
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.by)
  %i.cb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x42B0C0A5))
  %i.cc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cc, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ce = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cd, i32 1) ; 2 uses
  %i.cf = fcmp fast ogt <8 x float> %i.ce, %i.cd
  %i.cg = select <8 x i1> %i.cf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ch = fsub fast <8 x float> %i.ce, %i.cg      ; 2 uses
  %i.ci = fneg fast <8 x float> %i.ch             ; 2 uses
  %i.cj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ci, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cc)
  %i.ck = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ci, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cj) ; 8 uses
  %i.cl = fmul fast <8 x float> %i.ck, %i.ck
  %i.cm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ck, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.cn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cm, <8 x float> nofpclass(nan inf) %i.ck, <8 x float> splat (float f0x3C088908))
  %i.co = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cn, <8 x float> nofpclass(nan inf) %i.ck, <8 x float> splat (float f0x3D2AA9C1))
  %i.cp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.co, <8 x float> nofpclass(nan inf) %i.ck, <8 x float> splat (float f0x3E2AAAAA))
  %i.cq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> nofpclass(nan inf) %i.ck, <8 x float> splat (float 5.000000e-01))
  %i.cr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> nofpclass(nan inf) %i.cl, <8 x float> nofpclass(nan inf) %i.ck)
  %i.cs = fadd fast <8 x float> %i.cr, splat (float 1.000000e+00)
  %i.ct = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ch)
  %i.cu = shl <8 x i32> %i.ct, splat (i32 23)
  %i.cv = add <8 x i32> %i.cu, splat (i32 1065353216)
  %i.cw = bitcast <8 x i32> %i.cv to <8 x float>
  %i.cx = fmul fast <8 x float> %i.cs, %i.cw
  %i.cy = fadd fast <8 x float> %i.cx, splat (float -1.000000e+00)
  %i.cz = fmul fast <8 x float> %i.cy, %i.bs
  %i.da = fadd fast <8 x float> %i.cz, %i.bz
  %i.db = fmul fast <8 x float> %i.da, %i.bu
  %i.dc = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.db)
  store <8 x bfloat> %i.dc, ptr %.166159, align 1, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %.166159, i64 16 ; 2 uses
  %i.de = add nuw nsw i32 %.1160, 8               ; 3 uses
  %i.df = or disjoint i32 %i.de, 7
  %i.dg = load i32, ptr %6, align 4, !tbaa !16    ; 2 uses
  %i.dh = icmp slt i32 %i.df, %i.dg
  br i1 %i.dh, label %.lr.ph162, label %._crit_edge163.loopexit, !llvm.loop !30

._crit_edge163.loopexit:                          ; preds = %.lr.ph162
  %.pre191 = load float, ptr %4, align 4, !tbaa !10
  %.pre192 = load float, ptr %5, align 4, !tbaa !10 ; 2 uses
  %.pre194 = fdiv fast float %.pre191, %.pre192
  br label %._crit_edge163

._crit_edge163:                                   ; preds = %._crit_edge163.loopexit, %._crit_edge
  %.pre-phi195 = phi float [ %.pre194, %._crit_edge163.loopexit ], [ %.pre-phi, %._crit_edge ]
  %i.di = phi i32 [ %i.dg, %._crit_edge163.loopexit ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.dj = phi float [ %.pre192, %._crit_edge163.loopexit ], [ %i.bq, %._crit_edge ]
  %.166.lcssa = phi ptr [ %i.dd, %._crit_edge163.loopexit ], [ %.065.lcssa, %._crit_edge ] ; 2 uses
  %.1.lcssa = phi i32 [ %i.de, %._crit_edge163.loopexit ], [ %.064.lcssa, %._crit_edge ] ; 3 uses
  %i.dk = insertelement <4 x float> poison, float %.pre-phi195, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dn = or disjoint i32 %.1.lcssa, 3
  %i.do = icmp slt i32 %i.dn, %i.di
  br i1 %i.do, label %.lr.ph169.preheader, label %.preheader

.lr.ph169.preheader:                              ; preds = %._crit_edge163
  %i.dp = shufflevector <4 x float> %i.dm, <4 x float> poison, <8 x i32> zeroinitializer
  br label %.lr.ph169

.preheader:                                       ; preds = %.lr.ph169, %._crit_edge163
  %i.dq = phi i32 [ %i.di, %._crit_edge163 ], [ %i.gu, %.lr.ph169 ] ; 4 uses
  %.267.lcssa = phi ptr [ %.166.lcssa, %._crit_edge163 ], [ %i.gr, %.lr.ph169 ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %._crit_edge163 ], [ %i.gs, %.lr.ph169 ] ; 5 uses
  %i.dr = icmp slt i32 %.2.lcssa, %i.dq
  br i1 %i.dr, label %iter.check, label %._crit_edge176

iter.check:                                       ; preds = %.preheader
  %i.ds = xor i32 %.2.lcssa, -1
  %i.dt = add i32 %i.dq, %i.ds                    ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = add nuw nsw i64 %i.du, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dt, 7
  br i1 %min.iters.check, label %.lr.ph175.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check226 = icmp ult i32 %i.dt, 15
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %i.dv, 8
  %n.vec = and i64 %i.dv, 8589934576              ; 5 uses
  %i.dx = trunc i64 %n.vec to i32
  %i.dy = add i32 %.2.lcssa, %i.dx
  %i.dz = shl nuw nsw i64 %n.vec, 1
  %i.ea = getelementptr i8, ptr %.267.lcssa, i64 %i.dz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.267.lcssa, i64 %i.eb ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !42
  %i.ec = zext <16 x i16> %wide.load to <16 x i32>
  %i.ed = shl nuw <16 x i32> %i.ec, splat (i32 16)
  %i.ee = bitcast <16 x i32> %i.ed to <16 x float> ; 3 uses
  %i.ef = fcmp fast olt <16 x float> %i.ee, zeroinitializer ; 2 uses
  %i.eg = call fast <16 x float> @llvm.exp.v16f32(<16 x float> %i.ee)
  %i.eh = fadd fast <16 x float> %i.eg, splat (float -1.000000e+00)
  %predphi = select <16 x i1> %i.ef, <16 x ptr> %broadcast.splat, <16 x ptr> %broadcast.splat228
  %predphi229 = select <16 x i1> %i.ef, <16 x float> %i.eh, <16 x float> %i.ee
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %predphi, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !10
  %i.ei = fmul fast <16 x float> %wide.masked.gather, %predphi229
  %i.ej = bitcast <16 x float> %i.ei to <16 x i32>
  %i.ek = lshr <16 x i32> %i.ej, splat (i32 16)
  %i.el = trunc nuw <16 x i32> %i.ek to <16 x i16>
  store <16 x i16> %i.el, ptr %next.gep, align 2, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %._crit_edge176, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph175.preheader, label %vec.epilog.ph, !prof !45

end_hunk_0
begin_hunk_1_@_ZN4ncnnL10selu_bf16sERNS_3MatEffRKNS_6OptionE.omp_outlined:bb.a
  %i.fx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fv, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fx, <4 x float> nofpclass(nan inf) %i.fv, <4 x float> splat (float f0x3C088908))
  %i.fz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fy, <4 x float> nofpclass(nan inf) %i.fv, <4 x float> splat (float f0x3D2AA9C1))
  %i.ga = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fz, <4 x float> nofpclass(nan inf) %i.fv, <4 x float> splat (float f0x3E2AAAAA))
  %i.gb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ga, <4 x float> nofpclass(nan inf) %i.fv, <4 x float> splat (float 5.000000e-01))
  %i.gc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gb, <4 x float> nofpclass(nan inf) %i.fw, <4 x float> nofpclass(nan inf) %i.fv)
  %i.gd = fadd fast <4 x float> %i.gc, splat (float 1.000000e+00)
  %i.ge = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fs)
  %i.gf = shl <4 x i32> %i.ge, splat (i32 23)
  %i.gg = add <4 x i32> %i.gf, splat (i32 1065353216)
  %i.gh = bitcast <4 x i32> %i.gg to <4 x float>
  %i.gi = fmul fast <4 x float> %i.gd, %i.gh
  %i.gj = fadd fast <4 x float> %i.gi, splat (float -1.000000e+00)
  %i.gk = fmul fast <4 x float> %i.gj, %i.dl
  %i.gl = fadd fast <4 x float> %i.gk, %i.fi
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gn = fmul fast <8 x float> %i.gm, %i.dp
  %i.go = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gn)
  %i.gp = bitcast <8 x bfloat> %i.go to <2 x i64>
  %i.gq = extractelement <2 x i64> %i.gp, i64 0
  store i64 %i.gq, ptr %.267166, align 1, !tbaa !39
  %i.gr = getelementptr inbounds nuw i8, ptr %.267166, i64 8 ; 2 uses
  %i.gs = add nuw nsw i32 %.2167, 4               ; 3 uses
  %i.gt = or disjoint i32 %i.gs, 3
  %i.gu = load i32, ptr %6, align 4, !tbaa !16    ; 2 uses
  %i.gv = icmp slt i32 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph169, label %.preheader, !llvm.loop !33

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %bb.d
  %.3174 = phi i32 [ %i.hj, %bb.d ], [ %.3174.ph, %.lr.ph175.preheader ]
  %.368173 = phi ptr [ %i.hi, %bb.d ], [ %.368173.ph, %.lr.ph175.preheader ] ; 3 uses
  %i.gw = load i16, ptr %.368173, align 2, !tbaa !42
  %i.gx = zext i16 %i.gw to i32
  %i.gy = shl nuw i32 %i.gx, 16
  %i.gz = bitcast i32 %i.gy to float              ; 3 uses
  %i.ha = fcmp fast olt float %i.gz, 0.000000e+00
  br i1 %i.ha, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph175
  %i.hb = call fast float @llvm.exp.f32(float %i.gz)
  %i.hc = fadd fast float %i.hb, -1.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph175, %bb.c
  %.sink217 = phi ptr [ %4, %bb.c ], [ %5, %.lr.ph175 ]
  %.sink216 = phi float [ %i.hc, %bb.c ], [ %i.gz, %.lr.ph175 ]
  %i.hd = load float, ptr %.sink217, align 4, !tbaa !10
  %i.he = fmul fast float %i.hd, %.sink216
  %i.hf = bitcast float %i.he to i32
  %i.hg = lshr i32 %i.hf, 16
  %i.hh = trunc nuw i32 %i.hg to i16
  store i16 %i.hh, ptr %.368173, align 2, !tbaa !42
  %i.hi = getelementptr inbounds nuw i8, ptr %.368173, i64 2
  %i.hj = add nuw nsw i32 %.3174, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.hj, %i.dq
  br i1 %exitcond.not, label %._crit_edge176, label %.lr.ph175, !llvm.loop !34

._crit_edge176:                                   ; preds = %bb.d, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond188.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond188.not, label %._crit_edge179, label %.noexc

._crit_edge179:                                   ; preds = %._crit_edge176, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge179, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !18 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.exp.v16f32(<16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr>, <16 x i1>, <16 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }

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
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!16 = !{!6, !6, i64 0}
!17 = !{i64 2, i64 -1, i64 -1, i1 true}
!18 = !{!17}
!19 = !{!15, !6, i64 44}
!20 = !{!15, !6, i64 48}
!21 = !{!15, !6, i64 52}
!22 = !{!15, !6, i64 56}
!23 = !{!15, !6, i64 24}
!24 = !{!"bool", !5, i64 0}
!25 = !{!"_ZTSN4ncnn6OptionE", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !6, i64 4, !14, i64 8, !14, i64 16, !6, i64 24, !24, i64 28, !24, i64 29, !24, i64 30, !24, i64 31, !24, i64 32, !24, i64 33, !24, i64 34, !24, i64 35, !24, i64 36, !24, i64 37, !24, i64 38, !24, i64 39, !6, i64 40, !24, i64 44, !24, i64 45, !24, i64 46, !24, i64 47, !5, i64 48, !24, i64 49, !24, i64 50, !24, i64 51, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !24, i64 56, !24, i64 57, !24, i64 58, !24, i64 59, !24, i64 60, !24, i64 61, !24, i64 62, !24, i64 63}
!26 = !{!25, !6, i64 4}
!29 = distinct !{!29, !40}
!30 = distinct !{!30, !40}
!31 = distinct !{!31, !40, !43, !44}
!32 = distinct !{!32, !40, !43, !44}
!33 = distinct !{!33, !40}
!34 = distinct !{!34, !40, !44, !43}
!35 = !{!15, !11, i64 0}
!37 = !{!15, !13, i64 64}
!38 = !{!15, !13, i64 16}
!39 = !{!5, !5, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"short", !5, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!"branch_weights", i32 8, i32 8}
!46 = distinct !{!46, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!47 = distinct !{!47, !46, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!48 = !{!47}
end_hunk_1
