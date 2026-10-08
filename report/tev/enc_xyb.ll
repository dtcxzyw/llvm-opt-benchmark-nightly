Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_xyb?download=true
inline.NumInlined: 879
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
%"class.hwy::N_SSE2::Vec128" = type { <4 x float> }
%class.anon.12 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

$_ZN3jxl11CopyImageToINS_6Image3IfEEEENS_6StatusERKT_PS4_ = comdat any

$_ZNK3jxl3cms13ColorEncoding17SameColorEncodingERKS1_ = comdat any

$_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_6Image3IT_EES5_PS8_ = comdat any

@_ZZN3jxl6N_SSE415LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d = internal constant %"struct.hwy::N_SSE4::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_SSE49SRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d = internal constant %"struct.hwy::N_SSE4::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_SSE418SRGBToXYBAndLinearEPKfPNS_10ThreadPoolEPNS_6Image3IfEES7_E1d = internal constant %"struct.hwy::N_SSE4::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES4_S4_PS2_S5_S5_PNS_10ThreadPoolEE2df = internal constant %"struct.hwy::N_SSE4::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_AVX215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d = internal constant %"struct.hwy::N_AVX2::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_AVX29SRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d = internal constant %"struct.hwy::N_AVX2::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_AVX218SRGBToXYBAndLinearEPKfPNS_10ThreadPoolEPNS_6Image3IfEES7_E1d = internal constant %"struct.hwy::N_AVX2::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_AVX210RgbToYcbcrERKNS_5PlaneIfEES4_S4_PS2_S5_S5_PNS_10ThreadPoolEE2df = internal constant %"struct.hwy::N_AVX2::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d = internal constant %"struct.hwy::N_SSE2::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_SSE29SRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d = internal constant %"struct.hwy::N_SSE2::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_SSE218SRGBToXYBAndLinearEPKfPNS_10ThreadPoolEPNS_6Image3IfEES7_E1d = internal constant %"struct.hwy::N_SSE2::Simd" zeroinitializer, align 1
@_ZZN3jxl6N_SSE210RgbToYcbcrERKNS_5PlaneIfEES4_S4_PS2_S5_S5_PNS_10ThreadPoolEE2df = internal constant %"struct.hwy::N_SSE2::Simd" zeroinitializer, align 1
@_ZN3jxlL25ToXYBHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_13ColorEncodingEfPKNS1_5PlaneIfEEPNS1_10ThreadPoolEPNS1_6Image3IfEERK15JxlCmsInterfaceSE_EE13ChooseAndCallIXadsoKPFS2_S5_fS9_SB_SE_SH_SE_EL_ZNS1_L25ToXYBHighwayDispatchTableEEEEEES2_S5_fS9_SB_SE_SH_SE_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX25ToXYBERKNS_13ColorEncodingEfPKNS_5PlaneIfEEPNS_10ThreadPoolEPNS_6Image3IfEERK15JxlCmsInterfaceSC_, ptr null, ptr @_ZN3jxl6N_SSE45ToXYBERKNS_13ColorEncodingEfPKNS_5PlaneIfEEPNS_10ThreadPoolEPNS_6Image3IfEERK15JxlCmsInterfaceSC_, ptr null, ptr null, ptr @_ZN3jxl6N_SSE25ToXYBERKNS_13ColorEncodingEfPKNS_5PlaneIfEEPNS_10ThreadPoolEPNS_6Image3IfEERK15JxlCmsInterfaceSC_, ptr @_ZN3jxl6N_SSE25ToXYBERKNS_13ColorEncodingEfPKNS_5PlaneIfEEPNS_10ThreadPoolEPNS_6Image3IfEERK15JxlCmsInterfaceSC_], align 16
@_ZN3jxlL37LinearRGBRowToXYBHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIvJPfS1_S1_PKfmEE13ChooseAndCallIXadsoKPFvS1_S1_S1_S3_mEL_ZN3jxlL37LinearRGBRowToXYBHighwayDispatchTableEEEEEEvS1_S1_S1_S3_m, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX217LinearRGBRowToXYBEPfS1_S1_PKfm, ptr null, ptr @_ZN3jxl6N_SSE417LinearRGBRowToXYBEPfS1_S1_PKfm, ptr null, ptr null, ptr @_ZN3jxl6N_SSE217LinearRGBRowToXYBEPfS1_S1_PKfm, ptr @_ZN3jxl6N_SSE217LinearRGBRowToXYBEPfS1_S1_PKfm], align 16
@_ZN3jxlL39ComputePremulAbsorbHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIvJfPfEE13ChooseAndCallIXadsoKPFvfS1_EL_ZN3jxlL39ComputePremulAbsorbHighwayDispatchTableEEEEEEvfS1_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX219ComputePremulAbsorbEfPf, ptr null, ptr @_ZN3jxl6N_SSE419ComputePremulAbsorbEfPf, ptr null, ptr null, ptr @_ZN3jxl6N_SSE219ComputePremulAbsorbEfPf, ptr @_ZN3jxl6N_SSE219ComputePremulAbsorbEfPf], align 16
@_ZN3jxlL30RgbToYcbcrHighwayDispatchTableE = internal unnamed_addr constant [17 x ptr] [ptr @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRKNS1_5PlaneIfEES6_S6_PS4_S7_S7_PNS1_10ThreadPoolEEE13ChooseAndCallIXadsoKPFS2_S6_S6_S6_S7_S7_S7_S9_EL_ZNS1_L30RgbToYcbcrHighwayDispatchTableEEEEEES2_S6_S6_S6_S7_S7_S7_S9_, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN3jxl6N_AVX210RgbToYcbcrERKNS_5PlaneIfEES4_S4_PS2_S5_S5_PNS_10ThreadPoolE, ptr null, ptr @_ZN3jxl6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES4_S4_PS2_S5_S5_PNS_10ThreadPoolE, ptr null, ptr null, ptr @_ZN3jxl6N_SSE210RgbToYcbcrERKNS_5PlaneIfEES4_S4_PS2_S5_S5_PNS_10ThreadPoolE, ptr @_ZN3jxl6N_SSE210RgbToYcbcrERKNS_5PlaneIfEES4_S4_PS2_S5_S5_PNS_10ThreadPoolE], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_ZN3jxl6N_SSE417LinearRGBRowToXYBEPfS1_S1_PKfm(ptr noalias nofree noundef captures(none) %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) #0 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load <4 x float>, ptr %3, align 16, !tbaa !17, !alias.scope !193, !noalias !194
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !tbaa !17, !alias.scope !193, !noalias !194
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load <4 x float>, ptr %i.d, align 16, !tbaa !17, !alias.scope !193, !noalias !194
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = load <4 x float>, ptr %i.f, align 16, !tbaa !17, !alias.scope !193, !noalias !194
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.i = load <4 x float>, ptr %i.h, align 16, !tbaa !17, !alias.scope !193, !noalias !194
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.k = load <4 x float>, ptr %i.j, align 16, !tbaa !17, !alias.scope !193, !noalias !194
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.m = load <4 x float>, ptr %i.l, align 16, !tbaa !17, !alias.scope !193, !noalias !194
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load <4 x float>, ptr %i.n, align 16, !tbaa !17, !alias.scope !193, !noalias !194
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.q = load <4 x float>, ptr %i.p, align 16, !tbaa !17, !alias.scope !193, !noalias !194
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.s = load <4 x float>, ptr %i.r, align 16, !tbaa !17, !alias.scope !195, !noalias !196
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.u = load <4 x float>, ptr %i.t, align 16, !tbaa !17, !alias.scope !195, !noalias !196
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.w = load <4 x float>, ptr %i.v, align 16, !tbaa !17, !alias.scope !195, !noalias !196
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.eo, %bb.b ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020 ; 2 uses
  %i.y = load <4 x float>, ptr %i.x, align 16, !tbaa !17 ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020 ; 2 uses
  %i.aa = load <4 x float>, ptr %i.z, align 16, !tbaa !17 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.020 ; 2 uses
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !tbaa !17 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.ad = fmul <4 x float> %i.ac, %i.e
  %i.ae = fadd <4 x float> %i.ad, splat (float f0x3B789536)
  %i.af = fmul <4 x float> %i.aa, %i.c
  %i.ag = fadd <4 x float> %i.af, %i.ae
  %i.ah = fmul <4 x float> %i.y, %i.a
  %i.ai = fadd <4 x float> %i.ah, %i.ag           ; 2 uses
  %i.aj = fmul <4 x float> %i.ac, %i.k
  %i.ak = fadd <4 x float> %i.aj, splat (float f0x3B789536)
  %i.al = fmul <4 x float> %i.aa, %i.i
  %i.am = fadd <4 x float> %i.al, %i.ak
  %i.an = fmul <4 x float> %i.y, %i.g
  %i.ao = fadd <4 x float> %i.an, %i.am           ; 2 uses
  %i.ap = fmul <4 x float> %i.ac, %i.q
  %i.aq = fadd <4 x float> %i.ap, splat (float f0x3B789536)
  %i.ar = fmul <4 x float> %i.aa, %i.o
  %i.as = fadd <4 x float> %i.ar, %i.aq
  %i.at = fmul <4 x float> %i.y, %i.m
  %i.au = fadd <4 x float> %i.at, %i.as           ; 2 uses
  %i.av = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.ai, <4 x float> zeroinitializer, <4 x float> %i.ai) ; 4 uses
  %i.aw = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.ao, <4 x float> zeroinitializer, <4 x float> %i.ao) ; 4 uses
  %i.ax = tail call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.au, <4 x float> zeroinitializer, <4 x float> %i.au) ; 4 uses
  %i.ay = fmul <4 x float> %i.av, splat (float f0x3EAAAAAB) ; 3 uses
  %i.az = bitcast <4 x float> %i.av to <4 x i32>  ; 2 uses
  %.not.i.i = icmp eq <4 x i32> %i.az, zeroinitializer
  %i.ba = ashr <4 x i32> %i.az, splat (i32 23)
  %.neg.i.i = mul nsw <4 x i32> %i.ba, splat (i32 -2796202)
  %i.bb = add nsw <4 x i32> %.neg.i.i, splat (i32 1417674752)
  %i.bc = bitcast <4 x i32> %i.bb to <4 x float>
  %i.bd = select <4 x i1> %.not.i.i, <4 x float> zeroinitializer, <4 x float> %i.bc ; 3 uses
  %i.be = fmul <4 x float> %i.bd, %i.bd           ; 2 uses
  %i.bf = fmul <4 x float> %i.be, %i.be
  %i.bg = fmul <4 x float> %i.bd, splat (float f0x3FAAAAAB)
  %i.bh = fmul <4 x float> %i.ay, %i.bf
  %i.bi = fsub <4 x float> %i.bg, %i.bh           ; 3 uses
  %i.bj = fmul <4 x float> %i.bi, %i.bi           ; 2 uses
  %i.bk = fmul <4 x float> %i.bj, %i.bj
  %i.bl = fmul <4 x float> %i.bi, splat (float f0x3FAAAAAB)
  %i.bm = fmul <4 x float> %i.ay, %i.bk
  %i.bn = fsub <4 x float> %i.bl, %i.bm           ; 3 uses
  %i.bo = fmul <4 x float> %i.bn, %i.bn           ; 2 uses
  %i.bp = fmul <4 x float> %i.bo, %i.bo
  %i.bq = fmul <4 x float> %i.bn, splat (float f0x3FAAAAAB)
  %i.br = fmul <4 x float> %i.ay, %i.bp
  %i.bs = fsub <4 x float> %i.bq, %i.br           ; 4 uses
  %i.bt = fmul <4 x float> %i.bs, %i.bs           ; 2 uses
  %i.bu = fmul <4 x float> %i.bt, %i.bt
  %i.bv = fmul <4 x float> %i.av, %i.bu
  %i.bw = fsub <4 x float> %i.bs, %i.bv
  %i.bx = fmul <4 x float> %i.bw, splat (float f0x3EAAAAAB)
  %i.by = fadd <4 x float> %i.bs, %i.bx           ; 2 uses
  %i.bz = fmul <4 x float> %i.by, %i.by
  %i.ca = fmul <4 x float> %i.av, %i.bz
  %i.cb = fadd <4 x float> %i.s, %i.ca            ; 2 uses
  %i.cc = fmul <4 x float> %i.aw, splat (float f0x3EAAAAAB) ; 3 uses
  %i.cd = bitcast <4 x float> %i.aw to <4 x i32>  ; 2 uses
  %.not.i30.i = icmp eq <4 x i32> %i.cd, zeroinitializer
  %i.ce = ashr <4 x i32> %i.cd, splat (i32 23)
  %.neg.i31.i = mul nsw <4 x i32> %i.ce, splat (i32 -2796202)
  %i.cf = add nsw <4 x i32> %.neg.i31.i, splat (i32 1417674752)
  %i.cg = bitcast <4 x i32> %i.cf to <4 x float>
  %i.ch = select <4 x i1> %.not.i30.i, <4 x float> zeroinitializer, <4 x float> %i.cg ; 3 uses
  %i.ci = fmul <4 x float> %i.ch, %i.ch           ; 2 uses
  %i.cj = fmul <4 x float> %i.ci, %i.ci
  %i.ck = fmul <4 x float> %i.ch, splat (float f0x3FAAAAAB)
  %i.cl = fmul <4 x float> %i.cc, %i.cj
  %i.cm = fsub <4 x float> %i.ck, %i.cl           ; 3 uses
  %i.cn = fmul <4 x float> %i.cm, %i.cm           ; 2 uses
  %i.co = fmul <4 x float> %i.cn, %i.cn
  %i.cp = fmul <4 x float> %i.cm, splat (float f0x3FAAAAAB)
  %i.cq = fmul <4 x float> %i.cc, %i.co
  %i.cr = fsub <4 x float> %i.cp, %i.cq           ; 3 uses
  %i.cs = fmul <4 x float> %i.cr, %i.cr           ; 2 uses
  %i.ct = fmul <4 x float> %i.cs, %i.cs
  %i.cu = fmul <4 x float> %i.cr, splat (float f0x3FAAAAAB)
  %i.cv = fmul <4 x float> %i.cc, %i.ct
  %i.cw = fsub <4 x float> %i.cu, %i.cv           ; 4 uses
  %i.cx = fmul <4 x float> %i.cw, %i.cw           ; 2 uses
  %i.cy = fmul <4 x float> %i.cx, %i.cx
  %i.cz = fmul <4 x float> %i.aw, %i.cy
  %i.da = fsub <4 x float> %i.cw, %i.cz
  %i.db = fmul <4 x float> %i.da, splat (float f0x3EAAAAAB)
  %i.dc = fadd <4 x float> %i.cw, %i.db           ; 2 uses
  %i.dd = fmul <4 x float> %i.dc, %i.dc
  %i.de = fmul <4 x float> %i.aw, %i.dd
  %i.df = fadd <4 x float> %i.u, %i.de            ; 2 uses
  %i.dg = fmul <4 x float> %i.ax, splat (float f0x3EAAAAAB) ; 3 uses
  %i.dh = bitcast <4 x float> %i.ax to <4 x i32>  ; 2 uses
  %.not.i32.i = icmp eq <4 x i32> %i.dh, zeroinitializer
  %i.di = ashr <4 x i32> %i.dh, splat (i32 23)
  %.neg.i33.i = mul nsw <4 x i32> %i.di, splat (i32 -2796202)
  %i.dj = add nsw <4 x i32> %.neg.i33.i, splat (i32 1417674752)
  %i.dk = bitcast <4 x i32> %i.dj to <4 x float>
  %i.dl = select <4 x i1> %.not.i32.i, <4 x float> zeroinitializer, <4 x float> %i.dk ; 3 uses
  %i.dm = fmul <4 x float> %i.dl, %i.dl           ; 2 uses
  %i.dn = fmul <4 x float> %i.dm, %i.dm
  %i.do = fmul <4 x float> %i.dl, splat (float f0x3FAAAAAB)
  %i.dp = fmul <4 x float> %i.dg, %i.dn
  %i.dq = fsub <4 x float> %i.do, %i.dp           ; 3 uses
  %i.dr = fmul <4 x float> %i.dq, %i.dq           ; 2 uses
  %i.ds = fmul <4 x float> %i.dr, %i.dr
  %i.dt = fmul <4 x float> %i.dq, splat (float f0x3FAAAAAB)
  %i.du = fmul <4 x float> %i.dg, %i.ds
  %i.dv = fsub <4 x float> %i.dt, %i.du           ; 3 uses
  %i.dw = fmul <4 x float> %i.dv, %i.dv           ; 2 uses
  %i.dx = fmul <4 x float> %i.dw, %i.dw
  %i.dy = fmul <4 x float> %i.dv, splat (float f0x3FAAAAAB)
  %i.dz = fmul <4 x float> %i.dg, %i.dx
  %i.ea = fsub <4 x float> %i.dy, %i.dz           ; 4 uses
  %i.eb = fmul <4 x float> %i.ea, %i.ea           ; 2 uses
  %i.ec = fmul <4 x float> %i.eb, %i.eb
  %i.ed = fmul <4 x float> %i.ax, %i.ec
  %i.ee = fsub <4 x float> %i.ea, %i.ed
  %i.ef = fmul <4 x float> %i.ee, splat (float f0x3EAAAAAB)
  %i.eg = fadd <4 x float> %i.ea, %i.ef           ; 2 uses
  %i.eh = fmul <4 x float> %i.eg, %i.eg
  %i.ei = fmul <4 x float> %i.ax, %i.eh
  %i.ej = fadd <4 x float> %i.w, %i.ei
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.ek = fsub <4 x float> %i.cb, %i.df
  %i.el = fmul <4 x float> %i.ek, splat (float 5.000000e-01)
  store <4 x float> %i.el, ptr %i.x, align 16, !tbaa !17, !alias.scope !203, !noalias !204
  %i.em = fadd <4 x float> %i.cb, %i.df
  %i.en = fmul <4 x float> %i.em, splat (float 5.000000e-01)
  store <4 x float> %i.en, ptr %i.z, align 16, !tbaa !17, !alias.scope !205, !noalias !206
  store <4 x float> %i.ej, ptr %i.ab, align 16, !tbaa !17, !alias.scope !207, !noalias !208
  %i.eo = add nuw i64 %.020, 4                    ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %4
  br i1 %i.ep, label %bb.b, label %._crit_edge, !llvm.loop !192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_SSE415LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEE(ptr noalias noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noalias noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.jxl::ThreadPool::RunCallState", align 8 ; 7 uses
  %4 = alloca %"class.jxl::ThreadPool", align 8   ; 5 uses
  %5 = alloca %class.anon.22, align 1             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %6 = alloca %class.anon, align 8                ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !21
  store ptr %2, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.d = load i32, ptr %2, align 8, !tbaa !28
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr %i.b, ptr %6, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @_ZZN3jxl6N_SSE415LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr null, ptr %4, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.l, align 8, !tbaa !42
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE415LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread23", label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.b
  %i.n = zext i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE415LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i.i.i", %.preheader.i.i.i.preheader
  %i.o = phi i64 [ %i.e, %.preheader.i.i.i.preheader ], [ %i.fx, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE415LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i.i.i" ]
  %indvars.iv18 = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %indvars.iv.next19, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE415LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i.i.i" ] ; 2 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !44, !nonnull !45, !align !46
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47
  %i.t = mul i64 %i.s, %indvars.iv18              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.v, i64 64) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.z, i64 64) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ab, i64 64) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %.not.i3 = icmp eq i64 %i.o, 0
  br i1 %.not.i3, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE415LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i.i.i", label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.c, %.lr.ph.i4
  %.023.i5 = phi i64 [ %i.ft, %.lr.ph.i4 ], [ 0, %bb.c ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.023.i5 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.ad, align 16, !tbaa !17 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.023.i5 ; 2 uses
  %i.ag = load <4 x float>, ptr %i.af, align 16, !tbaa !17 ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.023.i5 ; 2 uses
  %i.ai = load <4 x float>, ptr %i.ah, align 16, !tbaa !17 ; 3 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !49, !nonnull !45, !align !46
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !17, !alias.scope !243, !noalias !244
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !17, !alias.scope !243, !noalias !244
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !tbaa !17, !alias.scope !243, !noalias !244
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !17, !alias.scope !243, !noalias !244
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.at = load <4 x float>, ptr %i.as, align 16, !tbaa !17, !alias.scope !243, !noalias !244
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !17, !alias.scope !243, !noalias !244
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !17, !alias.scope !243, !noalias !244
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.az = load <4 x float>, ptr %i.ay, align 16, !tbaa !17, !alias.scope !243, !noalias !244
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.bb = load <4 x float>, ptr %i.ba, align 16, !tbaa !17, !alias.scope !243, !noalias !244
  %i.bc = fmul <4 x float> %i.ai, %i.ap
  %i.bd = fadd <4 x float> %i.bc, splat (float f0x3B789536)
  %i.be = fmul <4 x float> %i.ag, %i.an
  %i.bf = fadd <4 x float> %i.be, %i.bd
  %i.bg = fmul <4 x float> %i.ae, %i.al
  %i.bh = fadd <4 x float> %i.bg, %i.bf           ; 2 uses
  %i.bi = fmul <4 x float> %i.ai, %i.av
  %i.bj = fadd <4 x float> %i.bi, splat (float f0x3B789536)
  %i.bk = fmul <4 x float> %i.ag, %i.at
  %i.bl = fadd <4 x float> %i.bk, %i.bj
  %i.bm = fmul <4 x float> %i.ae, %i.ar
  %i.bn = fadd <4 x float> %i.bm, %i.bl           ; 2 uses
  %i.bo = fmul <4 x float> %i.ai, %i.bb
  %i.bp = fadd <4 x float> %i.bo, splat (float f0x3B789536)
  %i.bq = fmul <4 x float> %i.ag, %i.az
  %i.br = fadd <4 x float> %i.bq, %i.bp
  %i.bs = fmul <4 x float> %i.ae, %i.ax
  %i.bt = fadd <4 x float> %i.bs, %i.br           ; 2 uses
  %i.bu = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.bh, <4 x float> zeroinitializer, <4 x float> %i.bh) ; 4 uses
  %i.bv = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.bn, <4 x float> zeroinitializer, <4 x float> %i.bn) ; 4 uses
  %i.bw = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.bt, <4 x float> zeroinitializer, <4 x float> %i.bt) ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !17, !alias.scope !239, !noalias !245
  %i.bz = fmul <4 x float> %i.bu, splat (float f0x3EAAAAAB) ; 3 uses
  %i.ca = bitcast <4 x float> %i.bu to <4 x i32>  ; 2 uses
  %.not.i.i.i6 = icmp eq <4 x i32> %i.ca, zeroinitializer
  %i.cb = ashr <4 x i32> %i.ca, splat (i32 23)
  %.neg.i.i.i7 = mul nsw <4 x i32> %i.cb, splat (i32 -2796202)
  %i.cc = add nsw <4 x i32> %.neg.i.i.i7, splat (i32 1417674752)
  %i.cd = bitcast <4 x i32> %i.cc to <4 x float>
  %i.ce = select <4 x i1> %.not.i.i.i6, <4 x float> zeroinitializer, <4 x float> %i.cd ; 3 uses
  %i.cf = fmul <4 x float> %i.ce, %i.ce           ; 2 uses
  %i.cg = fmul <4 x float> %i.cf, %i.cf
  %i.ch = fmul <4 x float> %i.ce, splat (float f0x3FAAAAAB)
  %i.ci = fmul <4 x float> %i.bz, %i.cg
  %i.cj = fsub <4 x float> %i.ch, %i.ci           ; 3 uses
  %i.ck = fmul <4 x float> %i.cj, %i.cj           ; 2 uses
  %i.cl = fmul <4 x float> %i.ck, %i.ck
  %i.cm = fmul <4 x float> %i.cj, splat (float f0x3FAAAAAB)
  %i.cn = fmul <4 x float> %i.bz, %i.cl
  %i.co = fsub <4 x float> %i.cm, %i.cn           ; 3 uses
  %i.cp = fmul <4 x float> %i.co, %i.co           ; 2 uses
  %i.cq = fmul <4 x float> %i.cp, %i.cp
  %i.cr = fmul <4 x float> %i.co, splat (float f0x3FAAAAAB)
  %i.cs = fmul <4 x float> %i.bz, %i.cq
  %i.ct = fsub <4 x float> %i.cr, %i.cs           ; 4 uses
  %i.cu = fmul <4 x float> %i.ct, %i.ct           ; 2 uses
  %i.cv = fmul <4 x float> %i.cu, %i.cu
  %i.cw = fmul <4 x float> %i.bu, %i.cv
  %i.cx = fsub <4 x float> %i.ct, %i.cw
  %i.cy = fmul <4 x float> %i.cx, splat (float f0x3EAAAAAB)
  %i.cz = fadd <4 x float> %i.ct, %i.cy           ; 2 uses
  %i.da = fmul <4 x float> %i.cz, %i.cz
  %i.db = fmul <4 x float> %i.bu, %i.da
  %i.dc = fadd <4 x float> %i.by, %i.db           ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  %i.de = load <4 x float>, ptr %i.dd, align 16, !tbaa !17, !alias.scope !239, !noalias !245
  %i.df = fmul <4 x float> %i.bv, splat (float f0x3EAAAAAB) ; 3 uses
  %i.dg = bitcast <4 x float> %i.bv to <4 x i32>  ; 2 uses
  %.not.i30.i.i8 = icmp eq <4 x i32> %i.dg, zeroinitializer
  %i.dh = ashr <4 x i32> %i.dg, splat (i32 23)
  %.neg.i31.i.i9 = mul nsw <4 x i32> %i.dh, splat (i32 -2796202)
  %i.di = add nsw <4 x i32> %.neg.i31.i.i9, splat (i32 1417674752)
  %i.dj = bitcast <4 x i32> %i.di to <4 x float>
  %i.dk = select <4 x i1> %.not.i30.i.i8, <4 x float> zeroinitializer, <4 x float> %i.dj ; 3 uses
  %i.dl = fmul <4 x float> %i.dk, %i.dk           ; 2 uses
  %i.dm = fmul <4 x float> %i.dl, %i.dl
  %i.dn = fmul <4 x float> %i.dk, splat (float f0x3FAAAAAB)
  %i.do = fmul <4 x float> %i.df, %i.dm
  %i.dp = fsub <4 x float> %i.dn, %i.do           ; 3 uses
  %i.dq = fmul <4 x float> %i.dp, %i.dp           ; 2 uses
  %i.dr = fmul <4 x float> %i.dq, %i.dq
  %i.ds = fmul <4 x float> %i.dp, splat (float f0x3FAAAAAB)
  %i.dt = fmul <4 x float> %i.df, %i.dr
  %i.du = fsub <4 x float> %i.ds, %i.dt           ; 3 uses
  %i.dv = fmul <4 x float> %i.du, %i.du           ; 2 uses
  %i.dw = fmul <4 x float> %i.dv, %i.dv
  %i.dx = fmul <4 x float> %i.du, splat (float f0x3FAAAAAB)
  %i.dy = fmul <4 x float> %i.df, %i.dw
  %i.dz = fsub <4 x float> %i.dx, %i.dy           ; 4 uses
  %i.ea = fmul <4 x float> %i.dz, %i.dz           ; 2 uses
  %i.eb = fmul <4 x float> %i.ea, %i.ea
  %i.ec = fmul <4 x float> %i.bv, %i.eb
  %i.ed = fsub <4 x float> %i.dz, %i.ec
  %i.ee = fmul <4 x float> %i.ed, splat (float f0x3EAAAAAB)
  %i.ef = fadd <4 x float> %i.dz, %i.ee           ; 2 uses
  %i.eg = fmul <4 x float> %i.ef, %i.ef
  %i.eh = fmul <4 x float> %i.bv, %i.eg
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES4_S4_PS2_S5_S5_PNS_10ThreadPoolE:bb.a
"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES7_S7_PS5_S8_S8_PS0_E3$_0EENS_6StatusES9_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i20.i.i": ; preds = %._crit_edge.i, %bb.g, %.preheader.i17.i.i
  %i.hl = add nuw i32 %.07.i18.i.i, 1             ; 2 uses
  %exitcond.not.i21.i.i = icmp eq i32 %i.hl, %i.aj
  br i1 %exitcond.not.i21.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", label %.preheader.i17.i.i, !llvm.loop !278

bb.i:                                             ; preds = %bb.f
  %i.hm = call noundef i32 %.val.i.i(ptr noundef %.val11.i.i, ptr noundef nonnull %7, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES7_S7_PS5_S8_S8_PS0_E3$_0EENS_6StatusES9_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES7_S7_PS5_S8_S8_PS0_E3$_0EENS_6StatusES9_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %i.aj) #34, !inline_history !279
  %.not25.i.i.i = icmp eq i32 %i.hm, 0
  br i1 %.not25.i.i.i, label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread71"

"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread71": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.k

"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit": ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES7_S7_PS5_S8_S8_PS0_E3$_0EENS_6StatusES9_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i20.i.i", %bb.i
  %i.hn = load atomic i32, ptr %i.dg seq_cst, align 8
  %.not5.i16.i.i.not = icmp eq i32 %i.hn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %.not5.i16.i.i.not, label %bb.j, label %bb.k

.sink.split:                                      ; preds = %bb.e, %"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread69"
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit"
  br label %bb.k

bb.k:                                             ; preds = %"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread71", %"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", %bb.j
  %.sroa.0.0 = phi i32 [ 0, %bb.j ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit" ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_6N_SSE410RgbToYcbcrERKNS_5PlaneIfEES5_S5_PS3_S6_S6_PNS_10ThreadPoolEE3$_0EENS_6StatusES8_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread71" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.k ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  ret i32 %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_ZN3jxl6N_AVX217LinearRGBRowToXYBEPfS1_S1_PKfm(ptr noalias nofree noundef captures(none) %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) #9 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load <8 x float>, ptr %3, align 32, !tbaa !17, !alias.scope !296, !noalias !297
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load <8 x float>, ptr %i.b, align 32, !tbaa !17, !alias.scope !296, !noalias !297
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.e = load <8 x float>, ptr %i.d, align 32, !tbaa !17, !alias.scope !296, !noalias !297
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.g = load <8 x float>, ptr %i.f, align 32, !tbaa !17, !alias.scope !296, !noalias !297
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.i = load <8 x float>, ptr %i.h, align 32, !tbaa !17, !alias.scope !296, !noalias !297
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.k = load <8 x float>, ptr %i.j, align 32, !tbaa !17, !alias.scope !296, !noalias !297
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.m = load <8 x float>, ptr %i.l, align 32, !tbaa !17, !alias.scope !296, !noalias !297
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.o = load <8 x float>, ptr %i.n, align 32, !tbaa !17, !alias.scope !296, !noalias !297
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.q = load <8 x float>, ptr %i.p, align 32, !tbaa !17, !alias.scope !296, !noalias !297
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.s = load <8 x float>, ptr %i.r, align 32, !tbaa !17, !alias.scope !298, !noalias !299
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.u = load <8 x float>, ptr %i.t, align 32, !tbaa !17, !alias.scope !298, !noalias !299
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.w = load <8 x float>, ptr %i.v, align 32, !tbaa !17, !alias.scope !298, !noalias !299
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.dq, %bb.b ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020 ; 2 uses
  %i.y = load <8 x float>, ptr %i.x, align 32, !tbaa !17 ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020 ; 2 uses
  %i.aa = load <8 x float>, ptr %i.z, align 32, !tbaa !17 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.020 ; 2 uses
  %i.ac = load <8 x float>, ptr %i.ab, align 32, !tbaa !17 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.ad = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.e, <8 x float> %i.ac, <8 x float> splat (float f0x3B789536))
  %i.ae = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.c, <8 x float> %i.aa, <8 x float> %i.ad)
  %i.af = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.a, <8 x float> %i.y, <8 x float> %i.ae) ; 2 uses
  %i.ag = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.k, <8 x float> %i.ac, <8 x float> splat (float f0x3B789536))
  %i.ah = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.i, <8 x float> %i.aa, <8 x float> %i.ag)
  %i.ai = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.g, <8 x float> %i.y, <8 x float> %i.ah) ; 2 uses
  %i.aj = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.q, <8 x float> %i.ac, <8 x float> splat (float f0x3B789536))
  %i.ak = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.o, <8 x float> %i.aa, <8 x float> %i.aj)
  %i.al = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.m, <8 x float> %i.y, <8 x float> %i.ak) ; 2 uses
  %i.am = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.af, <8 x float> zeroinitializer, <8 x float> %i.af) ; 4 uses
  %i.an = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.ai, <8 x float> zeroinitializer, <8 x float> %i.ai) ; 4 uses
  %i.ao = tail call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.al, <8 x float> zeroinitializer, <8 x float> %i.al) ; 4 uses
  %i.ap = bitcast <8 x float> %i.am to <8 x i32>  ; 2 uses
  %.not.i.i = icmp eq <8 x i32> %i.ap, zeroinitializer
  %i.aq = ashr <8 x i32> %i.ap, splat (i32 23)
  %.neg.i.i = mul nsw <8 x i32> %i.aq, splat (i32 -2796202)
  %i.ar = add nsw <8 x i32> %.neg.i.i, splat (i32 1417674752)
  %i.as = bitcast <8 x i32> %i.ar to <8 x float>
  %i.at = select <8 x i1> %.not.i.i, <8 x float> zeroinitializer, <8 x float> %i.as ; 3 uses
  %i.au = fmul <8 x float> %i.am, splat (float f0xBEAAAAAB) ; 3 uses
  %i.av = fmul <8 x float> %i.at, %i.at           ; 2 uses
  %i.aw = fmul <8 x float> %i.av, %i.av
  %i.ax = fmul <8 x float> %i.at, splat (float f0x3FAAAAAB)
  %i.ay = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.au, <8 x float> %i.aw, <8 x float> %i.ax) ; 3 uses
  %i.az = fmul <8 x float> %i.ay, %i.ay           ; 2 uses
  %i.ba = fmul <8 x float> %i.az, %i.az
  %i.bb = fmul <8 x float> %i.ay, splat (float f0x3FAAAAAB)
  %i.bc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.au, <8 x float> %i.ba, <8 x float> %i.bb) ; 3 uses
  %i.bd = fmul <8 x float> %i.bc, %i.bc           ; 2 uses
  %i.be = fmul <8 x float> %i.bd, %i.bd
  %i.bf = fmul <8 x float> %i.bc, splat (float f0x3FAAAAAB)
  %i.bg = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.au, <8 x float> %i.be, <8 x float> %i.bf) ; 4 uses
  %i.bh = fmul <8 x float> %i.bg, %i.bg           ; 2 uses
  %i.bi = fmul <8 x float> %i.bh, %i.bh
  %i.bj = fneg <8 x float> %i.am
  %i.bk = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bj, <8 x float> %i.bi, <8 x float> %i.bg)
  %i.bl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bk, <8 x float> splat (float f0x3EAAAAAB), <8 x float> %i.bg) ; 2 uses
  %i.bm = fmul <8 x float> %i.bl, %i.bl
  %i.bn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bm, <8 x float> %i.am, <8 x float> %i.s) ; 2 uses
  %i.bo = bitcast <8 x float> %i.an to <8 x i32>  ; 2 uses
  %.not.i30.i = icmp eq <8 x i32> %i.bo, zeroinitializer
  %i.bp = ashr <8 x i32> %i.bo, splat (i32 23)
  %.neg.i31.i = mul nsw <8 x i32> %i.bp, splat (i32 -2796202)
  %i.bq = add nsw <8 x i32> %.neg.i31.i, splat (i32 1417674752)
  %i.br = bitcast <8 x i32> %i.bq to <8 x float>
  %i.bs = select <8 x i1> %.not.i30.i, <8 x float> zeroinitializer, <8 x float> %i.br ; 3 uses
  %i.bt = fmul <8 x float> %i.an, splat (float f0xBEAAAAAB) ; 3 uses
  %i.bu = fmul <8 x float> %i.bs, %i.bs           ; 2 uses
  %i.bv = fmul <8 x float> %i.bu, %i.bu
  %i.bw = fmul <8 x float> %i.bs, splat (float f0x3FAAAAAB)
  %i.bx = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bt, <8 x float> %i.bv, <8 x float> %i.bw) ; 3 uses
  %i.by = fmul <8 x float> %i.bx, %i.bx           ; 2 uses
  %i.bz = fmul <8 x float> %i.by, %i.by
  %i.ca = fmul <8 x float> %i.bx, splat (float f0x3FAAAAAB)
  %i.cb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bt, <8 x float> %i.bz, <8 x float> %i.ca) ; 3 uses
  %i.cc = fmul <8 x float> %i.cb, %i.cb           ; 2 uses
  %i.cd = fmul <8 x float> %i.cc, %i.cc
  %i.ce = fmul <8 x float> %i.cb, splat (float f0x3FAAAAAB)
  %i.cf = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bt, <8 x float> %i.cd, <8 x float> %i.ce) ; 4 uses
  %i.cg = fmul <8 x float> %i.cf, %i.cf           ; 2 uses
  %i.ch = fmul <8 x float> %i.cg, %i.cg
  %i.ci = fneg <8 x float> %i.an
  %i.cj = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ci, <8 x float> %i.ch, <8 x float> %i.cf)
  %i.ck = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cj, <8 x float> splat (float f0x3EAAAAAB), <8 x float> %i.cf) ; 2 uses
  %i.cl = fmul <8 x float> %i.ck, %i.ck
  %i.cm = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cl, <8 x float> %i.an, <8 x float> %i.u) ; 2 uses
  %i.cn = bitcast <8 x float> %i.ao to <8 x i32>  ; 2 uses
  %.not.i32.i = icmp eq <8 x i32> %i.cn, zeroinitializer
  %i.co = ashr <8 x i32> %i.cn, splat (i32 23)
  %.neg.i33.i = mul nsw <8 x i32> %i.co, splat (i32 -2796202)
  %i.cp = add nsw <8 x i32> %.neg.i33.i, splat (i32 1417674752)
  %i.cq = bitcast <8 x i32> %i.cp to <8 x float>
  %i.cr = select <8 x i1> %.not.i32.i, <8 x float> zeroinitializer, <8 x float> %i.cq ; 3 uses
  %i.cs = fmul <8 x float> %i.ao, splat (float f0xBEAAAAAB) ; 3 uses
  %i.ct = fmul <8 x float> %i.cr, %i.cr           ; 2 uses
  %i.cu = fmul <8 x float> %i.ct, %i.ct
  %i.cv = fmul <8 x float> %i.cr, splat (float f0x3FAAAAAB)
  %i.cw = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cs, <8 x float> %i.cu, <8 x float> %i.cv) ; 3 uses
  %i.cx = fmul <8 x float> %i.cw, %i.cw           ; 2 uses
  %i.cy = fmul <8 x float> %i.cx, %i.cx
  %i.cz = fmul <8 x float> %i.cw, splat (float f0x3FAAAAAB)
  %i.da = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cs, <8 x float> %i.cy, <8 x float> %i.cz) ; 3 uses
  %i.db = fmul <8 x float> %i.da, %i.da           ; 2 uses
  %i.dc = fmul <8 x float> %i.db, %i.db
  %i.dd = fmul <8 x float> %i.da, splat (float f0x3FAAAAAB)
  %i.de = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cs, <8 x float> %i.dc, <8 x float> %i.dd) ; 4 uses
  %i.df = fmul <8 x float> %i.de, %i.de           ; 2 uses
  %i.dg = fmul <8 x float> %i.df, %i.df
  %i.dh = fneg <8 x float> %i.ao
  %i.di = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dh, <8 x float> %i.dg, <8 x float> %i.de)
  %i.dj = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.di, <8 x float> splat (float f0x3EAAAAAB), <8 x float> %i.de) ; 2 uses
  %i.dk = fmul <8 x float> %i.dj, %i.dj
  %i.dl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dk, <8 x float> %i.ao, <8 x float> %i.w)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.dm = fsub <8 x float> %i.bn, %i.cm
  %i.dn = fmul <8 x float> %i.dm, splat (float 5.000000e-01)
  store <8 x float> %i.dn, ptr %i.x, align 32, !tbaa !17, !alias.scope !306, !noalias !307
  %i.do = fadd <8 x float> %i.bn, %i.cm
  %i.dp = fmul <8 x float> %i.do, splat (float 5.000000e-01)
  store <8 x float> %i.dp, ptr %i.z, align 32, !tbaa !17, !alias.scope !308, !noalias !309
  store <8 x float> %i.dl, ptr %i.ab, align 32, !tbaa !17, !alias.scope !310, !noalias !311
  %i.dq = add nuw i64 %.020, 8                    ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %4
  br i1 %i.dr, label %bb.b, label %._crit_edge, !llvm.loop !295
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_AVX215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEE(ptr noalias noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noalias noundef %2) local_unnamed_addr #10 {
bb.a:
  %3 = alloca %"class.jxl::ThreadPool::RunCallState.50", align 8 ; 7 uses
  %4 = alloca %class.anon.48, align 1             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %class.anon.5, align 8              ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !21
  store ptr %2, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.d = load i32, ptr %2, align 8, !tbaa !28
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %i.b, ptr %5, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @_ZZN3jxl6N_AVX215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d, ptr %i.g, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.j, 0
  br i1 %i.l, label %.sink.split, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.b
  %i.m = zext i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i.i.i", %.preheader.i.i.i.preheader
  %i.n = phi i64 [ %i.e, %.preheader.i.i.i.preheader ], [ %i.ey, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i.i.i" ]
  %indvars.iv18 = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %indvars.iv.next19, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i.i.i" ] ; 2 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !120, !nonnull !45, !align !46
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !47
  %i.s = mul i64 %i.r, %indvars.iv18              ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.u, i64 64) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.v, i64 64) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ab, i64 64) ]
  %.not.i3 = icmp eq i64 %i.n, 0
  br i1 %.not.i3, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm.exit.i.i.i", label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.c, %.lr.ph.i4
  %.023.i5 = phi i64 [ %i.eu, %.lr.ph.i4 ], [ 0, %bb.c ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.023.i5 ; 2 uses
  %i.ad = load <8 x float>, ptr %i.ac, align 32, !tbaa !17 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.023.i5 ; 2 uses
  %i.af = load <8 x float>, ptr %i.ae, align 32, !tbaa !17 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.023.i5 ; 2 uses
  %i.ah = load <8 x float>, ptr %i.ag, align 32, !tbaa !17 ; 3 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !121, !nonnull !45, !align !46
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.ak = load <8 x float>, ptr %i.aj, align 32, !tbaa !17, !alias.scope !346, !noalias !347
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load <8 x float>, ptr %i.al, align 32, !tbaa !17, !alias.scope !346, !noalias !347
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ao = load <8 x float>, ptr %i.an, align 32, !tbaa !17, !alias.scope !346, !noalias !347
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.aq = load <8 x float>, ptr %i.ap, align 32, !tbaa !17, !alias.scope !346, !noalias !347
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.as = load <8 x float>, ptr %i.ar, align 32, !tbaa !17, !alias.scope !346, !noalias !347
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.au = load <8 x float>, ptr %i.at, align 32, !tbaa !17, !alias.scope !346, !noalias !347
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  %i.aw = load <8 x float>, ptr %i.av, align 32, !tbaa !17, !alias.scope !346, !noalias !347
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.ay = load <8 x float>, ptr %i.ax, align 32, !tbaa !17, !alias.scope !346, !noalias !347
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  %i.ba = load <8 x float>, ptr %i.az, align 32, !tbaa !17, !alias.scope !346, !noalias !347
  %i.bb = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ao, <8 x float> %i.ah, <8 x float> splat (float f0x3B789536))
  %i.bc = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.am, <8 x float> %i.af, <8 x float> %i.bb)
  %i.bd = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ak, <8 x float> %i.ad, <8 x float> %i.bc) ; 2 uses
  %i.be = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.au, <8 x float> %i.ah, <8 x float> splat (float f0x3B789536))
  %i.bf = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.as, <8 x float> %i.af, <8 x float> %i.be)
  %i.bg = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aq, <8 x float> %i.ad, <8 x float> %i.bf) ; 2 uses
  %i.bh = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ba, <8 x float> %i.ah, <8 x float> splat (float f0x3B789536))
  %i.bi = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ay, <8 x float> %i.af, <8 x float> %i.bh)
  %i.bj = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aw, <8 x float> %i.ad, <8 x float> %i.bi) ; 2 uses
  %i.bk = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.bd, <8 x float> zeroinitializer, <8 x float> %i.bd) ; 4 uses
  %i.bl = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.bg, <8 x float> zeroinitializer, <8 x float> %i.bg) ; 4 uses
  %i.bm = call noundef <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> %i.bj, <8 x float> zeroinitializer, <8 x float> %i.bj) ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 288
  %i.bo = load <8 x float>, ptr %i.bn, align 32, !tbaa !17, !alias.scope !342, !noalias !348
  %i.bp = bitcast <8 x float> %i.bk to <8 x i32>  ; 2 uses
  %.not.i.i.i6 = icmp eq <8 x i32> %i.bp, zeroinitializer
  %i.bq = ashr <8 x i32> %i.bp, splat (i32 23)
  %.neg.i.i.i7 = mul nsw <8 x i32> %i.bq, splat (i32 -2796202)
  %i.br = add nsw <8 x i32> %.neg.i.i.i7, splat (i32 1417674752)
  %i.bs = bitcast <8 x i32> %i.br to <8 x float>
  %i.bt = select <8 x i1> %.not.i.i.i6, <8 x float> zeroinitializer, <8 x float> %i.bs ; 3 uses
  %i.bu = fmul <8 x float> %i.bk, splat (float f0xBEAAAAAB) ; 3 uses
  %i.bv = fmul <8 x float> %i.bt, %i.bt           ; 2 uses
  %i.bw = fmul <8 x float> %i.bv, %i.bv
  %i.bx = fmul <8 x float> %i.bt, splat (float f0x3FAAAAAB)
  %i.by = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bu, <8 x float> %i.bw, <8 x float> %i.bx) ; 3 uses
  %i.bz = fmul <8 x float> %i.by, %i.by           ; 2 uses
  %i.ca = fmul <8 x float> %i.bz, %i.bz
  %i.cb = fmul <8 x float> %i.by, splat (float f0x3FAAAAAB)
  %i.cc = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bu, <8 x float> %i.ca, <8 x float> %i.cb) ; 3 uses
  %i.cd = fmul <8 x float> %i.cc, %i.cc           ; 2 uses
  %i.ce = fmul <8 x float> %i.cd, %i.cd
  %i.cf = fmul <8 x float> %i.cc, splat (float f0x3FAAAAAB)
  %i.cg = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bu, <8 x float> %i.ce, <8 x float> %i.cf) ; 4 uses
  %i.ch = fmul <8 x float> %i.cg, %i.cg           ; 2 uses
  %i.ci = fmul <8 x float> %i.ch, %i.ch
  %i.cj = fneg <8 x float> %i.bk
  %i.ck = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cj, <8 x float> %i.ci, <8 x float> %i.cg)
  %i.cl = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ck, <8 x float> splat (float f0x3EAAAAAB), <8 x float> %i.cg) ; 2 uses
  %i.cm = fmul <8 x float> %i.cl, %i.cl
  %i.cn = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cm, <8 x float> %i.bk, <8 x float> %i.bo) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 320
  %i.cp = load <8 x float>, ptr %i.co, align 32, !tbaa !17, !alias.scope !342, !noalias !348
  %i.cq = bitcast <8 x float> %i.bl to <8 x i32>  ; 2 uses
  %.not.i30.i.i8 = icmp eq <8 x i32> %i.cq, zeroinitializer
  %i.cr = ashr <8 x i32> %i.cq, splat (i32 23)
  %.neg.i31.i.i9 = mul nsw <8 x i32> %i.cr, splat (i32 -2796202)
  %i.cs = add nsw <8 x i32> %.neg.i31.i.i9, splat (i32 1417674752)
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>
  %i.cu = select <8 x i1> %.not.i30.i.i8, <8 x float> zeroinitializer, <8 x float> %i.ct ; 3 uses
  %i.cv = fmul <8 x float> %i.bl, splat (float f0xBEAAAAAB) ; 3 uses
  %i.cw = fmul <8 x float> %i.cu, %i.cu           ; 2 uses
  %i.cx = fmul <8 x float> %i.cw, %i.cw
  %i.cy = fmul <8 x float> %i.cu, splat (float f0x3FAAAAAB)
  %i.cz = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cv, <8 x float> %i.cx, <8 x float> %i.cy) ; 3 uses
  %i.da = fmul <8 x float> %i.cz, %i.cz           ; 2 uses
  %i.db = fmul <8 x float> %i.da, %i.da
  %i.dc = fmul <8 x float> %i.cz, splat (float f0x3FAAAAAB)
  %i.dd = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cv, <8 x float> %i.db, <8 x float> %i.dc) ; 3 uses
  %i.de = fmul <8 x float> %i.dd, %i.dd           ; 2 uses
  %i.df = fmul <8 x float> %i.de, %i.de
  %i.dg = fmul <8 x float> %i.dd, splat (float f0x3FAAAAAB)
  %i.dh = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cv, <8 x float> %i.df, <8 x float> %i.dg) ; 4 uses
  %i.di = fmul <8 x float> %i.dh, %i.dh           ; 2 uses
  %i.dj = fmul <8 x float> %i.di, %i.di
  %i.dk = fneg <8 x float> %i.bl
  %i.dl = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dk, <8 x float> %i.dj, <8 x float> %i.dh)
  %i.dm = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dl, <8 x float> splat (float f0x3EAAAAAB), <8 x float> %i.dh) ; 2 uses
  %i.dn = fmul <8 x float> %i.dm, %i.dm
  %i.do = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dn, <8 x float> %i.bl, <8 x float> %i.cp) ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aj, i64 352
  %i.dq = load <8 x float>, ptr %i.dp, align 32, !tbaa !17, !alias.scope !342, !noalias !348
  %i.dr = bitcast <8 x float> %i.bm to <8 x i32>  ; 2 uses
  %.not.i32.i.i10 = icmp eq <8 x i32> %i.dr, zeroinitializer
  %i.ds = ashr <8 x i32> %i.dr, splat (i32 23)
  %.neg.i33.i.i11 = mul nsw <8 x i32> %i.ds, splat (i32 -2796202)
  %i.dt = add nsw <8 x i32> %.neg.i33.i.i11, splat (i32 1417674752)
  %i.du = bitcast <8 x i32> %i.dt to <8 x float>
  %i.dv = select <8 x i1> %.not.i32.i.i10, <8 x float> zeroinitializer, <8 x float> %i.du ; 3 uses
  %i.dw = fmul <8 x float> %i.bm, splat (float f0xBEAAAAAB) ; 3 uses
  %i.dx = fmul <8 x float> %i.dv, %i.dv           ; 2 uses
  %i.dy = fmul <8 x float> %i.dx, %i.dx
  %i.dz = fmul <8 x float> %i.dv, splat (float f0x3FAAAAAB)
  %i.ea = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dw, <8 x float> %i.dy, <8 x float> %i.dz) ; 3 uses
  %i.eb = fmul <8 x float> %i.ea, %i.ea           ; 2 uses
  %i.ec = fmul <8 x float> %i.eb, %i.eb
  %i.ed = fmul <8 x float> %i.ea, splat (float f0x3FAAAAAB)
  %i.ee = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dw, <8 x float> %i.ec, <8 x float> %i.ed) ; 3 uses
  %i.ef = fmul <8 x float> %i.ee, %i.ee           ; 2 uses
  %i.eg = fmul <8 x float> %i.ef, %i.ef
  %i.eh = fmul <8 x float> %i.ee, splat (float f0x3FAAAAAB)
  %i.ei = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dw, <8 x float> %i.eg, <8 x float> %i.eh) ; 4 uses
  %i.ej = fmul <8 x float> %i.ei, %i.ei           ; 2 uses
  %i.ek = fmul <8 x float> %i.ej, %i.ej
  %i.el = fneg <8 x float> %i.bm
  %i.em = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.el, <8 x float> %i.ek, <8 x float> %i.ei)
  %i.en = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.em, <8 x float> splat (float f0x3EAAAAAB), <8 x float> %i.ei) ; 2 uses
  %i.eo = fmul <8 x float> %i.en, %i.en
  %i.ep = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.eo, <8 x float> %i.bm, <8 x float> %i.dq)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE217LinearRGBRowToXYBEPfS1_S1_PKfm:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load <4 x float>, ptr %3, align 16, !tbaa !17, !alias.scope !399, !noalias !400
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !tbaa !17, !alias.scope !399, !noalias !400
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load <4 x float>, ptr %i.d, align 16, !tbaa !17, !alias.scope !399, !noalias !400
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = load <4 x float>, ptr %i.f, align 16, !tbaa !17, !alias.scope !399, !noalias !400
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.i = load <4 x float>, ptr %i.h, align 16, !tbaa !17, !alias.scope !399, !noalias !400
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.k = load <4 x float>, ptr %i.j, align 16, !tbaa !17, !alias.scope !399, !noalias !400
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.m = load <4 x float>, ptr %i.l, align 16, !tbaa !17, !alias.scope !399, !noalias !400
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load <4 x float>, ptr %i.n, align 16, !tbaa !17, !alias.scope !399, !noalias !400
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.q = load <4 x float>, ptr %i.p, align 16, !tbaa !17, !alias.scope !399, !noalias !400
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.s = load <4 x float>, ptr %i.r, align 16, !tbaa !17, !alias.scope !401, !noalias !402
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.u = load <4 x float>, ptr %i.t, align 16, !tbaa !17, !alias.scope !401, !noalias !402
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.w = load <4 x float>, ptr %i.v, align 16, !tbaa !17, !alias.scope !401, !noalias !402
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi i64 [ 0, %.lr.ph ], [ %i.fv, %bb.b ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020 ; 2 uses
  %i.y = load <4 x float>, ptr %i.x, align 16, !tbaa !17 ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020 ; 2 uses
  %i.aa = load <4 x float>, ptr %i.z, align 16, !tbaa !17 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.020 ; 2 uses
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !tbaa !17 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.ad = fmul <4 x float> %i.ac, %i.e
  %i.ae = fadd <4 x float> %i.ad, splat (float f0x3B789536)
  %i.af = fmul <4 x float> %i.aa, %i.c
  %i.ag = fadd <4 x float> %i.af, %i.ae
  %i.ah = fmul <4 x float> %i.y, %i.a
  %i.ai = fadd <4 x float> %i.ah, %i.ag
  %i.aj = fmul <4 x float> %i.ac, %i.k
  %i.ak = fadd <4 x float> %i.aj, splat (float f0x3B789536)
  %i.al = fmul <4 x float> %i.aa, %i.i
  %i.am = fadd <4 x float> %i.al, %i.ak
  %i.an = fmul <4 x float> %i.y, %i.g
  %i.ao = fadd <4 x float> %i.an, %i.am
  %i.ap = fmul <4 x float> %i.ac, %i.q
  %i.aq = fadd <4 x float> %i.ap, splat (float f0x3B789536)
  %i.ar = fmul <4 x float> %i.aa, %i.o
  %i.as = fadd <4 x float> %i.ar, %i.aq
  %i.at = fmul <4 x float> %i.y, %i.m
  %i.au = fadd <4 x float> %i.at, %i.as
  %i.av = bitcast <4 x float> %i.ai to <4 x i32>  ; 2 uses
  %i.aw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.av, <4 x i32> zeroinitializer) ; 2 uses
  %i.ax = bitcast <4 x i32> %i.aw to <4 x float>  ; 3 uses
  %i.ay = bitcast <4 x float> %i.ao to <4 x i32>  ; 2 uses
  %i.az = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ay, <4 x i32> zeroinitializer) ; 2 uses
  %i.ba = bitcast <4 x i32> %i.az to <4 x float>  ; 3 uses
  %i.bb = bitcast <4 x float> %i.au to <4 x i32>  ; 2 uses
  %i.bc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bb, <4 x i32> zeroinitializer) ; 2 uses
  %i.bd = bitcast <4 x i32> %i.bc to <4 x float>  ; 3 uses
  %i.be = fmul <4 x float> %i.ax, splat (float f0x3EAAAAAB) ; 3 uses
  %.not.i.i = icmp slt <4 x i32> %i.av, splat (i32 1)
  %i.bf = lshr <4 x i32> %i.aw, splat (i32 23)    ; 2 uses
  %i.bg = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.bh = bitcast <4 x i32> %i.bf to <2 x i64>
  %i.bi = and <2 x i64> %i.bh, splat (i64 255)
  %i.bj = mul nuw nsw <2 x i64> %i.bi, splat (i64 2796202)
  %i.bk = bitcast <4 x i32> %i.bg to <2 x i64>
  %i.bl = and <2 x i64> %i.bk, splat (i64 255)
  %i.bm = mul nuw nsw <2 x i64> %i.bl, splat (i64 2796202)
  %i.bn = bitcast <2 x i64> %i.bj to <4 x i32>
  %i.bo = bitcast <2 x i64> %i.bm to <4 x i32>
  %i.bp = shufflevector <4 x i32> %i.bn, <4 x i32> %i.bo, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bq = sub nuw nsw <4 x i32> splat (i32 1417674752), %i.bp
  %i.br = bitcast <4 x i32> %i.bq to <4 x float>
  %i.bs = select <4 x i1> %.not.i.i, <4 x float> zeroinitializer, <4 x float> %i.br ; 3 uses
  %i.bt = fmul <4 x float> %i.bs, %i.bs           ; 2 uses
  %i.bu = fmul <4 x float> %i.bt, %i.bt
  %i.bv = fmul <4 x float> %i.bs, splat (float f0x3FAAAAAB)
  %i.bw = fmul <4 x float> %i.be, %i.bu
  %i.bx = fsub <4 x float> %i.bv, %i.bw           ; 3 uses
  %i.by = fmul <4 x float> %i.bx, %i.bx           ; 2 uses
  %i.bz = fmul <4 x float> %i.by, %i.by
  %i.ca = fmul <4 x float> %i.bx, splat (float f0x3FAAAAAB)
  %i.cb = fmul <4 x float> %i.be, %i.bz
  %i.cc = fsub <4 x float> %i.ca, %i.cb           ; 3 uses
  %i.cd = fmul <4 x float> %i.cc, %i.cc           ; 2 uses
  %i.ce = fmul <4 x float> %i.cd, %i.cd
  %i.cf = fmul <4 x float> %i.cc, splat (float f0x3FAAAAAB)
  %i.cg = fmul <4 x float> %i.be, %i.ce
  %i.ch = fsub <4 x float> %i.cf, %i.cg           ; 4 uses
  %i.ci = fmul <4 x float> %i.ch, %i.ch           ; 2 uses
  %i.cj = fmul <4 x float> %i.ci, %i.ci
  %i.ck = fmul <4 x float> %i.cj, %i.ax
  %i.cl = fsub <4 x float> %i.ch, %i.ck
  %i.cm = fmul <4 x float> %i.cl, splat (float f0x3EAAAAAB)
  %i.cn = fadd <4 x float> %i.ch, %i.cm           ; 2 uses
  %i.co = fmul <4 x float> %i.cn, %i.cn
  %i.cp = fmul <4 x float> %i.co, %i.ax
  %i.cq = fadd <4 x float> %i.s, %i.cp            ; 2 uses
  %i.cr = fmul <4 x float> %i.ba, splat (float f0x3EAAAAAB) ; 3 uses
  %.not.i30.i = icmp slt <4 x i32> %i.ay, splat (i32 1)
  %i.cs = lshr <4 x i32> %i.az, splat (i32 23)    ; 2 uses
  %i.ct = shufflevector <4 x i32> %i.cs, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.cu = bitcast <4 x i32> %i.cs to <2 x i64>
  %i.cv = and <2 x i64> %i.cu, splat (i64 255)
  %i.cw = mul nuw nsw <2 x i64> %i.cv, splat (i64 2796202)
  %i.cx = bitcast <4 x i32> %i.ct to <2 x i64>
  %i.cy = and <2 x i64> %i.cx, splat (i64 255)
  %i.cz = mul nuw nsw <2 x i64> %i.cy, splat (i64 2796202)
  %i.da = bitcast <2 x i64> %i.cw to <4 x i32>
  %i.db = bitcast <2 x i64> %i.cz to <4 x i32>
  %i.dc = shufflevector <4 x i32> %i.da, <4 x i32> %i.db, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.dd = sub nuw nsw <4 x i32> splat (i32 1417674752), %i.dc
  %i.de = bitcast <4 x i32> %i.dd to <4 x float>
  %i.df = select <4 x i1> %.not.i30.i, <4 x float> zeroinitializer, <4 x float> %i.de ; 3 uses
  %i.dg = fmul <4 x float> %i.df, %i.df           ; 2 uses
  %i.dh = fmul <4 x float> %i.dg, %i.dg
  %i.di = fmul <4 x float> %i.df, splat (float f0x3FAAAAAB)
  %i.dj = fmul <4 x float> %i.cr, %i.dh
  %i.dk = fsub <4 x float> %i.di, %i.dj           ; 3 uses
  %i.dl = fmul <4 x float> %i.dk, %i.dk           ; 2 uses
  %i.dm = fmul <4 x float> %i.dl, %i.dl
  %i.dn = fmul <4 x float> %i.dk, splat (float f0x3FAAAAAB)
  %i.do = fmul <4 x float> %i.cr, %i.dm
  %i.dp = fsub <4 x float> %i.dn, %i.do           ; 3 uses
  %i.dq = fmul <4 x float> %i.dp, %i.dp           ; 2 uses
  %i.dr = fmul <4 x float> %i.dq, %i.dq
  %i.ds = fmul <4 x float> %i.dp, splat (float f0x3FAAAAAB)
  %i.dt = fmul <4 x float> %i.cr, %i.dr
  %i.du = fsub <4 x float> %i.ds, %i.dt           ; 4 uses
  %i.dv = fmul <4 x float> %i.du, %i.du           ; 2 uses
  %i.dw = fmul <4 x float> %i.dv, %i.dv
  %i.dx = fmul <4 x float> %i.dw, %i.ba
  %i.dy = fsub <4 x float> %i.du, %i.dx
  %i.dz = fmul <4 x float> %i.dy, splat (float f0x3EAAAAAB)
  %i.ea = fadd <4 x float> %i.du, %i.dz           ; 2 uses
  %i.eb = fmul <4 x float> %i.ea, %i.ea
  %i.ec = fmul <4 x float> %i.eb, %i.ba
  %i.ed = fadd <4 x float> %i.u, %i.ec            ; 2 uses
  %i.ee = fmul <4 x float> %i.bd, splat (float f0x3EAAAAAB) ; 3 uses
  %.not.i31.i = icmp slt <4 x i32> %i.bb, splat (i32 1)
  %i.ef = lshr <4 x i32> %i.bc, splat (i32 23)    ; 2 uses
  %i.eg = shufflevector <4 x i32> %i.ef, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.eh = bitcast <4 x i32> %i.ef to <2 x i64>
  %i.ei = and <2 x i64> %i.eh, splat (i64 255)
  %i.ej = mul nuw nsw <2 x i64> %i.ei, splat (i64 2796202)
  %i.ek = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.el = and <2 x i64> %i.ek, splat (i64 255)
  %i.em = mul nuw nsw <2 x i64> %i.el, splat (i64 2796202)
  %i.en = bitcast <2 x i64> %i.ej to <4 x i32>
  %i.eo = bitcast <2 x i64> %i.em to <4 x i32>
  %i.ep = shufflevector <4 x i32> %i.en, <4 x i32> %i.eo, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.eq = sub nuw nsw <4 x i32> splat (i32 1417674752), %i.ep
  %i.er = bitcast <4 x i32> %i.eq to <4 x float>
  %i.es = select <4 x i1> %.not.i31.i, <4 x float> zeroinitializer, <4 x float> %i.er ; 3 uses
  %i.et = fmul <4 x float> %i.es, %i.es           ; 2 uses
  %i.eu = fmul <4 x float> %i.et, %i.et
  %i.ev = fmul <4 x float> %i.es, splat (float f0x3FAAAAAB)
  %i.ew = fmul <4 x float> %i.ee, %i.eu
  %i.ex = fsub <4 x float> %i.ev, %i.ew           ; 3 uses
  %i.ey = fmul <4 x float> %i.ex, %i.ex           ; 2 uses
  %i.ez = fmul <4 x float> %i.ey, %i.ey
  %i.fa = fmul <4 x float> %i.ex, splat (float f0x3FAAAAAB)
  %i.fb = fmul <4 x float> %i.ee, %i.ez
  %i.fc = fsub <4 x float> %i.fa, %i.fb           ; 3 uses
  %i.fd = fmul <4 x float> %i.fc, %i.fc           ; 2 uses
  %i.fe = fmul <4 x float> %i.fd, %i.fd
  %i.ff = fmul <4 x float> %i.fc, splat (float f0x3FAAAAAB)
  %i.fg = fmul <4 x float> %i.ee, %i.fe
  %i.fh = fsub <4 x float> %i.ff, %i.fg           ; 4 uses
  %i.fi = fmul <4 x float> %i.fh, %i.fh           ; 2 uses
  %i.fj = fmul <4 x float> %i.fi, %i.fi
  %i.fk = fmul <4 x float> %i.fj, %i.bd
  %i.fl = fsub <4 x float> %i.fh, %i.fk
  %i.fm = fmul <4 x float> %i.fl, splat (float f0x3EAAAAAB)
  %i.fn = fadd <4 x float> %i.fh, %i.fm           ; 2 uses
  %i.fo = fmul <4 x float> %i.fn, %i.fn
  %i.fp = fmul <4 x float> %i.fo, %i.bd
  %i.fq = fadd <4 x float> %i.w, %i.fp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.fr = fsub <4 x float> %i.cq, %i.ed
  %i.fs = fmul <4 x float> %i.fr, splat (float 5.000000e-01)
  store <4 x float> %i.fs, ptr %i.x, align 16, !tbaa !17, !alias.scope !409, !noalias !410
  %i.ft = fadd <4 x float> %i.cq, %i.ed
  %i.fu = fmul <4 x float> %i.ft, splat (float 5.000000e-01)
  store <4 x float> %i.fu, ptr %i.z, align 16, !tbaa !17, !alias.scope !411, !noalias !412
  store <4 x float> %i.fq, ptr %i.ab, align 16, !tbaa !17, !alias.scope !413, !noalias !414
  %i.fv = add nuw i64 %.020, 4                    ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %4
  br i1 %i.fw, label %bb.b, label %._crit_edge, !llvm.loop !398
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEE(ptr noalias noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noalias noundef %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %"class.jxl::ThreadPool::RunCallState.75", align 8 ; 7 uses
  %4 = alloca %"class.jxl::ThreadPool::RunCallState.75", align 8 ; 6 uses
  %5 = alloca %"class.jxl::ThreadPool", align 8   ; 5 uses
  %6 = alloca %class.anon.73, align 1             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %class.anon.9, align 8              ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !21
  store ptr %2, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.d = load i32, ptr %2, align 8, !tbaa !28
  %i.e = zext i32 %i.d to i64
  store i64 %i.e, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store ptr %i.b, ptr %7, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @_ZZN3jxl6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d, ptr %i.g, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.a, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr null, ptr %5, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !42
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_EESB_jjSH_RKT0_SJ_.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %6, ptr %4, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %7, ptr %i.n, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !53
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %bb.c
  %.07.i.i.i = phi i32 [ %i.p, %.preheader.i.i.i ], [ 0, %bb.c ] ; 2 uses
  call void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm"(ptr noundef nonnull %4, i32 noundef %.07.i.i.i, i64 poison) #35
  %i.p = add nuw i32 %.07.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.p, %i.j
  br i1 %exitcond.not.i.i.i, label %.sink.split.i.i.i, label %.preheader.i.i.i, !llvm.loop !415

.sink.split.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.q = load atomic i32, ptr %i.o seq_cst, align 8
  %.not5.i.i.i = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not5.i.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_EESB_jjSH_RKT0_SJ_.exit.i.i"

"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_EESB_jjSH_RKT0_SJ_.exit.i.i": ; preds = %.sink.split.i.i.i, %bb.b
  %.sroa.03.1.i.i.i = phi i32 [ %i.r, %.sink.split.i.i.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %1, align 8           ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %.val11.i.i = load ptr, ptr %i.s, align 8
  %i.t = icmp eq i32 %i.j, 0
  br i1 %i.t, label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread", label %bb.e

"_ZN3jxl9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr %6, ptr %3, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %7, ptr %i.u, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !53
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %.preheader.i17.i.i, label %bb.f

.preheader.i17.i.i:                               ; preds = %bb.e, %.preheader.i17.i.i
  %.07.i18.i.i = phi i32 [ %i.w, %.preheader.i17.i.i ], [ 0, %bb.e ] ; 2 uses
  call void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm"(ptr noundef nonnull %3, i32 noundef %.07.i18.i.i, i64 poison) #35
  %i.w = add nuw i32 %.07.i18.i.i, 1              ; 2 uses
  %exitcond.not.i19.i.i = icmp eq i32 %i.w, %i.j
  br i1 %exitcond.not.i19.i.i, label %.sink.split.i15.i.i, label %.preheader.i17.i.i, !llvm.loop !415

bb.f:                                             ; preds = %bb.e
  %i.x = call noundef i32 %.val.i.i(ptr noundef %.val11.i.i, ptr noundef nonnull %3, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %i.j) #34, !inline_history !416
  %.not25.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not25.i.i.i, label %.sink.split.i15.i.i, label %bb.g

.sink.split.i15.i.i:                              ; preds = %.preheader.i17.i.i, %bb.f
  %i.y = load atomic i32, ptr %i.v seq_cst, align 8
  %.not5.i16.i.i = icmp ne i32 %i.y, 0
  %i.z = zext i1 %.not5.i16.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i15.i.i, %bb.f
  %.sroa.03.0.shrunk.i.i.i = phi i32 [ 1, %bb.f ], [ %i.z, %.sink.split.i15.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit"

"_ZN3jxl9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit": ; preds = %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_EESB_jjSH_RKT0_SJ_.exit.i.i", %bb.g
  %.sroa.0.0.i.i = phi i32 [ %.sroa.03.1.i.i.i, %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_EESB_jjSH_RKT0_SJ_.exit.i.i" ], [ %.sroa.03.0.shrunk.i.i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.aa = icmp eq i32 %.sroa.0.0.i.i, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZN3jxl9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit.thread", %"_ZN3jxl9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit"
  br label %bb.i

bb.i:                                             ; preds = %"_ZN3jxl9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit", %bb.h
  %.sroa.0.0 = phi i32 [ 0, %bb.h ], [ 1, %"_ZN3jxl9RunOnPoolIZNS_6N_SSE215LinearSRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_SSE29SRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEE(ptr noalias noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noalias noundef %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %"class.jxl::ThreadPool::RunCallState.79", align 8 ; 7 uses
  %4 = alloca %"class.jxl::ThreadPool::RunCallState.79", align 8 ; 6 uses
  %5 = alloca %"class.jxl::ThreadPool", align 8   ; 5 uses
  %6 = alloca %class.anon.77, align 1             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %class.anon.10, align 8             ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !21
  store ptr %2, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.d = load i32, ptr %2, align 8, !tbaa !28
  %i.e = zext i32 %i.d to i64
  store i64 %i.e, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store ptr %i.b, ptr %7, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @_ZZN3jxl6N_SSE29SRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE1d, ptr %i.g, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.a, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.k = icmp eq ptr %1, null
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr null, ptr %5, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !42
  %i.m = icmp eq i32 %i.j, 0
  br i1 %i.m, label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE29SRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_EESB_jjSH_RKT0_SJ_.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %6, ptr %4, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %7, ptr %i.n, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !53
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %bb.c
  %.07.i.i.i = phi i32 [ %i.p, %.preheader.i.i.i ], [ 0, %bb.c ] ; 2 uses
  call void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE29SRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_E12CallDataFuncEPvjm"(ptr noundef nonnull %4, i32 noundef %.07.i.i.i, i64 poison) #35
  %i.p = add nuw i32 %.07.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.p, %i.j
  br i1 %exitcond.not.i.i.i, label %.sink.split.i.i.i, label %.preheader.i.i.i, !llvm.loop !417

.sink.split.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.q = load atomic i32, ptr %i.o seq_cst, align 8
  %.not5.i.i.i = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not5.i.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE29SRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_EESB_jjSH_RKT0_SJ_.exit.i.i"

"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE29SRGBToXYBEPKfPS0_PNS_6Image3IfEEE3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_SA_EESB_jjSH_RKT0_SJ_.exit.i.i": ; preds = %.sink.split.i.i.i, %bb.b
  %.sroa.03.1.i.i.i = phi i32 [ %i.r, %.sink.split.i.i.i ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %"_ZN3jxl9RunOnPoolIZNS_6N_SSE29SRGBToXYBEPKfPNS_10ThreadPoolEPNS_6Image3IfEEE3$_0EENS_6StatusES5_jjRKNS_16ThreadPoolNoInitERKT_PKc.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %1, align 8           ; 2 uses
end_hunk_2
