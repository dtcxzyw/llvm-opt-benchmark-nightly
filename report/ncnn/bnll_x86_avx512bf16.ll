Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/bnll_x86_avx512bf16?download=true
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
define hidden void @_ZN4ncnn21bnll_bf16s_avx512bf16ERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  store i32 %i.k, ptr %i.a, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.n = mul nsw i32 %i.g, %i.e
  %i.o = mul nsw i32 %i.n, %i.i
  %i.p = mul nsw i32 %i.o, %i.m
  store i32 %i.p, ptr %i.b, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !24
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.r)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10bnll_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10bnll_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.h = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !14
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !14
  %i.k = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %.not95 = icmp sgt i32 %i.k, %i.j
  br i1 %.not95, label %._crit_edge97, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge94
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.fm, %._crit_edge94 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge94 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !29, !noalias !30
  %i.q = load i64, ptr %i.l, align 8, !tbaa !31, !noalias !30
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !30
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.05287 = phi i32 [ %i.cm, %.lr.ph ], [ 0, %.noexc ] ; 2 uses
  %.05386 = phi ptr [ %i.cl, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.05386, align 1, !tbaa !33 ; 3 uses
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float>
  %i.y = bitcast <16 x float> %i.x to <8 x i64>
  %i.z = and <8 x i64> %i.y, splat (i64 9223372034707292159)
  %i.aa = bitcast <8 x i64> %i.z to <16 x float>
  %i.ab = fneg fast <16 x float> %i.aa
  %i.ac = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ab, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ad = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ac, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ae = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ad, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.af = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ae, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ag = fcmp fast ogt <16 x float> %i.af, %i.ae
  %i.ah = fadd fast <16 x float> %i.af, splat (float -1.000000e+00)
  %i.ai = select fast <16 x i1> %i.ag, <16 x float> %i.ah, <16 x float> %i.af ; 2 uses
  %i.aj = fneg fast <16 x float> %i.ai            ; 2 uses
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.aj, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ad)
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.aj, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ak) ; 8 uses
  %i.am = fmul fast <16 x float> %i.al, %i.al
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.an, <16 x float> nofpclass(nan inf) %i.al, <16 x float> splat (float f0x3C088908))
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> nofpclass(nan inf) %i.al, <16 x float> splat (float f0x3D2AA9C1))
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> nofpclass(nan inf) %i.al, <16 x float> splat (float f0x3E2AAAAA))
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.al, <16 x float> splat (float 5.000000e-01))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.al)
  %i.at = fadd fast <16 x float> %i.as, splat (float 1.000000e+00)
  %i.au = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ai, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.av = shl <16 x i32> %i.au, splat (i32 23)
  %i.aw = add <16 x i32> %i.av, splat (i32 1065353216)
  %i.ax = bitcast <16 x i32> %i.aw to <16 x float>
  %i.ay = fmul fast <16 x float> %i.at, %i.ax
  %i.az = fadd fast <16 x float> %i.ay, splat (float 1.000000e+00) ; 2 uses
  %i.ba = fcmp fast ole <16 x float> %i.az, zeroinitializer
  %i.bb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.az, <16 x float> splat (float f0x00800000), i32 4)
  %i.bc = bitcast <16 x float> %i.bb to <16 x i32> ; 2 uses
  %i.bd = lshr <16 x i32> %i.bc, splat (i32 23)
  %i.be = and <16 x i32> %i.bc, splat (i32 -2139095041)
  %i.bf = or disjoint <16 x i32> %i.be, splat (i32 1056964608)
  %i.bg = bitcast <16 x i32> %i.bf to <16 x float> ; 3 uses
  %i.bh = add nsw <16 x i32> %i.bd, splat (i32 -127)
  %i.bi = sitofp fast <16 x i32> %i.bh to <16 x float> ; 2 uses
  %i.bj = fadd fast <16 x float> %i.bi, splat (float 1.000000e+00)
  %i.bk = fcmp fast olt <16 x float> %i.bg, splat (float f0x3F3504F3) ; 2 uses
  %i.bl = fadd fast <16 x float> %i.bg, splat (float -1.000000e+00)
  %i.bm = select fast <16 x i1> %i.bk, <16 x float> %i.bi, <16 x float> %i.bj ; 2 uses
  %i.bn = select fast <16 x i1> %i.bk, <16 x float> %i.bg, <16 x float> zeroinitializer
  %i.bo = fadd fast <16 x float> %i.bl, %i.bn     ; 12 uses
  %i.bp = fmul fast <16 x float> %i.bo, %i.bo     ; 2 uses
  %i.bq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bq, <16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0x3DEF251A))
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.br, <16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0xBDFE5D4F))
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0x3E11E9BF))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0xBE2AAE50))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0x3E4CCEAC))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0xBE7FFFFC))
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0x3EAAAAAA))
  %i.by = fmul fast <16 x float> %i.bp, %i.bo
  %i.bz = fmul fast <16 x float> %i.by, %i.bx
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bz)
  %i.cb = fneg fast <16 x float> %i.bp
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cb, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ca)
  %i.cd = fadd fast <16 x float> %i.cc, %i.bo
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bm, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cd)
  %i.cf = select <16 x i1> %i.ba, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.ce
  %i.cg = fcmp fast ogt <16 x bfloat> %i.w, zeroinitializer
  %i.ch = select <16 x i1> %i.cg, <16 x bfloat> %i.w, <16 x bfloat> zeroinitializer
  %i.ci = fpext <16 x bfloat> %i.ch to <16 x float>
  %i.cj = fadd fast <16 x float> %i.cf, %i.ci
  %i.ck = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cj)
  store <16 x bfloat> %i.ck, ptr %.05386, align 1, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %.05386, i64 32 ; 2 uses
  %i.cm = add nuw nsw i32 %.05287, 16             ; 2 uses
  %5 = add nuw nsw i32 %.05287, 31
  %i.cn = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.co = icmp slt i32 %5, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.cp = phi i32 [ %i.o, %.noexc ], [ %i.cn, %.lr.ph ] ; 4 uses
  %.053.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cl, %.lr.ph ] ; 3 uses
  %.052.lcssa = phi i32 [ 0, %.noexc ], [ %i.cm, %.lr.ph ] ; 3 uses
  %i.cq = icmp slt i32 %.052.lcssa, %i.cp
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cr = sub nuw nsw i32 %i.cp, %.052.lcssa
  %notmask = shl nsw i32 -1, %i.cr
  %i.cs = trunc i32 %notmask to i16
  %i.ct = xor i16 %i.cs, -1
  %i.cu = bitcast i16 %i.ct to <16 x i1>          ; 2 uses
  %i.cv = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.053.lcssa, <16 x i1> %i.cu, <16 x i16> zeroinitializer)
  %i.cw = bitcast <16 x i16> %i.cv to <16 x bfloat> ; 3 uses
  %i.cx = fpext fast <16 x bfloat> %i.cw to <16 x float>
  %i.cy = bitcast <16 x float> %i.cx to <8 x i64>
  %i.cz = and <8 x i64> %i.cy, splat (i64 9223372034707292159)
  %i.da = bitcast <8 x i64> %i.cz to <16 x float>
  %i.db = fneg fast <16 x float> %i.da
  %i.dc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.db, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.dd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dc, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.de = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.df = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.de, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.dg = fcmp fast ogt <16 x float> %i.df, %i.de
  %i.dh = fadd fast <16 x float> %i.df, splat (float -1.000000e+00)
  %i.di = select fast <16 x i1> %i.dg, <16 x float> %i.dh, <16 x float> %i.df ; 2 uses
  %i.dj = fneg fast <16 x float> %i.di            ; 2 uses
  %i.dk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dj, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.dd)
  %i.dl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dj, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dk) ; 8 uses
  %i.dm = fmul fast <16 x float> %i.dl, %i.dl
  %i.dn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dl, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.do = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dn, <16 x float> nofpclass(nan inf) %i.dl, <16 x float> splat (float f0x3C088908))
  %i.dp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.do, <16 x float> nofpclass(nan inf) %i.dl, <16 x float> splat (float f0x3D2AA9C1))
  %i.dq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dp, <16 x float> nofpclass(nan inf) %i.dl, <16 x float> splat (float f0x3E2AAAAA))
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dq, <16 x float> nofpclass(nan inf) %i.dl, <16 x float> splat (float 5.000000e-01))
  %i.ds = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dr, <16 x float> nofpclass(nan inf) %i.dm, <16 x float> nofpclass(nan inf) %i.dl)
  %i.dt = fadd fast <16 x float> %i.ds, splat (float 1.000000e+00)
  %i.du = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.di, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dv = shl <16 x i32> %i.du, splat (i32 23)
  %i.dw = add <16 x i32> %i.dv, splat (i32 1065353216)
  %i.dx = bitcast <16 x i32> %i.dw to <16 x float>
  %i.dy = fmul fast <16 x float> %i.dt, %i.dx
  %i.dz = fadd fast <16 x float> %i.dy, splat (float 1.000000e+00) ; 2 uses
  %i.ea = fcmp fast ole <16 x float> %i.dz, zeroinitializer
  %i.eb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dz, <16 x float> splat (float f0x00800000), i32 4)
  %i.ec = bitcast <16 x float> %i.eb to <16 x i32> ; 2 uses
  %i.ed = lshr <16 x i32> %i.ec, splat (i32 23)
  %i.ee = and <16 x i32> %i.ec, splat (i32 -2139095041)
  %i.ef = or disjoint <16 x i32> %i.ee, splat (i32 1056964608)
  %i.eg = bitcast <16 x i32> %i.ef to <16 x float> ; 3 uses
  %i.eh = add nsw <16 x i32> %i.ed, splat (i32 -127)
  %i.ei = sitofp fast <16 x i32> %i.eh to <16 x float> ; 2 uses
  %i.ej = fadd fast <16 x float> %i.ei, splat (float 1.000000e+00)
  %i.ek = fcmp fast olt <16 x float> %i.eg, splat (float f0x3F3504F3) ; 2 uses
  %i.el = fadd fast <16 x float> %i.eg, splat (float -1.000000e+00)
  %i.em = select fast <16 x i1> %i.ek, <16 x float> %i.ei, <16 x float> %i.ej ; 2 uses
  %i.en = select fast <16 x i1> %i.ek, <16 x float> %i.eg, <16 x float> zeroinitializer
  %i.eo = fadd fast <16 x float> %i.el, %i.en     ; 12 uses
  %i.ep = fmul fast <16 x float> %i.eo, %i.eo     ; 2 uses
  %i.eq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.er = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eq, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3DEF251A))
  %i.es = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.er, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0xBDFE5D4F))
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.es, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3E11E9BF))
  %i.eu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.et, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0xBE2AAE50))
  %i.ev = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eu, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3E4CCEAC))
  %i.ew = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ev, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0xBE7FFFFC))
  %i.ex = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ew, <16 x float> nofpclass(nan inf) %i.eo, <16 x float> splat (float f0x3EAAAAAA))
  %i.ey = fmul fast <16 x float> %i.ep, %i.eo
  %i.ez = fmul fast <16 x float> %i.ey, %i.ex
  %i.fa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ez)
  %i.fb = fneg fast <16 x float> %i.ep
  %i.fc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.fb, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fa)
  %i.fd = fadd fast <16 x float> %i.fc, %i.eo
  %i.fe = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fd)
  %i.ff = select <16 x i1> %i.ea, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.fe
  %i.fg = fcmp fast ogt <16 x bfloat> %i.cw, zeroinitializer
  %i.fh = select <16 x i1> %i.fg, <16 x bfloat> %i.cw, <16 x bfloat> zeroinitializer
  %i.fi = fpext <16 x bfloat> %i.fh to <16 x float>
  %i.fj = fadd fast <16 x float> %i.ff, %i.fi
  %i.fk = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fj)
  %i.fl = bitcast <16 x bfloat> %i.fk to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.fl, ptr align 1 %.053.lcssa, <16 x i1> %i.cu)
  %.pre102 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.fm = phi i32 [ %.pre102, %bb.c ], [ %i.cp, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.cp, %bb.c ], [ %.052.lcssa, %._crit_edge ] ; 2 uses
  %i.fn = icmp slt i32 %.1, %i.fm
  br i1 %i.fn, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.d, %bb.g
  %.291 = phi i32 [ %i.gf, %bb.g ], [ %.1, %bb.d ]
  %.15490 = phi ptr [ %i.ge, %bb.g ], [ %.053.lcssa, %bb.d ] ; 3 uses
  %i.fo = load i16, ptr %.15490, align 2, !tbaa !36
  %i.fp = zext i16 %i.fo to i32
  %i.fq = shl nuw i32 %i.fp, 16
  %i.fr = bitcast i32 %i.fq to float              ; 4 uses
  %i.fs = fcmp fast ogt float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph93
  %i.ft = fneg fast float %i.fr
  %i.fu = call fast float @llvm.exp.f32(float %i.ft)
  %i.fv = fadd fast float %i.fu, 1.000000e+00
  %i.fw = call fast float @llvm.log.f32(float %i.fv)
  %i.fx = fadd fast float %i.fw, %i.fr
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph93
  %i.fy = call fast float @llvm.exp.f32(float %i.fr)
  %i.fz = fadd fast float %i.fy, 1.000000e+00
  %i.ga = call fast float @llvm.log.f32(float %i.fz)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi nsz float [ %i.fx, %bb.e ], [ %i.ga, %bb.f ]
  %i.gb = bitcast float %.0 to i32
  %i.gc = lshr i32 %i.gb, 16
  %i.gd = trunc nuw i32 %i.gc to i16
  store i16 %i.gd, ptr %.15490, align 2, !tbaa !36
  %i.ge = getelementptr inbounds nuw i8, ptr %.15490, i64 2
  %i.gf = add nsw i32 %.291, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.gf, %i.fm
  br i1 %exitcond.not, label %._crit_edge94, label %.lr.ph93, !llvm.loop !28

._crit_edge94:                                    ; preds = %bb.g, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gg = load i32, ptr %i.b, align 4, !tbaa !14
  %i.gh = sext i32 %i.gg to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gh
  br i1 %.not.not, label %.noexc, label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge94, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge97, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !16 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i16> @llvm.masked.load.v16i16.p0(ptr captures(none), <16 x i1>, <16 x i16>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16i16.p0(<16 x i16>, ptr captures(none), <16 x i1>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

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
!14 = !{!6, !6, i64 0}
!15 = !{i64 2, i64 -1, i64 -1, i1 true}
!16 = !{!15}
!17 = !{!13, !6, i64 44}
!18 = !{!13, !6, i64 48}
!19 = !{!13, !6, i64 52}
!20 = !{!13, !6, i64 56}
!21 = !{!13, !6, i64 24}
!22 = !{!"bool", !5, i64 0}
!23 = !{!"_ZTSN4ncnn6OptionE", !22, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !6, i64 4, !12, i64 8, !12, i64 16, !6, i64 24, !22, i64 28, !22, i64 29, !22, i64 30, !22, i64 31, !22, i64 32, !22, i64 33, !22, i64 34, !22, i64 35, !22, i64 36, !22, i64 37, !22, i64 38, !22, i64 39, !6, i64 40, !22, i64 44, !22, i64 45, !22, i64 46, !22, i64 47, !5, i64 48, !22, i64 49, !22, i64 50, !22, i64 51, !22, i64 52, !22, i64 53, !22, i64 54, !22, i64 55, !22, i64 56, !22, i64 57, !22, i64 58, !22, i64 59, !22, i64 60, !22, i64 61, !22, i64 62, !22, i64 63}
!24 = !{!23, !6, i64 4}
!25 = distinct !{!25, !"_ZN4ncnn3Mat7channelEi"}
!26 = distinct !{!26, !25, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!27 = distinct !{!27, !34}
!28 = distinct !{!28, !34}
!29 = !{!13, !9, i64 0}
!30 = !{!26}
!31 = !{!13, !11, i64 64}
!32 = !{!13, !11, i64 16}
!33 = !{!5, !5, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"short", !5, i64 0}
!36 = !{!35, !35, i64 0}
end_hunk_0
