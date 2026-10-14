Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv_depthwise?download=true
inline.NumInlined: 179
inline.NumDeleted: 100
begin_hunk_0_@_ZN2cv3dnn20depthWiseBlockConv2DEPKfiiiiiiiiS2_S2_S2_iiPfiiib:bb.a
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.i, float %i.bd)
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.af
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !50
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.k, float %i.bf)
  %i.bj = load float, ptr %.0203, align 4, !tbaa !50
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %.0197, float %i.bi)
  %i.bl = getelementptr inbounds [4 x i8], ptr %.0203, i64 %i.af
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !50
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %.0196, float %i.bk)
  %i.bo = fadd float %i.y, %i.bn                  ; 2 uses
  br i1 %18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = load float, ptr %i.ay, align 4, !tbaa !50
  %i.bq = fadd float %i.bo, %i.bp
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0202 = phi float [ %i.bq, %bb.h ], [ %i.bo, %bb.g ] ; 4 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = fcmp ogt float %.0202, 0.000000e+00
  %i.bs = fmul float %i.w, %.0202
  %i.bt = select i1 %i.br, float %.0202, float %i.bs
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi float [ %i.bt, %bb.j ], [ %.0202, %bb.i ]
  store float %.1, ptr %i.ay, align 4, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.0205 = phi i32 [ 1, %bb.k ], [ 0, %bb.f ]     ; 3 uses
  %i.bu = icmp slt i32 %.0205, %.sroa.speculated
  br i1 %i.bu, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bv = zext nneg i32 %.0205 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.p, %bb.l
  %.1206.lcssa = phi i32 [ %.0205, %bb.l ], [ %.sroa.speculated, %bb.p ] ; 2 uses
  %i.bw = icmp slt i32 %.1206.lcssa, %17
  br i1 %i.bw, label %.lr.ph225.preheader, label %._crit_edge

.lr.ph225.preheader:                              ; preds = %.preheader
  %i.bx = zext nneg i32 %.1206.lcssa to i64
  br label %.lr.ph225

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ %i.bv, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %i.by = mul nsw i64 %indvars.iv, %i.ah
  %i.bz = sub nsw i64 %i.by, %i.ai                ; 5 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %.0204, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !50
  %i.cc = add nsw i64 %i.bz, %i.af                ; 3 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %.0204, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !50
  %i.cf = fmul float %.0200, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cb, float %.0201, float %i.cf)
  %i.ch = add nsw i64 %i.bz, %i.aj                ; 3 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %.0204, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !50
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %.0199, float %i.cg)
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bz
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !50
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.g, float %i.ck)
  %i.co = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cc
  %i.cp = load float, ptr %i.co, align 4, !tbaa !50
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.i, float %i.cn)
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ch
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !50
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.k, float %i.cq)
  %i.cu = getelementptr inbounds [4 x i8], ptr %.0203, i64 %i.bz
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !50
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %.0198, float %i.ct)
  %i.cx = getelementptr inbounds [4 x i8], ptr %.0203, i64 %i.cc
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !50
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %.0197, float %i.cw)
  %i.da = getelementptr inbounds [4 x i8], ptr %.0203, i64 %i.ch
  %i.db = load float, ptr %i.da, align 4, !tbaa !50
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %.0196, float %i.cz)
  %i.dd = fadd float %i.y, %i.dc                  ; 2 uses
  br i1 %18, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.df = load float, ptr %i.de, align 4, !tbaa !50
  %i.dg = fadd float %i.dd, %i.df
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %.2 = phi float [ %i.dg, %bb.m ], [ %i.dd, %.lr.ph ] ; 4 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = fcmp ogt float %.2, 0.000000e+00
  %i.di = fmul float %i.w, %.2
  %i.dj = select i1 %i.dh, float %.2, float %i.di
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3 = phi float [ %i.dj, %bb.o ], [ %.2, %bb.n ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store float %.3, ptr %i.dk, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !101

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %bb.t
  %indvars.iv233 = phi i64 [ %i.bx, %.lr.ph225.preheader ], [ %indvars.iv.next234, %bb.t ] ; 4 uses
  %i.dl = mul nsw i64 %indvars.iv233, %i.ah
  %i.dm = sub nsw i64 %i.dl, %i.ai                ; 4 uses
  %i.dn = add nsw i64 %i.dm, %i.af                ; 2 uses
  %i.do = add nsw i64 %i.dm, %i.aj                ; 2 uses
  %.not215 = icmp slt i64 %i.dm, %i.ak            ; 2 uses
  %.0192 = select i1 %.not215, float 1.000000e+00, float 0.000000e+00 ; 3 uses
  %.not216 = icmp slt i64 %i.dn, %i.ak            ; 2 uses
  %.0191 = select i1 %.not216, float 1.000000e+00, float 0.000000e+00 ; 3 uses
  %.not217 = icmp slt i64 %i.do, %i.ak            ; 2 uses
  %.0 = select i1 %.not217, float 1.000000e+00, float 0.000000e+00 ; 3 uses
  %i.dp = select i1 %.not215, i64 %i.dm, i64 0    ; 3 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %.0204, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !50
  %i.ds = fmul float %.0201, %i.dr
  %i.dt = select i1 %.not216, i64 %i.dn, i64 0    ; 3 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %.0204, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !50
  %i.dw = fmul float %.0200, %i.dv
  %i.dx = fmul float %.0191, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.ds, float %.0192, float %i.dx)
  %i.dz = select i1 %.not217, i64 %i.do, i64 0    ; 3 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %.0204, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !50
  %i.ec = fmul float %.0199, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float %.0, float %i.dy)
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.dp
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !50
  %i.eg = fmul float %i.g, %i.ef
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.eg, float %.0192, float %i.ed)
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.dt
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !50
  %i.ek = fmul float %i.i, %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %.0191, float %i.eh)
  %i.em = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.dz
  %i.en = load float, ptr %i.em, align 4, !tbaa !50
  %i.eo = fmul float %i.k, %i.en
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eo, float %.0, float %i.el)
  %i.eq = getelementptr inbounds [4 x i8], ptr %.0203, i64 %i.dp
  %i.er = load float, ptr %i.eq, align 4, !tbaa !50
  %i.es = fmul float %.0198, %i.er
  %i.et = tail call float @llvm.fmuladd.f32(float %i.es, float %.0192, float %i.ep)
  %i.eu = getelementptr inbounds [4 x i8], ptr %.0203, i64 %i.dt
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !50
  %i.ew = fmul float %.0197, %i.ev
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %.0191, float %i.et)
  %i.ey = getelementptr inbounds [4 x i8], ptr %.0203, i64 %i.dz
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !50
  %i.fa = fmul float %.0196, %i.ez
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.fa, float %.0, float %i.ex)
  %i.fc = fadd float %i.y, %i.fb                  ; 2 uses
  br i1 %18, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph225
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv233
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !50
  %i.ff = fadd float %i.fc, %i.fe
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph225
  %.4 = phi float [ %i.ff, %bb.q ], [ %i.fc, %.lr.ph225 ] ; 4 uses
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fg = fcmp ogt float %.4, 0.000000e+00
  %i.fh = fmul float %i.w, %.4
  %i.fi = select i1 %i.fg, float %.4, float %i.fh
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.5 = phi float [ %i.fi, %bb.s ], [ %.4, %bb.r ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv233
  store float %.5, ptr %i.fj, align 4, !tbaa !50
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count236
  br i1 %exitcond237.not, label %._crit_edge, label %.lr.ph225, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %._crit_edge229, label %bb.c, !llvm.loop !103
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv3dnn20depthWiseBlockConv1DEPKfiiiiS2_S2_S2_iPfiib(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, ptr nofree noundef captures(none) %9, i32 noundef %10, i32 noundef %11, i1 noundef zeroext %12) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %9 to i64                  ; 2 uses
  %i.c = load float, ptr %0, align 4, !tbaa !50   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !50 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !50 ; 10 uses
  %.neg132 = sub i32 1, %1
  %.neg133 = mul i32 %.neg132, %3
  %i.h = add i32 %.neg133, %4
  %i.i = add i32 %i.h, %8
  %i.j = sdiv i32 %i.i, %2
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %11) ; 10 uses
  %.not = icmp eq ptr %6, null                    ; 4 uses
  %.pre = sext i32 %10 to i64                     ; 2 uses
  br i1 %.not, label %._crit_edge159, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds [4 x i8], ptr %6, i64 %.pre
  %i.l = load float, ptr %i.k, align 4, !tbaa !50
  br label %._crit_edge159

._crit_edge159:                                   ; preds = %bb.a, %bb.b
  %i.m = phi float [ %i.l, %bb.b ], [ 1.000000e+00, %bb.a ] ; 6 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %5, i64 %.pre
  %i.o = load float, ptr %i.n, align 4, !tbaa !50 ; 10 uses
  %i.p = icmp sgt i32 %4, 0
  br i1 %i.p, label %bb.c, label %bb.h

bb.c:                                             ; preds = %._crit_edge159
  %i.q = load float, ptr %7, align 4, !tbaa !50
  %i.r = sext i32 %3 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %7, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !50
  %i.u = fmul float %i.g, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.q, float %i.e, float %i.u)
  %i.w = fadd float %i.o, %i.v                    ; 2 uses
  br i1 %12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load float, ptr %9, align 4, !tbaa !50
  %i.y = fadd float %i.w, %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0109 = phi float [ %i.y, %bb.d ], [ %i.w, %bb.c ] ; 4 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = fcmp ogt float %.0109, 0.000000e+00
  %i.aa = fmul float %i.m, %.0109
  %i.ab = select i1 %i.z, float %.0109, float %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi float [ %i.ab, %bb.f ], [ %.0109, %bb.e ]
  store float %.1, ptr %9, align 4, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge159
  %.0110 = phi i32 [ 1, %bb.g ], [ 0, %._crit_edge159 ] ; 3 uses
  %i.ac = icmp slt i32 %.0110, %.sroa.speculated
  br i1 %i.ac, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.h
  %i.ad = shl i32 %3, 1
  %i.ae = zext nneg i32 %.0110 to i64             ; 23 uses
  %i.af = sext i32 %2 to i64                      ; 4 uses
  %i.ag = sext i32 %4 to i64                      ; 20 uses
  %i.ah = sext i32 %3 to i64                      ; 7 uses
  %i.ai = sext i32 %i.ad to i64                   ; 7 uses
  %wide.trip.count154 = zext i32 %.sroa.speculated to i64 ; 11 uses
  %invariant.gep175 = getelementptr [4 x i8], ptr %7, i64 %i.ah ; 8 uses
  %invariant.gep177 = getelementptr [4 x i8], ptr %7, i64 %i.ai ; 8 uses
  %i.aj = sub nsw i64 %wide.trip.count154, %i.ae  ; 12 uses
  %ident.check276.not = icmp eq i32 %2, 1         ; 4 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %12, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %min.iters.check255 = icmp ugt i64 %i.aj, 11
  %or.cond = and i1 %min.iters.check255, %ident.check276.not
  br i1 %or.cond, label %vector.memcheck248, label %.lr.ph.split.us.split.preheader334

vector.memcheck248:                               ; preds = %.lr.ph.split.us.split.preheader
  %i.ak = shl nsw i64 %i.ag, 2
  %13 = shl nsw i64 %i.ai, 2
  %14 = add i64 %i.ak, %i.b
  %15 = sub i64 %14, %i.a                         ; 3 uses
  %i.al = sub i64 %13, %15
  %diff.check249 = icmp ugt i64 %i.al, -16
  %i.am = shl nsw i64 %i.ah, 2
  %i.an = sub i64 %i.am, %15
  %diff.check250 = icmp ugt i64 %i.an, -16
  %conflict.rdx251 = or i1 %diff.check249, %diff.check250
  %i.ao = add i64 %15, -1
  %diff.check263 = icmp ult i64 %i.ao, 15
  %conflict.rdx253 = or i1 %conflict.rdx251, %diff.check263
  br i1 %conflict.rdx253, label %.lr.ph.split.us.split.preheader334, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck248
  %n.vec257 = and i64 %i.aj, -4                   ; 3 uses
  %i.ap = or disjoint i64 %n.vec257, %i.ae
  %broadcast.splatinsert258 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat259 = shufflevector <4 x float> %broadcast.splatinsert258, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert260 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat261 = shufflevector <4 x float> %broadcast.splatinsert260, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert262 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat263 = shufflevector <4 x float> %broadcast.splatinsert262, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert264 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat265 = shufflevector <4 x float> %broadcast.splatinsert264, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph256
  %index267 = phi i64 [ 0, %vector.ph256 ], [ %index.next271, %vector.body266 ] ; 2 uses
  %i.aq = or disjoint i64 %index267, %i.ae        ; 2 uses
  %i.ar = sub nsw i64 %i.aq, %i.ag                ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ar
  %wide.load268 = load <4 x float>, ptr %i.as, align 4, !tbaa !50
  %i.at = getelementptr [4 x i8], ptr %invariant.gep175, i64 %i.ar
  %wide.load269 = load <4 x float>, ptr %i.at, align 4, !tbaa !50
  %i.au = fmul <4 x float> %broadcast.splat259, %wide.load269
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load268, <4 x float> %broadcast.splat261, <4 x float> %i.au)
  %i.aw = getelementptr [4 x i8], ptr %invariant.gep177, i64 %i.ar
  %wide.load270 = load <4 x float>, ptr %i.aw, align 4, !tbaa !50
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load270, <4 x float> %broadcast.splat263, <4 x float> %i.av)
  %i.ay = fadd <4 x float> %broadcast.splat265, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.aq
  store <4 x float> %i.ay, ptr %i.az, align 4, !tbaa !50
  %index.next271 = add nuw i64 %index267, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next271, %n.vec257
  br i1 %i.ba, label %middle.block272, label %vector.body266, !llvm.loop !104

middle.block272:                                  ; preds = %vector.body266
  %cmp.n273 = icmp eq i64 %i.aj, %n.vec257
  br i1 %cmp.n273, label %.preheader, label %.lr.ph.split.us.split.preheader334

.lr.ph.split.us.split.preheader334:               ; preds = %vector.memcheck248, %.lr.ph.split.us.split.preheader, %middle.block272
  %indvars.iv146.ph = phi i64 [ %i.ae, %vector.memcheck248 ], [ %i.ae, %.lr.ph.split.us.split.preheader ], [ %i.ap, %middle.block272 ]
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %min.iters.check297 = icmp ugt i64 %i.aj, 15
  %or.cond330 = and i1 %min.iters.check297, %ident.check276.not
  br i1 %or.cond330, label %vector.memcheck298, label %.lr.ph.split.us.split.us.preheader333

vector.memcheck298:                               ; preds = %.lr.ph.split.us.split.us.preheader
  %i.bb = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  %i.bc = getelementptr i8, ptr %9, i64 %i.bb     ; 3 uses
  %i.bd = shl nuw nsw i64 %wide.trip.count154, 2  ; 2 uses
  %i.be = getelementptr i8, ptr %9, i64 %i.bd     ; 3 uses
  %i.bf = shl nsw i64 %i.ag, 2                    ; 2 uses
  %i.bg = or disjoint i64 %i.ai, %i.ae
  %i.bh = sub nsw i64 %i.bg, %i.ag
  %i.bi = shl nsw i64 %i.bh, 2
  %i.bj = getelementptr i8, ptr %7, i64 %i.bi
  %i.bk = add nsw i64 %i.ai, %wide.trip.count154
  %i.bl = sub nsw i64 %i.bk, %i.ag
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = getelementptr i8, ptr %7, i64 %i.bm
  %i.bo = add nsw i64 %i.ah, %i.ae
  %i.bp = sub nsw i64 %i.bo, %i.ag
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = getelementptr i8, ptr %7, i64 %i.bq
  %i.bs = add nsw i64 %i.ah, %wide.trip.count154
  %i.bt = sub nsw i64 %i.bs, %i.ag
  %i.bu = shl nsw i64 %i.bt, 2
  %i.bv = getelementptr i8, ptr %7, i64 %i.bu
  %i.bw = sub nsw i64 %i.bb, %i.bf
  %i.bx = getelementptr i8, ptr %7, i64 %i.bw
  %i.by = sub nsw i64 %i.bd, %i.bf
  %i.bz = getelementptr i8, ptr %7, i64 %i.by
  %bound0299 = icmp ult ptr %i.bc, %i.bn
  %bound1300 = icmp ult ptr %i.bj, %i.be
  %found.conflict301 = and i1 %bound0299, %bound1300
  %bound0302 = icmp ult ptr %i.bc, %i.bv
  %bound1303 = icmp ult ptr %i.br, %i.be
  %found.conflict304 = and i1 %bound0302, %bound1303
  %conflict.rdx305 = or i1 %found.conflict301, %found.conflict304
  %bound0306 = icmp ult ptr %i.bc, %i.bz
  %bound1307 = icmp ult ptr %i.bx, %i.be
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %conflict.rdx305, %found.conflict308
  br i1 %conflict.rdx309, label %.lr.ph.split.us.split.us.preheader333, label %vector.ph310

vector.ph310:                                     ; preds = %vector.memcheck298
  %n.vec311 = and i64 %i.aj, -4                   ; 3 uses
  %i.ca = or disjoint i64 %n.vec311, %i.ae
  %broadcast.splatinsert312 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat313 = shufflevector <4 x float> %broadcast.splatinsert312, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert314 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat315 = shufflevector <4 x float> %broadcast.splatinsert314, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert316 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat317 = shufflevector <4 x float> %broadcast.splatinsert316, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert318 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat319 = shufflevector <4 x float> %broadcast.splatinsert318, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph310
  %index321 = phi i64 [ 0, %vector.ph310 ], [ %index.next326, %vector.body320 ] ; 2 uses
  %i.cb = or disjoint i64 %index321, %i.ae        ; 2 uses
  %i.cc = sub nsw i64 %i.cb, %i.ag                ; 3 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %7, i64 %i.cc
  %wide.load322 = load <4 x float>, ptr %i.cd, align 4, !tbaa !50, !alias.scope !123
  %i.ce = getelementptr [4 x i8], ptr %invariant.gep175, i64 %i.cc
  %wide.load323 = load <4 x float>, ptr %i.ce, align 4, !tbaa !50, !alias.scope !124
  %i.cf = fmul <4 x float> %broadcast.splat313, %wide.load323
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load322, <4 x float> %broadcast.splat315, <4 x float> %i.cf)
  %i.ch = getelementptr [4 x i8], ptr %invariant.gep177, i64 %i.cc
  %wide.load324 = load <4 x float>, ptr %i.ch, align 4, !tbaa !50, !alias.scope !125
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load324, <4 x float> %broadcast.splat317, <4 x float> %i.cg)
  %i.cj = fadd <4 x float> %broadcast.splat319, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.cb ; 2 uses
  %wide.load325 = load <4 x float>, ptr %i.ck, align 4, !tbaa !50, !alias.scope !126, !noalias !127
  %i.cl = fadd <4 x float> %i.cj, %wide.load325
  store <4 x float> %i.cl, ptr %i.ck, align 4, !tbaa !50, !alias.scope !126, !noalias !127
  %index.next326 = add nuw i64 %index321, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next326, %n.vec311
  br i1 %i.cm, label %middle.block327, label %vector.body320, !llvm.loop !110

middle.block327:                                  ; preds = %vector.body320
  %cmp.n328 = icmp eq i64 %i.aj, %n.vec311
  br i1 %cmp.n328, label %.preheader, label %.lr.ph.split.us.split.us.preheader333

.lr.ph.split.us.split.us.preheader333:            ; preds = %vector.memcheck298, %.lr.ph.split.us.split.us.preheader, %middle.block327
  %indvars.iv151.ph = phi i64 [ %i.ae, %vector.memcheck298 ], [ %i.ae, %.lr.ph.split.us.split.us.preheader ], [ %i.ca, %middle.block327 ]
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader333, %.lr.ph.split.us.split.us
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %.lr.ph.split.us.split.us ], [ %indvars.iv151.ph, %.lr.ph.split.us.split.us.preheader333 ] ; 3 uses
  %i.cn = mul nsw i64 %indvars.iv151, %i.af
  %i.co = sub nsw i64 %i.cn, %i.ag                ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %7, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !50
  %gep176 = getelementptr [4 x i8], ptr %invariant.gep175, i64 %i.co
  %i.cr = load float, ptr %gep176, align 4, !tbaa !50
  %i.cs = fmul float %i.e, %i.cr
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.c, float %i.cs)
  %gep178 = getelementptr [4 x i8], ptr %invariant.gep177, i64 %i.co
  %i.cu = load float, ptr %gep178, align 4, !tbaa !50
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.g, float %i.ct)
  %i.cw = fadd float %i.o, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv151 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !50
  %i.cz = fadd float %i.cw, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !50
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.preheader, label %.lr.ph.split.us.split.us, !llvm.loop !111

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader334, %.lr.ph.split.us.split
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %.lr.ph.split.us.split ], [ %indvars.iv146.ph, %.lr.ph.split.us.split.preheader334 ] ; 3 uses
  %i.da = mul nsw i64 %indvars.iv146, %i.af
  %i.db = sub nsw i64 %i.da, %i.ag                ; 3 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %7, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !50
  %gep172 = getelementptr [4 x i8], ptr %invariant.gep175, i64 %i.db
  %i.de = load float, ptr %gep172, align 4, !tbaa !50
  %i.df = fmul float %i.e, %i.de
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.c, float %i.df)
  %gep174 = getelementptr [4 x i8], ptr %invariant.gep177, i64 %i.db
  %i.dh = load float, ptr %gep174, align 4, !tbaa !50
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.g, float %i.dg)
  %i.dj = fadd float %i.o, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv146
  store float %i.dj, ptr %i.dk, align 4, !tbaa !50
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count154
  br i1 %exitcond150.not, label %.preheader, label %.lr.ph.split.us.split, !llvm.loop !112

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %12, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %min.iters.check = icmp ugt i64 %i.aj, 7
  %or.cond331 = and i1 %min.iters.check, %ident.check276.not
  br i1 %or.cond331, label %vector.memcheck, label %.lr.ph.split.split.preheader338

vector.memcheck:                                  ; preds = %.lr.ph.split.split.preheader
  %i.dl = shl nsw i64 %i.ag, 2
  %16 = shl nsw i64 %i.ai, 2
  %17 = add i64 %i.dl, %i.b
  %18 = sub i64 %17, %i.a                         ; 3 uses
  %i.dm = sub i64 %16, %18
  %diff.check = icmp ugt i64 %i.dm, -16
  %i.dn = shl nsw i64 %i.ah, 2
  %i.do = sub i64 %i.dn, %18
  %diff.check182 = icmp ugt i64 %i.do, -16
  %conflict.rdx = or i1 %diff.check, %diff.check182
  %i.dp = add i64 %18, -1
  %diff.check186 = icmp ult i64 %i.dp, 15
  %conflict.rdx184 = or i1 %conflict.rdx, %diff.check186
  br i1 %conflict.rdx184, label %.lr.ph.split.split.preheader338, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -4                      ; 3 uses
  %i.dq = or disjoint i64 %n.vec, %i.ae
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert185 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat186 = shufflevector <4 x float> %broadcast.splatinsert185, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert187 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat188 = shufflevector <4 x float> %broadcast.splatinsert187, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert189 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat190 = shufflevector <4 x float> %broadcast.splatinsert189, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert191 = insertelement <4 x float> poison, float %i.m, i64 0
  %broadcast.splat192 = shufflevector <4 x float> %broadcast.splatinsert191, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = or disjoint i64 %index, %i.ae           ; 2 uses
  %i.ds = sub nsw i64 %i.dr, %i.ag                ; 3 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ds
  %wide.load = load <4 x float>, ptr %i.dt, align 4, !tbaa !50
  %i.du = getelementptr [4 x i8], ptr %invariant.gep175, i64 %i.ds
  %wide.load193 = load <4 x float>, ptr %i.du, align 4, !tbaa !50
  %i.dv = fmul <4 x float> %broadcast.splat, %wide.load193
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat186, <4 x float> %i.dv)
  %i.dx = getelementptr [4 x i8], ptr %invariant.gep177, i64 %i.ds
  %wide.load194 = load <4 x float>, ptr %i.dx, align 4, !tbaa !50
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load194, <4 x float> %broadcast.splat188, <4 x float> %i.dw)
  %i.dz = fadd <4 x float> %broadcast.splat190, %i.dy ; 3 uses
  %i.ea = fcmp ogt <4 x float> %i.dz, zeroinitializer
  %i.eb = fmul <4 x float> %broadcast.splat192, %i.dz
  %i.ec = select <4 x i1> %i.ea, <4 x float> %i.dz, <4 x float> %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.dr
  store <4 x float> %i.ec, ptr %i.ed, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.split.preheader338

.lr.ph.split.split.preheader338:                  ; preds = %vector.memcheck, %.lr.ph.split.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.split.split.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %min.iters.check214 = icmp ugt i64 %i.aj, 11
  %or.cond332 = and i1 %min.iters.check214, %ident.check276.not
  br i1 %or.cond332, label %vector.memcheck215, label %.lr.ph.split.split.us.preheader336

vector.memcheck215:                               ; preds = %.lr.ph.split.split.us.preheader
  %i.ef = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  %i.eg = getelementptr i8, ptr %9, i64 %i.ef     ; 3 uses
  %i.eh = shl nuw nsw i64 %wide.trip.count154, 2  ; 2 uses
  %i.ei = getelementptr i8, ptr %9, i64 %i.eh     ; 3 uses
  %i.ej = shl nsw i64 %i.ag, 2                    ; 2 uses
  %i.ek = or disjoint i64 %i.ai, %i.ae
  %i.el = sub nsw i64 %i.ek, %i.ag
  %i.em = shl nsw i64 %i.el, 2
  %i.en = getelementptr i8, ptr %7, i64 %i.em
  %i.eo = add nsw i64 %i.ai, %wide.trip.count154
  %i.ep = sub nsw i64 %i.eo, %i.ag
  %i.eq = shl nsw i64 %i.ep, 2
  %i.er = getelementptr i8, ptr %7, i64 %i.eq
  %i.es = add nsw i64 %i.ah, %i.ae
  %i.et = sub nsw i64 %i.es, %i.ag
  %i.eu = shl nsw i64 %i.et, 2
  %i.ev = getelementptr i8, ptr %7, i64 %i.eu
  %i.ew = add nsw i64 %i.ah, %wide.trip.count154
  %i.ex = sub nsw i64 %i.ew, %i.ag
  %i.ey = shl nsw i64 %i.ex, 2
  %i.ez = getelementptr i8, ptr %7, i64 %i.ey
  %i.fa = sub nsw i64 %i.ef, %i.ej
  %i.fb = getelementptr i8, ptr %7, i64 %i.fa
  %i.fc = sub nsw i64 %i.eh, %i.ej
  %i.fd = getelementptr i8, ptr %7, i64 %i.fc
  %bound0 = icmp ult ptr %i.eg, %i.er
  %bound1 = icmp ult ptr %i.en, %i.ei
  %found.conflict = and i1 %bound0, %bound1
  %bound0216 = icmp ult ptr %i.eg, %i.ez
  %bound1217 = icmp ult ptr %i.ev, %i.ei
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %found.conflict, %found.conflict218
  %bound0220 = icmp ult ptr %i.eg, %i.fd
  %bound1221 = icmp ult ptr %i.fb, %i.ei
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx223 = or i1 %conflict.rdx219, %found.conflict222
  br i1 %conflict.rdx223, label %.lr.ph.split.split.us.preheader336, label %vector.ph224

vector.ph224:                                     ; preds = %vector.memcheck215
  %n.vec225 = and i64 %i.aj, -4                   ; 3 uses
  %i.fe = or disjoint i64 %n.vec225, %i.ae
  %broadcast.splatinsert226 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat227 = shufflevector <4 x float> %broadcast.splatinsert226, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat229 = shufflevector <4 x float> %broadcast.splatinsert228, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert230 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat231 = shufflevector <4 x float> %broadcast.splatinsert230, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat233 = shufflevector <4 x float> %broadcast.splatinsert232, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert234 = insertelement <4 x float> poison, float %i.m, i64 0
  %broadcast.splat235 = shufflevector <4 x float> %broadcast.splatinsert234, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph224
  %index237 = phi i64 [ 0, %vector.ph224 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.ff = or disjoint i64 %index237, %i.ae        ; 2 uses
  %i.fg = sub nsw i64 %i.ff, %i.ag                ; 3 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %7, i64 %i.fg
  %wide.load238 = load <4 x float>, ptr %i.fh, align 4, !tbaa !50, !alias.scope !128
  %i.fi = getelementptr [4 x i8], ptr %invariant.gep175, i64 %i.fg
  %wide.load239 = load <4 x float>, ptr %i.fi, align 4, !tbaa !50, !alias.scope !129
  %i.fj = fmul <4 x float> %broadcast.splat227, %wide.load239
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load238, <4 x float> %broadcast.splat229, <4 x float> %i.fj)
  %i.fl = getelementptr [4 x i8], ptr %invariant.gep177, i64 %i.fg
  %wide.load240 = load <4 x float>, ptr %i.fl, align 4, !tbaa !50, !alias.scope !130
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load240, <4 x float> %broadcast.splat231, <4 x float> %i.fk)
  %i.fn = fadd <4 x float> %broadcast.splat233, %i.fm
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ff ; 2 uses
  %wide.load241 = load <4 x float>, ptr %i.fo, align 4, !tbaa !50, !alias.scope !131, !noalias !132
  %i.fp = fadd <4 x float> %i.fn, %wide.load241   ; 3 uses
  %i.fq = fcmp ogt <4 x float> %i.fp, zeroinitializer
  %i.fr = fmul <4 x float> %broadcast.splat235, %i.fp
  %i.fs = select <4 x i1> %i.fq, <4 x float> %i.fp, <4 x float> %i.fr
  store <4 x float> %i.fs, ptr %i.fo, align 4, !tbaa !50, !alias.scope !131, !noalias !132
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next242, %n.vec225
  br i1 %i.ft, label %middle.block243, label %vector.body236, !llvm.loop !119

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.aj, %n.vec225
  br i1 %cmp.n244, label %.preheader, label %.lr.ph.split.split.us.preheader336

.lr.ph.split.split.us.preheader336:               ; preds = %vector.memcheck215, %.lr.ph.split.split.us.preheader, %middle.block243
  %indvars.iv141.ph = phi i64 [ %i.ae, %vector.memcheck215 ], [ %i.ae, %.lr.ph.split.split.us.preheader ], [ %i.fe, %middle.block243 ]
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader336, %.lr.ph.split.split.us
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %.lr.ph.split.split.us ], [ %indvars.iv141.ph, %.lr.ph.split.split.us.preheader336 ] ; 3 uses
  %i.fu = mul nsw i64 %indvars.iv141, %i.af
  %i.fv = sub nsw i64 %i.fu, %i.ag                ; 3 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %7, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !50
  %gep168 = getelementptr [4 x i8], ptr %invariant.gep175, i64 %i.fv
  %i.fy = load float, ptr %gep168, align 4, !tbaa !50
  %i.fz = fmul float %i.e, %i.fy
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.c, float %i.fz)
  %gep170 = getelementptr [4 x i8], ptr %invariant.gep177, i64 %i.fv
  %i.gb = load float, ptr %gep170, align 4, !tbaa !50
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.g, float %i.ga)
  %i.gd = fadd float %i.o, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv141 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !50
  %i.gg = fadd float %i.gd, %i.gf                 ; 3 uses
  %i.gh = fcmp ogt float %i.gg, 0.000000e+00
  %i.gi = fmul float %i.m, %i.gg
  %i.gj = select i1 %i.gh, float %i.gg, float %i.gi
  store float %i.gj, ptr %i.ge, align 4, !tbaa !50
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count154
  br i1 %exitcond145.not, label %.preheader, label %.lr.ph.split.split.us, !llvm.loop !120

.preheader:                                       ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us, %middle.block, %middle.block243, %middle.block272, %middle.block327, %bb.h
  %.1111.lcssa = phi i32 [ %.0110, %bb.h ], [ %.sroa.speculated, %middle.block272 ], [ %.sroa.speculated, %middle.block327 ], [ %.sroa.speculated, %middle.block243 ], [ %.sroa.speculated, %middle.block ], [ %.sroa.speculated, %.lr.ph.split.split.us ], [ %.sroa.speculated, %.lr.ph.split.us.split.us ], [ %.sroa.speculated, %.lr.ph.split.us.split ], [ %.sroa.speculated, %.lr.ph.split.split ] ; 2 uses
  %i.gk = icmp slt i32 %.1111.lcssa, %11
  br i1 %i.gk, label %.lr.ph131, label %._crit_edge

.lr.ph131:                                        ; preds = %.preheader
  %i.gl = shl nsw i32 %3, 1
  %i.gm = zext nneg i32 %.1111.lcssa to i64
  br label %bb.i

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader338, %.lr.ph.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.split ], [ %indvars.iv.ph, %.lr.ph.split.split.preheader338 ] ; 3 uses
  %i.gn = mul nsw i64 %indvars.iv, %i.af
  %i.go = sub nsw i64 %i.gn, %i.ag                ; 3 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %7, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !50
  %gep = getelementptr [4 x i8], ptr %invariant.gep175, i64 %i.go
  %i.gr = load float, ptr %gep, align 4, !tbaa !50
  %i.gs = fmul float %i.e, %i.gr
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.c, float %i.gs)
  %gep166 = getelementptr [4 x i8], ptr %invariant.gep177, i64 %i.go
  %i.gu = load float, ptr %gep166, align 4, !tbaa !50
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.g, float %i.gt)
  %i.gw = fadd float %i.o, %i.gv                  ; 3 uses
  %i.gx = fcmp ogt float %i.gw, 0.000000e+00
  %i.gy = fmul float %i.m, %i.gw
  %i.gz = select i1 %i.gx, float %i.gw, float %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv
  store float %i.gz, ptr %i.ha, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count154
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split.split, !llvm.loop !121

bb.i:                                             ; preds = %.lr.ph131, %bb.m
  %indvars.iv156 = phi i64 [ %i.gm, %.lr.ph131 ], [ %indvars.iv.next157, %bb.m ] ; 4 uses
end_hunk_0
