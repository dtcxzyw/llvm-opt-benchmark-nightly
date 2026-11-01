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
  br i1 %min.iters.check, label %.lr.ph.preheader329, label %vector.ph

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
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader329

.lr.ph.preheader329:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0271.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.0243270.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.sroa.087.0269.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %.sroa.069.0266.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.sroa.974.0265.ph = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.0244262.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.ph = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  %.ph330 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aj = extractelement <2 x float> %i.fo, i64 1
  %i.ak = extractelement <2 x float> %i.fo, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %bb.a
  %.sroa.21.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %middle.block ], [ %i.aj, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.15.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ad, %middle.block ], [ %i.ak, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.974.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ac, %middle.block ], [ %i.fn, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.069.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ab, %middle.block ], [ %i.fj, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.087.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.y, %middle.block ], [ %i.fc, %._crit_edge.loopexit ] ; 10 uses
  %i.al = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ag, %middle.block ], [ %i.fd, %._crit_edge.loopexit ] ; 6 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.an = extractelement <2 x float> %i.al, i64 1 ; 10 uses
  %i.ao = fneg fast float %i.an                   ; 4 uses
  %i.ap = sitofp fast i32 %2 to float             ; 6 uses
  %i.aq = fmul fast float %i.ap, %i.ap
  %i.ar = fmul fast float %i.ao, %i.ap            ; 3 uses
  %i.as = extractelement <2 x float> %i.al, i64 0 ; 5 uses
  %i.at = fneg fast float %i.ap
  %i.au = fmul fast float %.sroa.087.0.lcssa, %i.ap ; 2 uses
  %i.av = fmul fast float %i.an, %i.an
  %i.aw = fsub fast float %i.au, %i.av            ; 2 uses
  %i.ax = fmul fast float %.sroa.087.0.lcssa, %i.ao ; 2 uses
  %i.ay = fneg fast float %i.as                   ; 2 uses
  %i.az = fmul fast float %.sroa.087.0.lcssa, %i.ay ; 2 uses
  %i.ba = fmul fast float %i.aq, %.sroa.087.0.lcssa ; 2 uses
  %i.bb = fmul fast float %i.ar, %i.an
  %i.bc = fadd fast float %i.ba, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.at, i64 1
  %i.bf = fmul fast <2 x float> %i.al, %i.be      ; 4 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0 ; 2 uses
  %i.bh = fneg fast float %i.bg
  %.neg = fmul fast float %i.bg, %i.ay            ; 2 uses
  %i.bi = fadd fast float %i.bc, %.neg            ; 2 uses
  %i.bj = fmul fast float %i.bi, %.sroa.087.0.lcssa
  %i.bk = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bl = fmul fast <2 x float> %i.bf, %i.bk      ; 2 uses
  %i.bm = tail call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bl)
  %i.bn = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.bo = fmul fast float %.sroa.087.0.lcssa, %i.bn
  %i.bp = fmul fast float %i.ar, %i.as
  %i.bq = extractelement <2 x float> %i.bl, i64 0
  %i.br = fadd fast float %i.bq, %i.bp
  %i.bs = fmul fast float %i.aw, %i.an
  %i.bt = fmul fast float %i.bn, %i.an
  %i.bu = fadd fast float %i.ba, %i.bt
  %i.bv = fadd fast float %i.bu, %.neg
  %i.bw = fmul fast float %i.ax, %i.an
  %i.bx = fmul fast float %i.az, %i.an
  %i.by = fmul fast float %i.ax, %i.as
  %i.bz = fmul fast float %i.aw, %.sroa.087.0.lcssa
  %i.ca = fmul fast float %i.az, %i.as
  %i.cb = fadd fast float %i.bz, %i.ca
  %i.cc = fmul fast float %i.bi, %.sroa.069.0.lcssa
  %i.cd = fmul fast float %i.br, %.sroa.974.0.lcssa
  %i.ce = fadd fast float %i.cc, %i.cd
  %i.cf = fmul fast float %i.bv, %.sroa.974.0.lcssa
  %i.cg = fmul fast float %.sroa.069.0.lcssa, %i.bm
  %i.ch = fsub fast float %i.cf, %i.cg
  %i.ci = fmul fast float %i.cb, %.sroa.21.0.lcssa
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0> ; 2 uses
  %i.cm = insertelement <4 x float> %i.cl, float %i.ao, i64 1
  %i.cn = fmul fast <4 x float> %i.am, %i.cm      ; 5 uses
  %i.co = extractelement <4 x float> %i.cn, i64 0
  %i.cp = fsub fast float %i.au, %i.co            ; 2 uses
  %i.cq = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 0, i32 6, i32 1>
  %i.cr = fsub fast <4 x float> %i.cn, %i.cq      ; 2 uses
  %i.cs = fmul fast <4 x float> %i.cr, %i.cl      ; 3 uses
  %i.ct = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float %i.ar, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.cp, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.bh, i64 3
  %i.cx = insertelement <2 x float> %i.bk, float %.sroa.087.0.lcssa, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cz = fmul fast <4 x float> %i.cw, %i.cy      ; 4 uses
  %i.da = fsub fast <4 x float> %i.cs, %i.cz
  %i.db = fadd fast <4 x float> %i.cs, %i.cz
  %i.dc = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %foldExtExtBinop = fmul fast <4 x float> %i.dc, %i.am
  %i.dd = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.de = fadd fast float %i.bj, %i.dd
  %i.df = extractelement <4 x float> %i.cr, i64 0 ; 2 uses
  %i.dg = fmul fast float %i.df, %i.ao
  %i.dh = fsub fast float %i.dg, %i.bo            ; 2 uses
  %i.di = fmul fast float %i.an, %i.dh
  %i.dj = fsub fast float %i.de, %i.di
  %i.dk = fdiv fast float 1.000000e+00, %i.dj
  %4 = extractelement <4 x float> %i.cn, i64 2    ; 2 uses
  %5 = fmul fast float %4, %i.as
  %i.dl = fsub fast float %5, %i.bs
  %foldExtExtBinop316.a = fmul fast <4 x float> %i.cn, %i.am
  %shift.a = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop318 = fadd fast <4 x float> %shift.a, %foldExtExtBinop316.a
  %shift320 = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop321 = fadd fast <4 x float> %foldExtExtBinop318, %shift320
  %i.dm = extractelement <4 x float> %foldExtExtBinop321, i64 0
  %i.dn = fmul fast float %i.df, %i.an
  %i.do = extractelement <4 x float> %i.cz, i64 1
  %i.dp = fadd fast float %i.dn, %i.do
  %i.dq = fmul fast float %i.cp, %.sroa.087.0.lcssa
  %i.dr = fadd fast float %i.dq, %i.bw
  %i.ds = fmul fast float %.sroa.087.0.lcssa, %4  ; 2 uses
  %i.dt = fadd fast float %i.bx, %i.ds
  %i.du = fadd fast float %i.by, %i.ds
  %i.dv = fmul fast float %i.dl, %.sroa.21.0.lcssa
  %i.dw = fmul fast float %i.dm, %.sroa.21.0.lcssa
  %i.dx = fmul fast float %i.dr, %.sroa.15.0.lcssa
  %.neg251 = fmul fast float %i.dp, %.sroa.974.0.lcssa
  %.neg252 = fmul fast float %i.dt, %.sroa.21.0.lcssa
  %reass.add259 = fadd fast float %.neg251, %.neg252
  %i.dy = insertelement <4 x float> poison, float %.sroa.069.0.lcssa, i64 0
  %i.dz = insertelement <4 x float> %i.dy, float %.sroa.15.0.lcssa, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %.sroa.974.0.lcssa, i64 3
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ec = fmul fast <4 x float> %i.dc, %i.eb
  %.neg254 = fmul fast float %i.dh, %.sroa.069.0.lcssa
  %.neg255 = fmul fast float %i.du, %.sroa.15.0.lcssa
  %reass.add = fadd fast float %.neg254, %.neg255
  %i.ed = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %i.ch, i64 1
  %i.ef = insertelement <4 x float> %i.ee, float %i.ce, i64 2
  %i.eg = insertelement <4 x float> %i.ef, float %i.ci, i64 3
  %i.eh = fadd fast <4 x float> %i.eg, %i.ec      ; 2 uses
  %i.ei = insertelement <4 x float> poison, float %reass.add259, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.dw, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %i.dv, i64 2
  %i.el = insertelement <4 x float> %i.ek, float %reass.add, i64 3 ; 2 uses
  %i.em = fsub fast <4 x float> %i.eh, %i.el
  %i.en = fadd fast <4 x float> %i.eh, %i.el
  %i.eo = shufflevector <4 x float> %i.em, <4 x float> %i.en, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ep = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = fmul fast <4 x float> %i.eq, %i.eo      ; 3 uses
  %i.es = extractelement <4 x float> %i.er, i64 2
  store float %i.es, ptr %3, align 4, !tbaa !10
  %i.et = extractelement <4 x float> %i.er, i64 1
  %i.eu = fneg fast float %i.et
  store float %i.eu, ptr %i.cj, align 4, !tbaa !10
  store <4 x float> %i.er, ptr %i.ck, align 4, !tbaa !10
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader329, %.lr.ph
  %.0271 = phi ptr [ %i.fp, %.lr.ph ], [ %.0271.ph, %.lr.ph.preheader329 ] ; 2 uses
  %.0243270 = phi ptr [ %i.fq, %.lr.ph ], [ %.0243270.ph, %.lr.ph.preheader329 ] ; 2 uses
  %.sroa.087.0269 = phi float [ %i.fc, %.lr.ph ], [ %.sroa.087.0269.ph, %.lr.ph.preheader329 ]
  %.sroa.069.0266 = phi float [ %i.fj, %.lr.ph ], [ %.sroa.069.0266.ph, %.lr.ph.preheader329 ]
  %.sroa.974.0265 = phi float [ %i.fn, %.lr.ph ], [ %.sroa.974.0265.ph, %.lr.ph.preheader329 ]
  %.0244262 = phi i32 [ %i.fr, %.lr.ph ], [ %.0244262.ph, %.lr.ph.preheader329 ]
  %i.ev = phi <2 x float> [ %i.fd, %.lr.ph ], [ %.ph, %.lr.ph.preheader329 ]
  %i.ew = phi <2 x float> [ %i.fo, %.lr.ph ], [ %.ph330, %.lr.ph.preheader329 ]
  %i.ex = load <2 x float>, ptr %.0271, align 4, !tbaa !10 ; 6 uses
  %i.ey = fmul fast <2 x float> %i.ex, %i.ex      ; 2 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 0
  %i.fa = fadd fast float %i.ez, %.sroa.087.0269
  %i.fb = extractelement <2 x float> %i.ey, i64 1
  %i.fc = fadd fast float %i.fa, %i.fb            ; 2 uses
  %i.fd = fadd fast <2 x float> %i.ex, %i.ev      ; 2 uses
  %i.fe = load <2 x float>, ptr %.0243270, align 4, !tbaa !10 ; 4 uses
  %i.ff = fmul fast <2 x float> %i.fe, %i.ex      ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %i.fh = fadd fast float %i.fg, %.sroa.069.0266
  %i.fi = extractelement <2 x float> %i.ff, i64 1
  %i.fj = fadd fast float %i.fh, %i.fi            ; 2 uses
  %shift323 = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop324 = fmul fast <2 x float> %shift323, %i.ex
  %i.fk = extractelement <2 x float> %foldExtExtBinop324, i64 0
  %shift326 = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop327 = fmul fast <2 x float> %shift326, %i.fe
  %i.fl = extractelement <2 x float> %foldExtExtBinop327, i64 0
  %i.fm = fsub fast float %.sroa.974.0265, %i.fl
  %i.fn = fadd fast float %i.fm, %i.fk            ; 2 uses
  %i.fo = fadd fast <2 x float> %i.fe, %i.ew      ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0271, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.0243270, i64 8
  %i.fr = add nuw nsw i32 %.0244262, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fr, %2
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
  br i1 %.not.i.i.i.i, label %.preheader618, label %.noexc391

.noexc391:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #12 ; 7 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  store i32 0, ptr %i.e, align 4, !tbaa !14
  %i.g = add nsw i64 %i.b, -1                     ; 3 uses
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc391
  %i.i = getelementptr i8, ptr %i.e, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %.noexc391, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #12
          to label %.noexc399 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit ; 6 uses

.noexc399:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.b
  store i32 0, ptr %i.j, align 4, !tbaa !14
  br i1 %i.h, label %.lr.ph, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i394

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i394: ; preds = %.noexc399
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.idx.i.i.i.i.i.i.i395 = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i395, i1 false), !tbaa !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i394, %.noexc399
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
  %broadcast.splat706 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
end_hunk_0
