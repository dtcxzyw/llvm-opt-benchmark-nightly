Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_grain?download=true
inline.NumInlined: 14
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dt_module_dt_version:bb.a

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
  %i.bt = load <2 x i32>, ptr %i.bs, align 16, !tbaa !14
  %i.bu = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bt to <2 x float> ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  %i.bw = extractelement <2 x float> %i.bu, i64 1
  %i.bx = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.bv, float %i.bw)
  %i.by = fpext fast float %i.bx to double
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !63
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, 8.000000e-02
  %i.cc = fpext reassoc nsz arcp contract afn float %i.cb to double
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, 1.250000e-03
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cd, 1.250000e-03 ; 2 uses
  %.not81 = icmp eq i32 %i.br, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !64 ; 2 uses
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, -1.000000e+00
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ch)
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.ci, f0x3C23D70A
  %i.ck = select i1 %.not81, i1 %i.cj, i1 false
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !65
  %i.cn = fpext reassoc nsz arcp contract afn float %i.cm to double
  %i.co = fpext reassoc nsz arcp contract afn float %i.cg to double
  %i.cp = fmul reassoc nsz arcp contract afn double %i.co, %i.by ; 3 uses
  %i.cq = fdiv reassoc nsz arcp contract afn double %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !66 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph90, label %.loopexit82

.lr.ph90:                                         ; preds = %_hash_string.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !67
  %i.cw = sitofp reassoc nsz arcp contract afn i32 %i.bp to double
  %i.cx = fmul reassoc nnan nsz arcp contract afn double %i.cw, 3.000000e-01
  %i.cy = tail call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.cx, double 1.000000e+00)
  %i.cz = fptosi double %i.cy to i32
  %i.da = urem i32 %.07.lcssa.i, %i.cz
  %i.db = sext i32 %i.bp to i64
  %i.dc = shl nsw i64 %i.db, 2
  %i.dd = icmp sgt i32 %i.bp, 0
  %i.de = uitofp reassoc nsz arcp contract afn nneg i32 %i.da to double
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.cv, 1.905000e-01
  br i1 %i.dd, label %.lr.ph90.split, label %.loopexit82

.lr.ph90.split:                                   ; preds = %.lr.ph90
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !68
  %i.dj = load i32, ptr %5, align 4, !tbaa !69
  %wide.trip.count = zext nneg i32 %i.cs to i64
  %i.dk = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.cp
  %i.dl = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.cp
  %i.dm = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = insertelement <2 x float> poison, float %i.dg, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph90.split, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph90.split ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.dp = mul nuw i64 %i.dc, %indvars.iv          ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dp
  %i.ds = trunc i64 %indvars.iv to i32
  %i.dt = add i32 %i.di, %i.ds
  %i.du = sitofp reassoc nsz arcp contract afn i32 %i.dt to double
  %i.dv = fmul reassoc nsz arcp contract afn double %i.du, %i.dk ; 2 uses
  %i.dw = insertelement <2 x double> poison, double %i.dv, i64 1
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond94.not, label %.loopexit82, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %.07687 = phi i32 [ 0, %.lr.ph ], [ %i.hb, %.loopexit ] ; 2 uses
  %.07786 = phi ptr [ %i.dr, %.lr.ph ], [ %i.gz, %.loopexit ] ; 4 uses
  %.07885 = phi ptr [ %i.dq, %.lr.ph ], [ %i.ha, %.loopexit ] ; 4 uses
  %i.dx = add nsw i32 %i.dj, %.07687
  %i.dy = sitofp reassoc nsz arcp contract afn i32 %i.dx to double
  %i.dz = fmul reassoc nsz arcp contract afn double %i.dy, %i.dl
  %i.ea = fadd reassoc nsz arcp contract afn double %i.dz, %i.de ; 2 uses
  br i1 %i.ck, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.c
  %i.eb = insertelement <2 x double> %i.dw, double %i.ea, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.084 = phi i32 [ %i.ew, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.07583 = phi float [ %i.ev, %.preheader ], [ 0.000000e+00, %.preheader.preheader ]
  %i.ec = uitofp nsz nneg i32 %.084 to float      ; 2 uses
  %i.ed = fmul reassoc nnan nsz arcp contract afn float %i.ec, f0x3D430C31
  %i.ee = fmul reassoc nnan nsz arcp contract afn float %i.ec, f0x3FCF3CF4 ; 2 uses
  %i.ef = fptosi float %i.ee to i32
  %i.eg = uitofp nsz nneg i32 %i.ef to float
  %i.eh = fsub reassoc nnan nsz arcp contract afn float %i.ee, %i.eg
  %i.ei = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eh, i64 1
  %i.ek = fpext reassoc nnan nsz arcp contract afn <2 x float> %i.ej to <2 x double>
  %i.el = fmul reassoc nsz arcp contract afn <2 x double> %i.dn, %i.ek
  %i.em = fptrunc reassoc nsz arcp contract afn <2 x double> %i.el to <2 x float>
  %i.en = fpext reassoc nsz arcp contract afn <2 x float> %i.em to <2 x double>
  %i.eo = fadd reassoc nsz arcp contract afn <2 x double> %i.eb, %i.en ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = extractelement <2 x double> %i.eo, i64 1
  %i.er = tail call reassoc nsz arcp contract afn fastcc double @_simplex_2d_noise(double noundef %i.ep, double noundef %i.eq, double noundef %i.ce)
  %i.es = fmul reassoc nsz arcp contract afn double %i.er, f0x3FA8618618618618
  %i.et = fpext reassoc nsz arcp contract afn float %.07583 to double
  %i.eu = fadd reassoc nsz arcp contract afn double %i.es, %i.et
  %i.ev = fptrunc reassoc nsz arcp contract afn double %i.eu to float ; 2 uses
  %i.ew = add nuw nsw i32 %.084, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ew, 21
  br i1 %exitcond.not, label %.loopexit, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.ex = tail call reassoc nsz arcp contract afn fastcc double @_simplex_2d_noise(double noundef %i.ea, double noundef %i.dv, double noundef %i.ce)
  %i.ey = fptrunc reassoc nsz arcp contract afn double %i.ex to float
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.d
  %.1 = phi nsz float [ %i.ey, %bb.d ], [ %i.ev, %.preheader ]
  %i.ez = load float, ptr %.07885, align 4, !tbaa !12 ; 2 uses
  %i.fa = insertelement <2 x float> %i.do, float %i.ez, i64 0
  %i.fb = insertelement <2 x float> <float 1.270000e+00, float poison>, float %.1, i64 1
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fb
  %i.fd = fadd reassoc nsz arcp contract afn <2 x float> %i.fc, <float -0.000000e+00, float 6.350000e+01> ; 3 uses
  %i.fe = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fd, zeroinitializer
  %i.ff = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fd, splat (float 1.270000e+02)
  %i.fg = select <2 x i1> %i.ff, <2 x float> %i.fd, <2 x float> splat (float 1.270000e+02)
  %i.fh = select <2 x i1> %i.fe, <2 x float> %i.fg, <2 x float> zeroinitializer ; 4 uses
  %i.fi = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fh, splat (float 1.260000e+02)
  %i.fj = select <2 x i1> %i.fi, <2 x float> %i.fh, <2 x float> splat (float 1.260000e+02)
  %i.fk = fptosi <2 x float> %i.fj to <2 x i32>   ; 4 uses
  %i.fl = uitofp nsz nneg <2 x i32> %i.fk to <2 x float> ; 2 uses
  %foldExtExtBinop = fsub reassoc nnan nsz arcp contract afn <2 x float> %i.fh, %i.fl
  %i.fm = extractelement <2 x float> %foldExtExtBinop, i64 1
  %foldExtExtBinop100 = fsub reassoc nsz arcp contract afn <2 x float> %i.fh, %i.fl
  %i.fn = extractelement <2 x float> %foldExtExtBinop100, i64 0 ; 3 uses
  %i.fo = shl nsw <2 x i32> %i.fk, <i32 7, i32 0> ; 3 uses
  %shift = shufflevector <2 x i32> %i.fk, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = add nuw nsw <2 x i32> %i.fo, %shift
  %i.fp = extractelement <2 x i32> %foldExtExtBinop102, i64 0
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !12
  %i.ft = add <2 x i32> %i.fo, <i32 128, i32 1>   ; 2 uses
  %i.fu = shufflevector <2 x i32> %i.fk, <2 x i32> %i.fo, <2 x i32> <i32 1, i32 2>
  %i.fv = add nsw <2 x i32> %i.ft, %i.fu          ; 2 uses
  %i.fw = extractelement <2 x i32> %i.fv, i64 1
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !12
  %i.ga = extractelement <2 x i32> %i.fv, i64 0
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !12
  %i.ge = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.ft)
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12
  %i.gi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fn ; 2 uses
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gi, %i.fs
  %i.gk = fmul reassoc nsz arcp contract afn float %i.fn, %i.gd
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gj, %i.gk ; 2 uses
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gi, %i.fz
  %i.gn = fmul reassoc nsz arcp contract afn float %i.fn, %i.gh
  %i.go = fadd reassoc nsz arcp contract afn float %i.gm, %i.gn
  %i.gp = fsub reassoc nsz arcp contract afn float %i.go, %i.gl
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, %i.fm
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gl, %i.ez
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gr, %i.gq
  store float %i.gs, ptr %.07786, align 4, !tbaa !12
  %i.gt = getelementptr inbounds nuw i8, ptr %.07885, i64 4
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !12
  %i.gv = getelementptr inbounds nuw i8, ptr %.07786, i64 4
  store float %i.gu, ptr %i.gv, align 4, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %.07885, i64 8
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %.07786, i64 8
  store float %i.gx, ptr %i.gy, align 4, !tbaa !12
  %i.gz = getelementptr inbounds nuw i8, ptr %.07786, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %.07885, i64 16
  %i.hb = add nuw nsw i32 %.07687, 1              ; 2 uses
  %exitcond92.not = icmp eq i32 %i.hb, %i.bp
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
end_hunk_0
