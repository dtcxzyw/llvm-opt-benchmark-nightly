Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mish_x86_avx512bf16?download=true
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
define hidden void @_ZN4ncnn21mish_bf16s_avx512bf16ERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #0 {
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
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !14
  %i.k = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %.not323 = icmp sgt i32 %i.k, %i.j
  br i1 %.not323, label %._crit_edge325, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.hd, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !33, !noalias !46
  %i.r = load i64, ptr %i.l, align 8, !tbaa !35, !noalias !46
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !46
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 15
  br i1 %i.w, label %.lr.ph, label %.preheader305

.preheader305:                                    ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.dl, %.lr.ph ] ; 2 uses
  %.038.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.di, %.lr.ph ] ; 2 uses
  %.037.lcssa = phi i32 [ 0, %.noexc ], [ %i.dj, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.037.lcssa, 7
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph311, label %.preheader304

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.037307 = phi i32 [ %i.dj, %.lr.ph ], [ 0, %.noexc ]
  %.038306 = phi ptr [ %i.di, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <16 x bfloat>, ptr %.038306, align 1, !tbaa !37
  %i.ab = fpext fast <16 x bfloat> %i.aa to <16 x float> ; 2 uses
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
  %.neg303 = fmul fast <16 x float> %i.ce, splat (float -2.000000e+00)
  %i.cf = select fast <16 x i1> %i.ba, <16 x float> splat (float +nan(0x3FFFFF)), <16 x float> %.neg303
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cj = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ci, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ck = fcmp fast ogt <16 x float> %i.cj, %i.ci
  %i.cl = fadd fast <16 x float> %i.cj, splat (float -1.000000e+00)
  %i.cm = select fast <16 x i1> %i.ck, <16 x float> %i.cl, <16 x float> %i.cj ; 2 uses
  %i.cn = fneg fast <16 x float> %i.cm            ; 2 uses
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cn, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ch)
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cn, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.co) ; 8 uses
  %i.cq = fmul fast <16 x float> %i.cp, %i.cp
  %i.cr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cr, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float f0x3C088908))
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float f0x3D2AA9C1))
  %i.cu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float f0x3E2AAAAA))
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.cp, <16 x float> splat (float 5.000000e-01))
  %i.cw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cv, <16 x float> nofpclass(nan inf) %i.cq, <16 x float> nofpclass(nan inf) %i.cp)
  %i.cx = fadd fast <16 x float> %i.cw, splat (float 1.000000e+00)
  %i.cy = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cm, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cz = shl <16 x i32> %i.cy, splat (i32 23)
  %i.da = add <16 x i32> %i.cz, splat (i32 1065353216)
  %i.db = bitcast <16 x i32> %i.da to <16 x float>
  %i.dc = fmul fast <16 x float> %i.cx, %i.db
  %i.dd = fadd fast <16 x float> %i.dc, splat (float 1.000000e+00)
  %i.de = fdiv fast <16 x float> splat (float 1.000000e+00), %i.dd
  %i.df = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.de, <16 x float> splat (float 2.000000e+00), <16 x float> splat (float -1.000000e+00))
  %i.dg = fmul fast <16 x float> %i.df, %i.ab
  %i.dh = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.dg)
  store <16 x bfloat> %i.dh, ptr %.038306, align 1, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %.038306, i64 32 ; 2 uses
  %i.dj = add nuw nsw i32 %.037307, 16            ; 3 uses
  %i.dk = or disjoint i32 %i.dj, 15
  %i.dl = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph, label %.preheader305, !llvm.loop !27

.preheader304:                                    ; preds = %.lr.ph311, %.preheader305
  %i.dn = phi i32 [ %i.x, %.preheader305 ], [ %i.hb, %.lr.ph311 ] ; 2 uses
  %.139.lcssa = phi ptr [ %.038.lcssa, %.preheader305 ], [ %i.gy, %.lr.ph311 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.037.lcssa, %.preheader305 ], [ %i.gz, %.lr.ph311 ] ; 3 uses
  %i.do = or disjoint i32 %.1.lcssa, 3
  %i.dp = icmp slt i32 %i.do, %i.dn
  br i1 %i.dp, label %.lr.ph316, label %.preheader

.lr.ph311:                                        ; preds = %.preheader305, %.lr.ph311
  %.1310 = phi i32 [ %i.gz, %.lr.ph311 ], [ %.037.lcssa, %.preheader305 ]
  %.139309 = phi ptr [ %i.gy, %.lr.ph311 ], [ %.038.lcssa, %.preheader305 ] ; 3 uses
  %i.dq = load <8 x bfloat>, ptr %.139309, align 1, !tbaa !37
  %i.dr = fpext fast <8 x bfloat> %i.dq to <8 x float> ; 2 uses
  %i.ds = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.dr, <8 x float> splat (float f0x42B0C0A5))
  %i.dt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ds, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.du = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dt, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dv = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.du, i32 1) ; 2 uses
  %i.dw = fcmp fast ogt <8 x float> %i.dv, %i.du
  %i.dx = select <8 x i1> %i.dw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dy = fsub fast <8 x float> %i.dv, %i.dx      ; 2 uses
  %i.dz = fneg fast <8 x float> %i.dy             ; 2 uses
  %i.ea = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dz, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.dt)
  %i.eb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dz, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ea) ; 8 uses
  %i.ec = fmul fast <8 x float> %i.eb, %i.eb
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.eb, <8 x float> splat (float f0x3C088908))
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %i.eb, <8 x float> splat (float f0x3D2AA9C1))
  %i.eg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.eb, <8 x float> splat (float f0x3E2AAAAA))
  %i.eh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eg, <8 x float> nofpclass(nan inf) %i.eb, <8 x float> splat (float 5.000000e-01))
  %i.ei = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eh, <8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.eb)
  %i.ej = fadd fast <8 x float> %i.ei, splat (float 1.000000e+00)
  %i.ek = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dy)
  %i.el = shl <8 x i32> %i.ek, splat (i32 23)
  %i.em = add <8 x i32> %i.el, splat (i32 1065353216)
  %i.en = bitcast <8 x i32> %i.em to <8 x float>
  %i.eo = fmul fast <8 x float> %i.ej, %i.en
  %i.ep = fadd fast <8 x float> %i.eo, splat (float 1.000000e+00) ; 2 uses
  %i.eq = fcmp fast ole <8 x float> %i.ep, zeroinitializer
  %i.er = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> splat (float f0x00800000))
  %i.es = bitcast <8 x float> %i.er to <8 x i32>  ; 2 uses
  %i.et = lshr <8 x i32> %i.es, splat (i32 23)
  %i.eu = and <8 x i32> %i.es, splat (i32 -2139095041)
  %i.ev = or disjoint <8 x i32> %i.eu, splat (i32 1056964608)
  %i.ew = bitcast <8 x i32> %i.ev to <8 x float>  ; 3 uses
  %i.ex = add nsw <8 x i32> %i.et, splat (i32 -127)
  %i.ey = sitofp fast <8 x i32> %i.ex to <8 x float> ; 2 uses
  %i.ez = fadd fast <8 x float> %i.ey, splat (float 1.000000e+00)
  %i.fa = fcmp fast olt <8 x float> %i.ew, splat (float f0x3F3504F3) ; 2 uses
  %i.fb = select <8 x i1> %i.fa, <8 x float> %i.ew, <8 x float> zeroinitializer
  %i.fc = fadd fast <8 x float> %i.ew, splat (float -1.000000e+00)
  %i.fd = select fast <8 x i1> %i.fa, <8 x float> %i.ey, <8 x float> %i.ez ; 2 uses
  %i.fe = fadd fast <8 x float> %i.fc, %i.fb      ; 12 uses
  %i.ff = fmul fast <8 x float> %i.fe, %i.fe      ; 2 uses
  %i.fg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fe, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.fh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fg, <8 x float> nofpclass(nan inf) %i.fe, <8 x float> splat (float f0x3DEF251A))
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.fe, <8 x float> splat (float f0xBDFE5D4F))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) %i.fe, <8 x float> splat (float f0x3E11E9BF))
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> nofpclass(nan inf) %i.fe, <8 x float> splat (float f0xBE2AAE50))
  %i.fl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fk, <8 x float> nofpclass(nan inf) %i.fe, <8 x float> splat (float f0x3E4CCEAC))
  %i.fm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fl, <8 x float> nofpclass(nan inf) %i.fe, <8 x float> splat (float f0xBE7FFFFC))
  %i.fn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fm, <8 x float> nofpclass(nan inf) %i.fe, <8 x float> splat (float f0x3EAAAAAA))
  %i.fo = fmul fast <8 x float> %i.ff, %i.fe
  %i.fp = fmul fast <8 x float> %i.fo, %i.fn
  %i.fq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fp)
  %i.fr = fneg fast <8 x float> %i.ff
  %i.fs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fr, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.fq)
  %i.ft = fadd fast <8 x float> %i.fs, %i.fe
  %i.fu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fd, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ft)
  %.neg302 = fmul fast <8 x float> %i.fu, splat (float -2.000000e+00)
  %i.fv = select fast <8 x i1> %i.eq, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg302
  %i.fw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fv, <8 x float> splat (float f0x42B0C0A5))
  %i.fx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fw, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fx, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fz = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fy, i32 1) ; 2 uses
  %i.ga = fcmp fast ogt <8 x float> %i.fz, %i.fy
  %i.gb = select <8 x i1> %i.ga, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gc = fsub fast <8 x float> %i.fz, %i.gb      ; 2 uses
  %i.gd = fneg fast <8 x float> %i.gc             ; 2 uses
  %i.ge = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gd, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.fx)
  %i.gf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gd, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ge) ; 8 uses
  %i.gg = fmul fast <8 x float> %i.gf, %i.gf
  %i.gh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gf, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.gi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gh, <8 x float> nofpclass(nan inf) %i.gf, <8 x float> splat (float f0x3C088908))
  %i.gj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> nofpclass(nan inf) %i.gf, <8 x float> splat (float f0x3D2AA9C1))
  %i.gk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gj, <8 x float> nofpclass(nan inf) %i.gf, <8 x float> splat (float f0x3E2AAAAA))
  %i.gl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gk, <8 x float> nofpclass(nan inf) %i.gf, <8 x float> splat (float 5.000000e-01))
  %i.gm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gl, <8 x float> nofpclass(nan inf) %i.gg, <8 x float> nofpclass(nan inf) %i.gf)
  %i.gn = fadd fast <8 x float> %i.gm, splat (float 1.000000e+00)
  %i.go = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gc)
end_hunk_0
begin_hunk_1_@_ZN4ncnnL10mish_bf16sERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.ls = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lr, <4 x float> nofpclass(nan inf) %i.lo, <4 x float> splat (float f0x3D2AA9C1))
  %i.lt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ls, <4 x float> nofpclass(nan inf) %i.lo, <4 x float> splat (float f0x3E2AAAAA))
  %i.lu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lt, <4 x float> nofpclass(nan inf) %i.lo, <4 x float> splat (float 5.000000e-01))
  %i.lv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lu, <4 x float> nofpclass(nan inf) %i.lp, <4 x float> nofpclass(nan inf) %i.lo)
  %i.lw = fadd fast <4 x float> %i.lv, splat (float 1.000000e+00)
  %i.lx = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ll)
  %i.ly = shl <4 x i32> %i.lx, splat (i32 23)
  %i.lz = add <4 x i32> %i.ly, splat (i32 1065353216)
  %i.ma = bitcast <4 x i32> %i.lz to <4 x float>
  %i.mb = fmul fast <4 x float> %i.lw, %i.ma
  %i.mc = fadd fast <4 x float> %i.mb, splat (float 1.000000e+00)
  %i.md = fdiv fast <4 x float> splat (float 2.000000e+00), %i.mc
  %i.me = fadd fast <4 x float> %i.md, splat (float -1.000000e+00)
  %i.mf = fmul fast <4 x float> %i.me, %i.iw
  %i.mg = shufflevector <4 x float> %i.mf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.mh = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mg)
  %i.mi = bitcast <8 x bfloat> %i.mh to <2 x i64>
  %i.mj = extractelement <2 x i64> %i.mi, i64 0
  store i64 %i.mj, ptr %.240314, align 1, !tbaa !37
  %i.mk = getelementptr inbounds nuw i8, ptr %.240314, i64 8 ; 2 uses
  %i.ml = add nuw nsw i32 %.2315, 4               ; 3 uses
  %i.mm = or disjoint i32 %i.ml, 3
  %i.mn = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.mo = icmp slt i32 %i.mm, %i.mn
  br i1 %i.mo, label %.lr.ph316, label %.preheader, !llvm.loop !31

.lr.ph322:                                        ; preds = %.lr.ph322.preheader, %.lr.ph322
  %.3321 = phi i32 [ %i.nc, %.lr.ph322 ], [ %.3321.ph, %.lr.ph322.preheader ]
  %.341320 = phi ptr [ %i.nb, %.lr.ph322 ], [ %.341320.ph, %.lr.ph322.preheader ] ; 3 uses
  %i.mp = load i16, ptr %.341320, align 2, !tbaa !40
  %i.mq = zext i16 %i.mp to i32
  %i.mr = shl nuw i32 %i.mq, 16
  %i.ms = bitcast i32 %i.mr to float              ; 2 uses
  %i.mt = call fast float @llvm.exp.f32(float %i.ms)
  %i.mu = fadd fast float %i.mt, 1.000000e+00
  %i.mv = call fast float @llvm.log.f32(float %i.mu)
  %i.mw = call fast float @llvm.tanh.f32(float %i.mv)
  %i.mx = fmul fast float %i.mw, %i.ms
  %i.my = bitcast float %i.mx to i32
  %i.mz = lshr i32 %i.my, 16
  %i.na = trunc nuw i32 %i.mz to i16
  store i16 %i.na, ptr %.341320, align 2, !tbaa !40
  %i.nb = getelementptr inbounds nuw i8, ptr %.341320, i64 2
  %i.nc = add nuw nsw i32 %.3321, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.nc, %i.hd
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph322, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph322, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond334.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond334.not, label %._crit_edge325, label %.noexc

._crit_edge325:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge325, %bb.a
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !16 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.exp.v32f32(<32 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.log.v32f32(<32 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.tanh.v32f32(<32 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }

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
!27 = distinct !{!27, !38}
!28 = distinct !{!28, !38}
!29 = distinct !{!29, !38, !41, !42}
!30 = distinct !{!30, !38, !41, !42}
!31 = distinct !{!31, !38}
!32 = distinct !{!32, !38, !42, !41}
!33 = !{!13, !9, i64 0}
!35 = !{!13, !11, i64 64}
!36 = !{!13, !11, i64 16}
!37 = !{!5, !5, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"short", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 8, i32 24}
!44 = distinct !{!44, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!45 = distinct !{!45, !44, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!46 = !{!45}
end_hunk_1
