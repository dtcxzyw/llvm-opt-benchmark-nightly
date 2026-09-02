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
  %i.aj = extractelement <2 x float> %i.fu, i64 1
  %i.ak = extractelement <2 x float> %i.fu, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %bb.a
  %.sroa.21.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %middle.block ], [ %i.aj, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.15.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ad, %middle.block ], [ %i.ak, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.974.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ac, %middle.block ], [ %i.ft, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.069.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ab, %middle.block ], [ %i.fp, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.087.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.y, %middle.block ], [ %i.fi, %._crit_edge.loopexit ] ; 10 uses
  %i.al = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ag, %middle.block ], [ %i.fj, %._crit_edge.loopexit ] ; 7 uses
  %i.am = extractelement <2 x float> %i.al, i64 1 ; 13 uses
  %i.an = extractelement <2 x float> %i.al, i64 0 ; 9 uses
  %i.ao = fneg fast float %i.am                   ; 4 uses
  %i.ap = sitofp fast i32 %2 to float             ; 6 uses
  %i.aq = fmul fast float %i.ap, %i.ap
  %i.ar = fmul fast float %i.ao, %i.ap            ; 3 uses
  %i.as = fmul fast float %i.an, %i.ap            ; 4 uses
  %i.at = fneg fast float %i.as
  %i.au = fneg fast float %i.ap
  %i.av = fmul fast float %i.am, %i.au            ; 3 uses
  %i.aw = fmul fast float %.sroa.087.0.lcssa, %i.ap ; 2 uses
  %i.ax = fmul fast float %i.am, %i.am
  %i.ay = fsub fast float %i.aw, %i.ax            ; 2 uses
  %i.az = fmul fast float %.sroa.087.0.lcssa, %i.ao ; 2 uses
  %i.ba = fneg fast float %i.an                   ; 2 uses
  %i.bb = fmul fast float %.sroa.087.0.lcssa, %i.ba ; 2 uses
  %i.bc = fmul fast float %i.aq, %.sroa.087.0.lcssa ; 2 uses
  %i.bd = fmul fast float %i.ar, %i.am
  %i.be = fadd fast float %i.bd, %i.bc
  %.neg = fmul fast float %i.as, %i.ba            ; 2 uses
  %i.bf = fadd fast float %i.be, %.neg            ; 2 uses
  %i.bg = fmul fast float %i.bf, %.sroa.087.0.lcssa
  %i.bh = fmul fast float %i.as, %i.am            ; 2 uses
  %i.bi = fmul fast float %i.an, %i.av
  %i.bj = fadd fast float %i.bh, %i.bi
  %i.bk = fmul fast float %.sroa.087.0.lcssa, %i.av
  %i.bl = fmul fast float %i.ar, %i.an
  %i.bm = fadd fast float %i.bh, %i.bl
  %i.bn = fmul fast float %i.ay, %i.am
  %i.bo = fmul fast float %i.av, %i.am
  %i.bp = fadd fast float %i.bo, %.neg
  %i.bq = fadd fast float %i.bp, %i.bc
  %i.br = fmul fast float %i.az, %i.am
  %i.bs = fmul fast float %i.bb, %i.am
  %i.bt = fmul fast float %i.az, %i.an
  %i.bu = fmul fast float %i.ay, %.sroa.087.0.lcssa
  %i.bv = fmul fast float %i.bb, %i.an
  %i.bw = fadd fast float %i.bu, %i.bv
  %i.bx = fmul fast float %i.bf, %.sroa.069.0.lcssa
  %i.by = fmul fast float %i.bm, %.sroa.974.0.lcssa
  %i.bz = fadd fast float %i.bx, %i.by
  %i.ca = fmul fast float %i.bq, %.sroa.974.0.lcssa
  %i.cb = fmul fast float %.sroa.069.0.lcssa, %i.bj
  %i.cc = fsub fast float %i.ca, %i.cb
  %i.cd = fmul fast float %i.bw, %.sroa.21.0.lcssa
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = fmul fast float %i.an, %i.am            ; 3 uses
  %i.ch = insertelement <2 x float> %i.al, float %i.ao, i64 1
  %i.ci = fmul fast <2 x float> %i.al, %i.ch      ; 4 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0
  %i.ck = fsub fast float %i.aw, %i.cj            ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = fsub fast <2 x float> %i.ci, %i.cl      ; 2 uses
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float %i.cg, i64 2
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cq = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.cr = fmul fast <4 x float> %i.cp, %i.cq      ; 3 uses
  %i.cs = insertelement <4 x float> poison, float %i.as, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.ar, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.ck, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.at, i64 3
  %i.cw = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cx = insertelement <2 x float> %i.cw, float %.sroa.087.0.lcssa, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cz = fmul fast <4 x float> %i.cv, %i.cy      ; 4 uses
  %i.da = fsub fast <4 x float> %i.cr, %i.cz      ; 2 uses
  %i.db = fadd fast <4 x float> %i.cr, %i.cz
  %i.dc = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dd = extractelement <4 x float> %i.da, i64 0
  %i.de = fmul fast float %i.dd, %i.an
  %i.df = fadd fast float %i.bg, %i.de
  %i.dg = extractelement <2 x float> %i.cm, i64 0 ; 2 uses
  %i.dh = fmul fast float %i.dg, %i.ao
  %i.di = fsub fast float %i.dh, %i.bk            ; 2 uses
  %i.dj = fmul fast float %i.am, %i.di
  %i.dk = fsub fast float %i.df, %i.dj
  %i.dl = fdiv fast float 1.000000e+00, %i.dk
  %i.dm = fmul fast float %i.cg, %i.an
  %i.dn = fsub fast float %i.dm, %i.bn
  %foldExtExtBinop = fmul fast <2 x float> %i.ci, %i.al
  %i.do = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dp = extractelement <4 x float> %i.cz, i64 3
  %i.dq = fadd fast float %i.do, %i.dp
  %i.dr = extractelement <4 x float> %i.cr, i64 2
  %i.ds = fadd fast float %i.dq, %i.dr
  %i.dt = fmul fast float %i.dg, %i.am
  %i.du = extractelement <4 x float> %i.cz, i64 1
  %i.dv = fadd fast float %i.dt, %i.du
  %i.dw = fmul fast float %i.ck, %.sroa.087.0.lcssa
  %i.dx = fadd fast float %i.dw, %i.br
  %i.dy = fmul fast float %.sroa.087.0.lcssa, %i.cg ; 2 uses
  %i.dz = fadd fast float %i.bs, %i.dy
  %i.ea = fadd fast float %i.bt, %i.dy
  %i.eb = fmul fast float %i.dx, %.sroa.15.0.lcssa
  %.neg251 = fmul fast float %i.dv, %.sroa.974.0.lcssa
  %.neg252 = fmul fast float %i.dz, %.sroa.21.0.lcssa
  %i.ec = insertelement <4 x float> poison, float %.sroa.069.0.lcssa, i64 0
  %i.ed = insertelement <4 x float> %i.ec, float %.sroa.15.0.lcssa, i64 1
  %i.ee = insertelement <4 x float> %i.ed, float %.sroa.974.0.lcssa, i64 3
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.eg = fmul fast <4 x float> %i.dc, %i.ef
  %.neg254 = fmul fast float %i.di, %.sroa.069.0.lcssa
  %.neg255 = fmul fast float %i.ea, %.sroa.15.0.lcssa
  %reass.add = fadd fast float %.neg254, %.neg255
  %i.eh = fmul fast float %i.dn, %.sroa.21.0.lcssa
  %i.ei = fmul fast float %i.ds, %.sroa.21.0.lcssa
  %reass.add259 = fadd fast float %.neg251, %.neg252
  %i.ej = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.cc, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %i.bz, i64 2
  %i.em = insertelement <4 x float> %i.el, float %i.cd, i64 3
  %i.en = fadd fast <4 x float> %i.em, %i.eg      ; 2 uses
  %i.eo = insertelement <4 x float> poison, float %reass.add259, i64 0
  %i.ep = insertelement <4 x float> %i.eo, float %i.ei, i64 1
  %i.eq = insertelement <4 x float> %i.ep, float %i.eh, i64 2
  %i.er = insertelement <4 x float> %i.eq, float %reass.add, i64 3 ; 2 uses
  %i.es = fsub fast <4 x float> %i.en, %i.er
  %i.et = fadd fast <4 x float> %i.en, %i.er
  %i.eu = shufflevector <4 x float> %i.es, <4 x float> %i.et, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ev = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = fmul fast <4 x float> %i.ew, %i.eu      ; 3 uses
  %i.ey = extractelement <4 x float> %i.ex, i64 2
  store float %i.ey, ptr %3, align 4, !tbaa !10
  %i.ez = extractelement <4 x float> %i.ex, i64 1
  %i.fa = fneg fast float %i.ez
  store float %i.fa, ptr %i.ce, align 4, !tbaa !10
  store <4 x float> %i.ex, ptr %i.cf, align 4, !tbaa !10
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader321, %.lr.ph
  %.0271 = phi ptr [ %i.fv, %.lr.ph ], [ %.0271.ph, %.lr.ph.preheader321 ] ; 2 uses
  %.0243270 = phi ptr [ %i.fw, %.lr.ph ], [ %.0243270.ph, %.lr.ph.preheader321 ] ; 2 uses
  %.sroa.087.0269 = phi float [ %i.fi, %.lr.ph ], [ %.sroa.087.0269.ph, %.lr.ph.preheader321 ]
  %.sroa.069.0266 = phi float [ %i.fp, %.lr.ph ], [ %.sroa.069.0266.ph, %.lr.ph.preheader321 ]
  %.sroa.974.0265 = phi float [ %i.ft, %.lr.ph ], [ %.sroa.974.0265.ph, %.lr.ph.preheader321 ]
  %.0244262 = phi i32 [ %i.fx, %.lr.ph ], [ %.0244262.ph, %.lr.ph.preheader321 ]
  %i.fb = phi <2 x float> [ %i.fj, %.lr.ph ], [ %.ph, %.lr.ph.preheader321 ]
  %i.fc = phi <2 x float> [ %i.fu, %.lr.ph ], [ %.ph322, %.lr.ph.preheader321 ]
  %i.fd = load <2 x float>, ptr %.0271, align 4, !tbaa !10 ; 6 uses
  %i.fe = fmul fast <2 x float> %i.fd, %i.fd      ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = fadd fast float %i.ff, %.sroa.087.0269
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = fadd fast float %i.fg, %i.fh            ; 2 uses
  %i.fj = fadd fast <2 x float> %i.fd, %i.fb      ; 2 uses
  %i.fk = load <2 x float>, ptr %.0243270, align 4, !tbaa !10 ; 4 uses
  %i.fl = fmul fast <2 x float> %i.fk, %i.fd      ; 2 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 0
  %i.fn = fadd fast float %i.fm, %.sroa.069.0266
  %i.fo = extractelement <2 x float> %i.fl, i64 1
  %i.fp = fadd fast float %i.fn, %i.fo            ; 2 uses
  %shift = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop316 = fmul fast <2 x float> %shift, %i.fd
  %i.fq = extractelement <2 x float> %foldExtExtBinop316, i64 0
  %shift318 = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop319 = fmul fast <2 x float> %shift318, %i.fk
  %i.fr = extractelement <2 x float> %foldExtExtBinop319, i64 0
  %i.fs = fsub fast float %.sroa.974.0265, %i.fr
  %i.ft = fadd fast float %i.fs, %i.fq            ; 2 uses
  %i.fu = fadd fast <2 x float> %i.fk, %i.fc      ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0271, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.0243270, i64 8
  %i.fx = add nuw nsw i32 %.0244262, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fx, %2
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
end_hunk_0
