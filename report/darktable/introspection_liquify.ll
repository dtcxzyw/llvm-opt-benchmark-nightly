Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@process:bb.a

bb.d:                                             ; preds = %bb.c
  %.val24 = load i32, ptr %i.b, align 4, !tbaa !112
  call fastcc void @_apply_global_distortion_map(i32 %.val24, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %i.k, ptr noundef %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @free(ptr noundef nonnull %i.k) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !117
  store i32 -999, ptr %i.a, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  tail call void @free(ptr noundef %i.b) #30
  store ptr null, ptr %i.a, align 8, !tbaa !117
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_hit_paths(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %.not329 = icmp eq ptr %2, null
  br i1 %.not329, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.b = fpext reassoc nsz arcp contract afn float %.18 to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi double [ f0x47EFFFFFE0000000, %bb.a ], [ %i.b, %._crit_edge.loopexit ]
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1432
  %i.e = load double, ptr %i.d, align 8, !tbaa !161
  %i.f = fmul reassoc nsz arcp contract afn double %i.e, 2.500000e+01
  %i.g = fcmp reassoc nsz arcp contract afn olt double %i.f, %.0.lcssa
  br i1 %i.g, label %bb.ac, label %bb.ad

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.0331 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.18, %.loopexit ] ; 2 uses
  %.0228330 = phi ptr [ %2, %.lr.ph ], [ %i.gb, %.loopexit ] ; 2 uses
  %i.h = load ptr, ptr %.0228330, align 8, !tbaa !76
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = and i64 %i.i, 4294967295
  %i.l = getelementptr inbounds nuw [56 x i8], ptr @dt_liquify_layers, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !167  ; 3 uses
  %i.o = and i32 %i.n, 1
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.q = and i32 %i.n, 4
  %.not250 = icmp eq i32 %i.q, 0
  %i.r = and i32 %i.n, 2
  %.not252 = icmp eq i32 %i.r, 0
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1432
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.1328 = phi float [ %.0331, %.preheader ], [ %.16.ph, %.thread ] ; 23 uses
  %i.u = getelementptr inbounds nuw [76 x i8], ptr %1, i64 %indvars.iv ; 17 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val = load i8, ptr %i.v, align 4, !tbaa !170  ; 2 uses
  %i.w = icmp eq i8 %.val, -1
  %i.x = sext i8 %.val to i64
  %i.y = getelementptr inbounds [76 x i8], ptr %1, i64 %i.x ; 5 uses
  %.0.i = select i1 %i.w, ptr null, ptr %i.y      ; 2 uses
  %i.z = load i32, ptr %i.u, align 4, !tbaa !174  ; 4 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not250, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !175
  %.not251 = icmp eq i32 %i.ac, 0
  br i1 %.not251, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not252, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not253 = icmp eq ptr %.0.i, null
  br i1 %.not253, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !175
  %.not254 = icmp eq i32 %i.ae, 0
  br i1 %.not254, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 10 uses
  switch i32 %i.j, label %bb.v [
    i32 5, label %bb.j
    i32 12, label %bb.p
    i32 15, label %bb.r
    i32 16, label %bb.s
    i32 17, label %bb.t
    i32 18, label %bb.u
  ]

bb.j:                                             ; preds = %bb.i
  switch i32 %i.z, label %.thread [
    i32 2, label %bb.k
    i32 3, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ai = load <2 x float>, ptr %i.ah, align 4    ; 2 uses
  %i.aj = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 5.000000e-02) ; 2 uses
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.ai ; 3 uses
  %i.am = load <2 x float>, ptr %3, align 4       ; 2 uses
  %i.an = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.al
  %i.ao = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.an ; 4 uses
  %i.ap = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ao) #31 ; 2 uses
  %i.aq = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.al ; 2 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.aq, %i.ao
  %foldExtExtBinop347 = fmul reassoc nsz arcp contract afn <2 x float> %i.aq, %i.ao
  %shift = shufflevector <2 x float> %foldExtExtBinop347, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop349 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop
  %i.ar = extractelement <2 x float> %foldExtExtBinop349, i64 0
  %i.as = fmul reassoc nsz arcp contract afn float %i.ap, %i.ap
  %i.at = fdiv reassoc nsz arcp contract afn float %i.ar, %i.as ; 3 uses
  %i.au = fcmp reassoc nsz arcp contract afn ogt float %i.at, 0.000000e+00
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.at, 1.000000e+00
  %or.cond = and i1 %i.au, %i.av
  br i1 %or.cond, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.aw = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.ax, %i.ao
  %i.az = fadd reassoc nsz arcp contract afn <2 x float> %i.al, %i.ay
  %i.ba = fsub reassoc nsz arcp contract afn <2 x float> %i.az, %i.am
  %i.bb = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ba) #31 ; 2 uses
  %i.bc = fcmp reassoc nsz arcp contract afn olt float %i.bb, %.1328
  br i1 %i.bc, label %.thread.sink.split, label %.thread

bb.m:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %i.bg = load <2 x float>, ptr %i.bd, align 4    ; 2 uses
  %i.bh = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.bg
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, splat (float 5.000000e-02) ; 2 uses
  %i.bj = fadd reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bg ; 4 uses
  %i.bk = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.bi ; 2 uses
  %i.bl = load <2 x float>, ptr %i.be, align 4    ; 4 uses
  %i.bm = load <2 x float>, ptr %i.bf, align 4    ; 4 uses
  %i.bn = load <2 x float>, ptr %3, align 4       ; 3 uses
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bj
  %i.bp = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.bo) #31
  %i.bq = fneg reassoc nsz arcp contract afn <2 x float> %i.bk
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.073.i = phi i32 [ 0, %bb.m ], [ %i.cg, %bb.n ] ; 2 uses
  %.03972.i = phi float [ %i.bp, %bb.m ], [ %spec.select44.i, %bb.n ] ; 2 uses
  %.04071.i = phi float [ 0.000000e+00, %bb.m ], [ %spec.select.i, %bb.n ]
  %i.br = uitofp nneg i32 %.073.i to double
  %i.bs = fmul reassoc nnan nsz arcp contract afn double %i.br, 1.000000e-02
  %i.bt = fptrunc reassoc nsz arcp contract afn double %i.bs to float ; 3 uses
  %i.bu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bt
  %5 = insertelement <4 x float> poison, float %i.bt, i64 0
  %6 = insertelement <4 x float> %5, float %i.bu, i64 1 ; 3 uses
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %8 = shufflevector <4 x float> %6, <4 x float> <float poison, float 3.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 1>
  %9 = fmul reassoc nsz arcp contract afn <4 x float> %7, %8 ; 2 uses
  %10 = shufflevector <4 x float> %6, <4 x float> %9, <4 x i32> <i32 0, i32 4, i32 5, i32 1>
  %11 = fmul reassoc nsz arcp contract afn <4 x float> %9, %10 ; 4 uses
  %i.bv = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bv, %i.bq
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bm, %12
  %13 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, %13
  %i.bz = fadd reassoc nsz arcp contract afn <2 x float> %i.bx, %i.by
  %14 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ca = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, %14
  %i.cb = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.ca
  %i.cc = fsub reassoc nsz arcp contract afn <2 x float> %i.bw, %i.cb
  %i.cd = fadd reassoc nsz arcp contract afn <2 x float> %i.cc, %i.bn
  %i.ce = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.cd) #31 ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.ce, %.03972.i ; 2 uses
  %spec.select.i = select nsz i1 %i.cf, float %i.bt, float %.04071.i ; 4 uses
  %spec.select44.i = select nsz i1 %i.cf, float %i.ce, float %.03972.i
  %i.cg = add nuw nsw i32 %.073.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cg, 100
  br i1 %exitcond.not.i, label %find_nearest_on_curve_t.exit, label %bb.n

find_nearest_on_curve_t.exit:                     ; preds = %bb.n
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %spec.select.i, 0.000000e+00
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %spec.select.i, 1.000000e+00
  %or.cond3 = and i1 %i.ch, %i.ci
  br i1 %or.cond3, label %bb.o, label %.thread

bb.o:                                             ; preds = %find_nearest_on_curve_t.exit
  %i.cj = fsub reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bj
  %i.ck = fsub reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bl
  %i.cl = fsub reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bm
  %i.cm = insertelement <2 x float> poison, float %spec.select.i, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, %i.cj
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.co, %i.bj ; 2 uses
  %i.cq = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, %i.ck
  %i.cr = fadd reassoc nsz arcp contract afn <2 x float> %i.cq, %i.bl ; 3 uses
  %i.cs = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, %i.cl
  %i.ct = fadd reassoc nsz arcp contract afn <2 x float> %i.bm, %i.cs
  %i.cu = fsub reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cp
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cn
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cp ; 2 uses
  %i.cx = fsub reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cr
  %i.cy = fmul reassoc nsz arcp contract afn <2 x float> %i.cx, %i.cn
  %i.cz = fadd reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cy
  %i.da = fsub reassoc nsz arcp contract afn <2 x float> %i.cz, %i.cw
  %i.db = fmul reassoc nsz arcp contract afn <2 x float> %i.da, %i.cn
  %i.dc = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.db
  %i.dd = fsub reassoc nsz arcp contract afn <2 x float> %i.dc, %i.bn
  %i.de = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.dd) #31 ; 2 uses
  %i.df = fcmp reassoc nsz arcp contract afn olt float %i.de, %.1328
  br i1 %i.df, label %.thread.sink.split, label %.thread

bb.p:                                             ; preds = %bb.i
  %switch = icmp ult i32 %i.z, 4
  br i1 %switch, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.dg = load <2 x float>, ptr %3, align 4
  %i.dh = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.dg
  %i.di = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.dh) #31 ; 2 uses
  %i.dj = fcmp reassoc nsz arcp contract afn olt float %i.di, %.1328
  br i1 %i.dj, label %.sink.split, label %bb.v

bb.r:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.dl = load <2 x float>, ptr %i.dk, align 4
  %i.dm = load <2 x float>, ptr %3, align 4
  %i.dn = fsub reassoc nsz arcp contract afn <2 x float> %i.dl, %i.dm
  %i.do = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.dn) #31 ; 2 uses
  %i.dp = fcmp reassoc nsz arcp contract afn olt float %i.do, %.1328
  br i1 %i.dp, label %.sink.split, label %bb.v

bb.s:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !94
  %i.dt = load <2 x float>, ptr %i.dq, align 4
  %i.du = fsub reassoc nsz arcp contract afn <2 x float> %i.dt, %i.ag
  %i.dv = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul reassoc nsz arcp contract afn <2 x float> %i.dw, %i.du
  %i.dy = fadd reassoc nsz arcp contract afn <2 x float> %i.ag, %i.dx
  %i.dz = load <2 x float>, ptr %3, align 4
  %i.ea = fsub reassoc nsz arcp contract afn <2 x float> %i.dy, %i.dz
  %i.eb = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ea) #31 ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn olt float %i.eb, %.1328
  br i1 %i.ec, label %.sink.split, label %bb.v

bb.t:                                             ; preds = %bb.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.ee = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !95
  %i.eg = load <2 x float>, ptr %i.ed, align 4
  %i.eh = fsub reassoc nsz arcp contract afn <2 x float> %i.eg, %i.ag
  %i.ei = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fmul reassoc nsz arcp contract afn <2 x float> %i.ej, %i.eh
  %i.el = fadd reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ek
  %i.em = load <2 x float>, ptr %3, align 4
  %i.en = fsub reassoc nsz arcp contract afn <2 x float> %i.el, %i.em
  %i.eo = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.en) #31 ; 2 uses
  %i.ep = fcmp reassoc nsz arcp contract afn olt float %i.eo, %.1328
  br i1 %i.ep, label %.sink.split, label %bb.v

bb.u:                                             ; preds = %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.er = load double, ptr %i.t, align 8, !tbaa !161
  %i.es = fmul reassoc nsz arcp contract afn double %i.er, 5.000000e+00
  %i.et = fptrunc reassoc nsz arcp contract afn double %i.es to float
  %i.eu = load <2 x float>, ptr %i.eq, align 4    ; 2 uses
  %i.ev = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.eu ; 2 uses
  %i.ew = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ev) #31
  %i.ex = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, %i.ey
  %i.fa = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fdiv reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fb
  %i.fd = load <2 x float>, ptr %3, align 4
  %i.fe = fsub reassoc nsz arcp contract afn <2 x float> %i.eu, %i.fd
  %i.ff = fadd reassoc nsz arcp contract afn <2 x float> %i.fe, %i.fc
  %i.fg = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ff) #31 ; 2 uses
  %i.fh = fcmp reassoc nsz arcp contract afn olt float %i.fg, %.1328
  br i1 %i.fh, label %.sink.split, label %bb.v

.sink.split:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.11.ph = phi float [ %i.eo, %bb.t ], [ %i.eb, %bb.s ], [ %i.do, %bb.r ], [ %i.di, %bb.q ], [ %i.fg, %bb.u ]
  store i32 %i.j, ptr %4, align 8, !tbaa !176
  store ptr %i.u, ptr %i.a, align 8, !tbaa !178
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.u, %bb.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.11 = phi nsz float [ %.1328, %bb.i ], [ %.1328, %bb.u ], [ %.1328, %bb.r ], [ %.1328, %bb.s ], [ %.1328, %bb.t ], [ %.1328, %bb.q ], [ %.11.ph, %.sink.split ] ; 8 uses
  %i.fi = icmp eq i32 %i.z, 3
  br i1 %i.fi, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  switch i32 %i.j, label %.thread [
    i32 13, label %bb.x
    i32 14, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %.not255 = icmp eq ptr %.0.i, null
  br i1 %.not255, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !179
  %i.fl = icmp eq i32 %i.fk, 3
  br i1 %i.fl, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fm = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  %i.fn = load <2 x float>, ptr %i.fm, align 4
  %i.fo = load <2 x float>, ptr %3, align 4
  %i.fp = fsub reassoc nsz arcp contract afn <2 x float> %i.fn, %i.fo
  %i.fq = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fp) #31 ; 2 uses
  %i.fr = fcmp reassoc nsz arcp contract afn olt float %i.fq, %.11
  br i1 %i.fr, label %.thread.sink.split, label %.thread

bb.aa:                                            ; preds = %bb.w
  %i.fs = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !179
  %.not256 = icmp eq i32 %i.ft, 3
  br i1 %.not256, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %i.fv = load <2 x float>, ptr %i.fu, align 4
  %i.fw = load <2 x float>, ptr %3, align 4
  %i.fx = fsub reassoc nsz arcp contract afn <2 x float> %i.fv, %i.fw
  %i.fy = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fx) #31 ; 2 uses
  %i.fz = fcmp reassoc nsz arcp contract afn olt float %i.fy, %.11
  br i1 %i.fz, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.ab, %bb.z, %bb.o, %bb.l
  %.sink345 = phi i32 [ 5, %bb.l ], [ 5, %bb.o ], [ 13, %bb.z ], [ 14, %bb.ab ]
  %.16.ph.ph = phi float [ %i.bb, %bb.l ], [ %i.de, %bb.o ], [ %i.fq, %bb.z ], [ %i.fy, %bb.ab ]
  store i32 %.sink345, ptr %4, align 8, !tbaa !176
  store ptr %i.u, ptr %i.a, align 8, !tbaa !178
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.w, %find_nearest_on_curve_t.exit, %bb.o, %bb.y, %bb.z, %bb.l, %bb.k, %bb.j, %bb.p, %bb.g, %bb.e, %bb.h, %bb.ab, %bb.aa, %bb.v
  %.16.ph = phi float [ %.1328, %bb.j ], [ %.1328, %bb.g ], [ %.11, %bb.ab ], [ %.1328, %find_nearest_on_curve_t.exit ], [ %.11, %bb.w ], [ %.11, %bb.aa ], [ %.11, %bb.v ], [ %.1328, %bb.h ], [ %.1328, %bb.e ], [ %.1328, %bb.o ], [ %.1328, %bb.k ], [ %.1328, %bb.p ], [ %.1328, %bb.l ], [ %.11, %bb.y ], [ %.11, %bb.z ], [ %.16.ph.ph, %.thread.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %.thread, %bb.b
  %.18 = phi nsz float [ %.0331, %bb.b ], [ %.16.ph, %.thread ], [ %.1328, %bb.c ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0228330, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !83 ; 2 uses
  %.not = icmp eq ptr %i.gb, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

bb.ac:                                            ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define internal fastcc float @find_nearest_on_line_t(<2 x float> noundef %0, <2 x float> noundef %1, <2 x float> noundef %2) unnamed_addr #12 {
bb.a:
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %1, %0 ; 2 uses
  %foldExtExtBinop24 = fsub reassoc nsz arcp contract afn <2 x float> %2, %0
end_hunk_0
