Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mat_pixel_affine?download=true
inline.NumInlined: 228
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4ncnn19get_rotation_matrixEffffPf(float noundef nofpclass(nan inf) %0, float noundef nofpclass(nan inf) %1, float noundef nofpclass(nan inf) %2, float noundef nofpclass(nan inf) %3, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul fast float %0, f0x3C8EFA35
  %sincos = tail call fast { float, float } @llvm.sincos.f32(float %i.a) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.b = fmul fast float %cos, %1                 ; 3 uses
  %i.c = fmul fast float %sin, %1                 ; 4 uses
  store float %i.b, ptr %4, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !10
  %i.e = fsub fast float 1.000000e+00, %i.b       ; 2 uses
  %i.f = fmul fast float %i.e, %2
  %i.g = fmul fast float %i.c, %3
  %i.h = fsub fast float %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !10
  %i.j = fneg fast float %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.b, ptr %i.l, align 4, !tbaa !10
  %i.m = fmul fast float %i.c, %2
  %i.n = fmul fast float %i.e, %3
  %i.o = fadd fast float %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.o, ptr %i.p, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ncnn20get_affine_transformEPKfS1_iPf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader321, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 2147483644               ; 4 uses
  %i.c = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  %i.f = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi296 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi297 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi298 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi299 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi300 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi301 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.g = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.g
  %next.gep302 = getelementptr i8, ptr %1, i64 %i.g
  %wide.vec = load <8 x float>, ptr %next.gep, align 4, !tbaa !10 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 5 uses
  %strided.vec303 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.h = fmul fast <4 x float> %strided.vec, %strided.vec
  %i.i = fmul fast <4 x float> %strided.vec303, %strided.vec303
  %i.j = fadd fast <4 x float> %i.h, %vec.phi
  %i.k = fadd fast <4 x float> %i.j, %i.i         ; 2 uses
  %i.l = fadd fast <4 x float> %strided.vec, %vec.phi296 ; 2 uses
  %i.m = fadd fast <4 x float> %strided.vec303, %vec.phi297 ; 2 uses
  %wide.vec304 = load <8 x float>, ptr %next.gep302, align 4, !tbaa !10 ; 2 uses
  %strided.vec305 = shufflevector <8 x float> %wide.vec304, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec306 = shufflevector <8 x float> %wide.vec304, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.n = fmul fast <4 x float> %strided.vec305, %strided.vec
  %i.o = fmul fast <4 x float> %strided.vec306, %strided.vec303
  %i.p = fadd fast <4 x float> %i.n, %vec.phi298
  %i.q = fadd fast <4 x float> %i.p, %i.o         ; 2 uses
  %i.r = fmul fast <4 x float> %strided.vec306, %strided.vec
  %i.s = fmul fast <4 x float> %strided.vec303, %strided.vec305
  %i.t = fsub fast <4 x float> %vec.phi299, %i.s
  %i.u = fadd fast <4 x float> %i.t, %i.r         ; 2 uses
  %i.v = fadd fast <4 x float> %strided.vec305, %vec.phi300 ; 2 uses
  %i.w = fadd fast <4 x float> %strided.vec306, %vec.phi301 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %i.y = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.k) ; 2 uses
  %i.z = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.l)
  %i.aa = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.m)
  %i.ab = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.q) ; 2 uses
  %i.ac = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.u) ; 2 uses
  %i.ad = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.v) ; 2 uses
  %i.ae = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.w) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  %i.af = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.aa, i64 1 ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ae, i64 1
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader321

.lr.ph.preheader321:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0271.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.0243270.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.sroa.087.0269.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %.sroa.069.0266.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.sroa.974.0265.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.0244262.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.ph = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  %.ph322 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aj = extractelement <2 x float> %i.eq, i64 1
  %i.ak = extractelement <2 x float> %i.eq, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %bb.a
  %.sroa.21.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %middle.block ], [ %i.aj, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.15.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ad, %middle.block ], [ %i.ak, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.974.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ac, %middle.block ], [ %i.ep, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.069.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ab, %middle.block ], [ %i.el, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.087.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.y, %middle.block ], [ %i.ee, %._crit_edge.loopexit ] ; 10 uses
  %i.al = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ag, %middle.block ], [ %i.ef, %._crit_edge.loopexit ] ; 7 uses
  %4 = extractelement <2 x float> %i.al, i64 1    ; 13 uses
  %i.am = extractelement <2 x float> %i.al, i64 0 ; 9 uses
  %i.an = fneg fast float %4                      ; 4 uses
  %i.ao = sitofp fast i32 %2 to float             ; 6 uses
  %5 = fmul fast float %i.ao, %i.ao
  %i.ap = fmul fast float %i.an, %i.ao            ; 3 uses
  %i.aq = fmul fast float %i.am, %i.ao            ; 4 uses
  %6 = fneg fast float %i.aq
  %i.ar = fneg fast float %i.ao
  %7 = fmul fast float %4, %i.ar                  ; 3 uses
  %i.as = fmul fast float %.sroa.087.0.lcssa, %i.ao ; 2 uses
  %i.at = fmul fast float %4, %4
  %i.au = fsub fast float %i.as, %i.at            ; 2 uses
  %i.av = fmul fast float %.sroa.087.0.lcssa, %i.an ; 2 uses
  %i.aw = fneg fast float %i.am                   ; 2 uses
  %i.ax = fmul fast float %.sroa.087.0.lcssa, %i.aw ; 2 uses
  %i.ay = fmul fast float %5, %.sroa.087.0.lcssa  ; 2 uses
  %i.az = fmul fast float %i.ap, %4
  %i.ba = fadd fast float %i.ay, %i.az
  %.neg = fmul fast float %i.aq, %i.aw            ; 2 uses
  %i.bb = fadd fast float %i.ba, %.neg            ; 2 uses
  %i.bc = fmul fast float %i.bb, %.sroa.087.0.lcssa
  %8 = fmul fast float %i.aq, %4                  ; 2 uses
  %9 = fmul fast float %i.am, %7
  %10 = fadd fast float %8, %9
  %i.bd = fmul fast float %.sroa.087.0.lcssa, %7
  %i.be = fmul fast float %i.ap, %i.am
  %i.bf = fadd fast float %8, %i.be
  %i.bg = fmul fast float %i.au, %4
  %i.bh = fmul fast float %7, %4
  %i.bi = fadd fast float %i.ay, %i.bh
  %i.bj = fadd fast float %i.bi, %.neg
  %i.bk = fmul fast float %i.av, %4
  %i.bl = fmul fast float %i.ax, %4
  %i.bm = fmul fast float %i.av, %i.am
  %i.bn = fmul fast float %i.au, %.sroa.087.0.lcssa
  %i.bo = fmul fast float %i.ax, %i.am
  %i.bp = fadd fast float %i.bn, %i.bo
  %i.bq = fmul fast float %i.bb, %.sroa.069.0.lcssa
  %i.br = fmul fast float %i.bf, %.sroa.974.0.lcssa
  %i.bs = fadd fast float %i.bq, %i.br
  %i.bt = fmul fast float %i.bj, %.sroa.974.0.lcssa
  %i.bu = fmul fast float %.sroa.069.0.lcssa, %10
  %i.bv = fsub fast float %i.bt, %i.bu
  %i.bw = fmul fast float %i.bp, %.sroa.21.0.lcssa
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = fmul fast float %i.am, %4                 ; 3 uses
  %12 = insertelement <2 x float> %i.al, float %i.an, i64 1
  %13 = fmul fast <2 x float> %i.al, %12          ; 4 uses
  %i.bz = extractelement <2 x float> %13, i64 0
  %i.ca = fsub fast float %i.as, %i.bz            ; 2 uses
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %15 = fsub fast <2 x float> %13, %14            ; 2 uses
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = insertelement <4 x float> %16, float %11, i64 2
  %18 = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %19 = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.cb = fmul fast <4 x float> %18, %19          ; 3 uses
  %20 = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.cc = insertelement <4 x float> %20, float %i.ap, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.ca, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %6, i64 3
  %21 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cf = insertelement <2 x float> %21, float %.sroa.087.0.lcssa, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ch = fmul fast <4 x float> %i.ce, %i.cg      ; 4 uses
  %i.ci = fsub fast <4 x float> %i.cb, %i.ch      ; 2 uses
  %i.cj = fadd fast <4 x float> %i.cb, %i.ch
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %22 = extractelement <4 x float> %i.ci, i64 0
  %23 = fmul fast float %22, %i.am
  %i.cl = fadd fast float %i.bc, %23
  %i.cm = extractelement <2 x float> %15, i64 0   ; 2 uses
  %i.cn = fmul fast float %i.cm, %i.an
  %i.co = fsub fast float %i.cn, %i.bd            ; 2 uses
  %i.cp = fmul fast float %4, %i.co
  %i.cq = fsub fast float %i.cl, %i.cp
  %i.cr = fdiv fast float 1.000000e+00, %i.cq
  %i.cs = fmul fast float %11, %i.am
  %i.ct = fsub fast float %i.cs, %i.bg
  %foldExtExtBinop = fmul fast <2 x float> %13, %i.al
  %24 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %25 = extractelement <4 x float> %i.cb, i64 2
  %26 = fadd fast float %25, %24
  %27 = extractelement <4 x float> %i.ch, i64 3
  %28 = fadd fast float %26, %27
  %i.cu = fmul fast float %i.cm, %4
  %i.cv = extractelement <4 x float> %i.ch, i64 1
  %i.cw = fadd fast float %i.cu, %i.cv
  %i.cx = fmul fast float %i.ca, %.sroa.087.0.lcssa
  %i.cy = fadd fast float %i.cx, %i.bk
  %i.cz = fmul fast float %.sroa.087.0.lcssa, %11 ; 2 uses
  %i.da = fadd fast float %i.bl, %i.cz
  %i.db = fadd fast float %i.bm, %i.cz
  %i.dc = fmul fast float %i.cy, %.sroa.15.0.lcssa
  %.neg251.a = fmul fast float %i.cw, %.sroa.974.0.lcssa
  %.neg252.a = fmul fast float %i.da, %.sroa.21.0.lcssa
  %29 = insertelement <4 x float> poison, float %.sroa.069.0.lcssa, i64 0
  %30 = insertelement <4 x float> %29, float %.sroa.15.0.lcssa, i64 1
  %31 = insertelement <4 x float> %30, float %.sroa.974.0.lcssa, i64 3
  %32 = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %33 = fmul fast <4 x float> %i.ck, %32
  %.neg254 = fmul fast float %i.co, %.sroa.069.0.lcssa
  %.neg255 = fmul fast float %i.db, %.sroa.15.0.lcssa
  %reass.add = fadd fast float %.neg254, %.neg255
  %i.dd = fmul fast float %i.ct, %.sroa.21.0.lcssa
  %i.de = fmul fast float %28, %.sroa.21.0.lcssa
  %reass.add259.a = fadd fast float %.neg251.a, %.neg252.a
  %i.df = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.bv, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %i.bs, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.bw, i64 3
  %i.dj = fadd fast <4 x float> %i.di, %33        ; 2 uses
  %i.dk = insertelement <4 x float> poison, float %reass.add259.a, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.de, i64 1
  %i.dm = insertelement <4 x float> %i.dl, float %i.dd, i64 2
  %i.dn = insertelement <4 x float> %i.dm, float %reass.add, i64 3 ; 2 uses
  %i.do = fsub fast <4 x float> %i.dj, %i.dn
  %i.dp = fadd fast <4 x float> %i.dj, %i.dn
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.dp, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dr = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = fmul fast <4 x float> %i.ds, %i.dq      ; 3 uses
  %i.du = extractelement <4 x float> %i.dt, i64 2
  store float %i.du, ptr %3, align 4, !tbaa !10
  %i.dv = extractelement <4 x float> %i.dt, i64 1
  %i.dw = fneg fast float %i.dv
  store float %i.dw, ptr %i.bx, align 4, !tbaa !10
  store <4 x float> %i.dt, ptr %i.by, align 4, !tbaa !10
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader321, %.lr.ph
  %.0271 = phi ptr [ %i.er, %.lr.ph ], [ %.0271.ph, %.lr.ph.preheader321 ] ; 2 uses
  %.0243270 = phi ptr [ %i.es, %.lr.ph ], [ %.0243270.ph, %.lr.ph.preheader321 ] ; 2 uses
  %.sroa.087.0269 = phi float [ %i.ee, %.lr.ph ], [ %.sroa.087.0269.ph, %.lr.ph.preheader321 ]
  %.sroa.069.0266 = phi float [ %i.el, %.lr.ph ], [ %.sroa.069.0266.ph, %.lr.ph.preheader321 ]
  %.sroa.974.0265 = phi float [ %i.ep, %.lr.ph ], [ %.sroa.974.0265.ph, %.lr.ph.preheader321 ]
  %.0244262 = phi i32 [ %i.et, %.lr.ph ], [ %.0244262.ph, %.lr.ph.preheader321 ]
  %i.dx = phi <2 x float> [ %i.ef, %.lr.ph ], [ %.ph, %.lr.ph.preheader321 ]
  %i.dy = phi <2 x float> [ %i.eq, %.lr.ph ], [ %.ph322, %.lr.ph.preheader321 ]
  %i.dz = load <2 x float>, ptr %.0271, align 4, !tbaa !10 ; 6 uses
  %i.ea = fmul fast <2 x float> %i.dz, %i.dz      ; 2 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 0
  %i.ec = fadd fast float %i.eb, %.sroa.087.0269
  %i.ed = extractelement <2 x float> %i.ea, i64 1
  %i.ee = fadd fast float %i.ec, %i.ed            ; 2 uses
  %i.ef = fadd fast <2 x float> %i.dz, %i.dx      ; 2 uses
  %i.eg = load <2 x float>, ptr %.0243270, align 4, !tbaa !10 ; 4 uses
  %i.eh = fmul fast <2 x float> %i.eg, %i.dz      ; 2 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0
  %i.ej = fadd fast float %i.ei, %.sroa.069.0266
  %i.ek = extractelement <2 x float> %i.eh, i64 1
  %i.el = fadd fast float %i.ej, %i.ek            ; 2 uses
  %shift.a = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop316.a = fmul fast <2 x float> %shift.a, %i.dz
  %i.em = extractelement <2 x float> %foldExtExtBinop316.a, i64 0
  %shift318 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop319 = fmul fast <2 x float> %shift318, %i.eg
  %i.en = extractelement <2 x float> %foldExtExtBinop319, i64 0
  %i.eo = fsub fast float %.sroa.974.0265, %i.en
  %i.ep = fadd fast float %i.eo, %i.em            ; 2 uses
  %i.eq = fadd fast <2 x float> %i.eg, %i.dy      ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0271, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.0243270, i64 8
  %i.et = add nuw nsw i32 %.0244262, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.et, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4ncnn23invert_affine_transformEPKfPf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = fmul fast float %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.i = fmul fast float %i.h, %i.f
  %i.j = fsub fast float %i.d, %i.i               ; 2 uses
  %i.k = fcmp fast une float %i.j, 0.000000e+00
  %i.l = fdiv fast float 1.000000e+00, %i.j
  %i.m = select fast i1 %i.k, float %i.l, float 0.000000e+00 ; 4 uses
  %i.n = fmul fast float %i.m, %i.c               ; 2 uses
  %i.o = fmul fast float %i.m, %i.a               ; 2 uses
  %i.p = fneg fast float %i.f
  %i.q = fmul fast float %i.m, %i.p               ; 2 uses
  %i.r = fneg fast float %i.h
  %i.s = fmul fast float %i.m, %i.r               ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = fneg fast float %i.u                     ; 2 uses
  %i.w = fmul fast float %i.n, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !10 ; 2 uses
  %i.z = fmul fast float %i.q, %i.y
  %i.aa = fsub fast float %i.w, %i.z
  %i.ab = fmul fast float %i.s, %i.v
  %i.ac = fmul fast float %i.o, %i.y
  %i.ad = fsub fast float %i.ab, %i.ac
  store float %i.n, ptr %1, align 4, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.q, ptr %i.ae, align 4, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.aa, ptr %i.af, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.s, ptr %i.ag, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.o, ptr %i.ah, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.ad, ptr %i.ai, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c1EPKhiiPhiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  tail call void @_ZN4ncnn22warpaffine_bilinear_c1EPKhiiiPhiiiPKfij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %4, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn22warpaffine_bilinear_c1EPKhiiiPhiiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca i8, align 4                   ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i32 %10 to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %.sroa.0, align 4, !tbaa !14
  %i.a = sub nsw i32 %7, %5
  %i.b = sext i32 %5 to i64                       ; 5 uses
  %i.c = icmp slt i32 %5, 0
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i.i, label %.preheader624, label %.noexc397

.noexc397:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #12 ; 7 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  store i32 0, ptr %i.e, align 4, !tbaa !14
  %i.g = add nsw i64 %i.b, -1                     ; 3 uses
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc397
  %i.i = getelementptr i8, ptr %i.e, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %.noexc397, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #12
          to label %.noexc405 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit ; 6 uses

.noexc405:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.b
  store i32 0, ptr %i.j, align 4, !tbaa !14
  br i1 %i.h, label %.lr.ph, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i400

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i400: ; preds = %.noexc405
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i401 = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i401, i1 false), !tbaa !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i400, %.noexc405
  %i.m = load float, ptr %8, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = insertelement <2 x float> poison, float %i.m, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 1
  %i.r = fmul fast <2 x float> %i.q, splat (float 1.024000e+03) ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat712 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.s = uitofp nneg <4 x i32> %vec.ind to <4 x float> ; 2 uses
  %i.t = fmul fast <4 x float> %broadcast.splat, %i.s ; 2 uses
  %i.u = fcmp fast oge <4 x float> %i.t, zeroinitializer
  %i.v = select fast <4 x i1> %i.u, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.w = fadd fast <4 x float> %i.v, %i.t
  %i.x = fptosi <4 x float> %i.w to <4 x i32>
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <4 x i32> %i.x, ptr %i.y, align 4, !tbaa !14
  %i.z = fmul fast <4 x float> %broadcast.splat712, %i.s ; 2 uses
  %i.aa = fcmp fast oge <4 x float> %i.z, zeroinitializer
  %i.ab = select fast <4 x i1> %i.aa, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ac = fadd fast <4 x float> %i.ab, %i.z
  %i.ad = fptosi <4 x float> %i.ac to <4 x i32>
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  store <4 x i32> %i.ad, ptr %i.ae, align 4, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader624.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
end_hunk_0
begin_hunk_1_@_ZN4ncnn22warpaffine_bilinear_c4EPKhiiiPhiiiPKfij:bb.a
  store i8 %i.qx, ptr %.5819, align 1, !tbaa !15
  %.sroa.gep761 = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  %.sroa.gep762 = getelementptr inbounds nuw i8, ptr %i.pi, i64 1 ; 4 uses
  %.0433.sroa.sel763 = select i1 %or.cond511, ptr %.sroa.gep761, ptr %.sroa.gep762
  %i.qy = load i8, ptr %.0433.sroa.sel763, align 1, !tbaa !15
  %i.qz = zext i8 %i.qy to i32
  %i.ra = mul nuw nsw i32 %i.pl, %i.qz
  %.sroa.gep769 = getelementptr inbounds nuw i8, ptr %i.pu, i64 5
  %.0432.sroa.sel771 = select i1 %or.cond512, ptr %.sroa.gep769, ptr %.sroa.gep762
  %i.rb = load i8, ptr %.0432.sroa.sel771, align 1, !tbaa !15
  %i.rc = zext i8 %i.rb to i32
  %i.rd = mul nuw nsw i32 %i.pj, %i.rc
  %i.re = add nuw nsw i32 %i.rd, %i.ra
  %i.rf = lshr i32 %i.re, 5
  %i.rg = mul nuw nsw i32 %i.rf, %i.pm
  %.sroa.gep777 = getelementptr inbounds nuw i8, ptr %i.pz, i64 1
  %.0431.sroa.sel779 = select i1 %or.cond513, ptr %.sroa.gep777, ptr %.sroa.gep762
  %i.rh = load i8, ptr %.0431.sroa.sel779, align 1, !tbaa !15
  %i.ri = zext i8 %i.rh to i32
  %i.rj = mul nuw nsw i32 %i.pl, %i.ri
  %.sroa.gep785 = getelementptr inbounds nuw i8, ptr %i.pz, i64 5
  %.0.sroa.sel787 = select i1 %or.cond514, ptr %.sroa.gep785, ptr %.sroa.gep762
  %i.rk = load i8, ptr %.0.sroa.sel787, align 1, !tbaa !15
  %i.rl = zext i8 %i.rk to i32
  %i.rm = mul nuw nsw i32 %i.pj, %i.rl
  %i.rn = add nuw nsw i32 %i.rm, %i.rj
  %i.ro = lshr i32 %i.rn, 5
  %i.rp = mul nuw nsw i32 %i.ro, %i.pk
  %i.rq = add nuw nsw i32 %i.rp, %i.rg
  %i.rr = lshr i32 %i.rq, 15
  %i.rs = trunc nuw i32 %i.rr to i8
  %i.rt = getelementptr inbounds nuw i8, ptr %.5819, i64 1
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !15
  %.sroa.gep758 = getelementptr inbounds nuw i8, ptr %i.pu, i64 2
  %.sroa.gep759 = getelementptr inbounds nuw i8, ptr %i.pi, i64 2 ; 4 uses
  %.0433.sroa.sel760 = select i1 %or.cond511, ptr %.sroa.gep758, ptr %.sroa.gep759
  %i.ru = load i8, ptr %.0433.sroa.sel760, align 1, !tbaa !15
  %i.rv = zext i8 %i.ru to i32
  %i.rw = mul nuw nsw i32 %i.pl, %i.rv
  %.sroa.gep766 = getelementptr inbounds nuw i8, ptr %i.pu, i64 6
  %.0432.sroa.sel768 = select i1 %or.cond512, ptr %.sroa.gep766, ptr %.sroa.gep759
  %i.rx = load i8, ptr %.0432.sroa.sel768, align 1, !tbaa !15
  %i.ry = zext i8 %i.rx to i32
  %i.rz = mul nuw nsw i32 %i.pj, %i.ry
  %i.sa = add nuw nsw i32 %i.rz, %i.rw
  %i.sb = lshr i32 %i.sa, 5
  %i.sc = mul nuw nsw i32 %i.sb, %i.pm
  %.sroa.gep774 = getelementptr inbounds nuw i8, ptr %i.pz, i64 2
  %.0431.sroa.sel776 = select i1 %or.cond513, ptr %.sroa.gep774, ptr %.sroa.gep759
  %i.sd = load i8, ptr %.0431.sroa.sel776, align 1, !tbaa !15
  %i.se = zext i8 %i.sd to i32
  %i.sf = mul nuw nsw i32 %i.pl, %i.se
  %.sroa.gep782 = getelementptr inbounds nuw i8, ptr %i.pz, i64 6
  %.0.sroa.sel784 = select i1 %or.cond514, ptr %.sroa.gep782, ptr %.sroa.gep759
  %i.sg = load i8, ptr %.0.sroa.sel784, align 1, !tbaa !15
  %i.sh = zext i8 %i.sg to i32
  %i.si = mul nuw nsw i32 %i.pj, %i.sh
  %i.sj = add nuw nsw i32 %i.si, %i.sf
  %i.sk = lshr i32 %i.sj, 5
  %i.sl = mul nuw nsw i32 %i.sk, %i.pk
  %i.sm = add nuw nsw i32 %i.sl, %i.sc
  %i.sn = lshr i32 %i.sm, 15
  %i.so = trunc nuw i32 %i.sn to i8
  %i.sp = getelementptr inbounds nuw i8, ptr %.5819, i64 2
  store i8 %i.so, ptr %i.sp, align 1, !tbaa !15
  %.sroa.gep756 = getelementptr inbounds nuw i8, ptr %i.pu, i64 3
  %.sroa.gep757 = getelementptr inbounds nuw i8, ptr %i.pi, i64 3 ; 4 uses
  %.0433.sroa.sel = select i1 %or.cond511, ptr %.sroa.gep756, ptr %.sroa.gep757
  %i.sq = load i8, ptr %.0433.sroa.sel, align 1, !tbaa !15
  %i.sr = zext i8 %i.sq to i32
  %i.ss = mul nuw nsw i32 %i.pl, %i.sr
  %.sroa.gep764 = getelementptr inbounds nuw i8, ptr %i.pu, i64 7
  %.0432.sroa.sel = select i1 %or.cond512, ptr %.sroa.gep764, ptr %.sroa.gep757
  %i.st = load i8, ptr %.0432.sroa.sel, align 1, !tbaa !15
  %i.su = zext i8 %i.st to i32
  %i.sv = mul nuw nsw i32 %i.pj, %i.su
  %i.sw = add nuw nsw i32 %i.sv, %i.ss
  %i.sx = lshr i32 %i.sw, 5
  %i.sy = mul nuw nsw i32 %i.sx, %i.pm
  %.sroa.gep772 = getelementptr inbounds nuw i8, ptr %i.pz, i64 3
  %.0431.sroa.sel = select i1 %or.cond513, ptr %.sroa.gep772, ptr %.sroa.gep757
  %i.sz = load i8, ptr %.0431.sroa.sel, align 1, !tbaa !15
  %i.ta = zext i8 %i.sz to i32
  %i.tb = mul nuw nsw i32 %i.pl, %i.ta
  %.sroa.gep780 = getelementptr inbounds nuw i8, ptr %i.pz, i64 7
  %.0.sroa.sel = select i1 %or.cond514, ptr %.sroa.gep780, ptr %.sroa.gep757
  %i.tc = load i8, ptr %.0.sroa.sel, align 1, !tbaa !15
  %i.td = zext i8 %i.tc to i32
  %i.te = mul nuw nsw i32 %i.pj, %i.td
  %i.tf = add nuw nsw i32 %i.te, %i.tb
  %i.tg = lshr i32 %i.tf, 5
  %i.th = mul nuw nsw i32 %i.tg, %i.pk
  %i.ti = add nuw nsw i32 %i.th, %i.sy
  %i.tj = lshr i32 %i.ti, 15
  %i.tk = trunc nuw i32 %i.tj to i8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.s
  %.sink888 = phi i8 [ %i.tk, %bb.s ], [ %i.pf, %bb.q ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.5819, i64 3
  store i8 %.sink888, ptr %i.tl, align 1, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r
  %i.tm = getelementptr inbounds nuw i8, ptr %.5819, i64 4 ; 2 uses
  %indvars.iv.next850 = add nuw nsw i64 %indvars.iv849, 1 ; 2 uses
  %exitcond853.not = icmp eq i64 %indvars.iv.next850, %wide.trip.count852
  br i1 %exitcond853.not, label %._crit_edge, label %.lr.ph820, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.t, %.preheader803
  %.5.lcssa = phi ptr [ %.1.lcssa, %.preheader803 ], [ %i.tm, %bb.t ]
  %i.tn = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.av
  %i.to = add nuw nsw i32 %.0444822, 1            ; 2 uses
  %exitcond854.not = icmp eq i32 %i.to, %6
  br i1 %exitcond854.not, label %._crit_edge825, label %bb.c, !llvm.loop !45

._crit_edge825:                                   ; preds = %._crit_edge, %.preheader804
  %.not.i.i.i552 = icmp eq ptr %.sroa.0707.0883, null
  br i1 %.not.i.i.i552, label %_ZNSt6vectorIiSaIiEED2Ev.exit553, label %bb.u

bb.u:                                             ; preds = %._crit_edge825
  %i.tp = ptrtoint ptr %.sroa.0707.0883 to i64
  %i.tq = sub i64 %.sroa.14.0881, %i.tp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0707.0883, i64 noundef %i.tq) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit553

_ZNSt6vectorIiSaIiEED2Ev.exit553:                 ; preds = %._crit_edge825, %bb.u
  %.not.i.i.i554 = icmp eq ptr %.sroa.0715.0793877, null
  br i1 %.not.i.i.i554, label %_ZNSt6vectorIiSaIiEED2Ev.exit555, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit553
  %i.tr = ptrtoint ptr %.sroa.0715.0793877 to i64
  %i.ts = sub i64 %.sroa.15.0791879, %i.tr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0715.0793877, i64 noundef %i.ts) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit555

_ZNSt6vectorIiSaIiEED2Ev.exit555:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit553, %bb.v
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn28warpaffine_bilinear_yuv420spEPKhiiPhiiPKfij(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [6 x float], align 16             ; 5 uses
  %.sroa.2.0.extract.shift = lshr i32 %8, 8
  %.sroa.034.0.insert.ext = and i32 %8, 255
  tail call void @_ZN4ncnn22warpaffine_bilinear_c1EPKhiiiPhiiiPKfij(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %4, ptr noundef readonly %6, i32 noundef %7, i32 noundef %.sroa.034.0.insert.ext)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load <4 x float>, ptr %6, align 4, !tbaa !10
  %i.c = fmul reassoc nsz arcp contract afn <4 x float> %i.b, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 1.000000e+00>
  store <4 x float> %i.c, ptr %i.a, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !10
  %i.g = fmul reassoc nsz arcp contract afn <2 x float> %i.f, <float 1.000000e+00, float 5.000000e-01>
  store <2 x float> %i.g, ptr %i.d, align 16, !tbaa !10
  %i.h = mul nsw i32 %2, %1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = mul nsw i32 %5, %4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = sdiv i32 %1, 2                           ; 2 uses
  %i.o = sdiv i32 %2, 2
  %i.p = sdiv i32 %4, 2                           ; 2 uses
  %i.q = sdiv i32 %5, 2
  %.sroa.036.0.insert.insert = and i32 %.sroa.2.0.extract.shift, 65535
  %i.r = shl nsw i32 %i.n, 1
  %i.s = shl nsw i32 %i.p, 1
  call void @_ZN4ncnn22warpaffine_bilinear_c2EPKhiiiPhiiiPKfij(ptr noundef readonly %i.j, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.r, ptr noundef %i.m, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.s, ptr noundef nonnull readonly %i.a, i32 noundef %7, i32 noundef %.sroa.036.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }

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
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!6, !6, i64 0}
!15 = !{!5, !5, i64 0}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !13, !12}
!18 = distinct !{!18, !11, !12, !13}
!19 = distinct !{!19, !11, !13, !12}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11, !12, !13}
!26 = distinct !{!26, !11, !13, !12}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11, !12, !13}
!33 = distinct !{!33, !11, !13, !12}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11, !12, !13}
!40 = distinct !{!40, !11, !13, !12}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
end_hunk_1
