Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@process:bb.a
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 4, !tbaa !84
  %i.f = sext i32 %i.e to i64
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.f, ptr noundef %4, ptr noundef %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.a, align 8, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !15
  %i.i = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr i8, ptr %1, i64 16
  %.val23 = load ptr, ptr %i.j, align 16, !tbaa !33
  call fastcc void @_build_global_distortion_map(ptr noundef %0, ptr %.val, ptr %.val23, float noundef %i.h, ptr noundef %5, ptr noundef %6, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %i.o = icmp ne i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp ne i32 %i.q, 0
  %or.cond = select i1 %i.o, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val24 = load i32, ptr %i.b, align 4, !tbaa !84
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
  store ptr %i.a, ptr %i.b, align 8, !tbaa !88
  store i32 -999, ptr %i.a, align 4, !tbaa !228
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88
  tail call void @free(ptr noundef %i.b) #30
  store ptr null, ptr %i.a, align 8, !tbaa !88
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
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1432
  %i.e = load double, ptr %i.d, align 8, !tbaa !132
  %i.f = fmul reassoc nsz arcp contract afn double %i.e, 2.500000e+01
  %i.g = fcmp reassoc nsz arcp contract afn olt double %i.f, %.0.lcssa
  br i1 %i.g, label %bb.ac, label %bb.ad

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.0331 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.18, %.loopexit ] ; 2 uses
  %.0228330 = phi ptr [ %2, %.lr.ph ], [ %i.gj, %.loopexit ] ; 2 uses
  %i.h = load ptr, ptr %.0228330, align 8, !tbaa !74
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = and i64 %i.i, 4294967295
  %i.l = getelementptr inbounds nuw [56 x i8], ptr @dt_liquify_layers, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !135  ; 3 uses
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
  %.val = load i8, ptr %i.v, align 4, !tbaa !139  ; 2 uses
  %i.w = icmp eq i8 %.val, -1
  %i.x = sext i8 %.val to i64
  %i.y = getelementptr inbounds [76 x i8], ptr %1, i64 %i.x ; 5 uses
  %.0.i = select i1 %i.w, ptr null, ptr %i.y      ; 2 uses
  %i.z = load i32, ptr %i.u, align 4, !tbaa !140  ; 4 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not250, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !141
  %.not251 = icmp eq i32 %i.ac, 0
  br i1 %.not251, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not252, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not253 = icmp eq ptr %.0.i, null
  br i1 %.not253, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !141
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
  %5 = fadd reassoc nsz arcp contract afn <2 x float> %i.al, %i.ay
  %6 = fsub reassoc nsz arcp contract afn <2 x float> %5, %i.am
  %i.az = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %6) #31 ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn olt float %i.az, %.1328
  br i1 %i.ba, label %.thread.sink.split, label %.thread

bb.m:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %i.be = load <2 x float>, ptr %i.bb, align 4    ; 2 uses
  %i.bf = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.be
  %i.bg = fmul reassoc nsz arcp contract afn <2 x float> %i.bf, splat (float 5.000000e-02) ; 2 uses
  %i.bh = fadd reassoc nsz arcp contract afn <2 x float> %i.bg, %i.be ; 4 uses
  %i.bi = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.bg ; 2 uses
  %i.bj = load <2 x float>, ptr %i.bc, align 4    ; 4 uses
  %i.bk = load <2 x float>, ptr %i.bd, align 4    ; 4 uses
  %i.bl = load <2 x float>, ptr %3, align 4       ; 3 uses
  %i.bm = fsub reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bh
  %i.bn = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.bm) #31
  %i.bo = fneg reassoc nsz arcp contract afn <2 x float> %i.bi
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.073.i = phi i32 [ 0, %bb.m ], [ %i.ct, %bb.n ] ; 2 uses
  %.03972.i = phi float [ %i.bn, %bb.m ], [ %spec.select44.i, %bb.n ] ; 2 uses
  %.04071.i = phi float [ 0.000000e+00, %bb.m ], [ %spec.select.i, %bb.n ]
  %i.bp = uitofp nsz nneg i32 %.073.i to double
  %i.bq = fmul reassoc nnan nsz arcp contract afn double %i.bp, 1.000000e-02
  %i.br = fptrunc reassoc nsz arcp contract afn double %i.bq to float ; 6 uses
  %i.bs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.br ; 5 uses
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.bs
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bs
  %i.bv = fmul reassoc nnan nsz arcp contract afn float %i.bs, 3.000000e+00 ; 2 uses
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bs, %i.br
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bv
  %i.by = fmul reassoc nsz arcp contract afn float %i.br, %i.br ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.bv, %i.by
  %i.ca = fmul reassoc nsz arcp contract afn float %i.by, %i.br
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul reassoc nsz arcp contract afn <2 x float> %i.cc, %i.bo
  %i.ce = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, %i.cf
  %i.ch = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, %i.ci
  %i.ck = fadd reassoc nsz arcp contract afn <2 x float> %i.cg, %i.cj
  %i.cl = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn <2 x float> %i.ck, %i.cn
  %i.cp = fsub reassoc nsz arcp contract afn <2 x float> %i.cd, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.bl
  %i.cr = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.cq) #31 ; 2 uses
  %i.cs = fcmp reassoc nsz arcp contract afn olt float %i.cr, %.03972.i ; 2 uses
  %spec.select.i = select nsz i1 %i.cs, float %i.br, float %.04071.i ; 4 uses
  %spec.select44.i = select nsz i1 %i.cs, float %i.cr, float %.03972.i
  %i.ct = add nuw nsw i32 %.073.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, 100
  br i1 %exitcond.not.i, label %find_nearest_on_curve_t.exit, label %bb.n

find_nearest_on_curve_t.exit:                     ; preds = %bb.n
  %i.cu = fcmp reassoc nsz arcp contract afn ogt float %spec.select.i, 0.000000e+00
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %spec.select.i, 1.000000e+00
  %or.cond3 = and i1 %i.cu, %i.cv
  br i1 %or.cond3, label %bb.o, label %.thread

bb.o:                                             ; preds = %find_nearest_on_curve_t.exit
  %i.cw = fsub reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bh
  %i.cx = fsub reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bj
  %i.cy = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bk
  %i.cz = insertelement <2 x float> poison, float %spec.select.i, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.db = fmul reassoc nsz arcp contract afn <2 x float> %i.da, %i.cw
  %i.dc = fadd reassoc nsz arcp contract afn <2 x float> %i.db, %i.bh ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn <2 x float> %i.da, %i.cx
  %i.de = fadd reassoc nsz arcp contract afn <2 x float> %i.dd, %i.bj ; 3 uses
  %i.df = fmul reassoc nsz arcp contract afn <2 x float> %i.da, %i.cy
  %7 = fadd reassoc nsz arcp contract afn <2 x float> %i.bk, %i.df
  %8 = fsub reassoc nsz arcp contract afn <2 x float> %i.de, %i.dc
  %9 = fmul reassoc nsz arcp contract afn <2 x float> %8, %i.da
  %i.dg = fadd reassoc nsz arcp contract afn <2 x float> %9, %i.dc ; 2 uses
  %i.dh = fsub reassoc nsz arcp contract afn <2 x float> %7, %i.de
  %i.di = fmul reassoc nsz arcp contract afn <2 x float> %i.dh, %i.da
  %i.dj = fadd reassoc nsz arcp contract afn <2 x float> %i.de, %i.di
  %i.dk = fsub reassoc nsz arcp contract afn <2 x float> %i.dj, %i.dg
  %i.dl = fmul reassoc nsz arcp contract afn <2 x float> %i.dk, %i.da
  %10 = fadd reassoc nsz arcp contract afn <2 x float> %i.dg, %i.dl
  %11 = fsub reassoc nsz arcp contract afn <2 x float> %10, %i.bl
  %i.dm = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %11) #31 ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn olt float %i.dm, %.1328
  br i1 %i.dn, label %.thread.sink.split, label %.thread

bb.p:                                             ; preds = %bb.i
  %switch = icmp ult i32 %i.z, 4
  br i1 %switch, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.do = load <2 x float>, ptr %3, align 4
  %i.dp = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.do
  %i.dq = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.dp) #31 ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dq, %.1328
  br i1 %i.dr, label %.sink.split, label %bb.v

bb.r:                                             ; preds = %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.dt = load <2 x float>, ptr %i.ds, align 4
  %i.du = load <2 x float>, ptr %3, align 4
  %i.dv = fsub reassoc nsz arcp contract afn <2 x float> %i.dt, %i.du
  %i.dw = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.dv) #31 ; 2 uses
  %i.dx = fcmp reassoc nsz arcp contract afn olt float %i.dw, %.1328
  br i1 %i.dx, label %.sink.split, label %bb.v

bb.s:                                             ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !79
  %i.eb = load <2 x float>, ptr %i.dy, align 4
  %i.ec = fsub reassoc nsz arcp contract afn <2 x float> %i.eb, %i.ag
  %i.ed = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = fmul reassoc nsz arcp contract afn <2 x float> %i.ee, %i.ec
  %i.eg = fadd reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ef
  %i.eh = load <2 x float>, ptr %3, align 4
  %i.ei = fsub reassoc nsz arcp contract afn <2 x float> %i.eg, %i.eh
  %i.ej = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ei) #31 ; 2 uses
  %i.ek = fcmp reassoc nsz arcp contract afn olt float %i.ej, %.1328
  br i1 %i.ek, label %.sink.split, label %bb.v

bb.t:                                             ; preds = %bb.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.em = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.en = load float, ptr %i.em, align 4, !tbaa !80
  %i.eo = load <2 x float>, ptr %i.el, align 4
  %i.ep = fsub reassoc nsz arcp contract afn <2 x float> %i.eo, %i.ag
  %i.eq = insertelement <2 x float> poison, float %i.en, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul reassoc nsz arcp contract afn <2 x float> %i.er, %i.ep
  %i.et = fadd reassoc nsz arcp contract afn <2 x float> %i.ag, %i.es
  %i.eu = load <2 x float>, ptr %3, align 4
  %i.ev = fsub reassoc nsz arcp contract afn <2 x float> %i.et, %i.eu
  %i.ew = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ev) #31 ; 2 uses
  %i.ex = fcmp reassoc nsz arcp contract afn olt float %i.ew, %.1328
  br i1 %i.ex, label %.sink.split, label %bb.v

bb.u:                                             ; preds = %bb.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.ez = load double, ptr %i.t, align 8, !tbaa !132
  %i.fa = fmul reassoc nsz arcp contract afn double %i.ez, 5.000000e+00
  %i.fb = fptrunc reassoc nsz arcp contract afn double %i.fa to float
  %i.fc = load <2 x float>, ptr %i.ey, align 4    ; 2 uses
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.fc ; 2 uses
  %i.fe = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fd) #31
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fg
  %i.fi = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fdiv reassoc nsz arcp contract afn <2 x float> %i.fh, %i.fj
  %i.fl = load <2 x float>, ptr %3, align 4
  %i.fm = fsub reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fl
  %i.fn = fadd reassoc nsz arcp contract afn <2 x float> %i.fm, %i.fk
  %i.fo = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fn) #31 ; 2 uses
  %i.fp = fcmp reassoc nsz arcp contract afn olt float %i.fo, %.1328
  br i1 %i.fp, label %.sink.split, label %bb.v

.sink.split:                                      ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.11.ph = phi float [ %i.ew, %bb.t ], [ %i.ej, %bb.s ], [ %i.dw, %bb.r ], [ %i.dq, %bb.q ], [ %i.fo, %bb.u ]
  store i32 %i.j, ptr %4, align 8, !tbaa !143
  store ptr %i.u, ptr %i.a, align 8, !tbaa !144
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.u, %bb.i, %bb.t, %bb.s, %bb.r, %bb.q
  %.11 = phi nsz float [ %.1328, %bb.i ], [ %.1328, %bb.u ], [ %.1328, %bb.r ], [ %.1328, %bb.s ], [ %.1328, %bb.t ], [ %.1328, %bb.q ], [ %.11.ph, %.sink.split ] ; 8 uses
  %i.fq = icmp eq i32 %i.z, 3
  br i1 %i.fq, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  switch i32 %i.j, label %.thread [
    i32 13, label %bb.x
    i32 14, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %.not255 = icmp eq ptr %.0.i, null
  br i1 %.not255, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !145
  %i.ft = icmp eq i32 %i.fs, 3
  br i1 %i.ft, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  %i.fv = load <2 x float>, ptr %i.fu, align 4
  %i.fw = load <2 x float>, ptr %3, align 4
  %i.fx = fsub reassoc nsz arcp contract afn <2 x float> %i.fv, %i.fw
  %i.fy = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fx) #31 ; 2 uses
  %i.fz = fcmp reassoc nsz arcp contract afn olt float %i.fy, %.11
  br i1 %i.fz, label %.thread.sink.split, label %.thread

bb.aa:                                            ; preds = %bb.w
  %i.ga = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !145
  %.not256 = icmp eq i32 %i.gb, 3
  br i1 %.not256, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gc = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %i.gd = load <2 x float>, ptr %i.gc, align 4
  %i.ge = load <2 x float>, ptr %3, align 4
  %i.gf = fsub reassoc nsz arcp contract afn <2 x float> %i.gd, %i.ge
  %i.gg = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.gf) #31 ; 2 uses
  %i.gh = fcmp reassoc nsz arcp contract afn olt float %i.gg, %.11
  br i1 %i.gh, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.ab, %bb.z, %bb.o, %bb.l
  %.sink345 = phi i32 [ 5, %bb.l ], [ 5, %bb.o ], [ 13, %bb.z ], [ 14, %bb.ab ]
  %.16.ph.ph = phi float [ %i.az, %bb.l ], [ %i.dm, %bb.o ], [ %i.fy, %bb.z ], [ %i.gg, %bb.ab ]
  store i32 %.sink345, ptr %4, align 8, !tbaa !143
  store ptr %i.u, ptr %i.a, align 8, !tbaa !144
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.w, %find_nearest_on_curve_t.exit, %bb.o, %bb.y, %bb.z, %bb.l, %bb.k, %bb.j, %bb.p, %bb.g, %bb.e, %bb.h, %bb.ab, %bb.aa, %bb.v
  %.16.ph = phi float [ %.1328, %bb.j ], [ %.1328, %bb.g ], [ %.11, %bb.ab ], [ %.1328, %find_nearest_on_curve_t.exit ], [ %.11, %bb.w ], [ %.11, %bb.aa ], [ %.11, %bb.v ], [ %.1328, %bb.h ], [ %.1328, %bb.e ], [ %.1328, %bb.o ], [ %.1328, %bb.k ], [ %.1328, %bb.p ], [ %.1328, %bb.l ], [ %.11, %bb.y ], [ %.11, %bb.z ], [ %.16.ph.ph, %.thread.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %.thread, %bb.b
  %.18 = phi nsz float [ %.0331, %bb.b ], [ %.16.ph, %.thread ], [ %.1328, %bb.c ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0228330, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !75 ; 2 uses
  %.not = icmp eq ptr %i.gj, null
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
  %i.a = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  %i.b = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.c = fsub reassoc nsz arcp contract afn <2 x float> %i.a, %i.b ; 3 uses
  %i.d = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.c, <2 x i32> <i32 0, i32 3>
  %i.e = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.d) #31 ; 2 uses
  %foldExtExtBinop26 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop24, %foldExtExtBinop
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop28 = fmul reassoc nsz arcp contract afn <2 x float> %i.c, %shift
  %foldExtExtBinop30 = fadd reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop26, %foldExtExtBinop28
  %i.f = extractelement <2 x float> %foldExtExtBinop30, i64 0
  %i.g = fmul reassoc nsz arcp contract afn float %i.e, %i.e
  %i.h = fdiv reassoc nsz arcp contract afn float %i.f, %i.g
  ret float %i.h
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare float @cabsf(<2 x float> noundef) local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define internal fastcc float @find_nearest_on_curve_t(<2 x float> noundef %0, <2 x float> noundef %1, <2 x float> noundef %2, <2 x float> noundef %3, <2 x float> noundef %4) unnamed_addr #14 {
bb.a:
  %i.a = fsub reassoc nsz arcp contract afn <2 x float> %4, %0
  %i.b = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.a) #31
  %i.c = fneg reassoc nsz arcp contract afn <2 x float> %3
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret float %spec.select

bb.c:                                             ; preds = %bb.a, %bb.c
  %.073 = phi i32 [ 0, %bb.a ], [ %i.ah, %bb.c ]  ; 2 uses
  %.03972 = phi float [ %i.b, %bb.a ], [ %spec.select44, %bb.c ] ; 2 uses
  %.04071 = phi float [ 0.000000e+00, %bb.a ], [ %spec.select, %bb.c ]
  %i.d = uitofp nsz nneg i32 %.073 to double
  %i.e = fmul reassoc nnan nsz arcp contract afn double %i.d, 1.000000e-02
  %i.f = fptrunc reassoc nsz arcp contract afn double %i.e to float ; 6 uses
  %i.g = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.f ; 5 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.g
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, %i.g
  %i.j = fmul reassoc nnan nsz arcp contract afn float %i.g, 3.000000e+00 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn float %i.g, %i.f
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, %i.j
  %i.m = fmul reassoc nsz arcp contract afn float %i.f, %i.f ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.j, %i.m
  %i.o = fmul reassoc nsz arcp contract afn float %i.m, %i.f
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul reassoc nsz arcp contract afn <2 x float> %i.q, %i.c
  %i.s = insertelement <2 x float> poison, float %i.n, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %2, %i.t
  %i.v = insertelement <2 x float> poison, float %i.i, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul reassoc nsz arcp contract afn <2 x float> %0, %i.w
  %i.y = fadd reassoc nsz arcp contract afn <2 x float> %i.u, %i.x
  %i.z = insertelement <2 x float> poison, float %i.l, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul reassoc nsz arcp contract afn <2 x float> %1, %i.aa
  %i.ac = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.ab
  %i.ad = fsub reassoc nsz arcp contract afn <2 x float> %i.r, %i.ac
  %i.ae = fadd reassoc nsz arcp contract afn <2 x float> %i.ad, %4
  %i.af = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ae) #31 ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn olt float %i.af, %.03972 ; 2 uses
  %spec.select = select nsz i1 %i.ag, float %i.f, float %.04071 ; 2 uses
  %spec.select44 = select nsz i1 %i.ag, float %i.af, float %.03972
  %i.ah = add nuw nsw i32 %.073, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, 100
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @casteljau(float %.0.val, float %.4.val, ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2, float noundef %3) unnamed_addr #15 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4            ; 3 uses
  %i.d = fsub reassoc nsz arcp contract afn float %i.a, %.0.val
  %i.e = fsub reassoc nsz arcp contract afn float %i.c, %.4.val
  %i.f = fmul reassoc nsz arcp contract afn float %i.d, %3
  %i.g = fmul reassoc nsz arcp contract afn float %i.e, %3
  %i.h = fadd reassoc nsz arcp contract afn float %i.f, %.0.val ; 3 uses
  %i.i = fadd reassoc nsz arcp contract afn float %i.g, %.4.val ; 3 uses
  %i.j = load float, ptr %1, align 4              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4            ; 3 uses
  %i.m = fsub reassoc nsz arcp contract afn float %i.j, %i.a
  %i.n = fsub reassoc nsz arcp contract afn float %i.l, %i.c
  %i.o = fmul reassoc nsz arcp contract afn float %i.m, %3
  %i.p = fmul reassoc nsz arcp contract afn float %i.n, %3
  %i.q = fadd reassoc nsz arcp contract afn float %i.o, %i.a ; 3 uses
  %i.r = fadd reassoc nsz arcp contract afn float %i.p, %i.c ; 3 uses
  %i.s = load float, ptr %2, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.u = load float, ptr %i.t, align 4
  %i.v = fsub reassoc nsz arcp contract afn float %i.s, %i.j
  %i.w = fsub reassoc nsz arcp contract afn float %i.u, %i.l
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %3
  %i.y = fmul reassoc nsz arcp contract afn float %i.w, %3
  %4 = fadd reassoc nsz arcp contract afn float %i.j, %i.x
  %5 = fadd reassoc nsz arcp contract afn float %i.l, %i.y
  %i.z = fsub reassoc nsz arcp contract afn float %i.q, %i.h
  %i.aa = fsub reassoc nsz arcp contract afn float %i.r, %i.i
  %i.ab = fmul reassoc nsz arcp contract afn float %i.z, %3
  %i.ac = fmul reassoc nsz arcp contract afn float %i.aa, %3
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ab, %i.h ; 3 uses
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ac, %i.i ; 3 uses
  %i.af = fsub reassoc nsz arcp contract afn float %4, %i.q
  %i.ag = fsub reassoc nsz arcp contract afn float %5, %i.r
  %i.ah = fmul reassoc nsz arcp contract afn float %i.af, %3
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ag, %3
  %i.aj = fadd reassoc nsz arcp contract afn float %i.q, %i.ah
  %i.ak = fadd reassoc nsz arcp contract afn float %i.r, %i.ai
  %i.al = fsub reassoc nsz arcp contract afn float %i.aj, %i.ad
  %i.am = fsub reassoc nsz arcp contract afn float %i.ak, %i.ae
  %i.an = fmul reassoc nsz arcp contract afn float %i.al, %3
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, %3
  %i.ap = fadd reassoc nsz arcp contract afn float %i.an, %i.ad
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ao, %i.ae
  store float %i.h, ptr %0, align 4
  store float %i.i, ptr %i.b, align 4
  store float %i.ad, ptr %1, align 4
  store float %i.ae, ptr %i.k, align 4
  store float %i.ap, ptr %2, align 4
  store float %i.aq, ptr %i.t, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_hit_test_paths(ptr nofree readnone captures(none) %0, ptr noundef %1, <2 x float> noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca { float, float }, align 8         ; 2 uses
  store <2 x float> %2, ptr %i.a, align 8
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 40), align 8, !tbaa !135
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @g_list_prepend(ptr noundef null, ptr noundef null) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]  ; 2 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 96), align 16, !tbaa !135
  %i.f = and i32 %i.e, 1
  %.not.1 = icmp eq i32 %i.f, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @g_list_prepend(ptr noundef %.1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi ptr [ %i.g, %bb.d ], [ %.1, %bb.c ] ; 2 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 152), align 8, !tbaa !135
  %i.i = and i32 %i.h, 1
  %.not.2 = icmp eq i32 %i.i, 0
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @g_list_prepend(ptr noundef %.1.1, ptr noundef nonnull inttoptr (i64 2 to ptr)) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi ptr [ %i.j, %bb.f ], [ %.1.1, %bb.e ] ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 208), align 16, !tbaa !135
  %i.l = and i32 %i.k, 1
  %.not.3 = icmp eq i32 %i.l, 0
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @g_list_prepend(ptr noundef %.1.2, ptr noundef nonnull inttoptr (i64 3 to ptr)) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi ptr [ %i.m, %bb.h ], [ %.1.2, %bb.g ] ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 264), align 8, !tbaa !135
  %i.o = and i32 %i.n, 1
  %.not.4 = icmp eq i32 %i.o, 0
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @g_list_prepend(ptr noundef %.1.3, ptr noundef nonnull inttoptr (i64 4 to ptr)) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.4 = phi ptr [ %i.p, %bb.j ], [ %.1.3, %bb.i ] ; 2 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 320), align 16, !tbaa !135
  %i.r = and i32 %i.q, 1
  %.not.5 = icmp eq i32 %i.r, 0
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @g_list_prepend(ptr noundef %.1.4, ptr noundef nonnull inttoptr (i64 5 to ptr)) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.5 = phi ptr [ %i.s, %bb.l ], [ %.1.4, %bb.k ] ; 2 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 376), align 8, !tbaa !135
  %i.u = and i32 %i.t, 1
  %.not.6 = icmp eq i32 %i.u, 0
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = tail call ptr @g_list_prepend(ptr noundef %.1.5, ptr noundef nonnull inttoptr (i64 6 to ptr)) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.6 = phi ptr [ %i.v, %bb.n ], [ %.1.5, %bb.m ] ; 2 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 432), align 16, !tbaa !135
  %i.x = and i32 %i.w, 1
  %.not.7 = icmp eq i32 %i.x, 0
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = tail call ptr @g_list_prepend(ptr noundef %.1.6, ptr noundef nonnull inttoptr (i64 7 to ptr)) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.7 = phi ptr [ %i.y, %bb.p ], [ %.1.6, %bb.o ] ; 2 uses
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 488), align 8, !tbaa !135
  %i.aa = and i32 %i.z, 1
  %.not.8 = icmp eq i32 %i.aa, 0
  br i1 %.not.8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = tail call ptr @g_list_prepend(ptr noundef %.1.7, ptr noundef nonnull inttoptr (i64 8 to ptr)) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.8 = phi ptr [ %i.ab, %bb.r ], [ %.1.7, %bb.q ] ; 2 uses
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 544), align 16, !tbaa !135
  %i.ad = and i32 %i.ac, 1
  %.not.9 = icmp eq i32 %i.ad, 0
  br i1 %.not.9, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = tail call ptr @g_list_prepend(ptr noundef %.1.8, ptr noundef nonnull inttoptr (i64 9 to ptr)) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.9 = phi ptr [ %i.ae, %bb.t ], [ %.1.8, %bb.s ] ; 2 uses
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 600), align 8, !tbaa !135
  %i.ag = and i32 %i.af, 1
  %.not.10 = icmp eq i32 %i.ag, 0
  br i1 %.not.10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = tail call ptr @g_list_prepend(ptr noundef %.1.9, ptr noundef nonnull inttoptr (i64 10 to ptr)) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.10 = phi ptr [ %i.ah, %bb.v ], [ %.1.9, %bb.u ] ; 2 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 656), align 16, !tbaa !135
  %i.aj = and i32 %i.ai, 1
  %.not.11 = icmp eq i32 %i.aj, 0
  br i1 %.not.11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = tail call ptr @g_list_prepend(ptr noundef %.1.10, ptr noundef nonnull inttoptr (i64 11 to ptr)) #30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.11 = phi ptr [ %i.ak, %bb.x ], [ %.1.10, %bb.w ] ; 2 uses
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 712), align 8, !tbaa !135
  %i.am = and i32 %i.al, 1
  %.not.12 = icmp eq i32 %i.am, 0
  br i1 %.not.12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = tail call ptr @g_list_prepend(ptr noundef %.1.11, ptr noundef nonnull inttoptr (i64 12 to ptr)) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.12 = phi ptr [ %i.an, %bb.z ], [ %.1.11, %bb.y ] ; 2 uses
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 768), align 16, !tbaa !135
  %i.ap = and i32 %i.ao, 1
  %.not.13 = icmp eq i32 %i.ap, 0
  br i1 %.not.13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = tail call ptr @g_list_prepend(ptr noundef %.1.12, ptr noundef nonnull inttoptr (i64 13 to ptr)) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.13 = phi ptr [ %i.aq, %bb.ab ], [ %.1.12, %bb.aa ] ; 2 uses
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 824), align 8, !tbaa !135
  %i.as = and i32 %i.ar, 1
  %.not.14 = icmp eq i32 %i.as, 0
  br i1 %.not.14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.at = tail call ptr @g_list_prepend(ptr noundef %.1.13, ptr noundef nonnull inttoptr (i64 14 to ptr)) #30
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.14 = phi ptr [ %i.at, %bb.ad ], [ %.1.13, %bb.ac ] ; 2 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 880), align 16, !tbaa !135
  %i.av = and i32 %i.au, 1
  %.not.15 = icmp eq i32 %i.av, 0
  br i1 %.not.15, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aw = tail call ptr @g_list_prepend(ptr noundef %.1.14, ptr noundef nonnull inttoptr (i64 15 to ptr)) #30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1.15 = phi ptr [ %i.aw, %bb.af ], [ %.1.14, %bb.ae ] ; 2 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 936), align 8, !tbaa !135
  %i.ay = and i32 %i.ax, 1
  %.not.16 = icmp eq i32 %i.ay, 0
  br i1 %.not.16, label %bb.ai, label %bb.ah
end_hunk_0
begin_hunk_1_@node_delete:bb.a

.preheader.i:                                     ; preds = %bb.x
  %i.bb = icmp slt i32 %.2.i, 99
  br i1 %i.bb, label %iter.check, label %node_gc.exit

iter.check:                                       ; preds = %.preheader.i, %bb.q
  %.140.lcssa65.i = phi i32 [ %.2.i, %.preheader.i ], [ %.03946.i.lcssa, %bb.q ]
  %i.bc = sext i32 %.140.lcssa65.i to i64         ; 6 uses
  %i.bd = sub nsw i64 99, %i.bc                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.bd, 8
  br i1 %min.iters.check, label %.lr.ph54.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i64 %i.bd, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.bd, 24
  %n.vec = and i64 %i.bd, -32                     ; 4 uses
  %i.bf = add nsw i64 %n.vec, %i.bc               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.bg = add nsw <8 x i64> %vec.ind, splat (i64 1)
  %i.bh = add nsw <8 x i64> %vec.ind, splat (i64 9)
  %i.bi = add nsw <8 x i64> %vec.ind, splat (i64 17)
  %i.bj = add nsw <8 x i64> %vec.ind, splat (i64 25)
  %wide.gep = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bg
  %wide.gep27 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bh
  %wide.gep28 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bi
  %wide.gep29 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bj
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !140
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true)), !tbaa !140
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep28, <8 x i1> splat (i1 true)), !tbaa !140
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true)), !tbaa !140
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %node_gc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.i.preheader, label %vec.epilog.ph, !prof !192

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.bf, %vec.epilog.iter.check ], [ %i.bc, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.bd, -8                    ; 3 uses
  %i.bl = add nsw i64 %n.vec30, %i.bc
  %broadcast.splatinsert31 = insertelement <8 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat32 = shufflevector <8 x i64> %broadcast.splatinsert31, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction33 = add nsw <8 x i64> %broadcast.splat32, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ]
  %vec.ind35 = phi <8 x i64> [ %induction33, %vec.epilog.ph ], [ %vec.ind.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = add nsw <8 x i64> %vec.ind35, splat (i64 1)
  %wide.gep36 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bm
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep36, <8 x i1> splat (i1 true)), !tbaa !140
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %vec.ind.next38 = add nsw <8 x i64> %vec.ind35, splat (i64 8)
  %i.bn = icmp eq i64 %index.next37, %n.vec30
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.bd, %n.vec30
  br i1 %cmp.n39, label %node_gc.exit, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i.ph = phi i64 [ %i.bc, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph54.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %bb.x
  %.03850.i = phi i32 [ %.1.i, %bb.x ], [ 0, %.lr.ph52.i.preheader ] ; 5 uses
  %.14049.i = phi i32 [ %.2.i, %bb.x ], [ %.14049.i.ph, %.lr.ph52.i.preheader ] ; 4 uses
  %i.bo = sext i32 %.03850.i to i64               ; 2 uses
  %i.bp = getelementptr inbounds [76 x i8], ptr %0, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !140
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.preheader45.i, label %bb.w

.preheader45.i:                                   ; preds = %.lr.ph52.i
  %i.bs = icmp sgt i32 %.14049.i, 0
  br i1 %i.bs, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader45.i
  %wide.trip.count.i = zext nneg i32 %.14049.i to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.v, %.preheader45.i
  %i.bt = add nsw i32 %.14049.i, -1
  br label %bb.x

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.v ] ; 4 uses
  %.not42.i = icmp slt i64 %indvars.iv.i, %i.bo
  br i1 %.not42.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.bu = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.bu, ptr noundef nonnull align 4 dereferenceable(76) %i.bv, i64 76, i1 false), !tbaa.struct !194
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 17 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !190
  %i.by = add i8 %i.bx, -1
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !190
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %.lr.ph.i
  %i.bz = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !139 ; 2 uses
  %i.cc = sext i8 %i.cb to i32
  %.not43.i = icmp sgt i32 %.03850.i, %i.cc
  br i1 %.not43.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %i.cd = add i8 %i.cb, -1
  store i8 %i.cd, ptr %i.ca, align 4, !tbaa !139
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 18 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !177 ; 2 uses
  %i.cg = sext i8 %i.cf to i32
  %.not44.i = icmp sgt i32 %.03850.i, %i.cg
  br i1 %.not44.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = add i8 %i.cf, -1
  store i8 %i.ch, ptr %i.ce, align 2, !tbaa !177
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph52.i
  %i.ci = add nsw i32 %.03850.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i
  %.2.i = phi i32 [ %i.bt, %._crit_edge.i ], [ %.14049.i, %bb.w ] ; 4 uses
  %.1.i = phi i32 [ %.03850.i, %._crit_edge.i ], [ %i.ci, %bb.w ] ; 2 uses
  %.not41.i = icmp sgt i32 %.1.i, %.2.i
  br i1 %.not41.i, label %.preheader.i, label %.lr.ph52.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %.lr.ph54.i ], [ %indvars.iv57.i.ph, %.lr.ph54.i.preheader ]
  %indvars.iv.next58.i = add nsw i64 %indvars.iv57.i, 1 ; 3 uses
  %i.cj = getelementptr inbounds [76 x i8], ptr %0, i64 %indvars.iv.next58.i
  store i32 0, ptr %i.cj, align 4, !tbaa !140
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 99
  br i1 %exitcond60.not.i, label %node_gc.exit, label %.lr.ph54.i, !llvm.loop !250

node_gc.exit:                                     ; preds = %.lr.ph54.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mix_warps(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> noundef %3, float noundef %4) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.c, align 4, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x float>, ptr %i.d, align 4, !tbaa !13 ; 2 uses
  %i.h = load <2 x float>, ptr %i.e, align 4, !tbaa !13
  %i.i = fsub reassoc nsz arcp contract afn <2 x float> %i.h, %i.g
  %i.j = insertelement <2 x float> poison, float %4, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul reassoc nsz arcp contract afn <2 x float> %i.i, %i.k
  %i.m = fadd reassoc nsz arcp contract afn <2 x float> %i.l, %i.g
  store <2 x float> %i.m, ptr %i.f, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load <2 x float>, ptr %i.n, align 4
  %i.p = load <2 x float>, ptr %1, align 4
  %i.q = fsub reassoc nsz arcp contract afn <2 x float> %i.o, %i.p
  %i.r = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.q) #31 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load <2 x float>, ptr %i.s, align 4
  %i.u = load <2 x float>, ptr %2, align 4
  %i.v = fsub reassoc nsz arcp contract afn <2 x float> %i.t, %i.u
  %i.w = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.v) #31
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.r
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %4
  %5 = fadd reassoc nsz arcp contract afn float %i.r, %i.y
  %.sroa.064.0.vec.extract = extractelement <2 x float> %3, i64 0
  %.sroa.064.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.z = fadd reassoc nsz arcp contract afn float %5, %.sroa.064.0.vec.extract
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.z, ptr %i.aa, align 4
  store float %.sroa.064.4.vec.extract, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load <2 x float>, ptr %i.ac, align 4
  %i.ae = load <2 x float>, ptr %1, align 4
  %i.af = fsub reassoc nsz arcp contract afn <2 x float> %i.ad, %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load <2 x float>, ptr %i.ag, align 4
  %i.ai = load <2 x float>, ptr %2, align 4
  %i.aj = fsub reassoc nsz arcp contract afn <2 x float> %i.ah, %i.ai ; 2 uses
  %i.ak = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.af) #31 ; 5 uses
  %i.al = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.aj) #31 ; 4 uses
  %i.am = fcmp reassoc nsz arcp contract afn ogt float %i.ak, 0.000000e+00
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.al, f0xBFC90FDB
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.ak, f0xBFC90FDB
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.al, 0.000000e+00
  %or.cond3 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink86 = phi float [ f0x40490FDB, %bb.a ], [ f0xC0490FDB, %bb.b ]
  %.sink = phi float [ f0xC0490FDB, %bb.a ], [ f0x40490FDB, %bb.b ]
  %i.aq = fsub reassoc nsz arcp contract afn float %.sink86, %i.ak ; 2 uses
  %i.ar = fadd reassoc nsz arcp contract afn float %i.al, %i.aq
  %i.as = fsub reassoc nsz arcp contract afn float %.sink, %i.ar
  %i.at = fmul reassoc nsz arcp contract afn float %4, %i.as
  %i.au = fadd reassoc nsz arcp contract afn float %i.aq, %i.at
  %i.av = fsub reassoc nsz arcp contract afn float f0x40490FDB, %i.au
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aw = fsub reassoc nsz arcp contract afn float %i.al, %i.ak
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %4
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.ak
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.az = phi reassoc nsz arcp contract afn float [ %i.av, %bb.c ], [ %i.ay, %bb.d ] ; 2 uses
  %i.ba = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.aj) #31
  %i.bb = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.af) #31 ; 2 uses
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ba, %i.bb
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %4
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.bb
  %i.bf = fmul reassoc nsz arcp contract afn float %i.az, 0.000000e+00
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %i.bf, i64 0
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %i.az, i64 1
  %i.bg = tail call reassoc nsz arcp contract afn <2 x float> @cexpf(<2 x float> noundef %.sroa.04.4.vec.insert) #31
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bg
  %i.bl = fadd reassoc nsz arcp contract afn <2 x float> %i.bk, %3
  store <2 x float> %i.bl, ptr %i.bh, align 4
  store <2 x float> %3, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.b, align 8, !tbaa !147 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 704
  %.val1 = load ptr, ptr %i.c, align 16, !tbaa !146
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %.0141.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.4, %bb.g ] ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !140  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split.loop.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.g = icmp eq i32 %i.e, 1
  %i.h = zext i1 %i.g to i32
  %spec.select.i = add i32 %.0141.i, %i.h         ; 2 uses
  %i.i = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !140  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.split.loop.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.l = icmp eq i32 %i.j, 1
  %i.m = zext i1 %i.l to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.1
  %i.o = load i32, ptr %i.n, align 4, !tbaa !140  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.split.loop.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.q = icmp eq i32 %i.o, 1
  %i.r = zext i1 %i.q to i32
  %spec.select.i.2 = add i32 %spec.select.i.1, %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.2
  %i.t = load i32, ptr %i.s, align 4, !tbaa !140  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.split.loop.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.v = icmp eq i32 %i.t, 1
  %i.w = zext i1 %i.v to i32
  %spec.select.i.3 = add i32 %spec.select.i.2, %i.w ; 2 uses
  %i.x = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.3
  %i.y = load i32, ptr %i.x, align 4, !tbaa !140  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.split.loop.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.aa = icmp eq i32 %i.y, 1
  %i.ab = zext i1 %i.aa to i32
  %spec.select.i.4 = add i32 %spec.select.i.3, %i.ab ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %.split.loop.exit7.i, label %bb.b

.split.loop.exit.i:                               ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ], [ %indvars.iv.next.i.2, %bb.e ], [ %indvars.iv.next.i.3, %bb.f ]
  %.0141.i.lcssa = phi i32 [ %.0141.i, %bb.b ], [ %spec.select.i, %bb.c ], [ %spec.select.i.1, %bb.d ], [ %spec.select.i.2, %bb.e ], [ %spec.select.i.3, %bb.f ]
  %indvars6.le.i = trunc i64 %indvars.iv.i.lcssa to i32
  br label %.split.loop.exit7.i

.split.loop.exit7.i:                              ; preds = %bb.g, %.split.loop.exit.i
  %.014.lcssa.i = phi i32 [ %.0141.i.lcssa, %.split.loop.exit.i ], [ %spec.select.i.4, %bb.g ]
  %.013.lcssa.i = phi i32 [ %indvars6.le.i, %.split.loop.exit.i ], [ 100, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10, ptr noundef nonnull @.str.61, i32 noundef %.014.lcssa.i, i32 noundef %.013.lcssa.i) #30 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !168
  %i.af = tail call ptr @gtk_label_get_text(ptr noundef %i.ae) #30
  %i.ag = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.af) #33
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %update_warp_count.exit, label %bb.h

bb.h:                                             ; preds = %.split.loop.exit7.i
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !168
  call void @gtk_label_set_text(ptr noundef %i.ah, ptr noundef nonnull %i.a) #30
  br label %update_warp_count.exit

update_warp_count.exit:                           ; preds = %.split.loop.exit7.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 8                ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 2 uses
  %i.c = alloca [3 x ptr], align 8                ; 4 uses
  %i.d = tail call ptr @dt_alloc_aligned(i64 noundef 120) #30 ; 12 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.d, i8 0, i64 120, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.d, ptr %i.e, align 16, !tbaa !146
  %i.f = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef 1, i32 noundef 1) #30
  tail call void @cairo_surface_destroy(ptr noundef %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.d, align 8, !tbaa !189
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #30
  %i.k = tail call ptr @gtk_label_new(ptr noundef %i.j) #30 ; 2 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.k, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef nonnull @.str.66, double noundef 0.000000e+00, ptr noundef nonnull @.str.67, i32 noundef 3, ptr noundef null) #30
  %i.l = tail call ptr @gtk_label_new(ptr noundef nonnull @.str.11) #30 ; 2 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.l, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef nonnull @.str.66, double noundef 0.000000e+00, ptr noundef nonnull @.str.67, i32 noundef 3, ptr noundef null) #30
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !168
  %i.n = tail call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #30
  store ptr %i.k, ptr %i.a, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !168
  store ptr %i.p, ptr %i.o, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.q, align 8, !tbaa !83
  %i.r = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.12, i32 noundef 3618, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.n, ptr noundef nonnull %i.a) #30 ; 2 uses
  %i.s = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #30
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.r, ptr noundef %i.s) #30
end_hunk_1
begin_hunk_2_@get_p:bb.a
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.57) #33
  %.not62 = icmp eq i32 %i.ak, 0
  br i1 %.not62, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.58) #33
  %.not63 = icmp eq i32 %i.al, 0
  %. = select i1 %.not63, ptr %0, ptr null
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.n, %bb.a, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.ak ], [ %., %bb.al ], [ %0, %bb.n ], [ %i.aj, %bb.aj ], [ %i.ah, %bb.ah ], [ %i.af, %bb.af ], [ %i.ad, %bb.ad ], [ %i.ab, %bb.ab ], [ %i.z, %bb.z ], [ %i.x, %bb.x ], [ %i.v, %bb.v ], [ %i.t, %bb.t ], [ %i.r, %bb.r ], [ %i.p, %bb.p ], [ %0, %bb.a ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.38) #30
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.39) #30
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.40) #30
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.41) #30
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.42) #30
  %.not25 = icmp eq i32 %i.e, 0
  br i1 %.not25, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.43) #30
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.44) #30
  %.not27 = icmp eq i32 %i.g, 0
  br i1 %.not27, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.45) #30
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.46) #30
  %.not29 = icmp eq i32 %i.i, 0
  br i1 %.not29, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.47) #30
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.48) #30
  %.not31 = icmp eq i32 %i.k, 0
  br i1 %.not31, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.49) #30
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.50) #30
  %.not33 = icmp eq i32 %i.m, 0
  br i1 %.not33, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.51) #30
  %.not34 = icmp eq i32 %i.n, 0
  br i1 %.not34, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.52) #30
  %.not35 = icmp eq i32 %i.o, 0
  br i1 %.not35, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.53) #30
  %.not36 = icmp eq i32 %i.p, 0
  br i1 %.not36, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.54) #30
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.55) #30
  %.not38 = icmp eq i32 %i.r, 0
  br i1 %.not38, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.56) #30
  %.not39 = icmp eq i32 %i.s, 0
  br i1 %.not39, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.57) #30
  %.not40 = icmp eq i32 %i.t, 0
  br i1 %.not40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.58) #30
  %.not41 = icmp eq i32 %i.u, 0
  %. = select i1 %.not41, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1760), ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1672), %bb.t ], [ %., %bb.u ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @interpolate_paths(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0163 = phi ptr [ null, %bb.a ], [ %.6.ph, %.loopexit ] ; 8 uses
  %i.a = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %indvars.iv ; 12 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140  ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 5 uses
  %i.e = icmp eq i32 %i.b, 1
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.g = load i8, ptr %i.f, align 2, !tbaa !177
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.i, ptr noundef nonnull align 4 dereferenceable(40) %i.d, i64 40, i1 false), !tbaa.struct !255
  %i.j = tail call ptr @g_list_append(ptr noundef %.0163, ptr noundef nonnull %i.i) #30
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.a, i64 16
  %.val = load i8, ptr %i.k, align 4, !tbaa !139  ; 2 uses
  %i.l = icmp eq i8 %.val, -1
  %i.m = sext i8 %.val to i64
  %i.n = getelementptr inbounds [76 x i8], ptr %0, i64 %i.m ; 11 uses
  %.0.i = select i1 %i.l, ptr null, ptr %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 4 uses
  switch i32 %i.b, label %.loopexit [
    i32 2, label %bb.g
    i32 3, label %vector.ph
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = load <2 x float>, ptr %i.o, align 4
  %i.q = load <2 x float>, ptr %i.d, align 4
  %i.r = fsub reassoc nsz arcp contract afn <2 x float> %i.p, %i.q
  %i.s = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.r) #31 ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, 0.000000e+00
  br i1 %i.t, label %.lr.ph160, label %.loopexit

.lr.ph160:                                        ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ac = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.s
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph160, %mix_warps.exit
  %.2159 = phi ptr [ %.0163, %.lr.ph160 ], [ %i.ce, %mix_warps.exit ]
  %.093158 = phi float [ 0.000000e+00, %.lr.ph160 ], [ %i.cd, %mix_warps.exit ] ; 2 uses
  %i.ad = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #32 ; 6 uses
  %1 = fmul reassoc nsz arcp contract afn float %.093158, %i.ac ; 5 uses
  %i.ae = load <2 x float>, ptr %i.o, align 4     ; 3 uses
  %i.af = load <2 x float>, ptr %i.d, align 4     ; 3 uses
  %i.ag = fsub reassoc nsz arcp contract afn <2 x float> %i.af, %i.ae
  %2 = insertelement <2 x float> poison, float %1, i64 0
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %4 = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, %3
  %5 = fadd reassoc nsz arcp contract afn <2 x float> %4, %i.ae ; 3 uses
  %i.ah = load i32, ptr %i.u, align 4, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !78
  %i.aj = load float, ptr %i.y, align 4
  %i.ak = load <2 x float>, ptr %i.x, align 4
  %i.al = insertelement <2 x float> %i.ae, float %i.aj, i64 1 ; 2 uses
  %i.am = fsub reassoc nsz arcp contract afn <2 x float> %i.ak, %i.al
  %i.an = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.am) #31 ; 2 uses
  %i.ao = load <2 x float>, ptr %i.z, align 4
  %i.ap = fsub reassoc nsz arcp contract afn <2 x float> %i.ao, %i.af
  %i.aq = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ap) #31
  %6 = fsub reassoc nsz arcp contract afn float %i.aq, %i.an
  %i.ar = fmul reassoc nsz arcp contract afn float %6, %1
  %7 = fadd reassoc nsz arcp contract afn float %i.ar, %i.an ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.as = load <2 x float>, ptr %i.v, align 4, !tbaa !13 ; 2 uses
  %i.at = load <2 x float>, ptr %i.w, align 4, !tbaa !13
  %9 = fsub reassoc nsz arcp contract afn <2 x float> %i.at, %i.as
  %10 = fmul reassoc nsz arcp contract afn <2 x float> %9, %3
  %i.au = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %i.au, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.av = insertelement <4 x float> %11, float %7, i64 0
  %12 = shufflevector <2 x float> %5, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = fadd reassoc nsz arcp contract afn <4 x float> %i.av, %12
  store <4 x float> %i.aw, ptr %8, align 4
  %i.ax = load <2 x float>, ptr %i.aa, align 4
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %i.al ; 2 uses
  %i.az = load <2 x float>, ptr %i.ab, align 4
  %i.ba = fsub reassoc nsz arcp contract afn <2 x float> %i.az, %i.af ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.ay) #31 ; 5 uses
  %i.bc = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.ba) #31 ; 4 uses
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %i.bb, 0.000000e+00
  %i.be = fcmp reassoc nsz arcp contract afn olt float %i.bc, f0xBFC90FDB
  %or.cond.i = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = fcmp reassoc nsz arcp contract afn olt float %i.bb, f0xBFC90FDB
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bc, 0.000000e+00
  %or.cond3.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond3.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink86.i = phi float [ f0x40490FDB, %bb.h ], [ f0xC0490FDB, %bb.i ]
  %.sink.i = phi float [ f0xC0490FDB, %bb.h ], [ f0x40490FDB, %bb.i ]
  %.neg137 = fsub reassoc nsz arcp contract afn float %i.bb, %.sink86.i ; 2 uses
  %.neg138 = fsub reassoc nsz arcp contract afn float %.neg137, %i.bc
  %i.bh = fadd reassoc nsz arcp contract afn float %.neg138, %.sink.i
  %.neg140 = fadd reassoc nsz arcp contract afn float %.neg137, f0x40490FDB
  %i.bi = fmul reassoc nsz arcp contract afn float %1, %i.bh
  %i.bj = fsub reassoc nsz arcp contract afn float %.neg140, %i.bi
  br label %mix_warps.exit

bb.k:                                             ; preds = %bb.i
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bc, %i.bb
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %1
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bb
  br label %mix_warps.exit

mix_warps.exit:                                   ; preds = %bb.j, %bb.k
  %i.bn = phi reassoc nsz arcp contract afn float [ %i.bj, %bb.j ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bo = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ba) #31
  %i.bp = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ay) #31 ; 2 uses
  %i.bq = fsub reassoc nsz arcp contract afn float %i.bo, %i.bp
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %1
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, %i.bp
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bn, 0.000000e+00
  %.sroa.04.0.vec.insert.i = insertelement <2 x float> poison, float %i.bt, i64 0
  %.sroa.04.4.vec.insert.i = insertelement <2 x float> %.sroa.04.0.vec.insert.i, float %i.bn, i64 1
  %i.bu = tail call reassoc nsz arcp contract afn <2 x float> @cexpf(<2 x float> noundef %.sroa.04.4.vec.insert.i) #31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bw = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.bu
  %i.bz = fadd reassoc nsz arcp contract afn <2 x float> %i.by, %5
  store <2 x float> %i.bz, ptr %i.bv, align 4
  store <2 x float> %5, ptr %i.ad, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  store i32 2, ptr %i.ca, align 4, !tbaa !77
  %.sroa.029.4.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %7, i64 0
  %i.cb = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %.sroa.029.4.vec.insert) #31
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, 1.000000e-01
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cc, %.093158 ; 2 uses
  %i.ce = tail call ptr @g_list_append(ptr noundef %.2159, ptr noundef nonnull %i.ad) #30 ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.cd, %i.s
  br i1 %i.cf, label %bb.h, label %.loopexit

vector.ph:                                        ; preds = %bb.f
  %i.cg = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #32 ; 23 uses
  %i.ch = load float, ptr %i.o, align 4           ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4          ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.cm = load <2 x float>, ptr %i.d, align 4     ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store float %i.ch, ptr %i.cg, align 4
  store float %i.cj, ptr %i.cn, align 4
  %i.co = load <2 x float>, ptr %i.ck, align 4    ; 2 uses
  %i.cp = load <2 x float>, ptr %i.cl, align 4
  %i.cq = fmul reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float 3.000000e+00) ; 2 uses
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.co, splat (float 3.000000e+00) ; 2 uses
  %i.cs = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cj, i64 1 ; 4 uses
  %i.cu = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, %i.cq
  %i.cv = fsub reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cu
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cm ; 4 uses
  %i.cx = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, splat (float 3.000000e+00) ; 2 uses
  %i.cy = fsub reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cx ; 4 uses
  %i.cz = fmul reassoc nsz arcp contract afn <2 x float> %i.co, splat (float -6.000000e+00)
  %i.da = fadd reassoc nsz arcp contract afn <2 x float> %i.cz, %i.cx
  %i.db = fadd reassoc nsz arcp contract afn <2 x float> %i.da, %i.cq ; 4 uses
  %i.dc = getelementptr i8, ptr %i.cg, i64 776
  %broadcast.splat225 = shufflevector <2 x float> %i.db, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 12 uses
  %broadcast.splat223 = shufflevector <2 x float> %i.db, <2 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  %broadcast.splat221 = shufflevector <2 x float> %i.cy, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 12 uses
  %broadcast.splat219 = shufflevector <2 x float> %i.cy, <2 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  %broadcast.splat217 = shufflevector <2 x float> %i.cw, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 12 uses
  %broadcast.splat215 = shufflevector <2 x float> %i.cw, <2 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  %broadcast.splatinsert212 = insertelement <8 x float> poison, float %i.cj, i64 0 ; 12 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ch, i64 0 ; 12 uses
  %.05664.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.dd = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3C23D70A, float 2.000000e-02, float 3.000000e-02, float 4.000000e-02, float f0x3D4CCCCC, float f0x3D75C28E, float 7.000000e-02, float 8.000000e-02>
  %i.de = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3C23D70A, float 2.000000e-02, float 3.000000e-02, float 4.000000e-02, float f0x3D4CCCCC, float f0x3D75C28E, float 7.000000e-02, float 8.000000e-02>
  %i.df = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.dd
  %i.dg = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.de
  %i.dh = fmul reassoc nsz arcp contract afn <8 x float> %i.df, <float f0x3C23D70A, float 2.000000e-02, float 3.000000e-02, float 4.000000e-02, float f0x3D4CCCCC, float f0x3D75C28E, float 7.000000e-02, float 8.000000e-02>
  %i.di = fmul reassoc nsz arcp contract afn <8 x float> %i.dg, <float f0x3C23D70A, float 2.000000e-02, float 3.000000e-02, float 4.000000e-02, float f0x3D4CCCCC, float f0x3D75C28E, float 7.000000e-02, float 8.000000e-02>
  %i.dj = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.dh
  %i.dk = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.di
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %i.dj, <float f0x3C23D70A, float 2.000000e-02, float 3.000000e-02, float 4.000000e-02, float f0x3D4CCCCC, float f0x3D75C28E, float 7.000000e-02, float 8.000000e-02>
  %i.dm = fmul reassoc nsz arcp contract afn <8 x float> %i.dk, <float f0x3C23D70A, float 2.000000e-02, float 3.000000e-02, float 4.000000e-02, float f0x3D4CCCCC, float f0x3D75C28E, float 7.000000e-02, float 8.000000e-02>
  %i.dn = shufflevector <8 x float> %i.dl, <8 x float> %i.dm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.do = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec = fadd reassoc nsz arcp contract afn <16 x float> %i.dn, %i.do
  store <16 x float> %interleaved.vec, ptr %.05664.i, align 4
  %next.gep.1 = getelementptr i8, ptr %i.cg, i64 72
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3DB851EB, float f0x3DCCCCCC, float 1.100000e-01, float 1.200000e-01, float 1.300000e-01, float f0x3E0F5C28, float 1.500000e-01, float 1.600000e-01>
  %i.dq = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3DB851EB, float f0x3DCCCCCC, float 1.100000e-01, float 1.200000e-01, float 1.300000e-01, float f0x3E0F5C28, float 1.500000e-01, float 1.600000e-01>
  %i.dr = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.dp
  %i.ds = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.dq
  %i.dt = fmul reassoc nsz arcp contract afn <8 x float> %i.dr, <float f0x3DB851EB, float f0x3DCCCCCC, float 1.100000e-01, float 1.200000e-01, float 1.300000e-01, float f0x3E0F5C28, float 1.500000e-01, float 1.600000e-01>
  %i.du = fmul reassoc nsz arcp contract afn <8 x float> %i.ds, <float f0x3DB851EB, float f0x3DCCCCCC, float 1.100000e-01, float 1.200000e-01, float 1.300000e-01, float f0x3E0F5C28, float 1.500000e-01, float 1.600000e-01>
  %i.dv = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.dt
  %i.dw = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.du
  %i.dx = fmul reassoc nsz arcp contract afn <8 x float> %i.dv, <float f0x3DB851EB, float f0x3DCCCCCC, float 1.100000e-01, float 1.200000e-01, float 1.300000e-01, float f0x3E0F5C28, float 1.500000e-01, float 1.600000e-01>
  %i.dy = fmul reassoc nsz arcp contract afn <8 x float> %i.dw, <float f0x3DB851EB, float f0x3DCCCCCC, float 1.100000e-01, float 1.200000e-01, float 1.300000e-01, float f0x3E0F5C28, float 1.500000e-01, float 1.600000e-01>
  %i.dz = shufflevector <8 x float> %i.dx, <8 x float> %i.dy, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ea = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.1 = fadd reassoc nsz arcp contract afn <16 x float> %i.dz, %i.ea
  store <16 x float> %interleaved.vec.1, ptr %next.gep.1, align 4
  %next.gep.2 = getelementptr i8, ptr %i.cg, i64 136
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3E2E147A, float f0x3E3851EB, float 1.900000e-01, float f0x3E4CCCCC, float 2.100000e-01, float f0x3E6147AD, float 2.300000e-01, float 2.400000e-01>
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3E2E147A, float f0x3E3851EB, float 1.900000e-01, float f0x3E4CCCCC, float 2.100000e-01, float f0x3E6147AD, float 2.300000e-01, float 2.400000e-01>
  %i.ed = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.eb
  %i.ee = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.ec
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %i.ed, <float f0x3E2E147A, float f0x3E3851EB, float 1.900000e-01, float f0x3E4CCCCC, float 2.100000e-01, float f0x3E6147AD, float 2.300000e-01, float 2.400000e-01>
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %i.ee, <float f0x3E2E147A, float f0x3E3851EB, float 1.900000e-01, float f0x3E4CCCCC, float 2.100000e-01, float f0x3E6147AD, float 2.300000e-01, float 2.400000e-01>
  %i.eh = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.ef
  %i.ei = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.eg
  %i.ej = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, <float f0x3E2E147A, float f0x3E3851EB, float 1.900000e-01, float f0x3E4CCCCC, float 2.100000e-01, float f0x3E6147AD, float 2.300000e-01, float 2.400000e-01>
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %i.ei, <float f0x3E2E147A, float f0x3E3851EB, float 1.900000e-01, float f0x3E4CCCCC, float 2.100000e-01, float f0x3E6147AD, float 2.300000e-01, float 2.400000e-01>
  %i.el = shufflevector <8 x float> %i.ej, <8 x float> %i.ek, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.em = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.2 = fadd reassoc nsz arcp contract afn <16 x float> %i.el, %i.em
  store <16 x float> %interleaved.vec.2, ptr %next.gep.2, align 4
  %next.gep.3 = getelementptr i8, ptr %i.cg, i64 200
  %i.en = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3E7FFFFF, float 2.600000e-01, float f0x3E8A3D70, float f0x3E8F5C28, float 2.900000e-01, float f0x3E999999, float 3.100000e-01, float 3.200000e-01>
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3E7FFFFF, float 2.600000e-01, float f0x3E8A3D70, float f0x3E8F5C28, float 2.900000e-01, float f0x3E999999, float 3.100000e-01, float 3.200000e-01>
  %i.ep = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.en
  %i.eq = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.eo
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %i.ep, <float f0x3E7FFFFF, float 2.600000e-01, float f0x3E8A3D70, float f0x3E8F5C28, float 2.900000e-01, float f0x3E999999, float 3.100000e-01, float 3.200000e-01>
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %i.eq, <float f0x3E7FFFFF, float 2.600000e-01, float f0x3E8A3D70, float f0x3E8F5C28, float 2.900000e-01, float f0x3E999999, float 3.100000e-01, float 3.200000e-01>
  %i.et = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.er
  %i.eu = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.es
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.et, <float f0x3E7FFFFF, float 2.600000e-01, float f0x3E8A3D70, float f0x3E8F5C28, float 2.900000e-01, float f0x3E999999, float 3.100000e-01, float 3.200000e-01>
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.eu, <float f0x3E7FFFFF, float 2.600000e-01, float f0x3E8A3D70, float f0x3E8F5C28, float 2.900000e-01, float f0x3E999999, float 3.100000e-01, float 3.200000e-01>
  %i.ex = shufflevector <8 x float> %i.ev, <8 x float> %i.ew, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ey = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.3 = fadd reassoc nsz arcp contract afn <16 x float> %i.ex, %i.ey
  store <16 x float> %interleaved.vec.3, ptr %next.gep.3, align 4
  %next.gep.4 = getelementptr i8, ptr %i.cg, i64 264
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3EA8F5C2, float f0x3EAE147A, float f0x3EB33332, float f0x3EB851EA, float 3.700000e-01, float 3.800000e-01, float 3.900000e-01, float f0x3ECCCCCC>
  %i.fa = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3EA8F5C2, float f0x3EAE147A, float f0x3EB33332, float f0x3EB851EA, float 3.700000e-01, float 3.800000e-01, float 3.900000e-01, float f0x3ECCCCCC>
  %i.fb = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.ez
  %i.fc = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.fa
  %i.fd = fmul reassoc nsz arcp contract afn <8 x float> %i.fb, <float f0x3EA8F5C2, float f0x3EAE147A, float f0x3EB33332, float f0x3EB851EA, float 3.700000e-01, float 3.800000e-01, float 3.900000e-01, float f0x3ECCCCCC>
  %i.fe = fmul reassoc nsz arcp contract afn <8 x float> %i.fc, <float f0x3EA8F5C2, float f0x3EAE147A, float f0x3EB33332, float f0x3EB851EA, float 3.700000e-01, float 3.800000e-01, float 3.900000e-01, float f0x3ECCCCCC>
  %i.ff = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.fd
  %i.fg = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.fe
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %i.ff, <float f0x3EA8F5C2, float f0x3EAE147A, float f0x3EB33332, float f0x3EB851EA, float 3.700000e-01, float 3.800000e-01, float 3.900000e-01, float f0x3ECCCCCC>
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.fg, <float f0x3EA8F5C2, float f0x3EAE147A, float f0x3EB33332, float f0x3EB851EA, float 3.700000e-01, float 3.800000e-01, float 3.900000e-01, float f0x3ECCCCCC>
  %i.fj = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fk = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.4 = fadd reassoc nsz arcp contract afn <16 x float> %i.fj, %i.fk
  store <16 x float> %interleaved.vec.4, ptr %next.gep.4, align 4
  %next.gep.5 = getelementptr i8, ptr %i.cg, i64 328
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3ED1EB84, float f0x3ED70A3C, float f0x3EDC28F4, float f0x3EE147AC, float 4.500000e-01, float f0x3EEB851E, float f0x3EF0A3D6, float f0x3EF5C28E>
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3ED1EB84, float f0x3ED70A3C, float f0x3EDC28F4, float f0x3EE147AC, float 4.500000e-01, float f0x3EEB851E, float f0x3EF0A3D6, float f0x3EF5C28E>
  %i.fn = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.fl
  %i.fo = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.fm
  %i.fp = fmul reassoc nsz arcp contract afn <8 x float> %i.fn, <float f0x3ED1EB84, float f0x3ED70A3C, float f0x3EDC28F4, float f0x3EE147AC, float 4.500000e-01, float f0x3EEB851E, float f0x3EF0A3D6, float f0x3EF5C28E>
  %i.fq = fmul reassoc nsz arcp contract afn <8 x float> %i.fo, <float f0x3ED1EB84, float f0x3ED70A3C, float f0x3EDC28F4, float f0x3EE147AC, float 4.500000e-01, float f0x3EEB851E, float f0x3EF0A3D6, float f0x3EF5C28E>
  %i.fr = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.fp
  %i.fs = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.fq
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %i.fr, <float f0x3ED1EB84, float f0x3ED70A3C, float f0x3EDC28F4, float f0x3EE147AC, float 4.500000e-01, float f0x3EEB851E, float f0x3EF0A3D6, float f0x3EF5C28E>
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %i.fs, <float f0x3ED1EB84, float f0x3ED70A3C, float f0x3EDC28F4, float f0x3EE147AC, float 4.500000e-01, float f0x3EEB851E, float f0x3EF0A3D6, float f0x3EF5C28E>
  %i.fv = shufflevector <8 x float> %i.ft, <8 x float> %i.fu, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fw = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.5 = fadd reassoc nsz arcp contract afn <16 x float> %i.fv, %i.fw
  store <16 x float> %interleaved.vec.5, ptr %next.gep.5, align 4
  %next.gep.6 = getelementptr i8, ptr %i.cg, i64 392
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3EFAE146, float f0x3EFFFFFE, float f0x3F028F5B, float f0x3F051EB7, float 5.300000e-01, float f0x3F0A3D70, float f0x3F0CCCCC, float f0x3F0F5C28>
  %i.fy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3EFAE146, float f0x3EFFFFFE, float f0x3F028F5B, float f0x3F051EB7, float 5.300000e-01, float f0x3F0A3D70, float f0x3F0CCCCC, float f0x3F0F5C28>
  %i.fz = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.fx
  %i.ga = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.fy
  %i.gb = fmul reassoc nsz arcp contract afn <8 x float> %i.fz, <float f0x3EFAE146, float f0x3EFFFFFE, float f0x3F028F5B, float f0x3F051EB7, float 5.300000e-01, float f0x3F0A3D70, float f0x3F0CCCCC, float f0x3F0F5C28>
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %i.ga, <float f0x3EFAE146, float f0x3EFFFFFE, float f0x3F028F5B, float f0x3F051EB7, float 5.300000e-01, float f0x3F0A3D70, float f0x3F0CCCCC, float f0x3F0F5C28>
  %i.gd = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.gb
  %i.ge = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.gc
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %i.gd, <float f0x3EFAE146, float f0x3EFFFFFE, float f0x3F028F5B, float f0x3F051EB7, float 5.300000e-01, float f0x3F0A3D70, float f0x3F0CCCCC, float f0x3F0F5C28>
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %i.ge, <float f0x3EFAE146, float f0x3EFFFFFE, float f0x3F028F5B, float f0x3F051EB7, float 5.300000e-01, float f0x3F0A3D70, float f0x3F0CCCCC, float f0x3F0F5C28>
  %i.gh = shufflevector <8 x float> %i.gf, <8 x float> %i.gg, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gi = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.6 = fadd reassoc nsz arcp contract afn <16 x float> %i.gh, %i.gi
  store <16 x float> %interleaved.vec.6, ptr %next.gep.6, align 4
  %next.gep.7 = getelementptr i8, ptr %i.cg, i64 456
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3F11EB84, float f0x3F147AE0, float f0x3F170A3C, float f0x3F199998, float f0x3F1C28F5, float f0x3F1EB851, float f0x3F2147AD, float f0x3F23D709>
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3F11EB84, float f0x3F147AE0, float f0x3F170A3C, float f0x3F199998, float f0x3F1C28F5, float f0x3F1EB851, float f0x3F2147AD, float f0x3F23D709>
  %i.gl = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.gj
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.gk
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %i.gl, <float f0x3F11EB84, float f0x3F147AE0, float f0x3F170A3C, float f0x3F199998, float f0x3F1C28F5, float f0x3F1EB851, float f0x3F2147AD, float f0x3F23D709>
  %i.go = fmul reassoc nsz arcp contract afn <8 x float> %i.gm, <float f0x3F11EB84, float f0x3F147AE0, float f0x3F170A3C, float f0x3F199998, float f0x3F1C28F5, float f0x3F1EB851, float f0x3F2147AD, float f0x3F23D709>
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.gn
  %i.gq = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.go
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %i.gp, <float f0x3F11EB84, float f0x3F147AE0, float f0x3F170A3C, float f0x3F199998, float f0x3F1C28F5, float f0x3F1EB851, float f0x3F2147AD, float f0x3F23D709>
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %i.gq, <float f0x3F11EB84, float f0x3F147AE0, float f0x3F170A3C, float f0x3F199998, float f0x3F1C28F5, float f0x3F1EB851, float f0x3F2147AD, float f0x3F23D709>
  %i.gt = shufflevector <8 x float> %i.gr, <8 x float> %i.gs, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.gu = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.7 = fadd reassoc nsz arcp contract afn <16 x float> %i.gt, %i.gu
  store <16 x float> %interleaved.vec.7, ptr %next.gep.7, align 4
  %next.gep.8 = getelementptr i8, ptr %i.cg, i64 520
  %i.gv = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3F266665, float f0x3F28F5C1, float f0x3F2B851D, float f0x3F2E1479, float f0x3F30A3D6, float f0x3F333332, float f0x3F35C28E, float f0x3F3851EA>
  %i.gw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3F266665, float f0x3F28F5C1, float f0x3F2B851D, float f0x3F2E1479, float f0x3F30A3D6, float f0x3F333332, float f0x3F35C28E, float f0x3F3851EA>
  %i.gx = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.gv
  %i.gy = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.gw
  %i.gz = fmul reassoc nsz arcp contract afn <8 x float> %i.gx, <float f0x3F266665, float f0x3F28F5C1, float f0x3F2B851D, float f0x3F2E1479, float f0x3F30A3D6, float f0x3F333332, float f0x3F35C28E, float f0x3F3851EA>
  %i.ha = fmul reassoc nsz arcp contract afn <8 x float> %i.gy, <float f0x3F266665, float f0x3F28F5C1, float f0x3F2B851D, float f0x3F2E1479, float f0x3F30A3D6, float f0x3F333332, float f0x3F35C28E, float f0x3F3851EA>
  %i.hb = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.gz
  %i.hc = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.ha
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %i.hb, <float f0x3F266665, float f0x3F28F5C1, float f0x3F2B851D, float f0x3F2E1479, float f0x3F30A3D6, float f0x3F333332, float f0x3F35C28E, float f0x3F3851EA>
  %i.he = fmul reassoc nsz arcp contract afn <8 x float> %i.hc, <float f0x3F266665, float f0x3F28F5C1, float f0x3F2B851D, float f0x3F2E1479, float f0x3F30A3D6, float f0x3F333332, float f0x3F35C28E, float f0x3F3851EA>
  %i.hf = shufflevector <8 x float> %i.hd, <8 x float> %i.he, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.hg = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.8 = fadd reassoc nsz arcp contract afn <16 x float> %i.hf, %i.hg
  store <16 x float> %interleaved.vec.8, ptr %next.gep.8, align 4
  %next.gep.9 = getelementptr i8, ptr %i.cg, i64 584
  %i.hh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3F3AE146, float f0x3F3D70A2, float f0x3F3FFFFE, float f0x3F428F5A, float f0x3F451EB7, float f0x3F47AE13, float f0x3F4A3D6F, float f0x3F4CCCCB>
  %i.hi = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3F3AE146, float f0x3F3D70A2, float f0x3F3FFFFE, float f0x3F428F5A, float f0x3F451EB7, float f0x3F47AE13, float f0x3F4A3D6F, float f0x3F4CCCCB>
  %i.hj = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.hh
  %i.hk = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.hi
  %i.hl = fmul reassoc nsz arcp contract afn <8 x float> %i.hj, <float f0x3F3AE146, float f0x3F3D70A2, float f0x3F3FFFFE, float f0x3F428F5A, float f0x3F451EB7, float f0x3F47AE13, float f0x3F4A3D6F, float f0x3F4CCCCB>
  %i.hm = fmul reassoc nsz arcp contract afn <8 x float> %i.hk, <float f0x3F3AE146, float f0x3F3D70A2, float f0x3F3FFFFE, float f0x3F428F5A, float f0x3F451EB7, float f0x3F47AE13, float f0x3F4A3D6F, float f0x3F4CCCCB>
  %i.hn = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.hl
  %i.ho = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.hm
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %i.hn, <float f0x3F3AE146, float f0x3F3D70A2, float f0x3F3FFFFE, float f0x3F428F5A, float f0x3F451EB7, float f0x3F47AE13, float f0x3F4A3D6F, float f0x3F4CCCCB>
  %i.hq = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, <float f0x3F3AE146, float f0x3F3D70A2, float f0x3F3FFFFE, float f0x3F428F5A, float f0x3F451EB7, float f0x3F47AE13, float f0x3F4A3D6F, float f0x3F4CCCCB>
  %i.hr = shufflevector <8 x float> %i.hp, <8 x float> %i.hq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.hs = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.9 = fadd reassoc nsz arcp contract afn <16 x float> %i.hr, %i.hs
  store <16 x float> %interleaved.vec.9, ptr %next.gep.9, align 4
  %next.gep.10 = getelementptr i8, ptr %i.cg, i64 648
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3F4F5C27, float f0x3F51EB83, float f0x3F547ADF, float f0x3F570A3B, float f0x3F599998, float f0x3F5C28F4, float f0x3F5EB850, float f0x3F6147AC>
  %i.hu = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3F4F5C27, float f0x3F51EB83, float f0x3F547ADF, float f0x3F570A3B, float f0x3F599998, float f0x3F5C28F4, float f0x3F5EB850, float f0x3F6147AC>
  %i.hv = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.ht
  %i.hw = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.hu
  %i.hx = fmul reassoc nsz arcp contract afn <8 x float> %i.hv, <float f0x3F4F5C27, float f0x3F51EB83, float f0x3F547ADF, float f0x3F570A3B, float f0x3F599998, float f0x3F5C28F4, float f0x3F5EB850, float f0x3F6147AC>
  %i.hy = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, <float f0x3F4F5C27, float f0x3F51EB83, float f0x3F547ADF, float f0x3F570A3B, float f0x3F599998, float f0x3F5C28F4, float f0x3F5EB850, float f0x3F6147AC>
  %i.hz = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.hx
  %i.ia = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.hy
  %i.ib = fmul reassoc nsz arcp contract afn <8 x float> %i.hz, <float f0x3F4F5C27, float f0x3F51EB83, float f0x3F547ADF, float f0x3F570A3B, float f0x3F599998, float f0x3F5C28F4, float f0x3F5EB850, float f0x3F6147AC>
  %i.ic = fmul reassoc nsz arcp contract afn <8 x float> %i.ia, <float f0x3F4F5C27, float f0x3F51EB83, float f0x3F547ADF, float f0x3F570A3B, float f0x3F599998, float f0x3F5C28F4, float f0x3F5EB850, float f0x3F6147AC>
  %i.id = shufflevector <8 x float> %i.ib, <8 x float> %i.ic, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ie = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.10 = fadd reassoc nsz arcp contract afn <16 x float> %i.id, %i.ie
  store <16 x float> %interleaved.vec.10, ptr %next.gep.10, align 4
  %next.gep.11 = getelementptr i8, ptr %i.cg, i64 712
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat215, <float f0x3F63D708, float f0x3F666664, float f0x3F68F5C0, float f0x3F6B851C, float f0x3F6E1479, float f0x3F70A3D5, float f0x3F733331, float f0x3F75C28D>
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, <float f0x3F63D708, float f0x3F666664, float f0x3F68F5C0, float f0x3F6B851C, float f0x3F6E1479, float f0x3F70A3D5, float f0x3F733331, float f0x3F75C28D>
  %i.ih = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat223, %i.if
  %i.ii = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat225, %i.ig
  %i.ij = fmul reassoc nsz arcp contract afn <8 x float> %i.ih, <float f0x3F63D708, float f0x3F666664, float f0x3F68F5C0, float f0x3F6B851C, float f0x3F6E1479, float f0x3F70A3D5, float f0x3F733331, float f0x3F75C28D>
  %i.ik = fmul reassoc nsz arcp contract afn <8 x float> %i.ii, <float f0x3F63D708, float f0x3F666664, float f0x3F68F5C0, float f0x3F6B851C, float f0x3F6E1479, float f0x3F70A3D5, float f0x3F733331, float f0x3F75C28D>
  %i.il = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat219, %i.ij
  %i.im = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat221, %i.ik
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %i.il, <float f0x3F63D708, float f0x3F666664, float f0x3F68F5C0, float f0x3F6B851C, float f0x3F6E1479, float f0x3F70A3D5, float f0x3F733331, float f0x3F75C28D>
  %i.io = fmul reassoc nsz arcp contract afn <8 x float> %i.im, <float f0x3F63D708, float f0x3F666664, float f0x3F68F5C0, float f0x3F6B851C, float f0x3F6E1479, float f0x3F70A3D5, float f0x3F733331, float f0x3F75C28D>
  %i.ip = shufflevector <8 x float> %i.in, <8 x float> %i.io, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.iq = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert212, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %interleaved.vec.11 = fadd reassoc nsz arcp contract afn <16 x float> %i.ip, %i.iq
  store <16 x float> %interleaved.vec.11, ptr %next.gep.11, align 4
  %i.ir = fmul reassoc nsz arcp contract afn <2 x float> %i.cw, splat (float f0x3F7851EB)
  %i.is = fadd reassoc nsz arcp contract afn <2 x float> %i.db, %i.ir
  %i.it = fmul reassoc nsz arcp contract afn <2 x float> %i.is, splat (float f0x3F7851EB)
  %i.iu = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, %i.it
  %i.iv = fmul reassoc nsz arcp contract afn <2 x float> %i.iu, splat (float f0x3F7851EB)
  %i.iw = fadd reassoc nsz arcp contract afn <2 x float> %i.iv, %i.ct ; 2 uses
  %i.ix = getelementptr i8, ptr %i.cg, i64 780
  %i.iy = extractelement <2 x float> %i.iw, i64 0
  store float %i.iy, ptr %i.dc, align 4
  %i.iz = extractelement <2 x float> %i.iw, i64 1
  store float %i.iz, ptr %i.ix, align 4
  %.056.i = getelementptr i8, ptr %i.cg, i64 784
  %i.ja = fmul reassoc nsz arcp contract afn <2 x float> %i.cw, splat (float f0x3F7AE147)
  %i.jb = fadd reassoc nsz arcp contract afn <2 x float> %i.db, %i.ja
  %i.jc = fmul reassoc nsz arcp contract afn <2 x float> %i.jb, splat (float f0x3F7AE147)
  %i.jd = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, %i.jc
  %i.je = fmul reassoc nsz arcp contract afn <2 x float> %i.jd, splat (float f0x3F7AE147)
  %i.jf = fadd reassoc nsz arcp contract afn <2 x float> %i.je, %i.ct ; 2 uses
  %i.jg = getelementptr i8, ptr %i.cg, i64 788
  %i.jh = extractelement <2 x float> %i.jf, i64 0
  store float %i.jh, ptr %.056.i, align 4
  %i.ji = extractelement <2 x float> %i.jf, i64 1
  store float %i.ji, ptr %i.jg, align 4
  %.056.i.1 = getelementptr i8, ptr %i.cg, i64 792
  store <2 x float> %i.cm, ptr %.056.i.1, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %vector.ph
  %indvars.iv.i = phi i64 [ 1, %vector.ph ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.0910.i = phi float [ 0.000000e+00, %vector.ph ], [ %i.jp, %bb.l ]
  %i.jj = getelementptr [8 x i8], ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 -8
  %i.jl = load <2 x float>, ptr %i.jk, align 4
  %i.jm = load <2 x float>, ptr %i.jj, align 4
  %i.jn = fsub reassoc nsz arcp contract afn <2 x float> %i.jl, %i.jm
  %i.jo = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.jn) #31
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jo, %.0910.i ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %indvars.iv.next.i, 100
  br i1 %exitcond.not.i98, label %get_arc_length.exit.preheader, label %bb.l

get_arc_length.exit.preheader:                    ; preds = %bb.l
  %i.jq = fcmp reassoc nsz arcp contract afn ogt float %i.jp, 0.000000e+00
  br i1 %i.jq, label %.lr.ph, label %get_arc_length.exit._crit_edge

.lr.ph:                                           ; preds = %get_arc_length.exit.preheader
  %i.jr = getelementptr inbounds nuw i8, ptr %i.cg, i64 792
  %i.js = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.jt = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.jv = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.jx = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.jz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jp
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %mix_warps.exit120
  %.3157 = phi ptr [ %.0163, %.lr.ph ], [ %i.my, %mix_warps.exit120 ]
  %.092155 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.mx, %mix_warps.exit120 ] ; 4 uses
  %.sroa.0.0154 = phi i32 [ 1, %.lr.ph ], [ %.sroa.0.1, %mix_warps.exit120 ] ; 3 uses
  %.sroa.5.0153 = phi float [ 0.000000e+00, %.lr.ph ], [ %.sroa.5.1, %mix_warps.exit120 ] ; 2 uses
  %i.ka = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #32 ; 6 uses
  %i.kb = fmul reassoc nsz arcp contract afn float %.092155, %i.jz ; 5 uses
  %i.kc = icmp sgt i32 %.sroa.0.0154, 99
  br i1 %i.kc, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.kd = sext i32 %.sroa.0.0154 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %indvars.iv.i99 = phi i64 [ %i.kd, %.lr.ph.preheader.i ], [ %indvars.iv.next.i103, %bb.n ] ; 3 uses
  %.04663.i = phi float [ %.sroa.5.0153, %.lr.ph.preheader.i ], [ %i.kk, %bb.n ] ; 3 uses
  %i.ke = getelementptr [8 x i8], ptr %i.cg, i64 %indvars.iv.i99 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 -8
  %i.kg = load <2 x float>, ptr %i.kf, align 4    ; 3 uses
  %i.kh = load <2 x float>, ptr %i.ke, align 4    ; 2 uses
  %i.ki = fsub reassoc nsz arcp contract afn <2 x float> %i.kg, %i.kh
  %i.kj = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ki) #31 ; 2 uses
  %i.kk = fadd reassoc nsz arcp contract afn float %i.kj, %.04663.i ; 2 uses
  %i.kl = fcmp reassoc nsz arcp contract afn ult float %i.kk, %.092155
  br i1 %i.kl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i103 = add nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %i.km = and i64 %indvars.iv.next.i103, 4294967295
  %exitcond.i = icmp eq i64 %i.km, 100
  br i1 %exitcond.i, label %._crit_edge.i, label %.lr.ph.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.kn = trunc nsw i64 %indvars.iv.i99 to i32
  %i.ko = fsub reassoc nsz arcp contract afn float %.092155, %.04663.i
  %i.kp = fdiv reassoc nsz arcp contract afn float %i.ko, %i.kj
  %i.kq = fsub reassoc nsz arcp contract afn <2 x float> %i.kh, %i.kg
  %i.kr = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = fmul reassoc nsz arcp contract afn <2 x float> %i.ks, %i.kq
  %i.ku = fadd reassoc nsz arcp contract afn <2 x float> %i.kt, %i.kg
  br label %point_at_arc_length.exit

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %i.kv = load <2 x float>, ptr %i.jr, align 4
  br label %point_at_arc_length.exit

point_at_arc_length.exit:                         ; preds = %bb.o, %._crit_edge.i
  %.sroa.5.1 = phi nsz float [ %.sroa.5.0153, %._crit_edge.i ], [ %.04663.i, %bb.o ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0154, %._crit_edge.i ], [ %i.kn, %bb.o ]
  %i.kw = phi <2 x float> [ %i.kv, %._crit_edge.i ], [ %i.ku, %bb.o ] ; 5 uses
  %i.kx = load i32, ptr %i.js, align 4, !tbaa !78
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !78
  %i.kz = load float, ptr %i.o, align 4
  %i.la = load float, ptr %i.ci, align 4
  %i.lb = load <2 x float>, ptr %i.jv, align 4
  %i.lc = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.ld = insertelement <2 x float> %i.lc, float %i.la, i64 1 ; 2 uses
  %i.le = fsub reassoc nsz arcp contract afn <2 x float> %i.lb, %i.ld
  %i.lf = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.le) #31 ; 2 uses
  %i.lg = load <2 x float>, ptr %i.jw, align 4
  %i.lh = load <2 x float>, ptr %i.d, align 4     ; 2 uses
  %i.li = fsub reassoc nsz arcp contract afn <2 x float> %i.lg, %i.lh
  %i.lj = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.li) #31
  %13 = fsub reassoc nsz arcp contract afn float %i.lj, %i.lf
  %14 = fmul reassoc nsz arcp contract afn float %13, %i.kb
  %i.lk = fadd reassoc nsz arcp contract afn float %14, %i.lf ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.lm = load <2 x float>, ptr %i.jt, align 4, !tbaa !13 ; 2 uses
  %i.ln = load <2 x float>, ptr %i.ju, align 4, !tbaa !13
  %15 = fsub reassoc nsz arcp contract afn <2 x float> %i.ln, %i.lm
  %16 = insertelement <2 x float> poison, float %i.kb, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul reassoc nsz arcp contract afn <2 x float> %15, %17
  %i.lo = shufflevector <2 x float> %i.lm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %19 = shufflevector <4 x float> %i.lo, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.lp = insertelement <4 x float> %19, float %i.lk, i64 0
  %20 = shufflevector <2 x float> %i.kw, <2 x float> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lq = fadd reassoc nsz arcp contract afn <4 x float> %i.lp, %20
  store <4 x float> %i.lq, ptr %i.ll, align 4
  %i.lr = load <2 x float>, ptr %i.jx, align 4
  %i.ls = fsub reassoc nsz arcp contract afn <2 x float> %i.lr, %i.ld ; 2 uses
  %i.lt = load <2 x float>, ptr %i.jy, align 4
  %i.lu = fsub reassoc nsz arcp contract afn <2 x float> %i.lt, %i.lh ; 2 uses
  %i.lv = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.ls) #31 ; 5 uses
  %i.lw = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.lu) #31 ; 4 uses
  %i.lx = fcmp reassoc nsz arcp contract afn ogt float %i.lv, 0.000000e+00
  %i.ly = fcmp reassoc nsz arcp contract afn olt float %i.lw, f0xBFC90FDB
  %or.cond.i112 = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %or.cond.i112, label %bb.q, label %bb.p

bb.p:                                             ; preds = %point_at_arc_length.exit
  %i.lz = fcmp reassoc nsz arcp contract afn olt float %i.lv, f0xBFC90FDB
  %i.ma = fcmp reassoc nsz arcp contract afn ogt float %i.lw, 0.000000e+00
  %or.cond3.i113 = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond3.i113, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %point_at_arc_length.exit
  %.sink86.i118 = phi float [ f0x40490FDB, %point_at_arc_length.exit ], [ f0xC0490FDB, %bb.p ]
  %.sink.i119 = phi float [ f0xC0490FDB, %point_at_arc_length.exit ], [ f0x40490FDB, %bb.p ]
  %.neg132 = fsub reassoc nsz arcp contract afn float %i.lv, %.sink86.i118 ; 2 uses
  %.neg133 = fsub reassoc nsz arcp contract afn float %.neg132, %i.lw
  %i.mb = fadd reassoc nsz arcp contract afn float %.neg133, %.sink.i119
  %.neg135 = fadd reassoc nsz arcp contract afn float %.neg132, f0x40490FDB
  %i.mc = fmul reassoc nsz arcp contract afn float %i.kb, %i.mb
  %i.md = fsub reassoc nsz arcp contract afn float %.neg135, %i.mc
  br label %mix_warps.exit120

bb.r:                                             ; preds = %bb.p
  %i.me = fsub reassoc nsz arcp contract afn float %i.lw, %i.lv
  %i.mf = fmul reassoc nsz arcp contract afn float %i.me, %i.kb
  %i.mg = fadd reassoc nsz arcp contract afn float %i.mf, %i.lv
  br label %mix_warps.exit120

mix_warps.exit120:                                ; preds = %bb.q, %bb.r
  %i.mh = phi reassoc nsz arcp contract afn float [ %i.md, %bb.q ], [ %i.mg, %bb.r ] ; 2 uses
  %i.mi = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.lu) #31
  %i.mj = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ls) #31 ; 2 uses
  %i.mk = fsub reassoc nsz arcp contract afn float %i.mi, %i.mj
  %i.ml = fmul reassoc nsz arcp contract afn float %i.mk, %i.kb
  %i.mm = fadd reassoc nsz arcp contract afn float %i.ml, %i.mj
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mh, 0.000000e+00
  %.sroa.04.0.vec.insert.i114 = insertelement <2 x float> poison, float %i.mn, i64 0
  %.sroa.04.4.vec.insert.i115 = insertelement <2 x float> %.sroa.04.0.vec.insert.i114, float %i.mh, i64 1
  %i.mo = tail call reassoc nsz arcp contract afn <2 x float> @cexpf(<2 x float> noundef %.sroa.04.4.vec.insert.i115) #31
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.mq = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ms = fmul reassoc nsz arcp contract afn <2 x float> %i.mr, %i.mo
  %i.mt = fadd reassoc nsz arcp contract afn <2 x float> %i.ms, %i.kw
  store <2 x float> %i.mt, ptr %i.mp, align 4
  store <2 x float> %i.kw, ptr %i.ka, align 4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ka, i64 36
  store i32 2, ptr %i.mu, align 4, !tbaa !77
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.kw, %i.kw
  %.sroa.0.4.vec.insert = insertelement <2 x float> %foldExtExtBinop, float %i.lk, i64 0
  %i.mv = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %.sroa.0.4.vec.insert) #31
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, 1.000000e-01
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, %.092155 ; 2 uses
  %i.my = tail call ptr @g_list_append(ptr noundef %.3157, ptr noundef nonnull %i.ka) #30 ; 2 uses
  %i.mz = fcmp reassoc nsz arcp contract afn olt float %i.mx, %i.jp
  br i1 %i.mz, label %bb.m, label %get_arc_length.exit._crit_edge

get_arc_length.exit._crit_edge:                   ; preds = %mix_warps.exit120, %get_arc_length.exit.preheader
  %.3.lcssa = phi ptr [ %.0163, %get_arc_length.exit.preheader ], [ %i.my, %mix_warps.exit120 ]
  tail call void @free(ptr noundef nonnull %i.cg) #30
  br label %.loopexit

.loopexit:                                        ; preds = %mix_warps.exit, %bb.g, %bb.d, %bb.e, %get_arc_length.exit._crit_edge, %bb.f
  %.6.ph = phi ptr [ %.0163, %bb.f ], [ %.3.lcssa, %get_arc_length.exit._crit_edge ], [ %.0163, %bb.d ], [ %i.j, %bb.e ], [ %.0163, %bb.g ], [ %i.ce, %mix_warps.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.s, label %bb.b

bb.s:                                             ; preds = %bb.b, %.loopexit
  %.0.lcssa = phi ptr [ %.0163, %bb.b ], [ %.6.ph, %.loopexit ]
  ret ptr %.0.lcssa
}

declare void @g_slist_free(ptr noundef) local_unnamed_addr #3

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cairo_region_create() local_unnamed_addr #3

declare i32 @cairo_region_contains_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_slist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_slist_reverse(ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #3

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_interpolation_compute_pixel4c(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #25

declare ptr @gtk_label_get_text(ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #26

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #3

declare void @cairo_push_group(ptr noundef) local_unnamed_addr #3

declare void @cairo_new_path(ptr noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #3

declare void @cairo_curve_to(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #3

declare void @cairo_pop_group_to_source(ptr noundef) local_unnamed_addr #3

declare void @cairo_paint_with_alpha(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_save(ptr noundef) local_unnamed_addr #3

declare void @cairo_new_sub_path(ptr noundef) local_unnamed_addr #3

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_restore(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @dt_dev_get_preview_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare float @dt_dev_get_zoom_scale_full() local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_control_queue_redraw_center() local_unnamed_addr #3

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #3

declare ptr @dt_ui_main_window(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #3

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @cairo_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v8f32(<8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
end_hunk_2
