Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_grain?download=true
inline.NumInlined: 14
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dt_module_dt_version:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !39
  store i32 %i.c, ptr %i.b, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load <2 x float>, ptr %i.d, align 4, !tbaa !12
  store <2 x float> %i.f, ptr %i.e, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !42
  store ptr %i.b, ptr %3, align 8, !tbaa !43
  store i32 16, ptr %4, align 4, !tbaa !14
  store i32 2, ptr %5, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @name() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #22
  ret ptr %i.a
}

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @description(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #22
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #22
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #22
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #22
  %i.f = tail call ptr @dt_iop_set_description(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) #22
  ret ptr %i.f
}

declare ptr @dt_iop_set_description(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_group() local_unnamed_addr #0 {
bb.a:
  ret i32 144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit82, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !31  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1780 ; 10 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.h) #23
  %i.j = trunc i64 %i.i to i32
  %.08.i = add i32 %i.j, -1                       ; 3 uses
  %i.k = icmp sgt i32 %.08.i, -1
  br i1 %i.k, label %.lr.ph.preheader.i, label %_hash_string.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.l = zext nneg i32 %.08.i to i64              ; 3 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.n = icmp ult i32 %.08.i, 7
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.m, 4294967288
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ %i.l, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 9 uses
  %.079.i = phi i32 [ 5381, %.lr.ph.preheader.i.new ], [ %i.bi, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.o = mul i32 %.079.i, 33
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32
  %i.r = sext i8 %i.q to i32
  %i.s = xor i32 %i.o, %i.r
  %i.t = mul i32 %i.s, 33
  %i.u = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !32
  %i.x = sext i8 %i.w to i32
  %i.y = xor i32 %i.t, %i.x
  %i.z = mul i32 %i.y, 33
  %i.aa = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 -2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32
  %i.ad = sext i8 %i.ac to i32
  %i.ae = xor i32 %i.z, %i.ad
  %i.af = mul i32 %i.ae, 33
  %i.ag = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !32
  %i.aj = sext i8 %i.ai to i32
  %i.ak = xor i32 %i.af, %i.aj
  %i.al = mul i32 %i.ak, 33
  %i.am = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !32
  %i.ap = sext i8 %i.ao to i32
  %i.aq = xor i32 %i.al, %i.ap
  %i.ar = mul i32 %i.aq, 33
  %i.as = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.at = getelementptr i8, ptr %i.as, i64 -5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = sext i8 %i.au to i32
  %i.aw = xor i32 %i.ar, %i.av
  %i.ax = mul i32 %i.aw, 33
  %i.ay = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.az = getelementptr i8, ptr %i.ay, i64 -6
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !32
  %i.bb = sext i8 %i.ba to i32
  %i.bc = xor i32 %i.ax, %i.bb
  %i.bd = mul i32 %i.bc, 33
  %i.be = getelementptr i8, ptr %i.h, i64 %indvars.iv.i
  %i.bf = getelementptr i8, ptr %i.be, i64 -7
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32
  %i.bh = sext i8 %i.bg to i32
  %i.bi = xor i32 %i.bd, %i.bh                    ; 3 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, -8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_hash_string.exit.loopexit.unr-lcssa, label %.lr.ph.i

_hash_string.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_hash_string.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_hash_string.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ %i.l, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %_hash_string.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi i32 [ 5381, %.lr.ph.preheader.i ], [ %i.bi, %_hash_string.exit.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.079.i.epil = phi i32 [ %.079.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bn, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.bj = mul i32 %.079.i.epil, 33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i.epil
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !32
  %i.bm = sext i8 %i.bl to i32
  %i.bn = xor i32 %i.bj, %i.bm                    ; 2 uses
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_hash_string.exit, label %.lr.ph.i.epil, !llvm.loop !44

_hash_string.exit:                                ; preds = %_hash_string.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.07.lcssa.i = phi i32 [ 5381, %bb.b ], [ %i.bi, %_hash_string.exit.loopexit.unr-lcssa ], [ %i.bn, %.lr.ph.i.epil ]
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !48 ; 4 uses
  %i.bq = getelementptr i8, ptr %i.g, i64 644
  %.val = load i32, ptr %i.bq, align 4, !tbaa !62
  %i.br = and i32 %.val, 256
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 144
  %6 = load <2 x i32>, ptr %i.bs, align 16, !tbaa !14
  %7 = sitofp <2 x i32> %6 to <2 x float>         ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  %9 = extractelement <2 x float> %7, i64 1
  %10 = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %8, float %9)
  %i.bt = fpext fast float %10 to double
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !63
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, 8.000000e-02
  %i.bx = fpext reassoc nsz arcp contract afn float %i.bw to double
  %i.by = fmul reassoc nsz arcp contract afn double %i.bx, 1.250000e-03
  %i.bz = fadd reassoc nsz arcp contract afn double %i.by, 1.250000e-03 ; 2 uses
  %.not81 = icmp eq i32 %i.br, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !64 ; 2 uses
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, -1.000000e+00
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cc)
  %i.ce = fcmp reassoc nsz arcp contract afn ogt float %i.cd, f0x3C23D70A
  %i.cf = select i1 %.not81, i1 %i.ce, i1 false
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !65
  %i.ci = fpext reassoc nsz arcp contract afn float %i.ch to double
  %i.cj = fpext reassoc nsz arcp contract afn float %i.cb to double
  %i.ck = fmul reassoc nsz arcp contract afn double %i.cj, %i.bt ; 3 uses
  %i.cl = fdiv reassoc nsz arcp contract afn double %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !66 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph90, label %.loopexit82

.lr.ph90:                                         ; preds = %_hash_string.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !67
  %i.cr = sitofp reassoc nsz arcp contract afn i32 %i.bp to double
  %i.cs = fmul reassoc nnan nsz arcp contract afn double %i.cr, 3.000000e-01
  %i.ct = tail call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.cs, double 1.000000e+00)
  %i.cu = fptosi double %i.ct to i32
  %i.cv = urem i32 %.07.lcssa.i, %i.cu
  %i.cw = sext i32 %i.bp to i64
  %i.cx = shl nsw i64 %i.cw, 2
  %i.cy = icmp sgt i32 %i.bp, 0
  %i.cz = uitofp reassoc nsz arcp contract afn nneg i32 %i.cv to double
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.cq, 1.905000e-01
  br i1 %i.cy, label %.lr.ph90.split, label %.loopexit82

.lr.ph90.split:                                   ; preds = %.lr.ph90
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !68
  %i.de = load i32, ptr %5, align 4, !tbaa !69
  %wide.trip.count = zext nneg i32 %i.cn to i64
  %i.df = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ck
  %i.dg = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ck
  %i.dh = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = insertelement <2 x float> poison, float %i.db, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph90.split, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph90.split ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.dk = mul nuw i64 %i.cx, %indvars.iv          ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dk
  %i.dn = trunc i64 %indvars.iv to i32
  %i.do = add i32 %i.dd, %i.dn
  %i.dp = sitofp reassoc nsz arcp contract afn i32 %i.do to double
  %i.dq = fmul reassoc nsz arcp contract afn double %i.dp, %i.df ; 2 uses
  %i.dr = insertelement <2 x double> poison, double %i.dq, i64 1
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond94.not, label %.loopexit82, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %.07687 = phi i32 [ 0, %.lr.ph ], [ %i.gw, %.loopexit ] ; 2 uses
  %.07786 = phi ptr [ %i.dm, %.lr.ph ], [ %i.gu, %.loopexit ] ; 4 uses
  %.07885 = phi ptr [ %i.dl, %.lr.ph ], [ %i.gv, %.loopexit ] ; 4 uses
  %i.ds = add nsw i32 %i.de, %.07687
  %i.dt = sitofp reassoc nsz arcp contract afn i32 %i.ds to double
  %i.du = fmul reassoc nsz arcp contract afn double %i.dt, %i.dg
  %i.dv = fadd reassoc nsz arcp contract afn double %i.du, %i.cz ; 2 uses
  br i1 %i.cf, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.dw = insertelement <2 x double> %i.dr, double %i.dv, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.084 = phi i32 [ %i.er, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.07583 = phi float [ %i.eq, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %i.dx = uitofp nsz nneg i32 %.084 to float      ; 2 uses
  %i.dy = fmul reassoc nnan nsz arcp contract afn float %i.dx, f0x3D430C31
  %i.dz = fmul reassoc nnan nsz arcp contract afn float %i.dx, f0x3FCF3CF4 ; 2 uses
  %i.ea = fptosi float %i.dz to i32
  %i.eb = uitofp nsz nneg i32 %i.ea to float
  %i.ec = fsub reassoc nnan nsz arcp contract afn float %i.dz, %i.eb
  %i.ed = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.ec, i64 1
  %i.ef = fpext nnan <2 x float> %i.ee to <2 x double>
  %i.eg = fmul reassoc nsz arcp contract afn <2 x double> %i.di, %i.ef
  %i.eh = fptrunc <2 x double> %i.eg to <2 x float>
  %i.ei = fpext <2 x float> %i.eh to <2 x double>
  %i.ej = fadd reassoc nsz arcp contract afn <2 x double> %i.dw, %i.ei ; 2 uses
  %i.ek = extractelement <2 x double> %i.ej, i64 0
  %i.el = extractelement <2 x double> %i.ej, i64 1
  %i.em = tail call reassoc nsz arcp contract afn fastcc double @_simplex_2d_noise(double noundef %i.ek, double noundef %i.el, double noundef %i.bz)
  %i.en = fmul reassoc nsz arcp contract afn double %i.em, f0x3FA8618618618618
  %i.eo = fpext reassoc nsz arcp contract afn float %.07583 to double
  %i.ep = fadd reassoc nsz arcp contract afn double %i.en, %i.eo
  %i.eq = fptrunc reassoc nsz arcp contract afn double %i.ep to float ; 2 uses
  %i.er = add nuw nsw i32 %.084, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.er, 21
  br i1 %exitcond.not, label %.loopexit, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.es = tail call reassoc nsz arcp contract afn fastcc double @_simplex_2d_noise(double noundef %i.dv, double noundef %i.dq, double noundef %i.bz)
  %i.et = fptrunc reassoc nsz arcp contract afn double %i.es to float
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.d
  %.1 = phi nsz float [ %i.et, %bb.d ], [ %i.eq, %.preheader ]
  %i.eu = load float, ptr %.07885, align 4, !tbaa !12 ; 2 uses
  %i.ev = insertelement <2 x float> %i.dj, float %i.eu, i64 0
  %i.ew = insertelement <2 x float> <float 1.270000e+00, float poison>, float %.1, i64 1
  %i.ex = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, %i.ew
  %i.ey = fadd reassoc nsz arcp contract afn <2 x float> %i.ex, <float -0.000000e+00, float 6.350000e+01> ; 3 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ey, zeroinitializer
  %i.fa = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ey, splat (float 1.270000e+02)
  %i.fb = select <2 x i1> %i.fa, <2 x float> %i.ey, <2 x float> splat (float 1.270000e+02)
  %i.fc = select <2 x i1> %i.ez, <2 x float> %i.fb, <2 x float> zeroinitializer ; 4 uses
  %i.fd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fc, splat (float 1.260000e+02)
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.fc, <2 x float> splat (float 1.260000e+02)
  %i.ff = fptosi <2 x float> %i.fe to <2 x i32>   ; 4 uses
  %i.fg = uitofp <2 x i32> %i.ff to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub reassoc nnan nsz arcp contract afn <2 x float> %i.fc, %i.fg
  %i.fh = extractelement <2 x float> %foldExtExtBinop, i64 1
  %foldExtExtBinop100 = fsub reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fg
  %i.fi = extractelement <2 x float> %foldExtExtBinop100, i64 0 ; 3 uses
  %i.fj = shl nsw <2 x i32> %i.ff, <i32 7, i32 0> ; 3 uses
  %shift = shufflevector <2 x i32> %i.ff, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = add nuw nsw <2 x i32> %i.fj, %shift
  %i.fk = extractelement <2 x i32> %foldExtExtBinop102, i64 0
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12
  %i.fo = add <2 x i32> %i.fj, <i32 128, i32 1>   ; 2 uses
  %i.fp = shufflevector <2 x i32> %i.ff, <2 x i32> %i.fj, <2 x i32> <i32 1, i32 2>
  %i.fq = add nsw <2 x i32> %i.fo, %i.fp          ; 2 uses
  %i.fr = extractelement <2 x i32> %i.fq, i64 1
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !12
  %i.fv = extractelement <2 x i32> %i.fq, i64 0
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !12
  %i.fz = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.fo)
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !12
  %i.gd = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fi ; 2 uses
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, %i.fn
  %i.gf = fmul reassoc nsz arcp contract afn float %i.fi, %i.fy
  %i.gg = fadd reassoc nsz arcp contract afn float %i.ge, %i.gf ; 2 uses
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gd, %i.fu
  %i.gi = fmul reassoc nsz arcp contract afn float %i.fi, %i.gc
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gh, %i.gi
  %i.gk = fsub reassoc nsz arcp contract afn float %i.gj, %i.gg
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, %i.fh
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gg, %i.eu
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gm, %i.gl
  store float %i.gn, ptr %.07786, align 4, !tbaa !12
  %i.go = getelementptr inbounds nuw i8, ptr %.07885, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !12
  %i.gq = getelementptr inbounds nuw i8, ptr %.07786, i64 4
  store float %i.gp, ptr %i.gq, align 4, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %.07885, i64 8
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !12
  %i.gt = getelementptr inbounds nuw i8, ptr %.07786, i64 8
  store float %i.gs, ptr %i.gt, align 4, !tbaa !12
  %i.gu = getelementptr inbounds nuw i8, ptr %.07786, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %.07885, i64 16
  %i.gw = add nuw nsw i32 %.07687, 1              ; 2 uses
  %exitcond92.not = icmp eq i32 %i.gw, %i.bp
  br i1 %exitcond92.not, label %._crit_edge, label %bb.c

.loopexit82:                                      ; preds = %._crit_edge, %_hash_string.exit, %.lr.ph90, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc double @_simplex_2d_noise(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #7 {
vector.ph:
  %broadcast.splatinsert = insertelement <4 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.a = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, <double 4.910000e-01, double 9.441000e-01, double 1.728000e+00, double poison>
  %broadcast.splatinsert35 = insertelement <4 x double> poison, double %2, i64 0
  %broadcast.splat36 = shufflevector <4 x double> %broadcast.splatinsert35, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.b = fdiv reassoc nsz arcp contract afn <4 x double> %i.a, %broadcast.splat36 ; 3 uses
  %i.c = fadd reassoc nsz arcp contract afn <4 x double> %i.b, <double 0.000000e+00, double 1.000000e+00, double 2.000000e+00, double 3.000000e+00>
  %broadcast.splatinsert37 = insertelement <4 x double> poison, double %1, i64 0
  %broadcast.splat38 = shufflevector <4 x double> %broadcast.splatinsert37, <4 x double> poison, <4 x i32> zeroinitializer
  %i.d = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat38, <double 4.910000e-01, double 9.441000e-01, double 1.728000e+00, double poison>
  %i.e = fdiv reassoc nsz arcp contract afn <4 x double> %i.d, %broadcast.splat36 ; 3 uses
  %i.f = fadd reassoc nsz arcp contract afn <4 x double> %i.c, %i.e
  %i.g = fmul reassoc nsz arcp contract afn <4 x double> %i.f, splat (double f0x3FD5555555555555) ; 3 uses
  %i.h = fadd reassoc nsz arcp contract afn <4 x double> %i.g, %i.b ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ule <4 x double> %i.h, zeroinitializer
  %i.j = sext <4 x i1> %i.i to <4 x i32>
  %i.k = fptosi <4 x double> %i.h to <4 x i32>
  %i.l = add nsw <4 x i32> %i.j, %i.k             ; 3 uses
  %i.m = fadd reassoc nsz arcp contract afn <4 x double> %i.g, %i.e ; 2 uses
  %i.n = fcmp reassoc nsz arcp contract afn ule <4 x double> %i.m, zeroinitializer
  %i.o = sext <4 x i1> %i.n to <4 x i32>
  %i.p = fptosi <4 x double> %i.m to <4 x i32>
  %i.q = add nsw <4 x i32> %i.o, %i.p             ; 3 uses
  %i.r = add nsw <4 x i32> %i.l, %i.q
  %i.s = fadd reassoc nsz arcp contract afn <4 x double> %i.g, <double 0.000000e+00, double 1.000000e+00, double 2.000000e+00, double 3.000000e+00> ; 2 uses
  %i.t = fcmp reassoc nsz arcp contract afn ule <4 x double> %i.s, zeroinitializer
  %i.u = sext <4 x i1> %i.t to <4 x i32>
  %i.v = fptosi <4 x double> %i.s to <4 x i32>
  %i.w = add nsw <4 x i32> %i.u, %i.v             ; 3 uses
  %i.x = add nsw <4 x i32> %i.r, %i.w
  %i.y = sitofp reassoc nsz arcp contract afn <4 x i32> %i.x to <4 x double>
  %i.z = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.y, splat (double f0x3FC5555555555555) ; 3 uses
  %i.aa = sitofp reassoc nsz arcp contract afn <4 x i32> %i.q to <4 x double>
  %i.ab = fsub reassoc nsz arcp contract afn <4 x double> %i.z, %i.aa
  %i.ac = fadd reassoc nsz arcp contract afn <4 x double> %i.ab, %i.e ; 9 uses
  %i.ad = fadd reassoc nsz arcp contract afn <4 x double> %i.ac, splat (double -5.000000e-01) ; 3 uses
  %i.ae = fmul reassoc nsz arcp contract afn <4 x double> %i.ad, %i.ad
  %i.af = sitofp reassoc nsz arcp contract afn <4 x i32> %i.w to <4 x double>
  %i.ag = fsub reassoc nsz arcp contract afn <4 x double> %i.z, %i.af ; 2 uses
  %i.ah = fadd reassoc nsz arcp contract afn <4 x double> %i.ag, <double -5.000000e-01, double 5.000000e-01, double 1.500000e+00, double 2.500000e+00> ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn <4 x double> %i.ah, %i.ah
  %i.aj = fadd reassoc nsz arcp contract afn <4 x double> %i.ae, %i.ai
  %i.ak = sitofp reassoc nsz arcp contract afn <4 x i32> %i.l to <4 x double>
  %i.al = fsub reassoc nsz arcp contract afn <4 x double> %i.z, %i.ak
  %i.am = fadd reassoc nsz arcp contract afn <4 x double> %i.al, %i.b ; 9 uses
  %i.an = fadd reassoc nsz arcp contract afn <4 x double> %i.am, splat (double -5.000000e-01) ; 3 uses
  %i.ao = fmul reassoc nsz arcp contract afn <4 x double> %i.an, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn <4 x double> %i.aj, %i.ao
  %i.aq = fsub reassoc nsz arcp contract afn <4 x double> splat (double 6.000000e-01), %i.ap ; 3 uses
  %i.ar = fcmp reassoc nsz arcp contract afn uge <4 x double> %i.aq, zeroinitializer ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn <4 x double> %i.aq, %i.aq ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn <4 x double> %i.as, %i.as
  %i.au = and <4 x i32> %i.l, splat (i32 255)     ; 3 uses
  %i.av = zext nneg <4 x i32> %i.au to <4 x i64>  ; 2 uses
  %wide.gep69 = getelementptr [8 x i8], ptr @perm_mod, <4 x i64> %i.av
  %wide.gep70 = getelementptr i8, <4 x ptr> %wide.gep69, i64 8
  %i.aw = and <4 x i32> %i.q, splat (i32 255)     ; 3 uses
  %i.ax = zext nneg <4 x i32> %i.aw to <4 x i64>  ; 2 uses
  %wide.gep65 = getelementptr [8 x i8], ptr @perm, <4 x i64> %i.ax
  %wide.gep66 = getelementptr i8, <4 x ptr> %wide.gep65, i64 8
  %i.ay = and <4 x i32> %i.w, splat (i32 255)     ; 3 uses
  %i.az = zext nneg <4 x i32> %i.ay to <4 x i64>
  %wide.gep62 = getelementptr inbounds nuw [8 x i8], ptr @perm, <4 x i64> %i.az ; 2 uses
  %wide.gep63 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep62, i64 8
  %wide.masked.gather64 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep63, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !37
  %wide.gep67 = getelementptr [8 x i8], <4 x ptr> %wide.gep66, <4 x i64> %wide.masked.gather64
  %wide.masked.gather68 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep67, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !37
  %wide.gep71 = getelementptr [8 x i8], <4 x ptr> %wide.gep70, <4 x i64> %wide.masked.gather68
  %wide.masked.gather72 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep71, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !37
  %wide.gep101 = getelementptr inbounds nuw [24 x i8], ptr @grad3, <4 x i64> %wide.masked.gather72 ; 3 uses
  %wide.gep103 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep101, i64 8
  %i.ba = insertelement <4 x i1> %i.ar, i1 false, i64 3 ; 3 uses
  %wide.masked.gather104 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep103, <4 x i1> %i.ba, <4 x double> poison), !tbaa !70
  %i.bb = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather104, %i.ad
  %wide.masked.gather102 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep101, <4 x i1> %i.ba, <4 x double> poison), !tbaa !70
  %i.bc = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather102, %i.an
  %i.bd = fadd reassoc nsz arcp contract afn <4 x double> %i.bb, %i.bc
  %wide.gep105 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep101, i64 16
  %wide.masked.gather106 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep105, <4 x i1> %i.ba, <4 x double> poison), !tbaa !70
  %i.be = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather106, %i.ah
  %i.bf = fadd reassoc nsz arcp contract afn <4 x double> %i.bd, %i.be
  %i.bg = fmul reassoc nsz arcp contract afn <4 x double> %i.at, %i.bf
  %i.bh = fcmp reassoc nsz arcp contract afn ult <4 x double> %i.am, %i.ac ; 5 uses
  %i.bi = xor <4 x i1> %i.bh, splat (i1 true)
  %i.bj = fadd reassoc nsz arcp contract afn <4 x double> %i.ag, <double 0.000000e+00, double 1.000000e+00, double 2.000000e+00, double 3.000000e+00> ; 9 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ult <4 x double> %i.ac, %i.bj ; 2 uses
  %i.bl = select <4 x i1> %i.bi, <4 x i1> %i.bk, <4 x i1> zeroinitializer ; 2 uses
  %i.bm = insertelement <4 x i1> %i.bl, i1 false, i64 3 ; 2 uses
  %not.113 = xor <4 x i1> %i.bm, splat (i1 true)  ; 2 uses
  %i.bn = uitofp <4 x i1> %not.113 to <4 x double>
  %i.bo = fsub reassoc nsz arcp contract afn <4 x double> %i.ac, %i.bn
  %i.bp = fadd reassoc nsz arcp contract afn <4 x double> %i.bo, splat (double f0x3FD5555555555555) ; 3 uses
  %i.bq = fmul reassoc nsz arcp contract afn <4 x double> %i.bp, %i.bp
  %not.112 = xor <4 x i1> %i.bh, splat (i1 true)
  %i.br = fcmp reassoc nsz arcp contract afn olt <4 x double> %i.ac, %i.bj ; 2 uses
  %i.bs = select <4 x i1> %i.bh, <4 x i1> %i.br, <4 x i1> zeroinitializer ; 2 uses
  %not. = xor <4 x i1> %i.bs, splat (i1 true)
  %i.bt = fcmp reassoc nsz arcp contract afn uge <4 x double> %i.am, %i.bj ; 2 uses
  %narrow110 = select <4 x i1> %not., <4 x i1> %i.bt, <4 x i1> zeroinitializer
  %narrow111 = select <4 x i1> %not.112, <4 x i1> splat (i1 true), <4 x i1> %narrow110 ; 2 uses
  %i.bu = uitofp <4 x i1> %narrow111 to <4 x double>
  %i.bv = fsub reassoc nsz arcp contract afn <4 x double> %i.am, %i.bu
  %i.bw = fadd reassoc nsz arcp contract afn <4 x double> %i.bv, splat (double f0x3FD5555555555555) ; 3 uses
  %i.bx = fmul reassoc nsz arcp contract afn <4 x double> %i.bw, %i.bw
  %i.by = fadd reassoc nsz arcp contract afn <4 x double> %i.bq, %i.bx
  %i.bz = select <4 x i1> %i.bh, <4 x i1> splat (i1 true), <4 x i1> %i.bk
  %i.ca = xor <4 x i1> %i.bz, splat (i1 true)     ; 2 uses
  %i.cb = insertelement <4 x i1> %i.ca, i1 false, i64 3
  %i.cc = xor <4 x i1> %i.br, <i1 true, i1 true, i1 true, i1 poison>
  %i.cd = select <4 x i1> %i.bh, <4 x i1> %i.cc, <4 x i1> <i1 false, i1 false, i1 false, i1 poison>
  %i.ce = insertelement <4 x i1> %i.cd, i1 false, i64 3 ; 3 uses
  %i.cf = select <4 x i1> %i.ce, <4 x i1> %i.bt, <4 x i1> zeroinitializer
  %i.cg = select <4 x i1> %i.cb, <4 x i1> splat (i1 true), <4 x i1> %i.cf
  %narrow116 = xor <4 x i1> %i.cg, splat (i1 true) ; 2 uses
  %i.ch = uitofp <4 x i1> %narrow116 to <4 x double>
  %i.ci = fsub reassoc nsz arcp contract afn <4 x double> %i.bj, %i.ch
  %i.cj = fadd reassoc nsz arcp contract afn <4 x double> %i.ci, splat (double f0x3FD5555555555555) ; 3 uses
  %i.ck = fmul reassoc nsz arcp contract afn <4 x double> %i.cj, %i.cj
  %i.cl = fadd reassoc nsz arcp contract afn <4 x double> %i.by, %i.ck
  %i.cm = fsub reassoc nsz arcp contract afn <4 x double> splat (double 6.000000e-01), %i.cl ; 3 uses
  %i.cn = fcmp reassoc nsz arcp contract afn uge <4 x double> %i.cm, zeroinitializer ; 2 uses
  %i.co = fmul reassoc nsz arcp contract afn <4 x double> %i.cm, %i.cm ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn <4 x double> %i.co, %i.co
  %predphi47 = zext <4 x i1> %narrow116 to <4 x i32>
  %i.cq = add nuw nsw <4 x i32> %i.ay, %predphi47
  %i.cr = zext nneg <4 x i32> %i.cq to <4 x i64>
  %wide.gep54 = getelementptr inbounds nuw [8 x i8], ptr @perm, <4 x i64> %i.cr
  %wide.masked.gather55 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep54, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !37
  %wide.gep56 = getelementptr [8 x i8], ptr @perm, <4 x i64> %wide.masked.gather55
  %predphi45 = zext <4 x i1> %not.113 to <4 x i32>
  %i.cs = add nuw nsw <4 x i32> %i.aw, %predphi45
  %i.ct = zext nneg <4 x i32> %i.cs to <4 x i64>
  %wide.gep57 = getelementptr [8 x i8], <4 x ptr> %wide.gep56, <4 x i64> %i.ct
  %wide.masked.gather58 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep57, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !37
  %wide.gep59 = getelementptr [8 x i8], ptr @perm_mod, <4 x i64> %wide.masked.gather58
  %predphi44 = zext <4 x i1> %narrow111 to <4 x i32>
  %i.cu = add nuw nsw <4 x i32> %i.au, %predphi44
  %i.cv = zext nneg <4 x i32> %i.cu to <4 x i64>
  %wide.gep60 = getelementptr [8 x i8], <4 x ptr> %wide.gep59, <4 x i64> %i.cv
  %wide.masked.gather61 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep60, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !37
  %wide.gep94 = getelementptr inbounds nuw [24 x i8], ptr @grad3, <4 x i64> %wide.masked.gather61 ; 3 uses
  %wide.gep96 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep94, i64 8
  %i.cw = insertelement <4 x i1> %i.cn, i1 false, i64 3 ; 3 uses
  %wide.masked.gather97 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep96, <4 x i1> %i.cw, <4 x double> poison), !tbaa !70
  %i.cx = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather97, %i.bp
  %wide.masked.gather95 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep94, <4 x i1> %i.cw, <4 x double> poison), !tbaa !70
  %i.cy = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather95, %i.bw
  %i.cz = fadd reassoc nsz arcp contract afn <4 x double> %i.cx, %i.cy
  %wide.gep98 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep94, i64 16
  %wide.masked.gather99 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep98, <4 x i1> %i.cw, <4 x double> poison), !tbaa !70
  %i.da = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather99, %i.cj
  %i.db = fadd reassoc nsz arcp contract afn <4 x double> %i.cz, %i.da
  %i.dc = fmul reassoc nsz arcp contract afn <4 x double> %i.cp, %i.db
  %i.dd = uitofp <4 x i1> %i.ce to <4 x double>
  %i.de = fsub reassoc nsz arcp contract afn <4 x double> %i.ac, %i.dd
  %i.df = fadd reassoc nsz arcp contract afn <4 x double> %i.de, splat (double f0x3FC5555555555555) ; 3 uses
  %i.dg = fmul reassoc nsz arcp contract afn <4 x double> %i.df, %i.df
  %i.dh = fcmp reassoc nsz arcp contract afn oge <4 x double> %i.am, %i.bj ; 2 uses
  %narrow = select <4 x i1> %i.bl, <4 x i1> %i.dh, <4 x i1> zeroinitializer
  %narrow109 = select <4 x i1> %i.ca, <4 x i1> splat (i1 true), <4 x i1> %narrow ; 2 uses
  %i.di = uitofp <4 x i1> %narrow109 to <4 x double>
  %i.dj = fsub reassoc nsz arcp contract afn <4 x double> %i.am, %i.di
  %i.dk = fadd reassoc nsz arcp contract afn <4 x double> %i.dj, splat (double f0x3FC5555555555555) ; 3 uses
  %i.dl = fmul reassoc nsz arcp contract afn <4 x double> %i.dk, %i.dk
  %i.dm = fadd reassoc nsz arcp contract afn <4 x double> %i.dg, %i.dl
  %i.dn = xor <4 x i1> %i.dh, splat (i1 true)
  %i.do = insertelement <4 x i1> %i.bs, i1 false, i64 3
  %predphi42.v = select <4 x i1> %i.bm, <4 x i1> %i.dn, <4 x i1> %i.do ; 2 uses
  %i.dp = uitofp <4 x i1> %predphi42.v to <4 x double>
  %i.dq = fsub reassoc nsz arcp contract afn <4 x double> %i.bj, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn <4 x double> %i.dq, splat (double f0x3FC5555555555555) ; 3 uses
  %i.ds = fmul reassoc nsz arcp contract afn <4 x double> %i.dr, %i.dr
  %i.dt = fadd reassoc nsz arcp contract afn <4 x double> %i.dm, %i.ds
  %i.du = fsub reassoc nsz arcp contract afn <4 x double> splat (double 6.000000e-01), %i.dt ; 3 uses
  %i.dv = fcmp reassoc nsz arcp contract afn uge <4 x double> %i.du, zeroinitializer ; 2 uses
  %i.dw = fmul reassoc nsz arcp contract afn <4 x double> %i.du, %i.du ; 2 uses
  %i.dx = fmul reassoc nsz arcp contract afn <4 x double> %i.dw, %i.dw
  %predphi42 = zext <4 x i1> %predphi42.v to <4 x i32>
  %i.dy = add nuw nsw <4 x i32> %i.ay, %predphi42
  %i.dz = zext nneg <4 x i32> %i.dy to <4 x i64>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr @perm, <4 x i64> %i.dz
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !37
  %wide.gep48 = getelementptr [8 x i8], ptr @perm, <4 x i64> %wide.masked.gather
  %predphi40 = zext <4 x i1> %i.ce to <4 x i32>
  %i.ea = add nuw nsw <4 x i32> %i.aw, %predphi40
  %i.eb = zext nneg <4 x i32> %i.ea to <4 x i64>
  %wide.gep49 = getelementptr [8 x i8], <4 x ptr> %wide.gep48, <4 x i64> %i.eb
  %wide.masked.gather50 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep49, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !37
  %wide.gep51 = getelementptr [8 x i8], ptr @perm_mod, <4 x i64> %wide.masked.gather50
  %predphi39 = zext <4 x i1> %narrow109 to <4 x i32>
  %i.ec = add nuw nsw <4 x i32> %i.au, %predphi39
  %i.ed = zext nneg <4 x i32> %i.ec to <4 x i64>
  %wide.gep52 = getelementptr [8 x i8], <4 x ptr> %wide.gep51, <4 x i64> %i.ed
  %wide.masked.gather53 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep52, <4 x i1> <i1 true, i1 true, i1 true, i1 false>, <4 x i64> poison), !tbaa !37
  %wide.gep87 = getelementptr inbounds nuw [24 x i8], ptr @grad3, <4 x i64> %wide.masked.gather53 ; 3 uses
  %wide.gep89 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep87, i64 8
  %i.ee = insertelement <4 x i1> %i.dv, i1 false, i64 3 ; 3 uses
  %wide.masked.gather90 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep89, <4 x i1> %i.ee, <4 x double> poison), !tbaa !70
  %i.ef = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather90, %i.df
  %wide.masked.gather88 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep87, <4 x i1> %i.ee, <4 x double> poison), !tbaa !70
  %i.eg = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather88, %i.dk
  %i.eh = fadd reassoc nsz arcp contract afn <4 x double> %i.ef, %i.eg
  %wide.gep91 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep87, i64 16
  %wide.masked.gather92 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep91, <4 x i1> %i.ee, <4 x double> poison), !tbaa !70
  %i.ei = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather92, %i.dr
  %i.ej = fadd reassoc nsz arcp contract afn <4 x double> %i.eh, %i.ei
  %i.ek = fmul reassoc nsz arcp contract afn <4 x double> %i.dx, %i.ej
  %i.el = fmul reassoc nsz arcp contract afn <4 x double> %i.ac, %i.ac
  %i.em = fmul reassoc nsz arcp contract afn <4 x double> %i.bj, %i.bj
  %i.en = fadd reassoc nsz arcp contract afn <4 x double> %i.el, %i.em
  %i.eo = fmul reassoc nsz arcp contract afn <4 x double> %i.am, %i.am
  %i.ep = fadd reassoc nsz arcp contract afn <4 x double> %i.en, %i.eo
  %i.eq = fsub reassoc nsz arcp contract afn <4 x double> splat (double 6.000000e-01), %i.ep ; 3 uses
  %i.er = fcmp reassoc nsz arcp contract afn uge <4 x double> %i.eq, zeroinitializer ; 2 uses
  %i.es = fmul reassoc nsz arcp contract afn <4 x double> %i.eq, %i.eq ; 2 uses
  %i.et = fmul reassoc nsz arcp contract afn <4 x double> %i.es, %i.es
  %i.eu = insertelement <4 x i1> %i.er, i1 false, i64 3 ; 6 uses
  %wide.masked.gather73 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep62, <4 x i1> %i.eu, <4 x i64> poison), !tbaa !37
  %wide.gep74 = getelementptr [8 x i8], ptr @perm, <4 x i64> %wide.masked.gather73
  %wide.gep75 = getelementptr [8 x i8], <4 x ptr> %wide.gep74, <4 x i64> %i.ax
  %wide.masked.gather76 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep75, <4 x i1> %i.eu, <4 x i64> poison), !tbaa !37
  %wide.gep77 = getelementptr [8 x i8], ptr @perm_mod, <4 x i64> %wide.masked.gather76
  %wide.gep78 = getelementptr [8 x i8], <4 x ptr> %wide.gep77, <4 x i64> %i.av
  %wide.masked.gather79 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep78, <4 x i1> %i.eu, <4 x i64> poison), !tbaa !37
  %wide.gep80 = getelementptr inbounds nuw [24 x i8], ptr @grad3, <4 x i64> %wide.masked.gather79 ; 3 uses
  %wide.gep82 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep80, i64 8
  %wide.masked.gather83 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep82, <4 x i1> %i.eu, <4 x double> poison), !tbaa !70
  %i.ev = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather83, %i.ac
  %wide.masked.gather81 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep80, <4 x i1> %i.eu, <4 x double> poison), !tbaa !70
  %i.ew = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather81, %i.am
  %i.ex = fadd reassoc nsz arcp contract afn <4 x double> %i.ev, %i.ew
  %wide.gep84 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep80, i64 16
  %wide.masked.gather85 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep84, <4 x i1> %i.eu, <4 x double> poison), !tbaa !70
  %i.ey = fmul reassoc nsz arcp contract afn <4 x double> %wide.masked.gather85, %i.bj
  %i.ez = fadd reassoc nsz arcp contract afn <4 x double> %i.ex, %i.ey
  %i.fa = fmul reassoc nsz arcp contract afn <4 x double> %i.et, %i.ez
  %predphi86 = select nsz <4 x i1> %i.er, <4 x double> %i.fa, <4 x double> zeroinitializer ; 2 uses
  %i.fb = fadd reassoc nsz arcp contract afn <4 x double> %i.ek, %predphi86
  %predphi93 = select <4 x i1> %i.dv, <4 x double> %i.fb, <4 x double> %predphi86 ; 2 uses
  %i.fc = fadd reassoc nsz arcp contract afn <4 x double> %i.dc, %predphi93
  %predphi100 = select <4 x i1> %i.cn, <4 x double> %i.fc, <4 x double> %predphi93 ; 2 uses
  %i.fd = fadd reassoc nsz arcp contract afn <4 x double> %i.bg, %predphi100
  %predphi107 = select <4 x i1> %i.ar, <4 x double> %i.fd, <4 x double> %predphi100
  %i.fe = fmul reassoc nsz arcp contract afn <4 x double> %predphi107, <double 7.488000e+00, double 2.512000e+01, double 3.888000e+01, double poison>
  %i.ff = insertelement <4 x double> %i.fe, double 0.000000e+00, i64 3
  %i.fg = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ff)
  ret double %i.fg
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31  ; 4 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !73
  store i32 %i.c, ptr %i.b, align 4, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load <2 x float>, ptr %i.d, align 4, !tbaa !12
  store <2 x float> %i.f, ptr %i.e, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !75 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.h, ptr %i.i, align 4, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = fmul reassoc nsz arcp contract afn float %i.h, f0xBDBCA0B5
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.k) ; 2 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, 2.000000e+00
  %i.n = fmul reassoc nsz arcp contract afn float %i.l, 4.000000e+00
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, 1.000000e+00 ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, 2.500000e-01
  %broadcast.splatinsert12 = insertelement <8 x float> poison, float %i.m, i64 0
  %broadcast.splat13 = shufflevector <8 x float> %broadcast.splatinsert12, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <8 x float> poison, float %i.o, i64 0
  %broadcast.splat15 = shufflevector <8 x float> %broadcast.splatinsert14, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert16 = insertelement <8 x float> poison, float %i.p, i64 0
  %broadcast.splat17 = shufflevector <8 x float> %broadcast.splatinsert16, <8 x float> poison, <8 x i32> zeroinitializer
  %i.q = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat15
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %bb.a
  %indvars.iv19.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next20.i, %middle.block ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv19.i
  %i.r = trunc nuw nsw i64 %indvars.iv19.i to i32
  %i.s = uitofp nsz nneg i32 %i.r to float
  %i.t = fmul reassoc nnan nsz arcp contract afn float %i.s, f0x3C010204
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.t, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.preheader.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind18 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.preheader.i ], [ %vec.ind.next19, %vector.body ] ; 2 uses
  %i.u = uitofp nneg <8 x i32> %vec.ind18 to <8 x float>
  %i.v = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.u, splat (float f0x3C010204)
  %i.w = fadd reassoc nsz arcp contract afn <8 x float> %i.v, %broadcast.splat13 ; 2 uses
  %i.x = fdiv reassoc nsz arcp contract afn <8 x float> %broadcast.splat15, %i.w
  %i.y = fadd reassoc nsz arcp contract afn <8 x float> %i.x, splat (float -1.000000e+00)
  %i.z = tail call reassoc nsz arcp contract afn <8 x float> @llvm.log.v8f32(<8 x float> %i.y)
  %i.aa = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat17, %i.z
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.aa
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, splat (float 4.000000e+00)
  %i.ad = fsub reassoc nsz arcp contract afn <8 x float> splat (float 2.000000e+00), %i.ac
  %i.ae = fmul reassoc nsz arcp contract afn <8 x float> %i.ad, %i.q
  %i.af = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.ae)
  %i.ag = fadd reassoc nsz arcp contract afn <8 x float> %i.af, splat (float 1.000000e+00)
  %i.ah = fdiv reassoc nsz arcp contract afn <8 x float> %broadcast.splat15, %i.ag
  %i.ai = fsub reassoc nsz arcp contract afn <8 x float> %i.ah, %i.w
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.ai, splat (float 1.000000e+02)
  %i.ak = shl nuw nsw <8 x i64> %vec.ind, splat (i64 9)
  %wide.gep = getelementptr inbounds nuw i8, ptr %invariant.gep.i, <8 x i64> %i.ak
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.aj, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next19 = add <8 x i32> %vec.ind18, splat (i32 8)
  %i.al = icmp eq i64 %index.next, 128
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next20.i, 128
  br i1 %exitcond22.not.i, label %evaluate_grain_lut.exit, label %.preheader.i

evaluate_grain_lut.exit:                          ; preds = %middle.block
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(65552) ptr @calloc(i64 noundef 1, i64 noundef 65552) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31
  tail call void @free(ptr noundef %i.b) #22
  store ptr null, ptr %i.a, align 16, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @init_global(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #13 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %bb.b ] ; 5 uses
  %i.a = and i64 %indvars.iv.i, 254
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @permutation, i64 %i.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @perm, i64 %indvars.iv.i
  store i64 %i.d, ptr %i.e, align 16, !tbaa !37
  %i.f = urem i64 %i.d, 12
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @perm_mod, i64 %indvars.iv.i
  store i64 %i.f, ptr %i.g, align 16, !tbaa !37
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.h = and i64 %indvars.iv.next.i, 255
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @permutation, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @perm, i64 %indvars.iv.next.i
  store i64 %i.k, ptr %i.l, align 8, !tbaa !37
  %i.m = urem i64 %i.k, 12
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @perm_mod, i64 %indvars.iv.next.i
  store i64 %i.m, ptr %i.n, align 8, !tbaa !37
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 512
  br i1 %exitcond.not.i.1, label %_simplex_noise_init.exit, label %bb.b

_simplex_noise_init.exit:                         ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 24) #22 ; 9 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.a, ptr %i.b, align 16, !tbaa !89
  %i.c = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.5) #22 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !91
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %i.c, float noundef 2.132000e+02) #22
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !91
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.d, i32 noundef 0) #22
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !91
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.e, ptr noundef nonnull @.str.6) #22
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.f, ptr noundef %i.g) #22
  %i.h = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.8) #22 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !92
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.h, ptr noundef nonnull @.str.9) #22
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.j, ptr noundef %i.k) #22
  %i.l = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.11) #22 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !93
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.l, ptr noundef nonnull @.str.9) #22
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.n, ptr noundef %i.o) #22
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #5

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !96
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !32
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !32
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !32
  store ptr @introspection_init.f4, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 424), align 8, !tbaa !32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.18) #23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.5) #23
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.8) #23
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.11) #23
  %.not12 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %spec.select = select i1 %.not12, ptr %i.g, ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.f ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.18) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.5) #22
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.8) #22
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.11) #22
  %.not7 = icmp eq i32 %i.d, 0
  %. = select i1 %.not7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ %., %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr>, <4 x i1>, <4 x i64>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!16 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!17 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!18 = !{!"dt_dev_histogram_collection_params_t", !17, i64 0, !8, i64 8}
!19 = !{!"p1 int", !13, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !20, i64 8, !8, i64 16, !8, i64 20}
!22 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!23 = !{!"short", !7, i64 0}
!24 = !{!"", !23, i64 0, !23, i64 2}
!25 = !{!"", !8, i64 0, !7, i64 16}
!26 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !24, i64 48, !25, i64 64, !7, i64 96, !8, i64 112}
!27 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!28 = !{!"p1 float", !13, i64 0}
!29 = !{!"dt_dev_distorted_mask_cache_t", !28, i64 0, !22, i64 8, !20, i64 32, !20, i64 40}
!30 = !{!"dt_dev_pixelpipe_iop_t", !15, i64 0, !16, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !18, i64 40, !19, i64 56, !21, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !20, i64 120, !8, i64 128, !8, i64 132, !22, i64 136, !22, i64 156, !22, i64 176, !22, i64 196, !8, i64 216, !8, i64 220, !26, i64 224, !26, i64 352, !7, i64 480, !8, i64 516, !27, i64 520, !29, i64 528, !29, i64 576}
!31 = !{!30, !13, i64 16}
!32 = !{!7, !7, i64 0}
!33 = !{!"p1 omnipotent char", !13, i64 0}
!34 = !{!"dt_pthread_mutex_t", !7, i64 0}
!35 = !{!"double", !7, i64 0}
!36 = !{!"dt_iop_grain_data_t", !8, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !7, i64 16}
!37 = !{!20, !20, i64 0}
!38 = !{!"dt_iop_grain_params_v1_t", !8, i64 0, !11, i64 4, !11, i64 8}
!39 = !{!38, !8, i64 0}
!40 = !{!"dt_iop_grain_params_v2_t", !8, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!41 = !{!40, !8, i64 0}
!42 = !{!40, !11, i64 12}
!43 = !{!13, !13, i64 0}
!44 = distinct !{!44, !47}
!45 = !{!30, !8, i64 132}
!46 = !{!30, !16, i64 8}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!22, !8, i64 8}
!49 = !{!"any p2 pointer", !13, i64 0}
!50 = !{!"p1 long", !13, i64 0}
!51 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !13, i64 0}
!52 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !20, i64 8, !20, i64 16, !49, i64 24, !50, i64 32, !51, i64 40, !50, i64 48, !19, i64 56, !19, i64 64, !20, i64 72, !8, i64 80, !20, i64 88, !20, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!53 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !13, i64 0}
!54 = !{!"p1 _ZTS6_GList", !13, i64 0}
!55 = !{!"dt_dev_detail_mask_t", !22, i64 0, !20, i64 24, !28, i64 32}
!56 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!57 = !{!"dt_image_geoloc_t", !35, i64 0, !35, i64 8, !35, i64 16}
!58 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!59 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!60 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !20, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !20, i64 1448, !20, i64 1456, !20, i64 1464, !20, i64 1472, !8, i64 1480, !26, i64 1488, !7, i64 1616, !33, i64 1656, !8, i64 1664, !8, i64 1668, !56, i64 1672, !57, i64 1680, !58, i64 1704, !23, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !54, i64 1856, !59, i64 1864, !8, i64 1872, !8, i64 1876}
!61 = !{!"dt_dev_pixelpipe_t", !52, i64 0, !8, i64 120, !20, i64 128, !28, i64 136, !8, i64 144, !8, i64 148, !11, i64 152, !8, i64 156, !8, i64 160, !26, i64 176, !53, i64 304, !53, i64 312, !53, i64 320, !53, i64 328, !54, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !33, i64 360, !20, i64 368, !8, i64 376, !8, i64 380, !11, i64 384, !7, i64 388, !20, i64 416, !34, i64 424, !34, i64 464, !34, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !55, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !60, i64 656, !8, i64 2544, !33, i64 2552, !8, i64 2560, !54, i64 2568, !54, i64 2576, !54, i64 2584, !8, i64 2592, !28, i64 2600, !20, i64 2608, !7, i64 2616, !7, i64 2632}
!62 = !{!61, !8, i64 644}
!63 = !{!36, !11, i64 4}
!64 = !{!22, !11, i64 16}
!65 = !{!30, !11, i64 104}
!66 = !{!22, !8, i64 12}
!67 = !{!36, !11, i64 8}
!68 = !{!22, !8, i64 4}
!69 = !{!22, !8, i64 0}
!70 = !{!35, !35, i64 0}
!71 = distinct !{!71, !77, !78}
!72 = !{!"dt_iop_grain_params_t", !8, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!73 = !{!72, !8, i64 0}
!74 = !{!36, !8, i64 0}
!75 = !{!72, !11, i64 12}
!76 = !{!36, !11, i64 12}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!80 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!81 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!82 = !{!"", !27, i64 0, !27, i64 8}
!83 = !{!"", !15, i64 0, !8, i64 8}
!84 = !{!"", !82, i64 0, !83, i64 16}
!85 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!86 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!87 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!88 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !79, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !19, i64 608, !21, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !80, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !34, i64 712, !13, i64 752, !13, i64 760, !81, i64 768, !81, i64 776, !13, i64 784, !84, i64 792, !85, i64 824, !85, i64 832, !85, i64 840, !85, i64 848, !85, i64 856, !85, i64 864, !85, i64 872, !8, i64 880, !85, i64 888, !85, i64 896, !85, i64 904, !86, i64 912, !86, i64 920, !85, i64 928, !85, i64 936, !8, i64 944, !87, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !85, i64 1096, !13, i64 1104, !8, i64 1112}
!89 = !{!88, !13, i64 704}
!90 = !{!"dt_iop_grain_gui_data_t", !85, i64 0, !85, i64 8, !85, i64 16}
!91 = !{!90, !85, i64 0}
!92 = !{!90, !85, i64 8}
!93 = !{!90, !85, i64 16}
!94 = !{!"p1 _ZTS24dt_introspection_field_t", !13, i64 0}
!95 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !33, i64 8, !20, i64 16, !94, i64 24, !20, i64 32, !20, i64 40}
!96 = !{!95, !8, i64 0}
end_hunk_0
