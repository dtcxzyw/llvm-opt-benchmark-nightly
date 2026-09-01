Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_gradients?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@draw_gradients_slice16:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  br i1 %i.w, label %.preheader.lr.ph.split, label %._crit_edge43.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ab = and i32 %i.u, -2
  %i.ac = icmp ne i32 %i.ab, 2
  %invariant.op = sext i1 %i.ac to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68 ; 3 uses
  %i.aj = load float, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %i.ak = load float, ptr %i.af, align 4, !tbaa !70 ; 2 uses
  %i.al = load float, ptr %i.ae, align 8, !tbaa !71
  %i.am = fsub nsz float %i.ak, %i.ai             ; 4 uses
  %i.an = fsub nsz float %i.al, %i.aj             ; 4 uses
  %i.ao = tail call nsz float @llvm.maxnum.f32(float %i.ai, float %i.ak)
  %i.ap = tail call nsz float @llvm.fabs.f32(float %i.am)
  %i.aq = tail call nsz float @llvm.fabs.f32(float %i.an)
  %i.ar = tail call nsz float @llvm.maxnum.f32(float %i.ap, float %i.aq)
  %i.as = fmul nsz float %i.an, %i.an
  %i.at = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.as) ; 2 uses
  %i.au = tail call nsz float @llvm.sqrt.f32(float %i.at)
  %i.av = load i32, ptr %i.ad, align 8, !tbaa !74 ; 4 uses
  %i.aw = icmp ne i32 %i.av, 1
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr [4 x i8], ptr %i.x, i64 %i.ax ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -4
  %i.ba = getelementptr i8, ptr %i.ay, i64 -3
  %i.bb = getelementptr i8, ptr %i.ay, i64 -2
  %i.bc = getelementptr i8, ptr %i.ay, i64 -1
  %.reass = add i32 %i.av, %invariant.op
  %i.bd = sitofp nsz i32 %.reass to float
  %i.be = add nsw i32 %i.av, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.03842 = phi i32 [ %i.h, %.preheader.lr.ph.split ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.03941 = phi ptr [ %i.s, %.preheader.lr.ph.split ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.bf = sitofp nsz i32 %.03842 to float
  %i.bg = fsub nsz float %i.bf, %i.aj             ; 6 uses
  %i.bh = tail call nsz float @llvm.fabs.f32(float %i.bg)
  %i.bi = fmul nsz float %i.bg, %i.bg
  %i.bj = fmul nsz float %i.bg, %i.an
  br label %bb.b

._crit_edge43.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %lerp_colors16.exit
  %i.bk = getelementptr inbounds [8 x i8], ptr %.03941, i64 %i.o
  %i.bl = add nsw i32 %.03842, 1                  ; 2 uses
  %exitcond45.not = icmp eq i32 %i.bl, %i.k
  br i1 %exitcond45.not, label %._crit_edge43.split, label %.preheader, !llvm.loop !76

bb.b:                                             ; preds = %.preheader, %lerp_colors16.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %lerp_colors16.exit ] ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32
  %i.bn = uitofp nneg i32 %i.bm to float          ; 2 uses
  %i.bo = fsub nsz float %i.bn, %i.ai             ; 6 uses
  switch i32 %i.u, label %project.exit [
    i32 0, label %.thread.i
    i32 1, label %.thread42.i
    i32 4, label %.thread45.i
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

.thread.i:                                        ; preds = %bb.b
  %i.bp = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.am, float %i.bj)
  br label %project.exit

.thread42.i:                                      ; preds = %bb.b
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bi)
  %i.br = tail call nsz float @llvm.sqrt.f32(float %i.bq)
  br label %project.exit

.thread45.i:                                      ; preds = %bb.b
  %i.bs = tail call nsz float @llvm.fabs.f32(float %i.bo)
  %i.bt = tail call nsz float @llvm.maxnum.f32(float %i.bs, float %i.bh)
  br label %project.exit

bb.c:                                             ; preds = %bb.b
  %i.bu = tail call nsz float @llvm.atan2.f32(float %i.bo, float %i.bg)
  %i.bv = fpext nsz float %i.bu to double
  %i.bw = fadd nsz double %i.bv, f0x400921FB54442D18
  %i.bx = fptrunc nsz double %i.bw to float
  br label %project.exit

bb.d:                                             ; preds = %bb.b
  %i.by = tail call nsz float @llvm.atan2.f32(float %i.bo, float %i.bg)
  %i.bz = fpext nsz float %i.by to double
  %i.ca = fadd nsz double %i.bz, f0x400921FB54442D18
  %i.cb = fdiv nsz float %i.bn, %i.ao
  %i.cc = fpext nsz float %i.cb to double
  %i.cd = fadd nsz double %i.ca, %i.cc
  %i.ce = fptrunc nsz double %i.cd to float
  %i.cf = frem nsz float %i.ce, f0x40C90FDB
  br label %project.exit

project.exit:                                     ; preds = %bb.b, %.thread.i, %.thread42.i, %.thread45.i, %bb.c, %bb.d
  %.041.i = phi float [ f0x40C90FDB, %bb.b ], [ %i.at, %.thread.i ], [ %i.au, %.thread42.i ], [ f0x40C90FDB, %bb.c ], [ f0x40C90FDB, %bb.d ], [ %i.ar, %.thread45.i ]
  %.038.i = phi nsz float [ undef, %bb.b ], [ %i.bp, %.thread.i ], [ %i.br, %.thread42.i ], [ %i.bx, %bb.c ], [ %i.cf, %bb.d ], [ %i.bt, %.thread45.i ]
  %i.cg = fdiv nsz float %.038.i, %.041.i         ; 2 uses
  %i.ch = fcmp nsz ogt float %i.cg, 0.000000e+00
  %i.ci = select nsz i1 %i.ch, float %i.cg, float 0.000000e+00 ; 2 uses
  %i.cj = fcmp nsz ogt float %i.ci, 1.000000e+00
  %..i.i = select nsz i1 %i.cj, float 1.000000e+00, float %i.ci ; 3 uses
  %i.ck = fcmp nsz ugt float %..i.i, 0.000000e+00
  %or.cond.i = and i1 %i.aw, %i.ck
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %project.exit
  %i.cl = load i8, ptr %i.x, align 8, !tbaa !63
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 8
  %i.co = load i8, ptr %i.y, align 1, !tbaa !63
  %i.cp = zext i8 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 24
  %i.cr = or disjoint i64 %i.cq, %i.cn
  %i.cs = load i8, ptr %i.z, align 2, !tbaa !63
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 40
  %i.cv = or disjoint i64 %i.cr, %i.cu
  %i.cw = load i8, ptr %i.aa, align 1, !tbaa !63
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw i64 %i.cx, 56
  %i.cz = or disjoint i64 %i.cv, %i.cy
  br label %lerp_colors16.exit

bb.f:                                             ; preds = %project.exit
  %i.da = fcmp nsz ult float %..i.i, 1.000000e+00
  br i1 %i.da, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.db = load i8, ptr %i.az, align 1, !tbaa !63
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 8
  %i.de = load i8, ptr %i.ba, align 1, !tbaa !63
  %i.df = zext i8 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 24
  %i.dh = or disjoint i64 %i.dg, %i.dd
  %i.di = load i8, ptr %i.bb, align 1, !tbaa !63
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 40
  %i.dl = or disjoint i64 %i.dh, %i.dk
  %i.dm = load i8, ptr %i.bc, align 1, !tbaa !63
  %i.dn = zext i8 %i.dm to i64
  %i.do = shl nuw i64 %i.dn, 56
  %i.dp = or disjoint i64 %i.dl, %i.do
  br label %lerp_colors16.exit

bb.h:                                             ; preds = %bb.f
  %i.dq = fmul nsz float %..i.i, %i.bd            ; 2 uses
  %i.dr = tail call nsz float @llvm.floor.f32(float %i.dq)
  %i.ds = fptosi float %i.dr to i32               ; 3 uses
  %i.dt = add nsw i32 %i.ds, 1
  %.not.i = icmp sgt i32 %i.be, %i.ds
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.ds) ; 2 uses
  %spec.select35.i = select i1 %.not.i, i32 %i.dt, i32 0
  %i.du = sext i32 %spec.select.i to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.du
  %i.dw = sext i32 %spec.select35.i to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.dw
  %i.dy = sitofp nsz i32 %spec.select.i to float
  %i.dz = fsub nsz float %i.dq, %i.dy             ; 2 uses
  %i.ea = fsub nsz float 1.000000e+00, %i.dz
  %i.eb = load <4 x i8>, ptr %i.dv, align 1, !tbaa !63
  %i.ec = uitofp <4 x i8> %i.eb to <4 x float>
  %i.ed = load <4 x i8>, ptr %i.dx, align 1, !tbaa !63
  %i.ee = uitofp <4 x i8> %i.ed to <4 x float>
  %i.ef = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = fmul nsz <4 x float> %i.eg, %i.ee
  %i.ei = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ek = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.ej, <4 x float> %i.eh)
  %i.el = fmul nsz <4 x float> %i.ek, splat (float 2.560000e+02)
  %i.em = tail call <4 x i64> @llvm.llrint.v4i64.v4f32(<4 x float> %i.el)
  %i.en = shl <4 x i64> %i.em, <i64 0, i64 16, i64 32, i64 48>
  %i.eo = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.en)
  br label %lerp_colors16.exit

lerp_colors16.exit:                               ; preds = %bb.e, %bb.g, %bb.h
  %.030.i = phi i64 [ %i.cz, %bb.e ], [ %i.dp, %bb.g ], [ %i.eo, %bb.h ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.03941, i64 %indvars.iv
  store i64 %.030.i, ptr %i.ep, align 8, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !78
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @draw_gradients_slice32_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65   ; 2 uses
  %i.g = mul nsw i32 %i.f, %2
  %i.h = sdiv i32 %i.g, %3                        ; 3 uses
  %i.i = add nsw i32 %2, 1
  %i.j = mul nsw i32 %i.f, %i.i
  %i.k = sdiv i32 %i.j, %3                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load <4 x i32>, ptr %i.l, align 8, !tbaa !34
  %i.n = sdiv <4 x i32> %i.m, splat (i32 4)       ; 4 uses
  %i.o = extractelement <4 x i32> %i.n, i64 0
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = extractelement <4 x i32> %i.n, i64 1
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = extractelement <4 x i32> %i.n, i64 2
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = extractelement <4 x i32> %i.n, i64 3
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !66
  %i.x = sext i32 %i.h to i64                     ; 4 uses
  %i.y = mul nsw i64 %i.p, %i.x
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.ac = mul nsw i64 %i.r, %i.x
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ag = mul nsw i64 %i.t, %i.x
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66
  %i.ak = mul nsw i64 %i.v, %i.x
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !67 ; 2 uses
  %i.ao = icmp slt i32 %i.h, %i.k
  br i1 %i.ao, label %.preheader.lr.ph, label %._crit_edge73.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ap = icmp sgt i32 %i.d, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  br i1 %i.ap, label %.preheader.lr.ph.split, label %._crit_edge73.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.aw = and i32 %i.an, -2
  %i.ax = icmp ne i32 %i.aw, 2
  %invariant.op = sext i1 %i.ax to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !74 ; 4 uses
  %i.ba = icmp ne i32 %i.az, 1
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr [16 x i8], ptr %i.as, i64 %i.bb ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -16
  %i.be = getelementptr i8, ptr %i.bc, i64 -12
  %i.bf = getelementptr i8, ptr %i.bc, i64 -8
  %i.bg = getelementptr i8, ptr %i.bc, i64 -4
  %.reass = add i32 %i.az, %invariant.op
  %i.bh = sitofp nsz i32 %.reass to float
  %i.bi = add nsw i32 %i.az, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.06272 = phi i32 [ %i.h, %.preheader.lr.ph.split ], [ %i.bo, %._crit_edge ] ; 2 uses
  %.06371 = phi ptr [ %i.al, %.preheader.lr.ph.split ], [ %i.bn, %._crit_edge ] ; 2 uses
  %.06470 = phi ptr [ %i.ah, %.preheader.lr.ph.split ], [ %i.bm, %._crit_edge ] ; 2 uses
  %.06569 = phi ptr [ %i.ad, %.preheader.lr.ph.split ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.06668 = phi ptr [ %i.z, %.preheader.lr.ph.split ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.bj = sitofp nsz i32 %.06272 to float
  br label %bb.b

._crit_edge73.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %lerp_colors32.exit
  %i.bk = getelementptr inbounds [4 x i8], ptr %.06668, i64 %i.p
  %i.bl = getelementptr inbounds [4 x i8], ptr %.06569, i64 %i.r
  %i.bm = getelementptr inbounds [4 x i8], ptr %.06470, i64 %i.t
  %i.bn = getelementptr inbounds [4 x i8], ptr %.06371, i64 %i.v
  %i.bo = add nsw i32 %.06272, 1                  ; 2 uses
  %exitcond75.not = icmp eq i32 %i.bo, %i.k
  br i1 %exitcond75.not, label %._crit_edge73.split, label %.preheader, !llvm.loop !79

bb.b:                                             ; preds = %.preheader, %lerp_colors32.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %lerp_colors32.exit ] ; 6 uses
  %5 = load float, ptr %i.aq, align 4, !tbaa !68  ; 2 uses
  %6 = load float, ptr %4, align 8, !tbaa !69
  %i.bp = load <2 x float>, ptr %i.ar, align 4, !tbaa !35 ; 3 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = uitofp nneg i32 %i.bq to float          ; 2 uses
  %7 = insertelement <2 x float> %i.bp, float %i.br, i64 1
  %i.bs = insertelement <2 x float> poison, float %5, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fsub nsz <2 x float> %7, %i.bt          ; 7 uses
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x float> %i.bv, float %i.bj, i64 1
  %i.bw = insertelement <2 x float> poison, float %6, i64 0
  %9 = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fsub nsz <2 x float> %8, %9             ; 7 uses
  switch i32 %i.an, label %project.exit [
    i32 0, label %.thread.i
    i32 1, label %.thread42.i
    i32 4, label %.thread45.i
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

.thread.i:                                        ; preds = %bb.b
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul nsz <2 x float> %i.bx, %i.by
  %i.ca = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.ca, <2 x float> %i.bz)
  br label %project.exit

.thread42.i:                                      ; preds = %bb.b
  %i.cc = fmul nsz <2 x float> %i.bx, %i.bx
  %i.cd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bu, <2 x float> %i.cc)
  %i.ce = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cd)
  br label %project.exit

.thread45.i:                                      ; preds = %bb.b
  %i.cf = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bu)
  %i.cg = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bx)
  %i.ch = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cf, <2 x float> %i.cg)
  br label %project.exit

bb.c:                                             ; preds = %bb.b
  %i.ci = extractelement <2 x float> %i.bu, i64 1
  %i.cj = extractelement <2 x float> %i.bx, i64 1
  %i.ck = tail call nsz float @llvm.atan2.f32(float %i.ci, float %i.cj)
  %i.cl = fpext nsz float %i.ck to double
  %i.cm = fadd nsz double %i.cl, f0x400921FB54442D18
  %i.cn = fptrunc nsz double %i.cm to float
  %i.co = insertelement <2 x float> <float f0x40C90FDB, float poison>, float %i.cn, i64 1
  br label %project.exit

bb.d:                                             ; preds = %bb.b
  %i.cp = extractelement <2 x float> %i.bu, i64 1
  %i.cq = extractelement <2 x float> %i.bx, i64 1
  %i.cr = tail call nsz float @llvm.atan2.f32(float %i.cp, float %i.cq)
  %i.cs = fpext nsz float %i.cr to double
  %i.ct = fadd nsz double %i.cs, f0x400921FB54442D18
  %i.cu = extractelement <2 x float> %i.bp, i64 0
  %i.cv = tail call nsz float @llvm.maxnum.f32(float %5, float %i.cu)
  %i.cw = fdiv nsz float %i.br, %i.cv
  %i.cx = fpext nsz float %i.cw to double
  %i.cy = fadd nsz double %i.ct, %i.cx
  %i.cz = fptrunc nsz double %i.cy to float
  %i.da = frem nsz float %i.cz, f0x40C90FDB
  %i.db = insertelement <2 x float> <float f0x40C90FDB, float poison>, float %i.da, i64 1
  br label %project.exit

project.exit:                                     ; preds = %bb.b, %.thread.i, %.thread42.i, %.thread45.i, %bb.c, %bb.d
  %i.dc = phi <2 x float> [ <float f0x40C90FDB, float undef>, %bb.b ], [ %i.cb, %.thread.i ], [ %i.ce, %.thread42.i ], [ %i.co, %bb.c ], [ %i.db, %bb.d ], [ %i.ch, %.thread45.i ] ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  %i.de = extractelement <2 x float> %i.dc, i64 1
  %i.df = fdiv nsz float %i.de, %i.dd             ; 2 uses
  %i.dg = fcmp nsz ogt float %i.df, 0.000000e+00
  %i.dh = select nsz i1 %i.dg, float %i.df, float 0.000000e+00 ; 2 uses
  %i.di = fcmp nsz ogt float %i.dh, 1.000000e+00
  %..i.i = select nsz i1 %i.di, float 1.000000e+00, float %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.06470, i64 %indvars.iv ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.06668, i64 %indvars.iv ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.06569, i64 %indvars.iv ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.06371, i64 %indvars.iv
  %i.dn = fcmp nsz ugt float %..i.i, 0.000000e+00
  %or.cond.i = and i1 %i.ba, %i.dn
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %project.exit
  %i.do = load float, ptr %i.as, align 8, !tbaa !35
  store float %i.do, ptr %i.dj, align 4, !tbaa !35
  %i.dp = load float, ptr %i.at, align 4, !tbaa !35
  store float %i.dp, ptr %i.dk, align 4, !tbaa !35
  %i.dq = load float, ptr %i.au, align 8, !tbaa !35
  store float %i.dq, ptr %i.dl, align 4, !tbaa !35
  %i.dr = load float, ptr %i.av, align 4, !tbaa !35
  br label %lerp_colors32.exit

bb.f:                                             ; preds = %project.exit
  %i.ds = fcmp nsz ult float %..i.i, 1.000000e+00
  br i1 %i.ds, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = load float, ptr %i.bd, align 4, !tbaa !35
  store float %i.dt, ptr %i.dj, align 4, !tbaa !35
  %i.du = load float, ptr %i.be, align 4, !tbaa !35
  store float %i.du, ptr %i.dk, align 4, !tbaa !35
  %i.dv = load float, ptr %i.bf, align 4, !tbaa !35
  store float %i.dv, ptr %i.dl, align 4, !tbaa !35
  %i.dw = load float, ptr %i.bg, align 4, !tbaa !35
  br label %lerp_colors32.exit

bb.h:                                             ; preds = %bb.f
  %i.dx = fmul nsz float %..i.i, %i.bh            ; 2 uses
  %i.dy = tail call nsz float @llvm.floor.f32(float %i.dx)
  %i.dz = fptosi float %i.dy to i32               ; 3 uses
  %i.ea = add nsw i32 %i.dz, 1
  %.not.i = icmp sgt i32 %i.bi, %i.dz
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.dz) ; 2 uses
  %spec.select61.i = select i1 %.not.i, i32 %i.ea, i32 0
  %i.eb = sitofp nsz i32 %spec.select.i to float
  %i.ec = fsub nsz float %i.dx, %i.eb             ; 5 uses
  %i.ed = sext i32 %spec.select.i to i64
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.ed ; 4 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !35
  %i.eg = sext i32 %spec.select61.i to i64
  %i.eh = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.eg ; 4 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !35
  %i.ej = fsub nsz float 1.000000e+00, %i.ec      ; 4 uses
  %i.ek = fmul nsz float %i.ec, %i.ei
  %i.el = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ef, float %i.ej, float %i.ek)
  store float %i.el, ptr %i.dj, align 4, !tbaa !35
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !35
  %i.eq = fmul nsz float %i.ec, %i.ep
  %i.er = tail call nsz noundef float @llvm.fmuladd.f32(float %i.en, float %i.ej, float %i.eq)
  store float %i.er, ptr %i.dk, align 4, !tbaa !35
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.et = load float, ptr %i.es, align 4, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !35
  %i.ew = fmul nsz float %i.ec, %i.ev
  %i.ex = tail call nsz noundef float @llvm.fmuladd.f32(float %i.et, float %i.ej, float %i.ew)
  store float %i.ex, ptr %i.dl, align 4, !tbaa !35
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !35
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !35
  %i.fc = fmul nsz float %i.ec, %i.fb
  %i.fd = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ez, float %i.ej, float %i.fc)
  br label %lerp_colors32.exit

lerp_colors32.exit:                               ; preds = %bb.e, %bb.g, %bb.h
  %.sink.i = phi float [ %i.fd, %bb.h ], [ %i.dw, %bb.g ], [ %i.dr, %bb.e ]
  store float %.sink.i, ptr %i.dm, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !80
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

declare ptr @av_default_item_name(ptr noundef) #0

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #0

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #6

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.llrint.v4i64.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #3

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
end_hunk_0
