Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 77
begin_hunk_0_@get_p:bb.a
  %i.as = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(20) @.str.91) #37
  %.not53 = icmp eq i32 %i.as, 0
  br i1 %.not53, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.tail68.thread
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.af

bb.y:                                             ; preds = %.tail68.thread
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.92) #37
  %.not54 = icmp eq i32 %i.au, 0
  br i1 %.not54, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(23) @.str.93) #37
  %.not55 = icmp eq i32 %i.aw, 0
  br i1 %.not55, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 856
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.ay = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.94) #37
  %.not56 = icmp eq i32 %i.ay, 0
  br i1 %.not56, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 860
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.95) #37
  %.not57 = icmp eq i32 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 860
  %spec.select = select i1 %.not57, ptr %i.bb, ptr null
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.a, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.ae ], [ %i.az, %bb.ad ], [ %i.ax, %bb.ab ], [ %i.av, %bb.z ], [ %i.at, %bb.x ], [ %i.ar, %bb.w ], [ %i.al, %bb.v ], [ %i.af, %bb.u ], [ %i.z, %bb.t ], [ %i.s, %bb.s ], [ %i.q, %bb.q ], [ %i.o, %bb.o ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.28) #34
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.34) #34
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.35) #34
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.36) #34
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.39) #34
  %.not23 = icmp eq i32 %i.e, 0
  br i1 %.not23, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.41) #34
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.42) #34
  %.not25 = icmp eq i32 %i.g, 0
  br i1 %.not25, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.44) #34
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.37) #34
  %.not27 = icmp eq i32 %i.i, 0
  br i1 %.not27, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.30) #34
  %.not28 = icmp eq i32 %i.j, 0
  br i1 %.not28, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.87) #34
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.88) #34
  %.not30 = icmp eq i32 %i.l, 0
  br i1 %.not30, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.89) #34
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.90) #34
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.91) #34
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.92) #34
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.93) #34
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.94) #34
  %.not36 = icmp eq i32 %i.r, 0
  br i1 %.not36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.95) #34
  %.not37 = icmp eq i32 %i.s, 0
  %. = select i1 %.not37, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), ptr null
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ %., %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

declare i32 @mat3inv(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

declare ptr @dt_dev_distort_get_iop_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @dt_iop_module_is_skipped(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @simplex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, double noundef nofpclass(nan inf zero sub nnorm) %3, double noundef nofpclass(nan inf zero sub nnorm) %4, i32 noundef range(i32 100, 401) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef nonnull %7) unnamed_addr #5 {
bb.a:
  %i.a = add i32 %2, 1                            ; 21 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3                      ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #33 ; 22 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.c) #33 ; 56 uses
  %i.f = sext i32 %2 to i64
  %i.g = shl nsw i64 %i.f, 3                      ; 5 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #33 ; 40 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 3 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.g) #33 ; 19 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.g) #33 ; 26 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 2 uses
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.g) #33 ; 23 uses
  %.not417 = icmp slt i32 %2, 0                   ; 6 uses
  br i1 %.not417, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.g) #33
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %i.o, ptr %i.p, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.a to double ; 2 uses
  %i.r = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.q)
  %i.s = fadd reassoc nsz arcp contract afn double %i.r, -1.000000e+00 ; 2 uses
  %i.t = sitofp reassoc nsz arcp contract afn i32 %2 to double ; 6 uses
  %i.u = fadd reassoc nsz arcp contract afn double %i.s, %i.t
  %i.v = fmul reassoc nnan nsz arcp contract afn double %i.t, f0x3FF6A09E667F3BCD
  %i.w = insertelement <2 x double> poison, double %i.u, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.s, i64 1
  %i.y = insertelement <2 x double> poison, double %4, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul reassoc nsz arcp contract afn <2 x double> %i.x, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fdiv reassoc nsz arcp contract afn <2 x double> %i.aa, %i.ac ; 2 uses
  %i.ae = icmp slt i32 %2, 1                      ; 11 uses
  br i1 %i.ae, label %._crit_edge427, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !13  ; 12 uses
  %wide.trip.count530 = zext nneg i32 %2 to i64   ; 10 uses
  %min.iters.check = icmp ult i32 %2, 4
  %8 = ptrtoaddr ptr %i.af to i64
  %i.ag = ptrtoaddr ptr %1 to i64
  %i.ah = sub i64 %i.ag, %8
  %diff.check = icmp ugt i64 %i.ah, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check708 = icmp ult i32 %2, 16
  br i1 %min.iters.check708, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %wide.trip.count530, 12
  %n.vec = and i64 %wide.trip.count530, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %wide.load = load <4 x double>, ptr %i.aj, align 8, !tbaa !166
  %wide.load709 = load <4 x double>, ptr %i.ak, align 8, !tbaa !166
  %wide.load710 = load <4 x double>, ptr %i.al, align 8, !tbaa !166
  %wide.load711 = load <4 x double>, ptr %i.am, align 8, !tbaa !166
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store <4 x double> %wide.load, ptr %i.an, align 8, !tbaa !166
  store <4 x double> %wide.load709, ptr %i.ao, align 8, !tbaa !166
  store <4 x double> %wide.load710, ptr %i.ap, align 8, !tbaa !166
  store <4 x double> %wide.load711, ptr %i.aq, align 8, !tbaa !166
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !458

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count530
  br i1 %cmp.n, label %.preheader415.us.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !269

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec712 = and i64 %wide.trip.count530, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index713 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next715, %vec.epilog.vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index713
  %wide.load714 = load <4 x double>, ptr %i.as, align 8, !tbaa !166
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index713
  store <4 x double> %wide.load714, ptr %i.at, align 8, !tbaa !166
  %index.next715 = add nuw i64 %index713, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next715, %n.vec712
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !459

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n716 = icmp eq i64 %n.vec712, %wide.trip.count530
  br i1 %cmp.n716, label %.preheader415.us.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv527.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec712, %vec.epilog.middle.block ] ; 4 uses
  %i.av = sub nsw i64 %wide.trip.count530, %indvars.iv527.ph
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv527.prol = phi i64 [ %indvars.iv.next528.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv527.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv527.prol
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !166
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv527.prol
  store double %i.ax, ptr %i.ay, align 8, !tbaa !166
  %indvars.iv.next528.prol = add nuw nsw i64 %indvars.iv527.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !460

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv527.unr = phi i64 [ %indvars.iv527.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next528.prol, %vec.epilog.scalar.ph.prol ]
  %i.az = sub nsw i64 %indvars.iv527.ph, %wide.trip.count530
  %i.ba = icmp ugt i64 %i.az, -8
  br i1 %i.ba, label %.preheader415.us.preheader, label %vec.epilog.scalar.ph

.preheader415.us.preheader:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %wide.trip.count540 = zext i32 %i.a to i64
  %i.bb = extractelement <2 x double> %i.ad, i64 0 ; 5 uses
  %i.bc = extractelement <2 x double> %i.ad, i64 1 ; 5 uses
  %xtraiter1203 = and i64 %wide.trip.count530, 3  ; 3 uses
  %i.bd = add nsw i32 %2, -1
  %i.be = icmp ult i32 %i.bd, 3
  %unroll_iter = and i64 %wide.trip.count530, 2147483644
  %lcmp.mod1204.not = icmp eq i64 %xtraiter1203, 0
  %lcmp.mod1205 = icmp ne i64 %xtraiter1203, 0
  br label %.preheader415.us

.preheader415.us:                                 ; preds = %.preheader415.us.preheader, %._crit_edge424.us
  %indvars.iv537 = phi i64 [ 1, %.preheader415.us.preheader ], [ %indvars.iv.next538, %._crit_edge424.us ] ; 3 uses
  %i.bf = add nsw i64 %indvars.iv537, -1          ; 11 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv537 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf ; 5 uses
  br i1 %i.be, label %.epil.preheader, label %.preheader415.us.new

.preheader415.us.new:                             ; preds = %.preheader415.us
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !13 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %.preheader415.us.new
  %indvars.iv532 = phi i64 [ 0, %.preheader415.us.new ], [ %indvars.iv.next533.3, %bb.n ] ; 7 uses
  %niter = phi i64 [ 0, %.preheader415.us.new ], [ %niter.next.3, %bb.n ]
  %i.bj = icmp eq i64 %i.bf, %indvars.iv532
  br i1 %i.bj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv532
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !166
  %i.bm = fadd reassoc nsz arcp contract afn double %i.bl, %i.bc
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.bh, align 8, !tbaa !166
  %i.bo = fadd reassoc nsz arcp contract afn double %i.bn, %i.bb
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink702 = phi i64 [ %i.bf, %bb.d ], [ %indvars.iv532, %bb.c ]
  %.sink699 = phi double [ %i.bo, %bb.d ], [ %i.bm, %bb.c ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.sink702
  store double %.sink699, ptr %i.bp, align 8, !tbaa !166
  %indvars.iv.next533 = or disjoint i64 %indvars.iv532, 1 ; 3 uses
  %i.bq = icmp eq i64 %i.bf, %indvars.iv.next533
  br i1 %i.bq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next533
  %i.bs = load double, ptr %i.br, align 8, !tbaa !166
  %i.bt = fadd reassoc nsz arcp contract afn double %i.bs, %i.bc
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bu = load double, ptr %i.bh, align 8, !tbaa !166
  %i.bv = fadd reassoc nsz arcp contract afn double %i.bu, %i.bb
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink702.1 = phi i64 [ %i.bf, %bb.g ], [ %indvars.iv.next533, %bb.f ]
  %.sink699.1 = phi double [ %i.bv, %bb.g ], [ %i.bt, %bb.f ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.sink702.1
  store double %.sink699.1, ptr %i.bw, align 8, !tbaa !166
  %indvars.iv.next533.1 = or disjoint i64 %indvars.iv532, 2 ; 3 uses
  %i.bx = icmp eq i64 %i.bf, %indvars.iv.next533.1
  br i1 %i.bx, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next533.1
  %i.bz = load double, ptr %i.by, align 8, !tbaa !166
  %i.ca = fadd reassoc nsz arcp contract afn double %i.bz, %i.bc
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cb = load double, ptr %i.bh, align 8, !tbaa !166
  %i.cc = fadd reassoc nsz arcp contract afn double %i.cb, %i.bb
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink702.2 = phi i64 [ %i.bf, %bb.j ], [ %indvars.iv.next533.1, %bb.i ]
  %.sink699.2 = phi double [ %i.cc, %bb.j ], [ %i.ca, %bb.i ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.sink702.2
  store double %.sink699.2, ptr %i.cd, align 8, !tbaa !166
  %indvars.iv.next533.2 = or disjoint i64 %indvars.iv532, 3 ; 3 uses
  %i.ce = icmp eq i64 %i.bf, %indvars.iv.next533.2
  br i1 %i.ce, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next533.2
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !166
  %i.ch = fadd reassoc nsz arcp contract afn double %i.cg, %i.bc
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ci = load double, ptr %i.bh, align 8, !tbaa !166
  %i.cj = fadd reassoc nsz arcp contract afn double %i.ci, %i.bb
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink702.3 = phi i64 [ %i.bf, %bb.m ], [ %indvars.iv.next533.2, %bb.l ]
  %.sink699.3 = phi double [ %i.cj, %bb.m ], [ %i.ch, %bb.l ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.sink702.3
  store double %.sink699.3, ptr %i.ck, align 8, !tbaa !166
  %indvars.iv.next533.3 = add nuw nsw i64 %indvars.iv532, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge424.us.unr-lcssa, label %bb.b

._crit_edge424.us.unr-lcssa:                      ; preds = %bb.n
  br i1 %lcmp.mod1204.not, label %._crit_edge424.us, label %.epil.preheader

end_hunk_0
begin_hunk_1_@simplex:bb.a
  %bc.merge.rdx780 = phi double [ %i.afh, %vec.epilog.iter.check783 ], [ 0.000000e+00, %vector.main.loop.iter.check759 ]
  %i.afi = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx780, i64 0
  br label %vec.epilog.vector.body787

vec.epilog.vector.body787:                        ; preds = %vec.epilog.vector.body787, %vec.epilog.ph785
  %index788 = phi i64 [ %vec.epilog.resume.val779, %vec.epilog.ph785 ], [ %index.next791, %vec.epilog.vector.body787 ] ; 2 uses
  %vec.phi789 = phi <4 x double> [ %i.afi, %vec.epilog.ph785 ], [ %i.afk, %vec.epilog.vector.body787 ]
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index788
  %wide.load790 = load <4 x double>, ptr %i.afj, align 8, !tbaa !166
  %i.afk = fadd reassoc nsz arcp contract afn <4 x double> %wide.load790, %vec.phi789 ; 2 uses
  %index.next791 = add nuw i64 %index788, 4       ; 2 uses
  %i.afl = icmp eq i64 %index.next791, %n.vec786
  br i1 %i.afl, label %vec.epilog.middle.block792, label %vec.epilog.vector.body787, !llvm.loop !507

vec.epilog.middle.block792:                       ; preds = %vec.epilog.vector.body787
  %i.afm = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.afk) ; 2 uses
  br i1 %cmp.n793, label %iter.check739, label %.lr.ph499.preheader

.lr.ph499.preheader:                              ; preds = %iter.check781, %vec.epilog.iter.check783, %vec.epilog.middle.block792
  %indvars.iv622.ph = phi i64 [ 0, %iter.check781 ], [ %n.vec762, %vec.epilog.iter.check783 ], [ %n.vec786, %vec.epilog.middle.block792 ]
  %.0338497.ph = phi double [ 0.000000e+00, %iter.check781 ], [ %i.afh, %vec.epilog.iter.check783 ], [ %i.afm, %vec.epilog.middle.block792 ]
  br label %.lr.ph499

.lr.ph499:                                        ; preds = %.lr.ph499.preheader, %.lr.ph499
  %indvars.iv622 = phi i64 [ %indvars.iv.next623, %.lr.ph499 ], [ %indvars.iv622.ph, %.lr.ph499.preheader ] ; 2 uses
  %.0338497 = phi double [ %i.afp, %.lr.ph499 ], [ %.0338497.ph, %.lr.ph499.preheader ]
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv622
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !166
  %i.afp = fadd reassoc nsz arcp contract afn double %i.afo, %.0338497 ; 2 uses
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1 ; 2 uses
  %exitcond626.not = icmp eq i64 %indvars.iv.next623, %wide.trip.count625
  br i1 %exitcond626.not, label %iter.check739, label %.lr.ph499, !llvm.loop !508

iter.check739:                                    ; preds = %.lr.ph499, %vec.epilog.middle.block792, %middle.block774
  %.lcssa = phi double [ %i.afm, %vec.epilog.middle.block792 ], [ %i.afh, %middle.block774 ], [ %i.afp, %.lr.ph499 ]
  %i.afq = fmul reassoc nsz arcp contract afn double %.lcssa, %i.el ; 3 uses
  br i1 %min.iters.check717, label %.lr.ph506.preheader, label %vector.main.loop.iter.check718

vector.main.loop.iter.check718:                   ; preds = %iter.check739
  br i1 %min.iters.check719, label %vec.epilog.ph743, label %vector.ph720

vector.ph720:                                     ; preds = %vector.main.loop.iter.check718
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.afq, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body724

vector.body724:                                   ; preds = %vector.ph720, %vector.body724
  %index725 = phi i64 [ 0, %vector.ph720 ], [ %index.next733, %vector.body724 ] ; 2 uses
  %vec.phi = phi <4 x double> [ zeroinitializer, %vector.ph720 ], [ %i.agh, %vector.body724 ]
  %vec.phi726 = phi <4 x double> [ zeroinitializer, %vector.ph720 ], [ %i.agi, %vector.body724 ]
  %vec.phi727 = phi <4 x double> [ zeroinitializer, %vector.ph720 ], [ %i.agj, %vector.body724 ]
  %vec.phi728 = phi <4 x double> [ zeroinitializer, %vector.ph720 ], [ %i.agk, %vector.body724 ]
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index725 ; 4 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 64
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 96
  %wide.load729 = load <4 x double>, ptr %i.afr, align 8, !tbaa !166
  %wide.load730 = load <4 x double>, ptr %i.afs, align 8, !tbaa !166
  %wide.load731 = load <4 x double>, ptr %i.aft, align 8, !tbaa !166
  %wide.load732 = load <4 x double>, ptr %i.afu, align 8, !tbaa !166
  %i.afv = fsub reassoc nsz arcp contract afn <4 x double> %wide.load729, %broadcast.splat ; 2 uses
  %i.afw = fsub reassoc nsz arcp contract afn <4 x double> %wide.load730, %broadcast.splat ; 2 uses
  %i.afx = fsub reassoc nsz arcp contract afn <4 x double> %wide.load731, %broadcast.splat ; 2 uses
  %i.afy = fsub reassoc nsz arcp contract afn <4 x double> %wide.load732, %broadcast.splat ; 2 uses
  %i.afz = fmul reassoc nsz arcp contract afn <4 x double> %i.afv, %i.afv
  %i.aga = fmul reassoc nsz arcp contract afn <4 x double> %i.afw, %i.afw
  %i.agb = fmul reassoc nsz arcp contract afn <4 x double> %i.afx, %i.afx
  %i.agc = fmul reassoc nsz arcp contract afn <4 x double> %i.afy, %i.afy
  %i.agd = fmul reassoc nsz arcp contract afn <4 x double> %i.afz, %i.en
  %i.age = fmul reassoc nsz arcp contract afn <4 x double> %i.aga, %i.eo
  %i.agf = fmul reassoc nsz arcp contract afn <4 x double> %i.agb, %i.ep
  %i.agg = fmul reassoc nsz arcp contract afn <4 x double> %i.agc, %i.eq
  %i.agh = fadd reassoc nsz arcp contract afn <4 x double> %i.agd, %vec.phi ; 2 uses
  %i.agi = fadd reassoc nsz arcp contract afn <4 x double> %i.age, %vec.phi726 ; 2 uses
  %i.agj = fadd reassoc nsz arcp contract afn <4 x double> %i.agf, %vec.phi727 ; 2 uses
  %i.agk = fadd reassoc nsz arcp contract afn <4 x double> %i.agg, %vec.phi728 ; 2 uses
  %index.next733 = add nuw i64 %index725, 16      ; 2 uses
  %i.agl = icmp eq i64 %index.next733, %n.vec721
  br i1 %i.agl, label %middle.block734, label %vector.body724, !llvm.loop !509

middle.block734:                                  ; preds = %vector.body724
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x double> %i.agi, %i.agh
  %bin.rdx735 = fadd reassoc nsz arcp contract afn <4 x double> %i.agj, %bin.rdx
  %bin.rdx736 = fadd reassoc nsz arcp contract afn <4 x double> %i.agk, %bin.rdx735
  %i.agm = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %bin.rdx736) ; 3 uses
  br i1 %cmp.n737, label %._crit_edge507.loopexit, label %vec.epilog.iter.check741

vec.epilog.iter.check741:                         ; preds = %middle.block734
  br i1 %min.epilog.iters.check742, label %.lr.ph506.preheader, label %vec.epilog.ph743, !prof !269

vec.epilog.ph743:                                 ; preds = %vector.main.loop.iter.check718, %vec.epilog.iter.check741
  %vec.epilog.resume.val738 = phi i64 [ %n.vec721, %vec.epilog.iter.check741 ], [ 0, %vector.main.loop.iter.check718 ]
  %bc.merge.rdx = phi double [ %i.agm, %vec.epilog.iter.check741 ], [ 0.000000e+00, %vector.main.loop.iter.check718 ]
  %i.agn = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %bc.merge.rdx, i64 0
  %broadcast.splatinsert745 = insertelement <4 x double> poison, double %i.afq, i64 0
  %broadcast.splat746 = shufflevector <4 x double> %broadcast.splatinsert745, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body749

vec.epilog.vector.body749:                        ; preds = %vec.epilog.vector.body749, %vec.epilog.ph743
  %index750 = phi i64 [ %vec.epilog.resume.val738, %vec.epilog.ph743 ], [ %index.next753, %vec.epilog.vector.body749 ] ; 2 uses
  %vec.phi751 = phi <4 x double> [ %i.agn, %vec.epilog.ph743 ], [ %i.ags, %vec.epilog.vector.body749 ]
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index750
  %wide.load752 = load <4 x double>, ptr %i.ago, align 8, !tbaa !166
  %i.agp = fsub reassoc nsz arcp contract afn <4 x double> %wide.load752, %broadcast.splat746 ; 2 uses
  %i.agq = fmul reassoc nsz arcp contract afn <4 x double> %i.agp, %i.agp
  %i.agr = fmul reassoc nsz arcp contract afn <4 x double> %i.agq, %i.er
  %i.ags = fadd reassoc nsz arcp contract afn <4 x double> %i.agr, %vec.phi751 ; 2 uses
  %index.next753 = add nuw i64 %index750, 4       ; 2 uses
  %i.agt = icmp eq i64 %index.next753, %n.vec744
  br i1 %i.agt, label %vec.epilog.middle.block754, label %vec.epilog.vector.body749, !llvm.loop !510

vec.epilog.middle.block754:                       ; preds = %vec.epilog.vector.body749
  %i.agu = tail call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ags) ; 2 uses
  br i1 %cmp.n755, label %._crit_edge507.loopexit, label %.lr.ph506.preheader

.lr.ph506.preheader:                              ; preds = %iter.check739, %vec.epilog.iter.check741, %vec.epilog.middle.block754
  %indvars.iv627.ph = phi i64 [ 0, %iter.check739 ], [ %n.vec721, %vec.epilog.iter.check741 ], [ %n.vec744, %vec.epilog.middle.block754 ]
  %.0337504.ph = phi double [ 0.000000e+00, %iter.check739 ], [ %i.agm, %vec.epilog.iter.check741 ], [ %i.agu, %vec.epilog.middle.block754 ]
  br label %.lr.ph506

.lr.ph506:                                        ; preds = %.lr.ph506.preheader, %.lr.ph506
  %indvars.iv627 = phi i64 [ %indvars.iv.next628, %.lr.ph506 ], [ %indvars.iv627.ph, %.lr.ph506.preheader ] ; 2 uses
  %.0337504 = phi double [ %i.agz, %.lr.ph506 ], [ %.0337504.ph, %.lr.ph506.preheader ]
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv627
  %i.agw = load double, ptr %i.agv, align 8, !tbaa !166
  %i.agx = fsub reassoc nsz arcp contract afn double %i.agw, %i.afq ; 2 uses
  %square = fmul reassoc nsz arcp contract afn double %i.agx, %i.agx
  %i.agy = fmul reassoc nsz arcp contract afn double %square, %i.es
  %i.agz = fadd reassoc nsz arcp contract afn double %i.agy, %.0337504 ; 2 uses
  %indvars.iv.next628 = add nuw nsw i64 %indvars.iv627, 1 ; 2 uses
  %exitcond631.not = icmp eq i64 %indvars.iv.next628, %wide.trip.count630
  br i1 %exitcond631.not, label %._crit_edge507.loopexit, label %.lr.ph506, !llvm.loop !511

._crit_edge507.loopexit:                          ; preds = %.lr.ph506, %vec.epilog.middle.block754, %middle.block734
  %.lcssa707 = phi double [ %i.agu, %vec.epilog.middle.block754 ], [ %i.agm, %middle.block734 ], [ %i.agz, %.lr.ph506 ]
  %i.aha = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %.lcssa707)
  br label %._crit_edge507

._crit_edge507:                                   ; preds = %bb.as, %._crit_edge507.loopexit
  %.0337.lcssa = phi double [ %i.aha, %._crit_edge507.loopexit ], [ 0.000000e+00, %bb.as ]
  %i.ahb = fcmp reassoc nsz arcp contract afn olt double %.0337.lcssa, %3
  br i1 %i.ahb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge507
  %i.ahc = add nuw nsw i32 %.0340509, 1
  %exitcond632.not = icmp eq i32 %.0340509, %5
  br i1 %exitcond632.not, label %bb.au, label %.preheader413

bb.au:                                            ; preds = %._crit_edge507, %bb.at
  %.0340.lcssa = phi i32 [ %.0340509, %._crit_edge507 ], [ %i.du, %bb.at ]
  br i1 %.not417, label %._crit_edge523.critedge, label %.lr.ph514.preheader

.lr.ph514.preheader:                              ; preds = %bb.au
  %.pre650 = load double, ptr %i.e, align 8, !tbaa !166 ; 2 uses
  %xtraiter1251 = and i64 %wide.trip.count550, 7  ; 3 uses
  %i.ahd = icmp ult i32 %i.a, 8
  br i1 %i.ahd, label %.lr.ph514.epil.preheader, label %.lr.ph514.preheader.new

.lr.ph514.preheader.new:                          ; preds = %.lr.ph514.preheader
  %unroll_iter1258 = and i64 %wide.trip.count550, 4294967288
  br label %.lr.ph514

.preheader.unr-lcssa:                             ; preds = %.lr.ph514
  %lcmp.mod1255.not = icmp eq i64 %xtraiter1251, 0
  br i1 %lcmp.mod1255.not, label %.preheader, label %.lr.ph514.epil.preheader

.lr.ph514.epil.preheader:                         ; preds = %.preheader.unr-lcssa, %.lr.ph514.preheader
  %.epil.init1254 = phi double [ %.pre650, %.lr.ph514.preheader ], [ %i.ajw, %.preheader.unr-lcssa ]
  %indvars.iv633.epil.init = phi i64 [ 0, %.lr.ph514.preheader ], [ %indvars.iv.next634.7, %.preheader.unr-lcssa ]
  %.2355511.epil.init = phi i32 [ 0, %.lr.ph514.preheader ], [ %spec.select398.7, %.preheader.unr-lcssa ]
  %lcmp.mod1257 = icmp ne i64 %xtraiter1251, 0
  tail call void @llvm.assume(i1 %lcmp.mod1257)
  br label %.lr.ph514.epil

.lr.ph514.epil:                                   ; preds = %.lr.ph514.epil, %.lr.ph514.epil.preheader
  %i.ahe = phi double [ %.epil.init1254, %.lr.ph514.epil.preheader ], [ %i.ahj, %.lr.ph514.epil ] ; 2 uses
  %indvars.iv633.epil = phi i64 [ %indvars.iv633.epil.init, %.lr.ph514.epil.preheader ], [ %indvars.iv.next634.epil, %.lr.ph514.epil ] ; 3 uses
  %.2355511.epil = phi i32 [ %.2355511.epil.init, %.lr.ph514.epil.preheader ], [ %spec.select398.epil, %.lr.ph514.epil ]
  %epil.iter1252 = phi i64 [ 0, %.lr.ph514.epil.preheader ], [ %epil.iter1252.next, %.lr.ph514.epil ]
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv633.epil
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !166 ; 2 uses
  %i.ahh = fcmp reassoc nsz arcp contract afn olt double %i.ahg, %i.ahe ; 2 uses
  %i.ahi = trunc nuw nsw i64 %indvars.iv633.epil to i32
  %spec.select398.epil = select i1 %i.ahh, i32 %i.ahi, i32 %.2355511.epil ; 2 uses
  %indvars.iv.next634.epil = add nuw nsw i64 %indvars.iv633.epil, 1
  %i.ahj = select i1 %i.ahh, double %i.ahg, double %i.ahe
  %epil.iter1252.next = add i64 %epil.iter1252, 1 ; 2 uses
  %epil.iter1252.cmp.not = icmp eq i64 %epil.iter1252.next, %xtraiter1251
  br i1 %epil.iter1252.cmp.not, label %.preheader, label %.lr.ph514.epil, !llvm.loop !512

.preheader:                                       ; preds = %.lr.ph514.epil, %.preheader.unr-lcssa
  %spec.select398.lcssa = phi i32 [ %spec.select398.7, %.preheader.unr-lcssa ], [ %spec.select398.epil, %.lr.ph514.epil ]
  br i1 %i.ae, label %._crit_edge518, label %iter.check1161

iter.check1161:                                   ; preds = %.preheader
  %i.ahk = zext nneg i32 %spec.select398.lcssa to i64
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ahk
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !13 ; 12 uses
  %wide.trip.count641 = zext nneg i32 %2 to i64
  %min.iters.check1146 = icmp ult i32 %2, 4
  %9 = ptrtoaddr ptr %1 to i64
  %i.ahn = ptrtoaddr ptr %i.ahm to i64
  %i.aho = sub i64 %i.ahn, %9
  %diff.check1145 = icmp ugt i64 %i.aho, -128
  %or.cond1188 = select i1 %min.iters.check1146, i1 true, i1 %diff.check1145
  br i1 %or.cond1188, label %vec.epilog.scalar.ph1162.preheader, label %vector.main.loop.iter.check1147

vector.main.loop.iter.check1147:                  ; preds = %iter.check1161
  %min.iters.check1148 = icmp ult i32 %2, 16
  br i1 %min.iters.check1148, label %vec.epilog.ph1165, label %vector.ph1149

vector.ph1149:                                    ; preds = %vector.main.loop.iter.check1147
  %i.ahp = and i64 %wide.trip.count570, 12
  %n.vec1150 = and i64 %wide.trip.count570, 2147483632 ; 4 uses
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.ph1149, %vector.body1151
  %index1152 = phi i64 [ 0, %vector.ph1149 ], [ %index.next1157, %vector.body1151 ] ; 3 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %index1152 ; 4 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 32
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 64
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 96
  %wide.load1153 = load <4 x double>, ptr %i.ahq, align 8, !tbaa !166
  %wide.load1154 = load <4 x double>, ptr %i.ahr, align 8, !tbaa !166
  %wide.load1155 = load <4 x double>, ptr %i.ahs, align 8, !tbaa !166
  %wide.load1156 = load <4 x double>, ptr %i.aht, align 8, !tbaa !166
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index1152 ; 4 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 32
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 64
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 96
  store <4 x double> %wide.load1153, ptr %i.ahu, align 8, !tbaa !166
  store <4 x double> %wide.load1154, ptr %i.ahv, align 8, !tbaa !166
  store <4 x double> %wide.load1155, ptr %i.ahw, align 8, !tbaa !166
  store <4 x double> %wide.load1156, ptr %i.ahx, align 8, !tbaa !166
  %index.next1157 = add nuw i64 %index1152, 16    ; 2 uses
  %i.ahy = icmp eq i64 %index.next1157, %n.vec1150
  br i1 %i.ahy, label %middle.block1158, label %vector.body1151, !llvm.loop !513

middle.block1158:                                 ; preds = %vector.body1151
  %cmp.n1159 = icmp eq i64 %n.vec1150, %wide.trip.count570
  br i1 %cmp.n1159, label %._crit_edge518, label %vec.epilog.iter.check1163

vec.epilog.iter.check1163:                        ; preds = %middle.block1158
  %min.epilog.iters.check1164 = icmp eq i64 %i.ahp, 0
  br i1 %min.epilog.iters.check1164, label %vec.epilog.scalar.ph1162.preheader, label %vec.epilog.ph1165, !prof !269

vec.epilog.ph1165:                                ; preds = %vector.main.loop.iter.check1147, %vec.epilog.iter.check1163
  %vec.epilog.resume.val1160 = phi i64 [ %n.vec1150, %vec.epilog.iter.check1163 ], [ 0, %vector.main.loop.iter.check1147 ]
  %n.vec1166 = and i64 %wide.trip.count570, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1167

vec.epilog.vector.body1167:                       ; preds = %vec.epilog.vector.body1167, %vec.epilog.ph1165
  %index1168 = phi i64 [ %vec.epilog.resume.val1160, %vec.epilog.ph1165 ], [ %index.next1170, %vec.epilog.vector.body1167 ] ; 3 uses
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %index1168
  %wide.load1169 = load <4 x double>, ptr %i.ahz, align 8, !tbaa !166
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index1168
  store <4 x double> %wide.load1169, ptr %i.aia, align 8, !tbaa !166
  %index.next1170 = add nuw i64 %index1168, 4     ; 2 uses
  %i.aib = icmp eq i64 %index.next1170, %n.vec1166
  br i1 %i.aib, label %vec.epilog.middle.block1171, label %vec.epilog.vector.body1167, !llvm.loop !514

vec.epilog.middle.block1171:                      ; preds = %vec.epilog.vector.body1167
  %cmp.n1172 = icmp eq i64 %n.vec1166, %wide.trip.count570
  br i1 %cmp.n1172, label %._crit_edge518, label %vec.epilog.scalar.ph1162.preheader

vec.epilog.scalar.ph1162.preheader:               ; preds = %iter.check1161, %vec.epilog.iter.check1163, %vec.epilog.middle.block1171
  %indvars.iv638.ph = phi i64 [ 0, %iter.check1161 ], [ %n.vec1150, %vec.epilog.iter.check1163 ], [ %n.vec1166, %vec.epilog.middle.block1171 ] ; 4 uses
  %i.aic = sub nsw i64 %wide.trip.count570, %indvars.iv638.ph
  %xtraiter1260 = and i64 %i.aic, 7               ; 2 uses
  %lcmp.mod1261.not = icmp eq i64 %xtraiter1260, 0
  br i1 %lcmp.mod1261.not, label %vec.epilog.scalar.ph1162.prol.loopexit, label %vec.epilog.scalar.ph1162.prol

vec.epilog.scalar.ph1162.prol:                    ; preds = %vec.epilog.scalar.ph1162.preheader, %vec.epilog.scalar.ph1162.prol
  %indvars.iv638.prol = phi i64 [ %indvars.iv.next639.prol, %vec.epilog.scalar.ph1162.prol ], [ %indvars.iv638.ph, %vec.epilog.scalar.ph1162.preheader ] ; 3 uses
  %prol.iter1262 = phi i64 [ %prol.iter1262.next, %vec.epilog.scalar.ph1162.prol ], [ 0, %vec.epilog.scalar.ph1162.preheader ]
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv638.prol
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !166
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv638.prol
  store double %i.aie, ptr %i.aif, align 8, !tbaa !166
  %indvars.iv.next639.prol = add nuw nsw i64 %indvars.iv638.prol, 1 ; 2 uses
  %prol.iter1262.next = add i64 %prol.iter1262, 1 ; 2 uses
  %prol.iter1262.cmp.not = icmp eq i64 %prol.iter1262.next, %xtraiter1260
  br i1 %prol.iter1262.cmp.not, label %vec.epilog.scalar.ph1162.prol.loopexit, label %vec.epilog.scalar.ph1162.prol, !llvm.loop !515

vec.epilog.scalar.ph1162.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1162.prol, %vec.epilog.scalar.ph1162.preheader
  %indvars.iv638.unr = phi i64 [ %indvars.iv638.ph, %vec.epilog.scalar.ph1162.preheader ], [ %indvars.iv.next639.prol, %vec.epilog.scalar.ph1162.prol ]
  %i.aig = sub nsw i64 %indvars.iv638.ph, %wide.trip.count570
  %i.aih = icmp ugt i64 %i.aig, -8
  br i1 %i.aih, label %._crit_edge518, label %vec.epilog.scalar.ph1162

.lr.ph514:                                        ; preds = %.lr.ph514, %.lr.ph514.preheader.new
  %i.aii = phi double [ %.pre650, %.lr.ph514.preheader.new ], [ %i.ajw, %.lr.ph514 ] ; 2 uses
  %indvars.iv633 = phi i64 [ 0, %.lr.ph514.preheader.new ], [ %indvars.iv.next634.7, %.lr.ph514 ] ; 10 uses
  %.2355511 = phi i32 [ 0, %.lr.ph514.preheader.new ], [ %spec.select398.7, %.lr.ph514 ]
  %niter1259 = phi i64 [ 0, %.lr.ph514.preheader.new ], [ %niter1259.next.7, %.lr.ph514 ]
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv633
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !166 ; 2 uses
  %i.ail = fcmp reassoc nsz arcp contract afn olt double %i.aik, %i.aii ; 2 uses
  %i.aim = trunc nuw nsw i64 %indvars.iv633 to i32
  %spec.select398 = select i1 %i.ail, i32 %i.aim, i32 %.2355511
  %indvars.iv.next634 = or disjoint i64 %indvars.iv633, 1 ; 2 uses
  %i.ain = select i1 %i.ail, double %i.aik, double %i.aii ; 2 uses
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next634
  %i.aip = load double, ptr %i.aio, align 8, !tbaa !166 ; 2 uses
  %i.aiq = fcmp reassoc nsz arcp contract afn olt double %i.aip, %i.ain ; 2 uses
  %i.air = trunc nuw nsw i64 %indvars.iv.next634 to i32
  %spec.select398.1 = select i1 %i.aiq, i32 %i.air, i32 %spec.select398
  %indvars.iv.next634.1 = or disjoint i64 %indvars.iv633, 2 ; 2 uses
  %i.ais = select i1 %i.aiq, double %i.aip, double %i.ain ; 2 uses
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next634.1
  %i.aiu = load double, ptr %i.ait, align 8, !tbaa !166 ; 2 uses
  %i.aiv = fcmp reassoc nsz arcp contract afn olt double %i.aiu, %i.ais ; 2 uses
  %i.aiw = trunc nuw nsw i64 %indvars.iv.next634.1 to i32
  %spec.select398.2 = select i1 %i.aiv, i32 %i.aiw, i32 %spec.select398.1
  %indvars.iv.next634.2 = or disjoint i64 %indvars.iv633, 3 ; 2 uses
  %i.aix = select i1 %i.aiv, double %i.aiu, double %i.ais ; 2 uses
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next634.2
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !166 ; 2 uses
  %i.aja = fcmp reassoc nsz arcp contract afn olt double %i.aiz, %i.aix ; 2 uses
  %i.ajb = trunc nuw nsw i64 %indvars.iv.next634.2 to i32
  %spec.select398.3 = select i1 %i.aja, i32 %i.ajb, i32 %spec.select398.2
  %indvars.iv.next634.3 = or disjoint i64 %indvars.iv633, 4 ; 2 uses
  %i.ajc = select i1 %i.aja, double %i.aiz, double %i.aix ; 2 uses
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next634.3
  %i.aje = load double, ptr %i.ajd, align 8, !tbaa !166 ; 2 uses
  %i.ajf = fcmp reassoc nsz arcp contract afn olt double %i.aje, %i.ajc ; 2 uses
  %i.ajg = trunc nuw nsw i64 %indvars.iv.next634.3 to i32
  %spec.select398.4 = select i1 %i.ajf, i32 %i.ajg, i32 %spec.select398.3
  %indvars.iv.next634.4 = or disjoint i64 %indvars.iv633, 5 ; 2 uses
  %i.ajh = select i1 %i.ajf, double %i.aje, double %i.ajc ; 2 uses
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next634.4
  %i.ajj = load double, ptr %i.aji, align 8, !tbaa !166 ; 2 uses
  %i.ajk = fcmp reassoc nsz arcp contract afn olt double %i.ajj, %i.ajh ; 2 uses
  %i.ajl = trunc nuw nsw i64 %indvars.iv.next634.4 to i32
  %spec.select398.5 = select i1 %i.ajk, i32 %i.ajl, i32 %spec.select398.4
  %indvars.iv.next634.5 = or disjoint i64 %indvars.iv633, 6 ; 2 uses
  %i.ajm = select i1 %i.ajk, double %i.ajj, double %i.ajh ; 2 uses
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next634.5
  %i.ajo = load double, ptr %i.ajn, align 8, !tbaa !166 ; 2 uses
  %i.ajp = fcmp reassoc nsz arcp contract afn olt double %i.ajo, %i.ajm ; 2 uses
  %i.ajq = trunc nuw nsw i64 %indvars.iv.next634.5 to i32
  %spec.select398.6 = select i1 %i.ajp, i32 %i.ajq, i32 %spec.select398.5
  %indvars.iv.next634.6 = or disjoint i64 %indvars.iv633, 7 ; 2 uses
  %i.ajr = select i1 %i.ajp, double %i.ajo, double %i.ajm ; 2 uses
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next634.6
  %i.ajt = load double, ptr %i.ajs, align 8, !tbaa !166 ; 2 uses
  %i.aju = fcmp reassoc nsz arcp contract afn olt double %i.ajt, %i.ajr ; 2 uses
  %i.ajv = trunc nuw nsw i64 %indvars.iv.next634.6 to i32
  %spec.select398.7 = select i1 %i.aju, i32 %i.ajv, i32 %spec.select398.6 ; 3 uses
  %indvars.iv.next634.7 = add nuw nsw i64 %indvars.iv633, 8 ; 2 uses
  %i.ajw = select i1 %i.aju, double %i.ajt, double %i.ajr ; 2 uses
  %niter1259.next.7 = add i64 %niter1259, 8       ; 2 uses
  %niter1259.ncmp.7 = icmp eq i64 %niter1259.next.7, %unroll_iter1258
  br i1 %niter1259.ncmp.7, label %.preheader.unr-lcssa, label %.lr.ph514

vec.epilog.scalar.ph1162:                         ; preds = %vec.epilog.scalar.ph1162.prol.loopexit, %vec.epilog.scalar.ph1162
  %indvars.iv638 = phi i64 [ %indvars.iv.next639.7, %vec.epilog.scalar.ph1162 ], [ %indvars.iv638.unr, %vec.epilog.scalar.ph1162.prol.loopexit ] ; 10 uses
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv638
  %i.ajy = load double, ptr %i.ajx, align 8, !tbaa !166
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv638
  store double %i.ajy, ptr %i.ajz, align 8, !tbaa !166
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv638, 1 ; 2 uses
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv.next639
  %i.akb = load double, ptr %i.aka, align 8, !tbaa !166
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next639
  store double %i.akb, ptr %i.akc, align 8, !tbaa !166
  %indvars.iv.next639.1 = add nuw nsw i64 %indvars.iv638, 2 ; 2 uses
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv.next639.1
  %i.ake = load double, ptr %i.akd, align 8, !tbaa !166
  %i.akf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next639.1
  store double %i.ake, ptr %i.akf, align 8, !tbaa !166
  %indvars.iv.next639.2 = add nuw nsw i64 %indvars.iv638, 3 ; 2 uses
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv.next639.2
  %i.akh = load double, ptr %i.akg, align 8, !tbaa !166
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next639.2
  store double %i.akh, ptr %i.aki, align 8, !tbaa !166
  %indvars.iv.next639.3 = add nuw nsw i64 %indvars.iv638, 4 ; 2 uses
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv.next639.3
  %i.akk = load double, ptr %i.akj, align 8, !tbaa !166
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next639.3
  store double %i.akk, ptr %i.akl, align 8, !tbaa !166
  %indvars.iv.next639.4 = add nuw nsw i64 %indvars.iv638, 5 ; 2 uses
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv.next639.4
  %i.akn = load double, ptr %i.akm, align 8, !tbaa !166
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next639.4
  store double %i.akn, ptr %i.ako, align 8, !tbaa !166
  %indvars.iv.next639.5 = add nuw nsw i64 %indvars.iv638, 6 ; 2 uses
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv.next639.5
  %i.akq = load double, ptr %i.akp, align 8, !tbaa !166
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next639.5
  store double %i.akq, ptr %i.akr, align 8, !tbaa !166
  %indvars.iv.next639.6 = add nuw nsw i64 %indvars.iv638, 7 ; 2 uses
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv.next639.6
  %i.akt = load double, ptr %i.aks, align 8, !tbaa !166
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next639.6
  store double %i.akt, ptr %i.aku, align 8, !tbaa !166
  %indvars.iv.next639.7 = add nuw nsw i64 %indvars.iv638, 8 ; 2 uses
  %exitcond642.not.7 = icmp eq i64 %indvars.iv.next639.7, %wide.trip.count641
  br i1 %exitcond642.not.7, label %._crit_edge518, label %vec.epilog.scalar.ph1162, !llvm.loop !516

._crit_edge518:                                   ; preds = %vec.epilog.scalar.ph1162.prol.loopexit, %vec.epilog.scalar.ph1162, %middle.block1158, %vec.epilog.middle.block1171, %.preheader
  tail call void @free(ptr noundef nonnull %i.e) #34
  tail call void @free(ptr noundef %i.h) #34
end_hunk_1
