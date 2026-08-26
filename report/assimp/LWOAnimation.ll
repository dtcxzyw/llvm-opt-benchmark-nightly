Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWOAnimation?download=true
inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver20UpdateAnimRangeSetupEv:bb.a
  %.0129 = phi i32 [ 1, %.lr.ph131 ], [ %i.dt, %._crit_edge126 ] ; 2 uses
  %.057128 = phi double [ %i.n, %.lr.ph131 ], [ %i.ds, %._crit_edge126 ] ; 2 uses
  %.sroa.074.0127 = phi ptr [ %i.cv, %.lr.ph131 ], [ %.sroa.074.1.lcssa, %._crit_edge126 ] ; 4 uses
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = load ptr, ptr %i.f, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dg = getelementptr inbounds [40 x i8], ptr %.sroa.074.0127, i64 %i.cp
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0.0 = phi ptr [ %i.df, %bb.z ], [ %i.dg, %bb.aa ] ; 2 uses
  %i.dh = icmp ult ptr %.sroa.0.0, %.sroa.074.0127
  br i1 %i.dh, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %bb.ab
  %i.di = uitofp i32 %.0129 to float
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph125, %bb.ae
  %.sroa.074.1123 = phi ptr [ %.sroa.074.0127, %.lr.ph125 ], [ %i.dq, %bb.ae ] ; 4 uses
  %i.dj = load double, ptr %.sroa.074.1123, align 8
  %i.dk = fsub double %i.dj, %.057128
  store double %i.dk, ptr %.sroa.074.1123, align 8
  %i.dl = load i32, ptr %i.y, align 8
  %i.dm = icmp eq i32 %i.dl, 4
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.074.1123, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 8
  %i.dp = call float @llvm.fmuladd.f32(float %i.di, float %i.x, float %i.do)
  store float %i.dp, ptr %i.dn, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dq = getelementptr inbounds i8, ptr %.sroa.074.1123, i64 -40 ; 3 uses
  %i.dr = icmp ult ptr %.sroa.0.0, %i.dq
  br i1 %i.dr, label %bb.ac, label %._crit_edge126, !llvm.loop !13

._crit_edge126:                                   ; preds = %bb.ae, %bb.ab
  %.sroa.074.1.lcssa = phi ptr [ %.sroa.074.0127, %bb.ab ], [ %i.dq, %bb.ae ]
  %i.ds = fadd double %i.n, %.057128              ; 2 uses
  %i.dt = add i32 %.0129, 1
  %i.du = fcmp ugt double %i.ds, %i.cs
  br i1 %i.du, label %.loopexit, label %bb.y, !llvm.loop !14

.loopexit:                                        ; preds = %._crit_edge126, %._crit_edge, %bb.d, %bb.c, %bb.b
  %.sroa.084.0 = load ptr, ptr %.sroa.084.0134, align 8 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.not = icmp eq ptr %.sroa.084.0, %i.dv
  br i1 %.not, label %._crit_edge137, label %bb.b, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15ExtractBindPoseER12aiMatrix4x4tIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 64)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 1.000000e+00, ptr %.sroa.5192.0..sroa_idx, align 4
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6193.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8194.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0182.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load float, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.5183.0 = phi float [ 0.000000e+00, %bb.e ], [ %i.o, %bb.f ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.q, null
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load float, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.8184.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.w, null
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load float, ptr %i.z, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0188.0 = phi float [ 0.000000e+00, %bb.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not14 = icmp eq ptr %i.ac, null
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load float, ptr %i.af, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.5189.0 = phi float [ 0.000000e+00, %bb.k ], [ %i.ag, %bb.l ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not15 = icmp eq ptr %i.ai, null
  br i1 %.not15, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.8190.0 = phi float [ 0.000000e+00, %bb.m ], [ %i.am, %bb.n ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not16 = icmp eq ptr %i.ao, null
  br i1 %.not16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load float, ptr %i.ar, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0185.0 = phi float [ 1.000000e+00, %bb.o ], [ %i.as, %bb.p ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not17 = icmp eq ptr %i.au, null
  br i1 %.not17, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.ax, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.5186.0 = phi float [ 1.000000e+00, %bb.q ], [ %i.ay, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not18 = icmp eq ptr %i.ba, null
  br i1 %.not18, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.8187.0 = phi float [ 1.000000e+00, %bb.s ], [ %i.be, %bb.t ] ; 2 uses
  %i.bf = tail call noundef float @cosf(float noundef %.sroa.8190.0) #16 ; 8 uses
  %i.bg = tail call noundef float @sinf(float noundef %.sroa.8190.0) #16 ; 5 uses
  %i.bh = fneg float %i.bg                        ; 4 uses
  %i.bi = tail call noundef float @cosf(float noundef %.sroa.5189.0) #16 ; 8 uses
  %i.bj = tail call noundef float @sinf(float noundef %.sroa.5189.0) #16 ; 6 uses
  %i.bk = fneg float %i.bj                        ; 3 uses
  %i.bl = tail call noundef float @cosf(float noundef %.sroa.0188.0) #16 ; 5 uses
  %i.bm = tail call noundef float @sinf(float noundef %.sroa.0188.0) #16 ; 4 uses
  %i.bn = fneg float %i.bm                        ; 2 uses
  %i.bo = fadd float %i.bl, 0.000000e+00
  %.scalar = fadd float %i.bm, 0.000000e+00
  %i.bp = insertelement <4 x float> <float 0.000000e+00, float poison, float 1.000000e+00, float 0.000000e+00>, float %.scalar, i64 1
  %i.bq = insertelement <4 x float> poison, float %.sroa.0182.0, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bl, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %.sroa.5183.0, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bm, i64 3
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> zeroinitializer, <4 x float> %i.bp) ; 4 uses
  %i.bv = extractelement <4 x float> %i.bu, i64 3
  %i.bw = fadd float %i.bl, %i.bv
  %i.bx = extractelement <4 x float> %i.bu, i64 0 ; 3 uses
  %i.by = fmul float %i.bx, 0.000000e+00          ; 2 uses
  %i.bz = fmul float %i.bx, %i.bi
  %i.ca = fmul float %i.bx, %i.bk
  %i.cb = extractelement <4 x float> %i.bu, i64 2 ; 3 uses
  %i.cc = fmul float %i.cb, %i.bi
  %i.cd = fmul float %i.cb, %i.bk
  %i.ce = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %.sroa.8184.0, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.bn, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %.sroa.0182.0, i64 3
  %i.ci = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 5, i32 poison, i32 1>
  %i.cj = insertelement <4 x float> %i.ci, float %i.bo, i64 2
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> zeroinitializer, <4 x float> %i.cj) ; 5 uses
  %i.cl = extractelement <4 x float> %i.ck, i64 0
  %i.cm = extractelement <4 x float> %i.ck, i64 1 ; 3 uses
  %i.cn = fmul float %i.cm, 0.000000e+00          ; 2 uses
  %i.co = fmul float %i.cm, %i.bi
  %i.cp = fmul float %i.cm, %i.bk
  %i.cq = extractelement <4 x float> %i.ck, i64 2
  %i.cr = tail call float @llvm.fmuladd.f32(float %.sroa.0182.0, float 0.000000e+00, float %i.cq) ; 4 uses
  %i.cs = fadd float %.sroa.0182.0, 0.000000e+00  ; 4 uses
  %i.ct = fadd float %i.by, %i.cr
  %i.cu = extractelement <4 x float> %i.ck, i64 3 ; 4 uses
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %i.ct)
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cs, float 0.000000e+00, float %i.cv) ; 3 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.bz)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.cu, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cs, float 0.000000e+00, float %i.cy) ; 3 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.ca)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.by)
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %i.db)
  %i.dd = fadd float %i.cs, %i.dc                 ; 4 uses
  %i.de = fmul float %i.bg, %i.cz
  %i.df = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.cw, float %i.de)
  %i.dg = fmul float %i.cz, 0.000000e+00
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.cu, float %i.da)
  %i.di = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.cw, i64 1
  %i.dk = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dg, i64 1
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> zeroinitializer, <2 x float> %i.dl) ; 2 uses
  %i.dn = extractelement <2 x float> %i.dm, i64 0 ; 4 uses
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float 0.000000e+00, float %i.df)
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dd, float 0.000000e+00, float %i.do)
  %i.dq = fmul float %i.bf, %i.cz
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.cw, float %i.dq)
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dn, float 0.000000e+00, float %i.dr)
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dd, float 0.000000e+00, float %i.ds)
  %i.du = extractelement <2 x float> %i.dm, i64 1 ; 2 uses
  %i.dv = fadd float %i.dn, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dd, float 0.000000e+00, float %i.dv)
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dn, float 0.000000e+00, float %i.du)
  %i.dy = fadd float %i.dd, %i.dx
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.bl, float 0.000000e+00, float 0.000000e+00) ; 2 uses
  %i.ea = tail call float @llvm.fmuladd.f32(float %.sroa.5183.0, float 0.000000e+00, float %i.cl) ; 4 uses
  %i.eb = fadd float %.sroa.5183.0, 0.000000e+00  ; 4 uses
  %i.ec = fsub float %i.dz, %i.bm
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.bn, float 0.000000e+00, float %i.dz) ; 2 uses
  %i.ee = tail call float @llvm.fmuladd.f32(float %.sroa.5183.0, float 0.000000e+00, float %i.ed) ; 4 uses
  %i.ef = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.eg = insertelement <4 x float> %i.ef, float %i.ee, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 2
  %i.ei = fadd <4 x float> %i.eh, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 4 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ek = fmul float %i.bj, -0.000000e+00
  %i.el = fmul float %i.bi, 0.000000e+00
  %i.em = fmul float %i.cb, 0.000000e+00          ; 2 uses
  %i.en = fadd float %i.em, %i.ee
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.ea, float 0.000000e+00, float %i.en)
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eb, float 0.000000e+00, float %i.eo) ; 3 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ee, float 0.000000e+00, float %i.cc)
  %i.er = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ea, float %i.eq)
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eb, float 0.000000e+00, float %i.er) ; 3 uses
  %i.et = tail call float @llvm.fmuladd.f32(float %i.ee, float 0.000000e+00, float %i.cd)
  %i.eu = insertelement <4 x float> poison, float %i.em, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> %i.ei, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.ew = insertelement <4 x float> %i.ev, float %i.el, i64 2
  %i.ex = insertelement <4 x float> %i.ew, float %i.ek, i64 3
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> zeroinitializer, <4 x float> %i.ex) ; 4 uses
  %i.ez = extractelement <4 x float> %i.ey, i64 0
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ea, float 0.000000e+00, float %i.ez)
  %i.fb = fadd float %i.eb, %i.fa                 ; 4 uses
  %i.fc = extractelement <4 x float> %i.ey, i64 1
  %i.fd = fadd float %i.fc, 0.000000e+00          ; 3 uses
  %i.fe = extractelement <4 x float> %i.ey, i64 2
  %i.ff = extractelement <4 x float> %i.ei, i64 1 ; 3 uses
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ff, float %i.fe)
  %i.fh = fadd float %i.fg, 0.000000e+00          ; 3 uses
  %i.fi = extractelement <4 x float> %i.ey, i64 3
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.ff, float %i.fi)
  %i.fk = fadd float %i.fj, 0.000000e+00          ; 4 uses
  %i.fl = extractelement <4 x float> %i.ei, i64 2
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fl, float 0.000000e+00, float 0.000000e+00)
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.ff, float 0.000000e+00, float %i.fm)
  %i.fo = fadd float %i.fn, 1.000000e+00          ; 4 uses
  %i.fp = fmul float %i.bg, %i.es
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ep, float %i.fp)
  %i.fr = fmul float %i.es, 0.000000e+00
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.ea, float %i.et)
  %i.ft = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.ep, i64 1
  %i.fv = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fr, i64 1
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> zeroinitializer, <2 x float> %i.fw) ; 5 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0 ; 2 uses
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fy, float 0.000000e+00, float %i.fq)
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fb, float 0.000000e+00, float %i.fz)
  %i.gb = fmul float %i.bf, %i.es
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.ep, float %i.gb)
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.fy, float 0.000000e+00, float %i.gc)
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.fb, float 0.000000e+00, float %i.gd)
  %shift = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.fx, %shift
  %i.gf = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gg = fadd float %.sroa.8184.0, 0.000000e+00  ; 4 uses
  %i.gh = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.gi = insertelement <4 x float> %i.gh, float %i.fb, i64 0
  %i.gj = insertelement <4 x float> %i.gi, float %.sroa.8184.0, i64 2
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.gl = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gm = insertelement <4 x float> %i.gl, float %i.gf, i64 0
  %i.gn = insertelement <4 x float> %i.gm, float %i.bw, i64 2
  %i.go = insertelement <4 x float> %i.gn, float %i.ec, i64 3
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> zeroinitializer, <4 x float> %i.go) ; 4 uses
  %i.gq = extractelement <4 x float> %i.gp, i64 1
  %i.gr = fadd float %i.fb, %i.gq
  %i.gs = extractelement <4 x float> %i.gp, i64 3 ; 4 uses
  %i.gt = fadd float %i.cn, %i.gs
  %i.gu = extractelement <4 x float> %i.gp, i64 2 ; 4 uses
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gu, float 0.000000e+00, float %i.gt)
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gg, float 0.000000e+00, float %i.gv) ; 3 uses
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.gs, float 0.000000e+00, float %i.co)
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.gu, float %i.gx)
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gg, float 0.000000e+00, float %i.gy) ; 3 uses
  %i.ha = tail call float @llvm.fmuladd.f32(float %i.gs, float 0.000000e+00, float %i.cp)
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gs, float 0.000000e+00, float %i.cn)
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gu, float 0.000000e+00, float %i.hb)
  %i.hd = fadd float %i.gg, %i.hc                 ; 4 uses
  %i.he = fmul float %i.bg, %i.gz
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.gw, float %i.he)
  %i.hg = fmul float %i.gz, 0.000000e+00
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.gu, float %i.ha)
  %i.hi = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.gw, i64 1
  %i.hk = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.hg, i64 1
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> zeroinitializer, <2 x float> %i.hl) ; 2 uses
  %i.hn = extractelement <2 x float> %i.hm, i64 0 ; 4 uses
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float 0.000000e+00, float %i.hf)
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hd, float 0.000000e+00, float %i.ho)
  %i.hq = fmul float %i.bf, %i.gz
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.gw, float %i.hq)
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hn, float 0.000000e+00, float %i.hr)
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hd, float 0.000000e+00, float %i.hs)
  %i.hu = extractelement <2 x float> %i.hm, i64 1 ; 2 uses
  %i.hv = fadd float %i.hn, %i.hu
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hd, float 0.000000e+00, float %i.hv)
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hn, float 0.000000e+00, float %i.hu)
  %i.hy = fadd float %i.hd, %i.hx
  %i.hz = fmul float %i.bg, %i.fh
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.fd, float %i.hz)
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.fk, float 0.000000e+00, float %i.ia)
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.ib) ; 2 uses
  %i.id = fmul float %i.bf, %i.fh
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.fd, float %i.id)
  %i.if = tail call float @llvm.fmuladd.f32(float %i.fk, float 0.000000e+00, float %i.ie)
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.if)
  %i.ih = fmul float %i.fh, 0.000000e+00
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.fd, float 0.000000e+00, float %i.ih) ; 2 uses
  %i.ij = fadd float %i.fk, %i.ii
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.ij) ; 3 uses
  %i.il = tail call float @llvm.fmuladd.f32(float %i.fk, float 0.000000e+00, float %i.ii)
  %i.im = fadd float %i.fo, %i.il                 ; 2 uses
  %2 = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %.sroa.5186.0, i64 1 ; 3 uses
  %3 = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.in = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.io = fmul <4 x float> %2, %i.in
  %i.ip = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sroa.0185.0, i64 0 ; 3 uses
  %i.iq = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.is = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> %i.ir, <4 x float> %i.io)
  %i.it = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.8187.0, i64 2 ; 3 uses
  %i.iu = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.it, <4 x float> %i.iv, <4 x float> %i.is)
  %i.ix = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iy, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.iw)
  store <4 x float> %i.iz, ptr %1, align 4
  %.sroa.15100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %4 = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.ja = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jb = fmul <4 x float> %2, %i.ja
  %i.jc = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> %i.jd, <4 x float> %i.jb)
  %i.jf = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.it, <4 x float> %i.jf, <4 x float> %i.je)
  %i.jh = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ji, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.jg)
  store <4 x float> %i.jj, ptr %.sroa.15100.0..sroa_idx, align 4
  %.sroa.27104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %5 = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.jk = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = fmul <4 x float> %2, %i.jk
  %i.jm = insertelement <4 x float> poison, float %i.hp, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> %i.jn, <4 x float> %i.jl)
  %i.jp = insertelement <4 x float> poison, float %i.hw, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.it, <4 x float> %i.jq, <4 x float> %i.jo)
  %i.js = insertelement <4 x float> poison, float %i.hy, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ju = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.jr)
  store <4 x float> %i.ju, ptr %.sroa.27104.0..sroa_idx, align 4
  %.sroa.39108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %6 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.5186.0, i64 1
  %i.jv = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x float> %6, %i.jw              ; 2 uses
  %i.jy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.0185.0, i64 0
  %i.jz = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jy, <2 x float> %i.ka, <2 x float> %i.jx)
  %i.kc = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> zeroinitializer, <2 x float> %i.kb)
  %i.kf = insertelement <2 x float> poison, float %i.im, i64 0 ; 2 uses
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> zeroinitializer, <2 x float> %i.ke)
  %i.ki = extractelement <2 x float> %i.jx, i64 0
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ic, float 0.000000e+00, float %i.ki) ; 2 uses
  %i.kk = tail call float @llvm.fmuladd.f32(float %.sroa.8187.0, float %i.ik, float %i.kj)
  %i.kl = insertelement <2 x float> %i.kf, float %i.ik, i64 1
  %i.km = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %i.kj, i64 1
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> zeroinitializer, <2 x float> %i.kn) ; 2 uses
  %i.kp = extractelement <2 x float> %i.ko, i64 1
  %i.kq = fadd float %i.im, %i.kp
  store <2 x float> %i.kh, ptr %.sroa.39108.0..sroa_idx, align 4
  %.sroa.45110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kr = extractelement <2 x float> %i.ko, i64 0
  store float %i.kr, ptr %.sroa.45110.0..sroa_idx, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.sink = phi float [ %i.kq, %bb.u ], [ 1.000000e+00, %bb.b ]
  %.sroa.48111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %.sink, ptr %.sroa.48111.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15DoInterpolationEN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEEPNS0_8EnvelopeEdRf(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 40
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load float, ptr %i.i, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, %i.d
  br i1 %i.k, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8
  switch i32 %i.m, label %bb.i [
    i32 5, label %bb.e
    i32 0, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.o = load i32, ptr %i.n, align 4
  %cond.i = icmp eq i32 %i.o, 0
  br i1 %cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load double, ptr %i.r, align 8
  %i.t = load double, ptr %1, align 8             ; 2 uses
  %i.u = fsub double %i.s, %i.t                   ; 2 uses
  %i.v = fcmp ogt double %i.u, 0.000000e+00
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load float, ptr %i.w, align 8            ; 3 uses
  br i1 %i.v, label %bb.h, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load float, ptr %i.y, align 8
  %i.aa = fsub float %i.z, %i.x
  %i.ab = fsub double %3, %i.t
  %i.ac = fdiv double %i.ab, %i.u
  %i.ad = fptrunc double %i.ac to float
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ad, float %i.x)
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.i:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds i8, ptr %i.c, i64 -40 ; 2 uses
  %i.ai = icmp eq ptr %1, %i.ah
  br i1 %i.ai, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.aj = load double, ptr %i.ah, align 8
  %i.ak = fcmp ogt double %3, %i.aj
  br i1 %i.ak, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.am = load i32, ptr %i.al, align 4
  switch i32 %i.am, label %bb.q [
    i32 5, label %bb.m
    i32 0, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds i8, ptr %1, i64 -28
  %i.ao = load i32, ptr %i.an, align 4
  %cond.i25 = icmp eq i32 %i.ao, 0
  br i1 %cond.i25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load float, ptr %i.ap, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds i8, ptr %1, i64 -40
  %i.as = load double, ptr %i.ar, align 8
  %i.at = load double, ptr %1, align 8            ; 2 uses
  %i.au = fsub double %i.as, %i.at                ; 2 uses
  %i.av = fcmp ogt double %i.au, 0.000000e+00
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load float, ptr %i.aw, align 8          ; 3 uses
  br i1 %i.av, label %bb.p, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds i8, ptr %1, i64 -32
  %i.az = load float, ptr %i.ay, align 8
  %i.ba = fsub float %i.az, %i.ax
  %i.bb = fsub double %3, %i.at
  %i.bc = fdiv double %i.bb, %i.au
  %i.bd = fptrunc double %i.bc to float
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bd, float %i.ax)
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.q:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load float, ptr %i.bf, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

.critedge:                                        ; preds = %bb.j, %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bi = load i32, ptr %i.bh, align 4
  %cond.i28 = icmp eq i32 %i.bi, 0
  br i1 %cond.i28, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bk = load float, ptr %i.bj, align 8
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.s:                                             ; preds = %.critedge
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -40
  %i.bm = load double, ptr %1, align 8
  %i.bn = load double, ptr %i.bl, align 8         ; 2 uses
  %i.bo = fsub double %i.bm, %i.bn                ; 2 uses
  %i.bp = fcmp ogt double %i.bo, 0.000000e+00
  %i.bq = getelementptr inbounds i8, ptr %1, i64 -32
  %i.br = load float, ptr %i.bq, align 8          ; 3 uses
  br i1 %i.bp, label %bb.t, label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load float, ptr %i.bs, align 8
  %i.bu = fsub float %i.bt, %i.br
  %i.bv = fsub double %3, %i.bn
  %i.bw = fdiv double %i.bv, %i.bo
  %i.bx = fptrunc double %i.bw to float
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bx, float %i.br)
  br label %_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit

_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.l, %bb.p, %bb.o, %bb.n, %bb.d, %bb.h, %bb.g, %bb.f, %bb.q, %bb.i, %bb.b
  %storemerge6.i29.sink = phi float [ 0.000000e+00, %bb.l ], [ %i.bg, %bb.q ], [ %i.ax, %bb.o ], [ 0.000000e+00, %bb.d ], [ %i.ag, %bb.i ], [ %i.x, %bb.g ], [ %i.j, %bb.b ], [ %i.q, %bb.f ], [ %i.ae, %bb.h ], [ %i.aq, %bb.n ], [ %i.be, %bb.p ], [ %i.bk, %bb.r ], [ %i.by, %bb.t ], [ %i.br, %bb.s ]
  store float %storemerge6.i29.sink, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver16DoInterpolation2EN9__gnu_cxx17__normal_iteratorIPKNS0_3KeyESt6vectorIS4_SaIS4_EEEESA_dRf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(176) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, double noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.b, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 8
end_hunk_0
