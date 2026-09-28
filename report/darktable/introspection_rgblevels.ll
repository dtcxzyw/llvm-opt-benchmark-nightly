Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rgblevels?download=true
inline.NumInlined: 80
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@process:bb.a
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @dt_rgb_norm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #15 {
bb.a:
  switch i32 %1, label %bb.w [
    i32 1, label %bb.b
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 852
  %i.c = load i32, ptr %i.b, align 4, !tbaa !234
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load i32, ptr %i.e, align 64, !tbaa !235 ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = sitofp reassoc nsz arcp contract afn i32 %i.g to float ; 9 uses
  %i.i = add nsw i32 %i.f, -2
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to float ; 6 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !236  ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !39
  %i.m = fcmp reassoc nsz arcp contract afn ult float %i.l, 0.000000e+00
  %i.n = load float, ptr %0, align 4, !tbaa !39   ; 4 uses
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.n, 1.000000e+00
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = fmul reassoc nsz arcp contract afn float %i.n, %i.h ; 3 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, 0.000000e+00
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.p, %i.h
  %..i.i.i = select reassoc nsz arcp contract afn i1 %i.r, float %i.p, float %i.h
  %i.s = select reassoc nsz arcp contract afn i1 %i.q, float %..i.i.i, float 0.000000e+00 ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, %i.j
  %i.u = select reassoc nsz arcp contract afn i1 %i.t, float %i.s, float %i.j
  %i.v = fptosi float %i.u to i32                 ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fsub reassoc nnan nsz arcp contract afn float %i.s, %i.w
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !39 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !39
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.aa
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.x
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.aa
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 772
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !39
  %i.ai = load float, ptr %i.a, align 64, !tbaa !39
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.n
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 776
  %i.al = load float, ptr %i.ak, align 8, !tbaa !39
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aj, float %i.al)
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ah
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ao = phi reassoc nsz arcp contract afn float [ %i.an, %bb.g ], [ %i.af, %bb.f ], [ %i.n, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 720
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !236 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !39
  %i.as = fcmp reassoc nsz arcp contract afn ult float %i.ar, 0.000000e+00
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !39 ; 4 uses
  br i1 %i.as, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.au, 1.000000e+00
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 780
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 784
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !39
  %i.az = load float, ptr %i.aw, align 4, !tbaa !39
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 788
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ba, float %i.bc)
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.ay
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bf = fmul reassoc nsz arcp contract afn float %i.au, %i.h ; 3 uses
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, 0.000000e+00
  %i.bh = fcmp reassoc nsz arcp contract afn olt float %i.bf, %i.h
  %..i.1.i.i = select reassoc nsz arcp contract afn i1 %i.bh, float %i.bf, float %i.h
  %i.bi = select reassoc nsz arcp contract afn i1 %i.bg, float %..i.1.i.i, float 0.000000e+00 ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bi, %i.j
  %i.bk = select reassoc nsz arcp contract afn i1 %i.bj, float %i.bi, float %i.j
  %i.bl = fptosi float %i.bk to i32               ; 2 uses
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to float
  %i.bn = fsub reassoc nnan nsz arcp contract afn float %i.bi, %i.bm
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !39 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !39
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bn
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, %i.bq
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.bw = phi reassoc nsz arcp contract afn float [ %i.be, %bb.j ], [ %i.bv, %bb.k ], [ %i.au, %bb.h ]
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 728
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !236 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !39
  %i.ca = fcmp reassoc nsz arcp contract afn ult float %i.bz, 0.000000e+00
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !39 ; 4 uses
  br i1 %i.ca, label %dt_ioppr_apply_trc.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.cc, 1.000000e+00
  br i1 %i.cd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 792
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 796
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !39
  %i.ch = load float, ptr %i.ce, align 8, !tbaa !39
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.cc
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 800
  %i.ck = load float, ptr %i.cj, align 32, !tbaa !39
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ci, float %i.ck)
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.cg
  br label %dt_ioppr_apply_trc.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cc, %i.h ; 3 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cn, 0.000000e+00
  %i.cp = fcmp reassoc nsz arcp contract afn olt float %i.cn, %i.h
  %..i.2.i.i = select reassoc nsz arcp contract afn i1 %i.cp, float %i.cn, float %i.h
  %i.cq = select reassoc nsz arcp contract afn i1 %i.co, float %..i.2.i.i, float 0.000000e+00 ; 3 uses
  %i.cr = fcmp reassoc nsz arcp contract afn olt float %i.cq, %i.j
  %i.cs = select reassoc nsz arcp contract afn i1 %i.cr, float %i.cq, float %i.j
  %i.ct = fptosi float %i.cs to i32               ; 2 uses
  %i.cu = sitofp reassoc nsz arcp contract afn i32 %i.ct to float
  %i.cv = fsub reassoc nnan nsz arcp contract afn float %i.cq, %i.cu
  %i.cw = sext i32 %i.ct to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cw ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !39 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !39
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.cy
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.cv
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, %i.cy
  br label %dt_ioppr_apply_trc.exit.i

dt_ioppr_apply_trc.exit.i:                        ; preds = %bb.o, %bb.n, %bb.l
  %i.de = phi reassoc nsz arcp contract afn float [ %i.cm, %bb.n ], [ %i.dd, %bb.o ], [ %i.cc, %bb.l ]
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.dg = load float, ptr %i.df, align 16, !tbaa !39
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.ao
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 596
  %i.dj = load float, ptr %i.di, align 4, !tbaa !39
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.bw
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !39
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.de
  %i.dp = fadd reassoc nsz arcp contract afn float %i.dl, %i.do
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.p:                                             ; preds = %bb.c
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !39
  %i.ds = load float, ptr %0, align 4, !tbaa !39
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 596
  %3 = load float, ptr %i.du, align 4, !tbaa !39
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %4 = load float, ptr %i.dv, align 4, !tbaa !39
  %5 = fmul reassoc nsz arcp contract afn float %4, %3
  %6 = fadd reassoc nsz arcp contract afn float %5, %i.dt
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 600
  %8 = load float, ptr %7, align 4, !tbaa !39
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load float, ptr %9, align 4, !tbaa !39
  %11 = fmul reassoc nsz arcp contract afn float %10, %8
  %i.dw = fadd reassoc nsz arcp contract afn float %6, %11
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.q:                                             ; preds = %bb.b
  %i.dx = load float, ptr %0, align 4, !tbaa !39
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, f0x3E63D838
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %12 = load float, ptr %i.dz, align 4, !tbaa !39
  %13 = fmul reassoc nsz arcp contract afn float %12, f0x3F37855B
  %14 = fadd reassoc nsz arcp contract afn float %13, %i.dy
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %16 = load float, ptr %15, align 4, !tbaa !39
  %17 = fmul reassoc nsz arcp contract afn float %16, 6.061690e-02
  %i.ea = fadd reassoc nsz arcp contract afn float %14, %17
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.r:                                             ; preds = %bb.a
  %i.eb = load float, ptr %0, align 4, !tbaa !39
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !39
  %i.ee = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eb, float %i.ed)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !39
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ee, float %i.eg)
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.s:                                             ; preds = %bb.a
  %i.ei = load float, ptr %0, align 4, !tbaa !39
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !39
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load float, ptr %i.em, align 4, !tbaa !39
  %i.eo = fadd reassoc nsz arcp contract afn float %i.el, %i.en
  %i.ep = fmul reassoc nsz arcp contract afn float %i.eo, f0x3EAAAAAB
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.t:                                             ; preds = %bb.a
  %i.eq = load float, ptr %0, align 4, !tbaa !39
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !39
  %i.et = fadd reassoc nsz arcp contract afn float %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !39
  %i.ew = fadd reassoc nsz arcp contract afn float %i.et, %i.ev
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.u:                                             ; preds = %bb.a
  %i.ex = load float, ptr %0, align 4, !tbaa !39  ; 2 uses
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ex, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 4
  %18 = load float, ptr %i.ez, align 4, !tbaa !39 ; 2 uses
  %19 = fmul reassoc nsz arcp contract afn float %18, %18
  %20 = fadd reassoc nsz arcp contract afn float %19, %i.ey
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = load float, ptr %21, align 4, !tbaa !39   ; 2 uses
  %23 = fmul reassoc nsz arcp contract afn float %22, %22
  %i.fa = fadd reassoc nsz arcp contract afn float %20, %23
  %i.fb = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fa)
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.v:                                             ; preds = %bb.a
  %i.fc = load float, ptr %0, align 4, !tbaa !39  ; 3 uses
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !39 ; 3 uses
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !39 ; 3 uses
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fi, %i.fi ; 2 uses
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fd, %i.fc
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fg, %i.ff
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, %i.fk
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fj, %i.fi
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fm, %i.fn
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fg, %i.fd
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, %i.fj
  %i.fr = fdiv reassoc nsz arcp contract afn float %i.fo, %i.fq
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.w:                                             ; preds = %bb.a
  %i.fs = load float, ptr %0, align 4, !tbaa !39
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !39
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !39
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fv, %i.fx
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fy, f0x3EAAAAAB
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

dt_ioppr_get_rgb_matrix_luminance.exit:           ; preds = %bb.p, %dt_ioppr_apply_trc.exit.i, %bb.q, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0 = phi nsz float [ %i.fz, %bb.w ], [ %i.eh, %bb.r ], [ %i.ep, %bb.s ], [ %i.ew, %bb.t ], [ %i.fb, %bb.u ], [ %i.fr, %bb.v ], [ %i.ea, %bb.q ], [ %i.dp, %dt_ioppr_apply_trc.exit.i ], [ %i.dw, %bb.p ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !239
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !168
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !168
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !168
  store ptr @introspection_init.f1, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 160), align 16, !tbaa !168
  store ptr @introspection_init.f5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 512), align 16, !tbaa !168
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.11) #21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.46) #21
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.69) #21
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.70) #21
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.10) #21
  %.not15 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %.not15, ptr %i.i, ptr null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.h ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.11) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.46) #19
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.69) #19
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.70) #19
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.10) #19
  %.not9 = icmp eq i32 %i.e, 0
  %. = select i1 %.not9, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ %., %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_notebook_set_show_tabs(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #5

declare ptr @g_object_get_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_rgblevels_move_handle(ptr noundef %0, i32 noundef %1, float noundef %2, ptr nofree noundef captures(address_is_null) %3, float noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !28  ; 2 uses
  %or.cond = icmp ugt i32 %1, 2
  %i.c = icmp eq ptr %3, null
  %or.cond36 = or i1 %or.cond, %i.c
  br i1 %or.cond36, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %default.unreachable41 [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !39 ; 2 uses
  %i.f = fpext reassoc nsz arcp contract afn float %i.e to double
  %i.g = fsub reassoc nsz arcp contract afn float 1.000000e+00, %4 ; 2 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.e, %i.g
  %i.i = fpext reassoc nsz arcp contract afn float %i.h to double
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, -5.000000e-02
  %i.k = insertelement <2 x float> poison, float %4, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.g, i64 1
  %i.m = fpext <2 x float> %i.l to <2 x double>
end_hunk_0
