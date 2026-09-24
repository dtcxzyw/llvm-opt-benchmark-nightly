Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_tmidequalizer?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@filter_frame:bb.a
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv148.i.us259
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %.lr.ph104.i.us260
  %indvars.iv134.i.us261 = phi i64 [ 0, %.lr.ph104.i.us260 ], [ %indvars.iv.next135.i.us277, %bb.ag ] ; 4 uses
  %.076102.i.us262 = phi float [ %i.ke, %.lr.ph104.i.us260 ], [ %i.lc, %bb.ag ]
  %.077101.i.us263 = phi float [ 1.000000e+00, %.lr.ph104.i.us260 ], [ %i.la, %bb.ag ]
  %i.kg = trunc i64 %indvars.iv134.i.us261 to i32
  %i.kh = add i32 %i.hs, %i.kg
  %i.ki = srem i32 %i.kh, %i.hj                   ; 2 uses
  %i.kj = icmp slt i32 %i.ki, 0
  %i.kk = select i1 %i.kj, i32 %i.hj, i32 0
  %i.kl = add nsw i32 %i.kk, %i.ki
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !43
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv134.i.us261 ; 2 uses
  %.promoted.i.us264 = load i32, ptr %i.kp, align 4, !tbaa !41 ; 3 uses
  %i.kq = icmp slt i32 %.promoted.i.us264, %i.hl
  br i1 %i.kq, label %.lr.ph.i.us265, label %.critedge.i.us272

.lr.ph.i.us265:                                   ; preds = %bb.ad
  %i.kr = load float, ptr %i.kf, align 4, !tbaa !48
  %i.ks = sext i32 %.promoted.i.us264 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.us265
  %indvars.iv.i.us266 = phi i64 [ %i.ks, %.lr.ph.i.us265 ], [ %indvars.iv.next.i.us267, %bb.af ] ; 3 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %indvars.iv.i.us266
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !48
  %i.kv = fcmp nsz olt float %i.ku, %i.kr
  br i1 %i.kv, label %bb.af, label %.critedge.loopexit.i.us270

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next.i.us267 = add nsw i64 %indvars.iv.i.us266, 1 ; 2 uses
  %lftr.wideiv.i.us268 = trunc i64 %indvars.iv.next.i.us267 to i32
  %exitcond.not.i.us269 = icmp eq i32 %i.hl, %lftr.wideiv.i.us268
  br i1 %exitcond.not.i.us269, label %.critedge.thread.i.us275, label %bb.ae, !llvm.loop !63

.critedge.loopexit.i.us270:                       ; preds = %bb.ae
  %i.kw = trunc nsw i64 %indvars.iv.i.us266 to i32
  br label %.critedge.i.us272

.critedge.i.us272:                                ; preds = %.critedge.loopexit.i.us270, %bb.ad
  %.lcssa92.i.us273 = phi i32 [ %.promoted.i.us264, %bb.ad ], [ %i.kw, %.critedge.loopexit.i.us270 ] ; 2 uses
  %i.kx = icmp eq i32 %.lcssa92.i.us273, %i.hl
  br i1 %i.kx, label %.critedge.thread.i.us275, label %bb.ag

.critedge.thread.i.us275:                         ; preds = %bb.af, %.critedge.i.us272
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge.thread.i.us275, %.critedge.i.us272
  %storemerge.i.us276 = phi i32 [ %i.hv, %.critedge.thread.i.us275 ], [ %.lcssa92.i.us273, %.critedge.i.us272 ] ; 2 uses
  store i32 %storemerge.i.us276, ptr %i.kp, align 4
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv134.i.us261
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !48 ; 2 uses
  %i.la = fadd nsz float %.077101.i.us263, %i.kz  ; 2 uses
  %i.lb = sitofp nsz i32 %storemerge.i.us276 to float
  %i.lc = tail call nsz float @llvm.fmuladd.f32(float %i.kz, float %i.lb, float %.076102.i.us262) ; 2 uses
  %indvars.iv.next135.i.us277 = add nuw nsw i64 %indvars.iv134.i.us261, 1 ; 2 uses
  %exitcond137.not.i.us278 = icmp eq i64 %indvars.iv.next135.i.us277, %wide.trip.count.i
  br i1 %exitcond137.not.i.us278, label %.preheader.i.loopexit.us279, label %bb.ad, !llvm.loop !64

.preheader.i.loopexit.us279:                      ; preds = %bb.ag
  %i.ld = fdiv nsz float %i.lc, %i.la
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv148.i.us259
  store float %i.ld, ptr %i.le, align 4, !tbaa !48
  %indvars.iv.next149.i.us285 = add nuw nsw i64 %indvars.iv148.i.us259, 1 ; 2 uses
  %exitcond152.not.i.us286 = icmp eq i64 %indvars.iv.next149.i.us285, %wide.trip.count151.i
  br i1 %exitcond152.not.i.us286, label %compute_contrast_function.exit, label %.lr.ph104.i.us260, !llvm.loop !67

.preheader.i:                                     ; preds = %.preheader.i.preheader357, %.preheader.i
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i, %.preheader.i ], [ %indvars.iv148.i.ph, %.preheader.i.preheader357 ] ; 3 uses
  %i.lf = trunc nuw nsw i64 %indvars.iv148.i to i32
  %i.lg = uitofp nsz nneg i32 %i.lf to float
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv148.i
  store float %i.lg, ptr %i.lh, align 4, !tbaa !48
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i
  br i1 %exitcond152.not.i, label %compute_contrast_function.exit, label %.preheader.i, !llvm.loop !69

compute_contrast_function.exit:                   ; preds = %.preheader.i, %.preheader.i.loopexit.us279, %._crit_edge.i.loopexit.us, %middle.block, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.li = load ptr, ptr %i.gi, align 8, !tbaa !51
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv312
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !76
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv312
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !41
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv312
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !76
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv312
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !41
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv312
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !41
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv312
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !41
  tail call void %i.li(ptr noundef %i.lk, i64 noundef %i.ln, ptr noundef %i.lp, i64 noundef %i.ls, i32 noundef %i.lu, i32 noundef %i.lw, ptr noundef %i.hn, ptr noundef %i.hp) #8
  br label %bb.ah

bb.ah:                                            ; preds = %compute_contrast_function.exit, %bb.t
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.lx = load i32, ptr %i.fz, align 4, !tbaa !39
  %i.ly = sext i32 %i.lx to i64
  %i.lz = icmp slt i64 %indvars.iv.next313, %i.ly
  br i1 %i.lz, label %bb.s, label %.loopexit, !llvm.loop !70

.loopexit:                                        ; preds = %bb.ah, %bb.r, %bb.p
  %.0187 = phi ptr [ %i.fs, %bb.p ], [ %i.fx, %bb.r ], [ %i.fx, %bb.ah ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !77
  %i.mc = add nsw i32 %i.mb, 1                    ; 2 uses
  %i.md = load i32, ptr %i.af, align 4, !tbaa !23
  %.not215 = icmp slt i32 %i.mc, %i.md
  %spec.store.select221 = select i1 %.not215, i32 %i.mc, i32 0
  store i32 %spec.store.select221, ptr %i.ma, align 8
  %i.me = tail call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef nonnull %.0187) #8
  br label %.thread222

.thread222:                                       ; preds = %bb.j, %bb.l, %._crit_edge252, %bb.q, %bb.e, %bb.p, %bb.f, %.loopexit
  %.4 = phi i32 [ -12, %bb.f ], [ 0, %._crit_edge252 ], [ %i.me, %.loopexit ], [ -12, %bb.p ], [ -541478725, %bb.e ], [ -12, %bb.l ], [ -12, %bb.q ], [ -12, %bb.j ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !84
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = shl nsw i32 %i.i, 1
  %i.p = or disjoint i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 4 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !23
  %i.r = load i32, ptr %i.e, align 4, !tbaa !84
  %i.s = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.r) #8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 76 ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.v = load i8, ptr %i.u, align 1, !tbaa !90
  %i.w = zext nneg i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.y = load i8, ptr %i.x, align 2, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !46  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 %i.aa, ptr %i.ac, align 8, !tbaa !41
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !41
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !41
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !46
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = zext nneg i8 %i.y to i32
  %i.ak = ashr i32 %i.ai, %i.aj
  %i.al = sub nsw i32 0, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.al, ptr %i.am, align 4, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.al, ptr %i.an, align 8, !tbaa !41
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !45
  %i.ap = sub nsw i32 0, %i.ao
  %i.aq = ashr i32 %i.ap, %i.w
  %i.ar = sub nsw i32 0, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !41
  %i.au = load i32, ptr %i.n, align 8, !tbaa !47
  %i.av = shl nuw i32 1, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !44
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !38  ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %.preheader88

.lr.ph:                                           ; preds = %bb.a
  %i.az = sitofp nsz i32 %i.i to float
  %i.ba = fmul nsz float %i.k, %i.az              ; 2 uses
  %i.bb = fmul nsz float %i.ba, %i.ba
  %i.bc = fpext nsz float %i.bb to double         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 84 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ax to i64   ; 3 uses
  %min.iters.check = icmp eq i32 %i.ax, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %1 = trunc <2 x i64> %vec.ind to <2 x i32>
  %2 = add <2 x i32> %1, splat (i32 1)
  %3 = uitofp nneg <2 x i32> %2 to <2 x double>   ; 2 uses
  %4 = fmul nnan nsz <2 x double> %3, splat (double -5.000000e-01)
  %5 = fmul nsz <2 x double> %4, %3
  %6 = fdiv nsz <2 x double> %5, %broadcast.splat
  %7 = fptrunc nsz <2 x double> %6 to <2 x float>
  %8 = tail call nsz <2 x float> @llvm.exp.v2f32(<2 x float> %7)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index
  store <2 x float> %8, ptr %i.be, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader88, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader88:                                     ; preds = %scalar.ph, %middle.block, %bb.a
  %.not8294 = icmp sgt i32 %i.s, 0
  br i1 %.not8294, label %.preheader.lr.ph, label %.critedge86

.preheader.lr.ph:                                 ; preds = %.preheader88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8784
  br label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bj = uitofp nsz nneg i32 %i.bi to double     ; 2 uses
  %i.bk = fmul nnan nsz double %i.bj, -5.000000e-01
  %i.bl = fmul nsz double %i.bk, %i.bj
  %i.bm = fdiv nsz double %i.bl, %i.bc
  %i.bn = fptrunc nsz double %i.bm to float
  %i.bo = tail call nsz float @llvm.exp.f32(float %i.bn)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store float %i.bo, ptr %i.bp, align 4, !tbaa !48
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %scalar.ph, !llvm.loop !81

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.bq = load i32, ptr %i.t, align 4, !tbaa !39
  %i.br = sext i32 %i.bq to i64
  %.not82 = icmp slt i64 %indvars.iv.next103, %i.br
  br i1 %.not82, label %.preheader, label %.critedge86, !llvm.loop !82

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %indvars.iv102 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next103, %bb.b ] ; 3 uses
  %i.bs = load i32, ptr %i.q, align 4, !tbaa !23
  %.not8091 = icmp sgt i32 %i.bs, 0
  br i1 %.not8091, label %.lr.ph93, label %.critedge

.lr.ph93:                                         ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw [2048 x i8], ptr %i.bg, i64 %indvars.iv102
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !23
  %i.bv = sext i32 %i.bu to i64
  %.not80 = icmp slt i64 %indvars.iv.next100, %i.bv
  br i1 %.not80, label %bb.d, label %.critedge, !llvm.loop !83

bb.d:                                             ; preds = %.lr.ph93, %bb.c
  %indvars.iv99 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next100, %bb.c ] ; 2 uses
  %i.bw = load i32, ptr %i.aw, align 8, !tbaa !44
  %i.bx = sext i32 %i.bw to i64
  %i.by = tail call noalias ptr @av_calloc(i64 noundef %i.bx, i64 noundef 4) #8 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv99
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !43
  %.not = icmp eq ptr %i.by, null
  br i1 %.not, label %.loopexit, label %bb.c

.critedge:                                        ; preds = %bb.c, %.preheader
  %i.ca = load i32, ptr %i.aw, align 8, !tbaa !44
  %i.cb = sext i32 %i.ca to i64
  %i.cc = tail call noalias ptr @av_calloc(i64 noundef %i.cb, i64 noundef 4) #8 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv102
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !43
  %.not81 = icmp eq ptr %i.cc, null
  br i1 %.not81, label %.loopexit, label %bb.b

.critedge86:                                      ; preds = %bb.b, %.preheader88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 8816 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !24
  %.not83 = icmp eq ptr %i.cf, null
  br i1 %.not83, label %bb.e, label %.thread

bb.e:                                             ; preds = %.critedge86
  %i.cg = load i32, ptr %i.q, align 4, !tbaa !23
  %i.ch = sext i32 %i.cg to i64
  %i.ci = tail call noalias ptr @av_calloc(i64 noundef %i.ch, i64 noundef 8) #8 ; 2 uses
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !24
  %.not84 = icmp eq ptr %i.ci, null
  br i1 %.not84, label %.loopexit, label %.thread

.thread:                                          ; preds = %.critedge86, %bb.e
  %i.cj = load i32, ptr %i.n, align 8, !tbaa !47
  %i.ck = icmp slt i32 %i.cj, 9                   ; 2 uses
  %i.cl = select i1 %i.ck, ptr @compute_histogram8, ptr @compute_histogram16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 8824
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !40
  %i.cn = select i1 %i.ck, ptr @apply_contrast_change8, ptr @apply_contrast_change16
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8832
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !51
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.d, %bb.e, %.thread
  %.3 = phi i32 [ 0, %.thread ], [ -12, %bb.e ], [ -12, %bb.d ], [ -12, %.critedge ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #5

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @compute_histogram8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5) #6 {
bb.a:
  %i.a = shl i64 %5, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.a, i1 false)
  %i.b = icmp sgt i32 %3, 0
  %i.c = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader33.preheader, label %.preheader32

.preheader33.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod55 = icmp ne i64 %xtraiter, 0
  br label %.preheader33

.preheader33:                                     ; preds = %.preheader33.preheader, %._crit_edge
  %.02736 = phi i32 [ %i.p, %._crit_edge ], [ 0, %.preheader33.preheader ]
  %.02835 = phi ptr [ %i.o, %._crit_edge ], [ %0, %.preheader33.preheader ] ; 6 uses
  br i1 %i.d, label %.epil.preheader, label %.preheader33.new

.preheader32:                                     ; preds = %._crit_edge, %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge40, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader32
  %i.e = uitofp nsz i64 %5 to float               ; 2 uses
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %5, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.f, align 4, !tbaa !48
  %i.g = fdiv nsz <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.g, ptr %i.f, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv43.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph
end_hunk_0
begin_hunk_1_@apply_contrast_change8:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %.01519, i64 %indvars.iv.next.2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !52
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !48
  %i.ar = tail call i64 @llvm.lrint.i64.f32(float %i.aq)
  %i.as = trunc i64 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.01618, i64 %indvars.iv.next.2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !52
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !108
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_contrast_change16(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree readnone captures(none) %7) #6 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge23.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  %i.c = sdiv i64 %3, 2
  %i.d = sdiv i64 %1, 2
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge23.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %4, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.01622 = phi i32 [ %i.p, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.01721 = phi ptr [ %i.n, %._crit_edge ], [ %2, %.preheader.preheader ] ; 6 uses
  %.01820 = phi ptr [ %i.o, %._crit_edge ], [ %0, %.preheader.preheader ] ; 6 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

._crit_edge23.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %.01820, i64 %indvars.iv.epil
  %i.g = load i16, ptr %i.f, align 2, !tbaa !55
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !48
  %i.k = tail call i64 @llvm.lrint.i64.f32(float %i.j)
  %i.l = trunc i64 %i.k to i16
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.01721, i64 %indvars.iv.epil
  store i16 %i.l, ptr %i.m, align 2, !tbaa !55
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.n = getelementptr inbounds [2 x i8], ptr %.01721, i64 %i.c
  %i.o = getelementptr inbounds [2 x i8], ptr %.01820, i64 %i.d
  %i.p = add nuw nsw i32 %.01622, 1               ; 2 uses
  %exitcond25.not = icmp eq i32 %i.p, %5
  br i1 %exitcond25.not, label %._crit_edge23.split, label %.preheader, !llvm.loop !110

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.01820, i64 %indvars.iv
  %i.r = load i16, ptr %i.q, align 2, !tbaa !55
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !48
  %i.v = tail call i64 @llvm.lrint.i64.f32(float %i.u)
  %i.w = trunc i64 %i.v to i16
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.01721, i64 %indvars.iv
  store i16 %i.w, ptr %i.x, align 2, !tbaa !55
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.01820, i64 %indvars.iv.next
  %i.z = load i16, ptr %i.y, align 2, !tbaa !55
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !48
  %i.ad = tail call i64 @llvm.lrint.i64.f32(float %i.ac)
  %i.ae = trunc i64 %i.ad to i16
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.01721, i64 %indvars.iv.next
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !55
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.01820, i64 %indvars.iv.next.1
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !55
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !48
  %i.al = tail call i64 @llvm.lrint.i64.f32(float %i.ak)
  %i.am = trunc i64 %i.al to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.01721, i64 %indvars.iv.next.1
  store i16 %i.am, ptr %i.an, align 2, !tbaa !55
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.01820, i64 %indvars.iv.next.2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !55
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !48
  %i.at = tail call i64 @llvm.lrint.i64.f32(float %i.as)
  %i.au = trunc i64 %i.at to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.01721, i64 %indvars.iv.next.2
  store i16 %i.au, ptr %i.av, align 2, !tbaa !55
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !111
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #5

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = tail call i32 @ff_request_frame(ptr noundef %i.f) #8 ; 2 uses
  %i.h = icmp eq i32 %i.g, -541478725
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = tail call i32 @filter_frame(ptr noundef %i.o, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.p, %bb.c ], [ -541478725, %bb.b ], [ %i.g, %bb.a ]
  ret i32 %.0
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #3

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @free_histograms(ptr %.72.val, i32 noundef range(i32 0, 4) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = zext nneg i32 %0 to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.72.val, i64 592
  %i.c = zext nneg i32 %0 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw [2048 x i8], ptr %i.b, i64 %i.c
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.c, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.72.val, i64 8784
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.pre-phi
  tail call void @av_freep(ptr noundef nonnull %i.f) #8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.g) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !114
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"float", !5, i64 0}
!21 = !{!"p2 _ZTS7AVFrame", !14, i64 0}
!22 = !{!"TMidEqualizerContext", !10, i64 0, !6, i64 8, !6, i64 12, !20, i64 16, !5, i64 20, !5, i64 36, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !5, i64 84, !5, i64 592, !5, i64 8784, !21, i64 8816, !9, i64 8824, !9, i64 8832}
!23 = !{!22, !6, i64 52}
!24 = !{!22, !21, i64 8816}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!27 = !{!"AVRational", !6, i64 0, !6, i64 4}
!28 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!29 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!30 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!31 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!32 = !{!"AVFilterFormatsConfig", !30, i64 0, !30, i64 8, !31, i64 16, !30, i64 24, !30, i64 32, !30, i64 40}
!33 = !{!"AVFilterLink", !26, i64 0, !13, i64 8, !26, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !27, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !28, i64 72, !27, i64 96, !29, i64 104, !6, i64 112, !6, i64 116, !32, i64 120, !32, i64 168}
!34 = !{!33, !26, i64 16}
!35 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!22, !6, i64 64}
!38 = !{!22, !6, i64 12}
!39 = !{!22, !6, i64 76}
!40 = !{!22, !9, i64 8824}
!41 = !{!6, !6, i64 0}
!42 = !{!"p1 float", !9, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!22, !6, i64 80}
!45 = !{!33, !6, i64 40}
!46 = !{!33, !6, i64 44}
!47 = !{!22, !6, i64 56}
!48 = !{!20, !20, i64 0}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!22, !9, i64 8832}
!52 = !{!5, !5, i64 0}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!"short", !5, i64 0}
!55 = !{!54, !54, i64 0}
!56 = distinct !{!56, !25}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !25}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25, !49, !50}
!69 = distinct !{!69, !25, !50, !49}
!70 = distinct !{!70, !25}
!71 = !{!18, !15, i64 56}
!72 = !{!22, !6, i64 60}
!73 = !{!22, !6, i64 68}
!74 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!12, !12, i64 0}
!77 = !{!22, !6, i64 72}
!78 = !{!18, !6, i64 104}
!79 = !{!22, !6, i64 8}
!80 = distinct !{!80, !25, !49, !50}
!81 = distinct !{!81, !25, !50, !49}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !25}
!84 = !{!33, !6, i64 36}
!85 = !{!22, !20, i64 16}
!86 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!87 = !{!86, !6, i64 16}
!88 = !{!"long", !5, i64 0}
!89 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !88, i64 16, !5, i64 24, !12, i64 104}
!90 = !{!89, !5, i64 9}
!91 = !{!89, !5, i64 10}
!92 = distinct !{!92, !25, !49, !50}
!93 = distinct !{!93, !53}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25, !50, !49}
!97 = distinct !{!97, !53}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25, !49, !50}
!100 = distinct !{!100, !53}
!101 = distinct !{!101, !25}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25, !50, !49}
!104 = distinct !{!104, !53}
!105 = distinct !{!105, !25}
!106 = distinct !{!106, !53}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !53}
!110 = distinct !{!110, !25}
!111 = distinct !{!111, !25}
!112 = !{!33, !26, i64 0}
!113 = !{!18, !15, i64 32}
!114 = distinct !{!114, !25}
end_hunk_1
