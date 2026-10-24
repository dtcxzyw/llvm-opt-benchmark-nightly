Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@GetRayCollisionQuad:bb.a
  %i.eb = fmul float %i.ea, %i.df                 ; 2 uses
  %i.ec = fcmp olt float %i.eb, 0.000000e+00
  %i.ed = fadd float %i.dm, %i.eb
  %i.ee = fcmp ogt float %i.ed, 1.000000e+00
  %or.cond146.i46 = or i1 %i.ec, %i.ee
  br i1 %or.cond146.i46, label %GetRayCollisionTriangle.exit58, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ef = fmul float %i.cf, %i.du
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.dr, float %i.ef)
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.dx, float %i.eg)
  %i.ei = fmul float %i.eh, %i.df                 ; 4 uses
  %i.ej = fcmp ogt float %i.ei, f0x358637BD
  br i1 %i.ej, label %Vector3Normalize.exit.i49, label %GetRayCollisionTriangle.exit58

Vector3Normalize.exit.i49:                        ; preds = %bb.h
  %i.ek = fmul float %i.dc, %i.co
  %i.el = fmul float %i.ck, %i.cs
  %i.em = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.el, i64 1
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cn, <2 x float> %i.en) ; 5 uses
  %i.ep = fmul float %i.cz, %i.cw
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cf, float %i.ep) ; 4 uses
  %foldExtExtBinop92 = fmul <2 x float> %i.eo, %i.eo
  %i.er = extractelement <2 x float> %foldExtExtBinop92, i64 1
  %i.es = extractelement <2 x float> %i.eo, i64 0 ; 2 uses
  %i.et = tail call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.er)
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.et)
  %i.ev = tail call float @sqrtf(float noundef %i.eu) #54, !noalias !226 ; 2 uses
  %i.ew = fcmp une float %i.ev, 0.000000e+00      ; 2 uses
  %i.ex = fdiv float 1.000000e+00, %i.ev          ; 2 uses
  %i.ey = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.eo, %i.ez
  %i.fb = fmul float %i.eq, %i.ex
  %.sroa.013.0.i.i50 = select i1 %i.ew, <2 x float> %i.fa, <2 x float> %i.eo
  %.sroa.617.0.i.i51 = select i1 %i.ew, float %i.fb, float %i.eq
  %i.fc = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = fmul <2 x float> %.sroa.568.0.copyload, %i.fd
  %i.ff = fmul float %.sroa.669.0.copyload, %i.ei
  %i.fg = fadd <2 x float> %.sroa.067.0.copyload, %i.fe
  %i.fh = fadd float %.sroa.4.0.copyload, %i.ff
  br label %GetRayCollisionTriangle.exit58

GetRayCollisionTriangle.exit58:                   ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %Vector3Normalize.exit.i49
  %.sroa.0.0 = phi i8 [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %Vector3Normalize.exit.i49 ], [ 0, %bb.h ]
  %.sroa.559.0 = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ %i.ei, %Vector3Normalize.exit.i49 ], [ 0.000000e+00, %bb.h ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ %i.fh, %Vector3Normalize.exit.i49 ], [ 0.000000e+00, %bb.h ]
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ %.sroa.617.0.i.i51, %Vector3Normalize.exit.i49 ], [ 0.000000e+00, %bb.h ]
  %.sroa.8.0 = phi <2 x float> [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.f ], [ zeroinitializer, %bb.g ], [ %.sroa.013.0.i.i50, %Vector3Normalize.exit.i49 ], [ zeroinitializer, %bb.h ]
  %.sroa.6.0 = phi <2 x float> [ zeroinitializer, %bb.e ], [ zeroinitializer, %bb.f ], [ zeroinitializer, %bb.g ], [ %i.fg, %Vector3Normalize.exit.i49 ], [ zeroinitializer, %bb.h ]
  store i8 %.sroa.0.0, ptr %0, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.561.0..sroa_idx, i8 0, i64 3, i1 false)
  store float %.sroa.559.0, ptr %.sroa.562.0..sroa_idx, align 4
  store <2 x float> %.sroa.6.0, ptr %.sroa.663.0..sroa_idx, align 4
  store float %.sroa.7.0, ptr %.sroa.764.0..sroa_idx, align 4
  store <2 x float> %.sroa.8.0, ptr %.sroa.865.0..sroa_idx, align 4
  store float %.sroa.9.0, ptr %.sroa.966.0..sroa_idx, align 4
  br label %bb.i

bb.i:                                             ; preds = %GetRayCollisionTriangle.exit58, %GetRayCollisionTriangle.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @m3d_loaderhook(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @LoadFileData(ptr noundef %0, ptr noundef %1) #54
  ret ptr %i.a
}

declare ptr @LoadFileData(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define hidden void @m3d_freehook(ptr noundef %0) #0 {
bb.a:
  tail call void @UnloadFileData(ptr noundef %0) #54
  ret void
}

declare void @UnloadFileData(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #41

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #42

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @my_strdup(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #25 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %length_until_line_feed.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.c = load i8, ptr %i.b, align 1
  switch i8 %i.c, label %bb.c [
    i8 10, label %._crit_edge.loopexit.split.loop.exit.i
    i8 13, label %._crit_edge.loopexit.split.loop.exit.i
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %length_until_line_feed.exit, label %.lr.ph.i

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i, %.lr.ph.i
  %i.d = trunc nuw i64 %indvars.iv.i to i32
  br label %length_until_line_feed.exit

length_until_line_feed.exit:                      ; preds = %bb.c, %bb.b, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.d, %._crit_edge.loopexit.split.loop.exit.i ], [ %1, %bb.c ] ; 2 uses
  %i.e = add i32 %.0.lcssa.i, 1
  %i.f = zext i32 %i.e to i64
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #56 ; 3 uses
  %i.h = zext i32 %.0.lcssa.i to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.i, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %length_until_line_feed.exit
  %.0 = phi ptr [ %i.g, %length_until_line_feed.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @parseFloat(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #20 {
bb.a:
  %.promoted.i = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %i.a = phi ptr [ %i.c, %.critedge.i ], [ %.promoted.i, %bb.a ] ; 7 uses
  %i.b = load i8, ptr %i.a, align 1               ; 5 uses
  switch i8 %i.b, label %skip_space.exit [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.c, ptr %0, align 8
  br label %bb.b

skip_space.exit:                                  ; preds = %bb.b, %bb.c
  %i.d = phi i8 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 0, label %until_space.exit
    i8 32, label %until_space.exit
    i8 9, label %until_space.exit
    i8 13, label %until_space.exit
  ]

bb.c:                                             ; preds = %skip_space.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.e, align 1
  br label %skip_space.exit

until_space.exit:                                 ; preds = %skip_space.exit, %skip_space.exit, %skip_space.exit, %skip_space.exit
  %i.f = ptrtoint ptr %.0.i to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl i64 %i.h, 32
  %i.j = ashr exact i64 %i.i, 32                  ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j ; 8 uses
  %.not.i = icmp sgt i64 %i.j, 0
  br i1 %.not.i, label %bb.d, label %tryParseDouble.exit

bb.d:                                             ; preds = %until_space.exit
  switch i8 %i.b, label %bb.f [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = icmp eq i8 %i.b, 43
  %i.n = select i1 %i.m, double 1.000000e+00, double -1.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %1 = sext i8 %i.b to i32
  %2 = add nsw i32 %1, -48
  %i.o = icmp ult i32 %2, 10
  br i1 %i.o, label %bb.g, label %tryParseDouble.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0103.i = phi double [ %i.n, %bb.e ], [ 1.000000e+00, %bb.f ]
  %.097.i = phi ptr [ %i.l, %bb.e ], [ %i.a, %bb.f ] ; 2 uses
  %.092.in.not141.i = icmp eq ptr %.097.i, %i.k
  br i1 %.092.in.not141.i, label %tryParseDouble.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.094144.i = phi i32 [ %i.x, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.198143.i = phi ptr [ %i.w, %bb.h ], [ %.097.i, %bb.g ] ; 5 uses
  %.0106142.i = phi double [ %i.v, %bb.h ], [ 0.000000e+00, %bb.g ] ; 6 uses
  %i.p = load i8, ptr %.198143.i, align 1         ; 2 uses
  %i.q = sext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %bb.h, label %.critedge.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.t = fmul double %.0106142.i, 1.000000e+01
  %i.u = uitofp nneg i32 %i.r to double
  %i.v = fadd double %i.t, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.198143.i, i64 1 ; 2 uses
  %i.x = add nuw nsw i32 %.094144.i, 1
  %.092.in.not.i = icmp eq ptr %i.w, %i.k
  br i1 %.092.in.not.i, label %._crit_edge.i, label %.lr.ph.i

.critedge.thread.i:                               ; preds = %.lr.ph.i
  %i.y = icmp eq i32 %.094144.i, 0
  br i1 %i.y, label %tryParseDouble.exit, label %bb.i

bb.i:                                             ; preds = %.critedge.thread.i
  switch i8 %i.p, label %._crit_edge.i [
    i8 46, label %.preheader135.i
    i8 101, label %.thread130.i
    i8 69, label %.thread130.i
  ]

.preheader135.i:                                  ; preds = %bb.i
  %.299148.i = getelementptr inbounds nuw i8, ptr %.198143.i, i64 1 ; 2 uses
  %.193.in.not149.i = icmp eq ptr %.299148.i, %i.k
  br i1 %.193.in.not149.i, label %._crit_edge.i, label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %.preheader135.i, %.epilog-lcssa
  %indvar = phi i32 [ %indvar.next, %.epilog-lcssa ], [ 0, %.preheader135.i ] ; 2 uses
  %.299152.i = phi ptr [ %.299.i, %.epilog-lcssa ], [ %.299148.i, %.preheader135.i ] ; 4 uses
  %.195151.i = phi i32 [ %i.an, %.epilog-lcssa ], [ 1, %.preheader135.i ] ; 3 uses
  %.1107150.i = phi double [ %i.am, %.epilog-lcssa ], [ %.0106142.i, %.preheader135.i ] ; 4 uses
  %i.z = load i8, ptr %.299152.i, align 1         ; 2 uses
  %3 = sext i8 %i.z to i32
  %4 = add nsw i32 %3, -48                        ; 2 uses
  %i.aa = icmp ult i32 %4, 10
  br i1 %i.aa, label %.preheader134.i.preheader, label %bb.j

.preheader134.i.preheader:                        ; preds = %.lr.ph153.i
  %xtraiter = and i32 %.195151.i, 7               ; 3 uses
  %i.ab = icmp ult i32 %indvar, 7
  br i1 %i.ab, label %.preheader134.i.epil.preheader, label %.preheader134.i.preheader.new

.preheader134.i.preheader.new:                    ; preds = %.preheader134.i.preheader
  %unroll_iter = and i32 %.195151.i, -8
  br label %.preheader134.i

.preheader134.i:                                  ; preds = %.preheader134.i, %.preheader134.i.preheader.new
  %.091146.i = phi double [ 1.000000e+00, %.preheader134.i.preheader.new ], [ %i.aj, %.preheader134.i ]
  %niter = phi i32 [ 0, %.preheader134.i.preheader.new ], [ %niter.next.7, %.preheader134.i ]
  %i.ac = fmul double %.091146.i, 1.000000e-01
  %i.ad = fmul double %i.ac, 1.000000e-01
  %i.ae = fmul double %i.ad, 1.000000e-01
  %i.af = fmul double %i.ae, 1.000000e-01
  %i.ag = fmul double %i.af, 1.000000e-01
  %i.ah = fmul double %i.ag, 1.000000e-01
  %i.ai = fmul double %i.ah, 1.000000e-01
  %i.aj = fmul double %i.ai, 1.000000e-01         ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader134.i

.unr-lcssa:                                       ; preds = %.preheader134.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader134.i.epil.preheader

.preheader134.i.epil.preheader:                   ; preds = %.unr-lcssa, %.preheader134.i.preheader
  %.091146.i.epil.init = phi double [ 1.000000e+00, %.preheader134.i.preheader ], [ %i.aj, %.unr-lcssa ]
  %lcmp.mod113 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.preheader134.i.epil

.preheader134.i.epil:                             ; preds = %.preheader134.i.epil, %.preheader134.i.epil.preheader
  %.091146.i.epil = phi double [ %i.ak, %.preheader134.i.epil ], [ %.091146.i.epil.init, %.preheader134.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader134.i.epil ], [ 0, %.preheader134.i.epil.preheader ]
  %i.ak = fmul double %.091146.i.epil, 1.000000e-01 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader134.i.epil, !llvm.loop !227

.epilog-lcssa:                                    ; preds = %.preheader134.i.epil, %.unr-lcssa
  %.lcssa97 = phi double [ %i.aj, %.unr-lcssa ], [ %i.ak, %.preheader134.i.epil ]
  %i.al = uitofp nneg i32 %4 to double
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %.lcssa97, double %.1107150.i) ; 2 uses
  %i.an = add nuw i32 %.195151.i, 1
  %.299.i = getelementptr inbounds nuw i8, ptr %.299152.i, i64 1 ; 2 uses
  %.193.in.not.i = icmp eq ptr %.299.i, %i.k
  %indvar.next = add i32 %indvar, 1
  br i1 %.193.in.not.i, label %._crit_edge.i, label %.lr.ph153.i

bb.j:                                             ; preds = %.lr.ph153.i
  switch i8 %i.z, label %._crit_edge.i [
    i8 101, label %.thread130.i
    i8 69, label %.thread130.i
  ]

.thread130.i:                                     ; preds = %bb.j, %bb.j, %bb.i, %bb.i
  %.4129.i = phi ptr [ %.198143.i, %bb.i ], [ %.299152.i, %bb.j ], [ %.299152.i, %bb.j ], [ %.198143.i, %bb.i ] ; 2 uses
  %.3109128.i = phi double [ %.0106142.i, %bb.i ], [ %.1107150.i, %bb.j ], [ %.1107150.i, %bb.j ], [ %.0106142.i, %bb.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.4129.i, i64 1 ; 3 uses
  %.not121.i = icmp eq ptr %i.ao, %i.k
  %.pre.i = load i8, ptr %i.ao, align 1           ; 3 uses
  br i1 %.not121.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread130.i
  switch i8 %.pre.i, label %bb.m [
    i8 43, label %bb.l
    i8 45, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.4129.i, i64 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.thread130.i
  %5 = sext i8 %.pre.i to i32
  %6 = add nsw i32 %5, -48
  %i.aq = icmp ult i32 %6, 10
  br i1 %i.aq, label %bb.n, label %tryParseDouble.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0101.i = phi i8 [ %.pre.i, %bb.l ], [ 43, %bb.m ] ; 3 uses
  %.5.i = phi ptr [ %i.ap, %bb.l ], [ %i.ao, %bb.m ] ; 2 uses
  %.3.in.not155.i = icmp eq ptr %.5.i, %i.k
  br i1 %.3.in.not155.i, label %tryParseDouble.exit, label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %bb.n, %bb.o
  %.296158.i = phi i32 [ %i.ay, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.6157.i = phi ptr [ %i.ax, %bb.o ], [ %.5.i, %bb.n ] ; 2 uses
  %.0104156.i = phi i32 [ %i.aw, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.ar = load i8, ptr %.6157.i, align 1
  %i.as = sext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -48                  ; 2 uses
  %i.au = icmp ult i32 %i.at, 10
  br i1 %i.au, label %bb.o, label %.critedge4.i

bb.o:                                             ; preds = %.lr.ph159.i
  %i.av = mul nsw i32 %.0104156.i, 10
  %i.aw = add nsw i32 %i.at, %i.av                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.6157.i, i64 1 ; 2 uses
  %i.ay = add nuw nsw i32 %.296158.i, 1
  %.3.in.not.i = icmp eq ptr %i.ax, %i.k
  br i1 %.3.in.not.i, label %.critedge2.i, label %.lr.ph159.i

.critedge4.i:                                     ; preds = %.lr.ph159.i
  %i.az = icmp eq i32 %.296158.i, 0
  br i1 %i.az, label %tryParseDouble.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.o, %.critedge4.i
  %.1105.i = phi i32 [ %.0104156.i, %.critedge4.i ], [ %i.aw, %bb.o ] ; 7 uses
  %i.ba = icmp sgt i32 %.1105.i, 0
  br i1 %i.ba, label %.lr.ph167.i.preheader, label %._crit_edge.i

.lr.ph167.i.preheader:                            ; preds = %.critedge2.i
  %xtraiter114 = and i32 %.1105.i, 7              ; 3 uses
  %i.bb = icmp ult i32 %.1105.i, 8
  br i1 %i.bb, label %.lr.ph167.i.epil.preheader, label %.lr.ph167.i.preheader.new

.lr.ph167.i.preheader.new:                        ; preds = %.lr.ph167.i.preheader
  %unroll_iter119 = and i32 %.1105.i, 2147483640
  br label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %.lr.ph167.i, %.lr.ph167.i.preheader.new
  %.088165.i = phi double [ 1.000000e+00, %.lr.ph167.i.preheader.new ], [ %i.bj, %.lr.ph167.i ]
  %niter120 = phi i32 [ 0, %.lr.ph167.i.preheader.new ], [ %niter120.next.7, %.lr.ph167.i ]
  %i.bc = fmul double %.088165.i, 5.000000e+00
  %i.bd = fmul double %i.bc, 5.000000e+00
  %i.be = fmul double %i.bd, 5.000000e+00
  %i.bf = fmul double %i.be, 5.000000e+00
  %i.bg = fmul double %i.bf, 5.000000e+00
  %i.bh = fmul double %i.bg, 5.000000e+00
  %i.bi = fmul double %i.bh, 5.000000e+00
  %i.bj = fmul double %i.bi, 5.000000e+00         ; 3 uses
  %niter120.next.7 = add nuw nsw i32 %niter120, 8 ; 2 uses
  %niter120.ncmp.7 = icmp eq i32 %niter120.next.7, %unroll_iter119
  br i1 %niter120.ncmp.7, label %.lr.ph171.i.preheader.unr-lcssa, label %.lr.ph167.i

.lr.ph171.i.preheader.unr-lcssa:                  ; preds = %.lr.ph167.i
  %lcmp.mod116.not = icmp eq i32 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %.lr.ph171.i.preheader, label %.lr.ph167.i.epil.preheader

.lr.ph167.i.epil.preheader:                       ; preds = %.lr.ph171.i.preheader.unr-lcssa, %.lr.ph167.i.preheader
  %.088165.i.epil.init = phi double [ 1.000000e+00, %.lr.ph167.i.preheader ], [ %i.bj, %.lr.ph171.i.preheader.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph167.i.epil

.lr.ph167.i.epil:                                 ; preds = %.lr.ph167.i.epil, %.lr.ph167.i.epil.preheader
  %.088165.i.epil = phi double [ %i.bk, %.lr.ph167.i.epil ], [ %.088165.i.epil.init, %.lr.ph167.i.epil.preheader ]
  %epil.iter115 = phi i32 [ %epil.iter115.next, %.lr.ph167.i.epil ], [ 0, %.lr.ph167.i.epil.preheader ]
  %i.bk = fmul double %.088165.i.epil, 5.000000e+00 ; 2 uses
  %epil.iter115.next = add i32 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i32 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %.lr.ph171.i.preheader, label %.lr.ph167.i.epil, !llvm.loop !228

.lr.ph171.i.preheader:                            ; preds = %.lr.ph167.i.epil, %.lr.ph171.i.preheader.unr-lcssa
  %.lcssa92 = phi double [ %i.bj, %.lr.ph171.i.preheader.unr-lcssa ], [ %i.bk, %.lr.ph167.i.epil ] ; 2 uses
  %xtraiter121 = and i32 %.1105.i, 7              ; 3 uses
  %i.bl = icmp ult i32 %.1105.i, 8
  br i1 %i.bl, label %.lr.ph171.i.epil.preheader, label %.lr.ph171.i.preheader.new

.lr.ph171.i.preheader.new:                        ; preds = %.lr.ph171.i.preheader
  %unroll_iter126 = and i32 %.1105.i, 2147483640
  br label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.lr.ph171.i, %.lr.ph171.i.preheader.new
  %.086169.i = phi double [ 1.000000e+00, %.lr.ph171.i.preheader.new ], [ %i.bt, %.lr.ph171.i ]
  %niter127 = phi i32 [ 0, %.lr.ph171.i.preheader.new ], [ %niter127.next.7, %.lr.ph171.i ]
  %i.bm = fmul double %.086169.i, 2.000000e+00
  %i.bn = fmul double %i.bm, 2.000000e+00
  %i.bo = fmul double %i.bn, 2.000000e+00
  %i.bp = fmul double %i.bo, 2.000000e+00
  %i.bq = fmul double %i.bp, 2.000000e+00
  %i.br = fmul double %i.bq, 2.000000e+00
  %i.bs = fmul double %i.br, 2.000000e+00
  %i.bt = fmul double %i.bs, 2.000000e+00         ; 3 uses
  %niter127.next.7 = add nuw nsw i32 %niter127, 8 ; 2 uses
  %niter127.ncmp.7 = icmp eq i32 %niter127.next.7, %unroll_iter126
  br i1 %niter127.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph171.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph171.i
  %lcmp.mod123.not = icmp eq i32 %xtraiter121, 0
  br i1 %lcmp.mod123.not, label %._crit_edge.i, label %.lr.ph171.i.epil.preheader

.lr.ph171.i.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph171.i.preheader
  %.086169.i.epil.init = phi double [ 1.000000e+00, %.lr.ph171.i.preheader ], [ %i.bt, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod125 = icmp ne i32 %xtraiter121, 0
  tail call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph171.i.epil

.lr.ph171.i.epil:                                 ; preds = %.lr.ph171.i.epil, %.lr.ph171.i.epil.preheader
  %.086169.i.epil = phi double [ %i.bu, %.lr.ph171.i.epil ], [ %.086169.i.epil.init, %.lr.ph171.i.epil.preheader ]
  %epil.iter122 = phi i32 [ %epil.iter122.next, %.lr.ph171.i.epil ], [ 0, %.lr.ph171.i.epil.preheader ]
  %i.bu = fmul double %.086169.i.epil, 2.000000e+00 ; 2 uses
  %epil.iter122.next = add i32 %epil.iter122, 1   ; 2 uses
  %epil.iter122.cmp.not = icmp eq i32 %epil.iter122.next, %xtraiter121
  br i1 %epil.iter122.cmp.not, label %._crit_edge.i, label %.lr.ph171.i.epil, !llvm.loop !229

._crit_edge.i:                                    ; preds = %bb.h, %.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph171.i.epil, %.critedge2.i, %bb.j, %.preheader135.i, %bb.i
  %.088.lcssa211.i = phi double [ %.lcssa92, %._crit_edge.i.loopexit.unr-lcssa ], [ 1.000000e+00, %.critedge2.i ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %.epilog-lcssa ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %.preheader135.i ], [ %.lcssa92, %.lr.ph171.i.epil ], [ 1.000000e+00, %bb.h ] ; 2 uses
  %.4110202210.i = phi double [ %.3109128.i, %._crit_edge.i.loopexit.unr-lcssa ], [ %.3109128.i, %.critedge2.i ], [ %.1107150.i, %bb.j ], [ %i.am, %.epilog-lcssa ], [ %.0106142.i, %bb.i ], [ %.0106142.i, %.preheader135.i ], [ %.3109128.i, %.lr.ph171.i.epil ], [ %i.v, %bb.h ]
  %.1102204209.i = phi i8 [ %.0101.i, %._crit_edge.i.loopexit.unr-lcssa ], [ %.0101.i, %.critedge2.i ], [ 43, %bb.j ], [ 43, %.epilog-lcssa ], [ 43, %bb.i ], [ 43, %.preheader135.i ], [ %.0101.i, %.lr.ph171.i.epil ], [ 43, %bb.h ]
  %.086.lcssa.i = phi double [ %i.bu, %.lr.ph171.i.epil ], [ 1.000000e+00, %.critedge2.i ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %.epilog-lcssa ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %.preheader135.i ], [ %i.bt, %._crit_edge.i.loopexit.unr-lcssa ], [ 1.000000e+00, %bb.h ] ; 2 uses
  %i.bv = icmp eq i8 %.1102204209.i, 45           ; 2 uses
  %i.bw = insertelement <2 x double> poison, double %.088.lcssa211.i, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %.086.lcssa.i, i64 1
  %i.by = fdiv <2 x double> splat (double 1.000000e+00), %i.bx ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  %.189.i = select i1 %i.bv, double %i.bz, double %.088.lcssa211.i
  %i.ca = extractelement <2 x double> %i.by, i64 1
  %.187.i = select i1 %i.bv, double %i.ca, double %.086.lcssa.i
  %i.cb = fmul double %.4110202210.i, %.189.i
  %i.cc = fmul double %i.cb, %.187.i
  %i.cd = fmul double %.0103.i, %i.cc
  %i.ce = fptrunc double %i.cd to float
  br label %tryParseDouble.exit

tryParseDouble.exit:                              ; preds = %until_space.exit, %bb.f, %bb.g, %.critedge.thread.i, %bb.m, %bb.n, %.critedge4.i, %._crit_edge.i
  %.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.ce, %._crit_edge.i ], [ 0.000000e+00, %.critedge.thread.i ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %.critedge4.i ], [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %until_space.exit ]
  store ptr %i.k, ptr %0, align 8
  ret float %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @jsmn_parse(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3, i64 noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = icmp ult i64 %i.c, %2
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.not200 = icmp eq ptr %3, null                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.az
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.eg, %bb.az ] ; 6 uses
  %.0102191 = phi i32 [ %i.b, %.lr.ph ], [ %.1103, %bb.az ] ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  switch i8 %i.h, label %.thread163 [
    i8 0, label %.critedge
    i8 123, label %bb.c
    i8 91, label %bb.c
    i8 125, label %bb.g
    i8 93, label %bb.g
    i8 34, label %bb.q
    i8 9, label %bb.az
    i8 13, label %bb.az
    i8 10, label %bb.az
    i8 32, label %bb.az
    i8 58, label %bb.ak
    i8 44, label %bb.al
    i8 45, label %bb.ap
    i8 48, label %bb.ap
    i8 49, label %bb.ap
    i8 50, label %bb.ap
    i8 51, label %bb.ap
    i8 52, label %bb.ap
    i8 53, label %bb.ap
    i8 54, label %bb.ap
end_hunk_0
