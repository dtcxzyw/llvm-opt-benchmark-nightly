Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ps?download=true
inline.NumInlined: 81
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ff_vvc_decode_sh:bb.a
  %i.jw = trunc i32 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 461
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !45
  %i.jy = getelementptr inbounds nuw i8, ptr %i.k, i64 722
  %i.jz = load i8, ptr %i.jy, align 2, !tbaa !367
  %i.ka = zext i8 %i.jz to i32
  %i.kb = add nuw nsw i32 %i.jc, %i.ka
  %i.kc = shl nuw i32 1, %i.kb
  %i.kd = trunc i32 %i.kc to i8
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 462
  store i8 %i.kd, ptr %i.ke, align 2, !tbaa !45
  %i.kf = getelementptr inbounds nuw i8, ptr %i.k, i64 716
  %i.kg = load i8, ptr %i.kf, align 2, !tbaa !368
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 463
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !45
  %i.ki = getelementptr inbounds nuw i8, ptr %i.k, i64 720
  br label %sh_partition_constraints.exit.i

sh_partition_constraints.exit.i:                  ; preds = %bb.x, %.preheader.i42.i
  %.sink9.in.i.i = phi ptr [ %i.hq, %.preheader.i42.i ], [ %i.ki, %bb.x ]
  %.sink8.i.i = phi i64 [ 729, %.preheader.i42.i ], [ 723, %bb.x ]
  %.sink.i.i = phi i64 [ 730, %.preheader.i42.i ], [ 724, %bb.x ]
  %.sroa.5.0.i.i = phi i32 [ %i.ii, %.preheader.i42.i ], [ %i.jc, %bb.x ]
  %.sroa.0.0.i.i = phi i32 [ %i.hu, %.preheader.i42.i ], [ %i.iy, %bb.x ]
  %.sink9.i.i = load i8, ptr %.sink9.in.i.i, align 2, !tbaa !45
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i8 %.sink9.i.i, ptr %i.kj, align 8, !tbaa !45
  %i.kk = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink8.i.i
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !45
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 465
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !369
  %i.kn = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink.i.i
  %i.ko = load i8, ptr %i.kn, align 2, !tbaa !45
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 466
  store i8 %i.ko, ptr %i.kp, align 2, !tbaa !370
  %i.kq = shl nuw i32 1, %.sroa.0.0.i.i
  %i.kr = trunc i32 %i.kq to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 457
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !45
  %i.kt = shl nuw i32 1, %.sroa.5.0.i.i
  %i.ku = trunc i32 %i.kt to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 458
  store i8 %i.ku, ptr %i.kv, align 2, !tbaa !45
  %i.kw = load ptr, ptr %i.b, align 8, !tbaa !64  ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.g, i64 15418
  %i.ky = load i8, ptr %i.kx, align 2, !tbaa !371
  %.not.i43.i = icmp eq i8 %i.ky, 0
  br i1 %.not.i43.i, label %sh_derive.exit, label %.preheader.i44.i

.preheader.i44.i:                                 ; preds = %sh_partition_constraints.exit.i
  %i.kz = load i32, ptr %i.du, align 8, !tbaa !334 ; 2 uses
  %i.la = icmp ugt i32 %i.kz, 1
  br i1 %i.la, label %.lr.ph.i46.i, label %sh_derive.exit

.lr.ph.i46.i:                                     ; preds = %.preheader.i44.i
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !332
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 4038
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !53
  %i.lf = zext i16 %i.le to i32                   ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 4088
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !58 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.kw, i64 4080
  %i.lj = getelementptr inbounds nuw i8, ptr %i.g, i64 15417
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 468
  br label %bb.y

bb.y:                                             ; preds = %bb.ad, %.lr.ph.i46.i
  %i.ll = phi i32 [ %i.kz, %.lr.ph.i46.i ], [ %i.mm, %bb.ad ] ; 2 uses
  %indvars.iv.i47.i = phi i64 [ 1, %.lr.ph.i46.i ], [ %indvars.iv.next.i48.i, %bb.ad ] ; 3 uses
  %.035.i.i = phi i32 [ 0, %.lr.ph.i46.i ], [ %.1.i.i, %bb.ad ] ; 4 uses
  %i.lm = getelementptr [4 x i8], ptr %i.lc, i64 %indvars.iv.i47.i ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 -4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !47 ; 2 uses
  %i.lp = udiv i32 %i.lo, %i.lf                   ; 2 uses
  %i.lq = urem i32 %i.lo, %i.lf
  %i.lr = load i32, ptr %i.lm, align 4, !tbaa !47 ; 2 uses
  %i.ls = udiv i32 %i.lr, %i.lf                   ; 2 uses
  %i.lt = urem i32 %i.lr, %i.lf
  %i.lu = sext i32 %i.ls to i64
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.lh, i64 %i.lu
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !48
  %i.lx = sext i32 %i.lp to i64
  %i.ly = getelementptr inbounds [2 x i8], ptr %i.lh, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !48
  %.not30.i.i = icmp eq i16 %i.lw, %i.lz
  br i1 %.not30.i.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ma = load ptr, ptr %i.li, align 8, !tbaa !57 ; 2 uses
  %i.mb = zext nneg i32 %i.lt to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %i.mb
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !48
  %i.me = zext nneg i32 %i.lq to i64
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !48
  %.not31.i.i = icmp eq i16 %i.md, %i.mg
  br i1 %.not31.i.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %.not32.i.i = icmp eq i32 %i.ls, %i.lp
  br i1 %.not32.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mh = load i8, ptr %i.lj, align 1, !tbaa !372
  %.not33.i.i = icmp eq i8 %i.mh, 0
  br i1 %.not33.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %i.mi = add nsw i32 %.035.i.i, 1
  %i.mj = sext i32 %.035.i.i to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.mj
  %i.ml = trunc nuw nsw i64 %indvars.iv.i47.i to i32
  store i32 %i.ml, ptr %i.mk, align 4, !tbaa !47
  %.pre.i.i = load i32, ptr %i.du, align 8, !tbaa !334
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.mm = phi i32 [ %.pre.i.i, %bb.ac ], [ %i.ll, %bb.ab ], [ %i.ll, %bb.aa ] ; 2 uses
  %.1.i.i = phi i32 [ %i.mi, %bb.ac ], [ %.035.i.i, %bb.ab ], [ %.035.i.i, %bb.aa ]
  %indvars.iv.next.i48.i = add nuw nsw i64 %indvars.iv.i47.i, 1 ; 2 uses
  %i.mn = zext i32 %i.mm to i64
  %i.mo = icmp samesign ult i64 %indvars.iv.next.i48.i, %i.mn
  br i1 %i.mo, label %bb.y, label %sh_derive.exit, !llvm.loop !327

sh_derive.exit:                                   ; preds = %bb.h, %bb.ad, %sh_partition_constraints.exit.i, %.preheader.i44.i, %sh_slice_address.exit.i, %bb.o, %bb.m, %bb.j, %bb.a, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.a ], [ 0, %bb.ad ], [ 0, %sh_partition_constraints.exit.i ], [ 0, %.preheader.i44.i ], [ -1094995529, %sh_slice_address.exit.i ], [ -1094995529, %bb.o ], [ -1094995529, %bb.m ], [ -1094995529, %bb.j ], [ -1094995529, %bb.h ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @sps_free(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @av_refstruct_unref(ptr noundef %1) #8
  ret void
}

declare ptr @av_refstruct_alloc_ext_c(i64 noundef, i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @ff_set_sar(ptr noundef, i64) local_unnamed_addr #2

declare ptr @av_color_primaries_name(i32 noundef) local_unnamed_addr #2

declare ptr @av_color_transfer_name(i32 noundef) local_unnamed_addr #2

declare ptr @av_color_space_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @pps_free(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @av_refstruct_unref(ptr noundef %1) #8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4064
  tail call void @av_freep(ptr noundef nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4072
  tail call void @av_freep(ptr noundef nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4080
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4088
  tail call void @av_freep(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4056
  tail call void @av_freep(ptr noundef nonnull %i.e) #8
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @pred_weight_table(ptr nofree noundef writeonly captures(none) initializes((0, 3)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %1, align 2, !tbaa !401     ; 3 uses
  store i8 %i.a, ptr %0, align 2, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !402
  %i.d = add i8 %i.c, %i.a                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !45
  %i.f = zext nneg i8 %i.a to i32
  %i.g = shl nuw i32 1, %i.f                      ; 4 uses
  %i.h = zext nneg i8 %i.d to i32                 ; 7 uses
  %i.i = shl nuw i32 1, %i.h                      ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 306
  %i.k = load i8, ptr %i.j, align 2, !tbaa !403   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.k, ptr %i.l, align 2, !tbaa !45
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 63 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 94 ; 9 uses
  %wide.trip.count = zext i8 %i.k to i64          ; 8 uses
  %min.iters.check = icmp ult i8 %i.k, 52
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %2 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %0, i64 1  ; 4 uses
  %4 = getelementptr inbounds nuw i8, <2 x ptr> %3, <2 x i64> <i64 94, i64 4>
  %5 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1>
  %6 = getelementptr inbounds nuw i8, <8 x ptr> %5, <8 x i64> <i64 4, i64 4, i64 4, i64 4, i64 4, i64 63, i64 4, i64 19>
  %7 = getelementptr inbounds nuw i8, <2 x ptr> %3, <2 x i64> <i64 3, i64 64>
  %i.w = getelementptr i8, ptr %0, i64 %wide.trip.count ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %wide.trip.count
  %i.y = getelementptr i8, ptr %i.x, i64 19       ; 7 uses
  %i.z = shl nuw nsw i64 %wide.trip.count, 1      ; 7 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.z      ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 244    ; 7 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.z      ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.z      ; 3 uses
  %i.af = getelementptr i8, ptr %0, i64 %i.z      ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 %i.z      ; 3 uses
  %8 = shl nuw nsw i64 %wide.trip.count, 2
  %i.ah = getelementptr i8, ptr %1, i64 %8        ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 %i.z
  %i.aj = getelementptr i8, ptr %i.ai, i64 63     ; 8 uses
  %i.ak = getelementptr i8, ptr %1, i64 %wide.trip.count ; 2 uses
  %bound0 = icmp ult ptr %i.n, %i.y
  %bound0355 = icmp ult ptr %i.n, %i.ac
  %9 = getelementptr i8, ptr %0, <4 x i64> <i64 94, i64 274, i64 124, i64 304>
  %10 = getelementptr i8, ptr %0, <4 x i64> <i64 94, i64 274, i64 124, i64 304>
  %11 = getelementptr i8, ptr %0, <4 x i64> <i64 94, i64 274, i64 124, i64 304>
  %i.al = getelementptr i8, ptr %0, i64 304       ; 6 uses
  %12 = shufflevector <2 x ptr> %3, <2 x ptr> %7, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 2, i32 3>
  %13 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <8 x ptr> %12, <8 x ptr> %13, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %15 = getelementptr i8, <8 x ptr> %14, <8 x i64> <i64 94, i64 274, i64 124, i64 304, i64 0, i64 0, i64 0, i64 0>
  %i.am = getelementptr i8, ptr %0, i64 124       ; 6 uses
  %i.an = getelementptr i8, ptr %0, i64 274       ; 6 uses
  %i.ao = getelementptr i8, ptr %0, i64 94        ; 6 uses
  %i.ap = getelementptr i8, ptr %i.aa, i64 64     ; 6 uses
  %16 = insertelement <8 x ptr> poison, ptr %i.ad, i64 0
  %17 = insertelement <8 x ptr> %16, ptr %i.ae, i64 1
  %18 = insertelement <8 x ptr> %17, ptr %i.af, i64 2
  %19 = insertelement <8 x ptr> %18, ptr %i.ag, i64 3
  %20 = insertelement <8 x ptr> %19, ptr %i.ah, i64 4
  %21 = insertelement <8 x ptr> %20, ptr %i.w, i64 5
  %22 = insertelement <8 x ptr> %21, ptr %i.ak, i64 6
  %23 = insertelement <8 x ptr> %22, ptr %i.aa, i64 7
  %24 = getelementptr i8, <8 x ptr> %23, <8 x i64> <i64 94, i64 274, i64 124, i64 304, i64 94, i64 4, i64 48, i64 64> ; 2 uses
  %25 = getelementptr i8, ptr %i.ak, i64 48       ; 7 uses
  %26 = getelementptr i8, ptr %i.w, i64 4         ; 3 uses
  %27 = getelementptr i8, ptr %i.ah, i64 94       ; 7 uses
  %bound1.a = icmp ult ptr %i.p, %26
  %found.conflict.a = and i1 %bound0, %bound1.a
  %bound0352 = icmp ult ptr %i.n, %i.ap
  %bound1353.a = icmp ult ptr %i.r, %26
  %found.conflict354 = and i1 %bound0352, %bound1353.a
  %bound1356.a = icmp ult ptr %i.t, %26
  %found.conflict357.a = and i1 %bound0355, %bound1356.a
  %28 = icmp ult <8 x ptr> %6, %24
  %29 = shufflevector <8 x ptr> %24, <8 x ptr> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 poison, i32 5, i32 poison>
  %30 = insertelement <8 x ptr> %29, ptr %i.aj, i64 5
  %31 = insertelement <8 x ptr> %30, ptr %i.y, i64 7
  %32 = icmp ult <8 x ptr> %15, %31
  %33 = and <8 x i1> %28, %32                     ; 2 uses
  %bound0391.a = icmp ult ptr %i.p, %i.ac
  %bound1392 = icmp ult ptr %i.t, %i.y
  %found.conflict393 = and i1 %bound0391.a, %bound1392
  %34 = insertelement <4 x ptr> poison, ptr %i.ad, i64 0
  %35 = insertelement <4 x ptr> %34, ptr %i.ae, i64 1
  %36 = insertelement <4 x ptr> %35, ptr %i.af, i64 2
  %37 = insertelement <4 x ptr> %36, ptr %i.ag, i64 3 ; 3 uses
  %38 = getelementptr i8, <4 x ptr> %37, <4 x i64> <i64 94, i64 274, i64 124, i64 304>
  %39 = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %40 = shufflevector <4 x ptr> %39, <4 x ptr> poison, <4 x i32> zeroinitializer
  %41 = icmp ult <4 x ptr> %40, %38
  %42 = insertelement <4 x ptr> poison, ptr %i.y, i64 0
  %43 = shufflevector <4 x ptr> %42, <4 x ptr> poison, <4 x i32> zeroinitializer
  %44 = icmp ult <4 x ptr> %9, %43
  %45 = and <4 x i1> %41, %44
  %bound0411.a = icmp ult ptr %i.p, %27
  %bound1412.a = icmp ult ptr %i.v, %i.y
  %found.conflict413.a = and i1 %bound0411.a, %bound1412.a
  %bound0415.a = icmp ult ptr %i.p, %i.aj
  %bound1416.a = icmp ult ptr %i.u, %i.y
  %found.conflict417.a = and i1 %bound0415.a, %bound1416.a
  %bound0419.a = icmp ult ptr %i.p, %25
  %bound1420.a = icmp ult ptr %i.m, %i.y
  %found.conflict421.a = and i1 %bound0419.a, %bound1420.a
  %bound0423.a = icmp ult ptr %i.r, %i.ac
  %bound1424.a = icmp ult ptr %i.t, %i.ap
  %found.conflict425.a = and i1 %bound0423.a, %bound1424.a
  %46 = getelementptr i8, <4 x ptr> %37, <4 x i64> <i64 94, i64 274, i64 124, i64 304>
  %47 = insertelement <4 x ptr> poison, ptr %i.r, i64 0
  %48 = shufflevector <4 x ptr> %47, <4 x ptr> poison, <4 x i32> zeroinitializer
  %49 = icmp ult <4 x ptr> %48, %46
  %50 = insertelement <4 x ptr> poison, ptr %i.ap, i64 0
  %51 = shufflevector <4 x ptr> %50, <4 x ptr> poison, <4 x i32> zeroinitializer
  %52 = icmp ult <4 x ptr> %10, %51
  %53 = and <4 x i1> %49, %52
  %bound0443.a = icmp ult ptr %i.r, %27
  %bound1444.a = icmp ult ptr %i.v, %i.ap
  %found.conflict445.a = and i1 %bound0443.a, %bound1444.a
  %bound0447.a = icmp ult ptr %i.r, %i.aj
  %bound1448.a = icmp ult ptr %i.u, %i.ap
  %found.conflict449.a = and i1 %bound0447.a, %bound1448.a
  %bound0451.a = icmp ult ptr %i.r, %25
  %bound1452.a = icmp ult ptr %i.m, %i.ap
  %found.conflict453.a = and i1 %bound0451.a, %bound1452.a
  %54 = getelementptr i8, ptr %i.ag, i64 304      ; 6 uses
  %55 = getelementptr i8, <4 x ptr> %37, <4 x i64> <i64 94, i64 274, i64 124, i64 304>
  %56 = getelementptr i8, ptr %i.af, i64 124      ; 6 uses
  %57 = getelementptr i8, ptr %i.ae, i64 274      ; 6 uses
  %58 = getelementptr i8, ptr %i.ad, i64 94       ; 6 uses
  %59 = insertelement <4 x ptr> poison, ptr %i.t, i64 0
  %60 = shufflevector <4 x ptr> %59, <4 x ptr> poison, <4 x i32> zeroinitializer
  %61 = icmp ult <4 x ptr> %60, %55
  %62 = insertelement <4 x ptr> poison, ptr %i.ac, i64 0
  %63 = shufflevector <4 x ptr> %62, <4 x ptr> poison, <4 x i32> zeroinitializer
  %64 = icmp ult <4 x ptr> %11, %63
  %65 = and <4 x i1> %61, %64
  %bound0471.a = icmp ult ptr %i.t, %27
  %bound1472.a = icmp ult ptr %i.v, %i.ac
  %found.conflict473.a = and i1 %bound0471.a, %bound1472.a
  %bound0475.a = icmp ult ptr %i.t, %i.aj
  %bound1476.a = icmp ult ptr %i.u, %i.ac
  %found.conflict477.a = and i1 %bound0475.a, %bound1476.a
  %bound0479.a = icmp ult ptr %i.t, %25
  %bound1480.a = icmp ult ptr %i.m, %i.ac
  %found.conflict481.a = and i1 %bound0479.a, %bound1480.a
  %bound0483.a = icmp ult ptr %i.ao, %57
  %bound1484.a = icmp ult ptr %i.an, %58
  %found.conflict485.a = and i1 %bound0483.a, %bound1484.a
  %bound0487.a = icmp ult ptr %i.ao, %56
  %bound1488.a = icmp ult ptr %i.am, %58
  %found.conflict489.a = and i1 %bound0487.a, %bound1488.a
  %bound0491.a = icmp ult ptr %i.ao, %54
  %bound1492.a = icmp ult ptr %i.al, %58
  %found.conflict493.a = and i1 %bound0491.a, %bound1492.a
  %bound0495.a = icmp ult ptr %i.ao, %27
  %bound1496.a = icmp ult ptr %i.v, %58
  %found.conflict497.a = and i1 %bound0495.a, %bound1496.a
  %bound0499.a = icmp ult ptr %i.ao, %i.aj
  %bound1500.a = icmp ult ptr %i.u, %58
  %found.conflict501.a = and i1 %bound0499.a, %bound1500.a
  %bound0503.a = icmp ult ptr %i.ao, %25
  %bound1504.a = icmp ult ptr %i.m, %58
  %found.conflict505.a = and i1 %bound0503.a, %bound1504.a
  %bound0507.a = icmp ult ptr %i.an, %56
  %bound1508.a = icmp ult ptr %i.am, %57
  %found.conflict509.a = and i1 %bound0507.a, %bound1508.a
  %bound0511.a = icmp ult ptr %i.an, %54
  %bound1512.a = icmp ult ptr %i.al, %57
  %found.conflict513.a = and i1 %bound0511.a, %bound1512.a
  %bound0515.a = icmp ult ptr %i.an, %27
  %bound1516.a = icmp ult ptr %i.v, %57
  %found.conflict517.a = and i1 %bound0515.a, %bound1516.a
  %bound0519.a = icmp ult ptr %i.an, %i.aj
  %bound1520.a = icmp ult ptr %i.u, %57
  %found.conflict521.a = and i1 %bound0519.a, %bound1520.a
  %bound0523.a = icmp ult ptr %i.an, %25
  %bound1524.a = icmp ult ptr %i.m, %57
  %found.conflict525.a = and i1 %bound0523.a, %bound1524.a
  %bound0527.a = icmp ult ptr %i.am, %54
  %bound1528.a = icmp ult ptr %i.al, %56
  %found.conflict529.a = and i1 %bound0527.a, %bound1528.a
  %bound0531.a = icmp ult ptr %i.am, %27
  %bound1532.a = icmp ult ptr %i.v, %56
  %found.conflict533.a = and i1 %bound0531.a, %bound1532.a
  %bound0535.a = icmp ult ptr %i.am, %i.aj
  %bound1536.a = icmp ult ptr %i.u, %56
  %found.conflict537.a = and i1 %bound0535.a, %bound1536.a
  %bound0539.a = icmp ult ptr %i.am, %25
  %bound1540.a = icmp ult ptr %i.m, %56
  %found.conflict541.a = and i1 %bound0539.a, %bound1540.a
  %bound0543 = icmp ult ptr %i.al, %27
  %bound1544.a = icmp ult ptr %i.v, %54
  %found.conflict545 = and i1 %bound0543, %bound1544.a
  %bound0547.a = icmp ult ptr %i.al, %i.aj
  %bound1548 = icmp ult ptr %i.u, %54
  %found.conflict549 = and i1 %bound0547.a, %bound1548
  %bound0551.a = icmp ult ptr %i.al, %25
  %bound1552.a = icmp ult ptr %i.m, %54
  %found.conflict553.a = and i1 %bound0551.a, %bound1552.a
  %66 = shufflevector <4 x i1> %45, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %67 = shufflevector <4 x i1> %53, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %68 = or <8 x i1> %66, %67
  %69 = shufflevector <4 x i1> %65, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %70 = or <8 x i1> %68, %69
  %71 = or <8 x i1> %70, %33
  %72 = shufflevector <8 x i1> %71, <8 x i1> %33, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %73 = bitcast <8 x i1> %72 to i8
  %74 = icmp ne i8 %73, 0
  %op.rdx1052 = or i1 %74, %found.conflict.a
  %op.rdx1053 = or i1 %found.conflict354, %found.conflict357.a
  %op.rdx1054 = or i1 %found.conflict393, %found.conflict413.a
  %op.rdx1055 = or i1 %found.conflict417.a, %found.conflict421.a
  %op.rdx1056 = or i1 %found.conflict425.a, %found.conflict445.a
  %op.rdx1057 = or i1 %found.conflict449.a, %found.conflict453.a
  %op.rdx1058 = or i1 %found.conflict473.a, %found.conflict477.a
  %op.rdx1059 = or i1 %found.conflict481.a, %found.conflict485.a
  %op.rdx1060 = or i1 %found.conflict489.a, %found.conflict493.a
  %op.rdx1061 = or i1 %found.conflict497.a, %found.conflict501.a
  %op.rdx1062 = or i1 %found.conflict505.a, %found.conflict509.a
  %op.rdx1063 = or i1 %found.conflict513.a, %found.conflict517.a
  %op.rdx1064 = or i1 %found.conflict521.a, %found.conflict525.a
  %op.rdx1065 = or i1 %found.conflict529.a, %found.conflict533.a
  %op.rdx1066 = or i1 %found.conflict537.a, %found.conflict541.a
  %op.rdx1067 = or i1 %found.conflict545, %found.conflict549
  %op.rdx1068 = or i1 %op.rdx1052, %op.rdx1053
  %op.rdx1069 = or i1 %op.rdx1054, %op.rdx1055
  %op.rdx1070 = or i1 %op.rdx1056, %op.rdx1057
  %op.rdx1071 = or i1 %op.rdx1058, %op.rdx1059
  %op.rdx1072 = or i1 %op.rdx1060, %op.rdx1061
  %op.rdx1073 = or i1 %op.rdx1062, %op.rdx1063
  %op.rdx1074 = or i1 %op.rdx1064, %op.rdx1065
  %op.rdx1075 = or i1 %op.rdx1066, %op.rdx1067
  %op.rdx1076 = or i1 %op.rdx1068, %op.rdx1069
  %op.rdx1077 = or i1 %op.rdx1070, %op.rdx1071
  %op.rdx1078 = or i1 %op.rdx1072, %op.rdx1073
  %op.rdx1079 = or i1 %op.rdx1074, %op.rdx1075
  %op.rdx1080 = or i1 %op.rdx1076, %op.rdx1077
  %op.rdx1081 = or i1 %op.rdx1078, %op.rdx1079
  %op.rdx1082 = or i1 %op.rdx1080, %op.rdx1081
  %op.rdx1083 = or i1 %op.rdx1082, %found.conflict553.a
  br i1 %op.rdx1083, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 252          ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert555 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat556 = shufflevector <4 x i32> %broadcast.splatinsert555, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert557 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat558 = shufflevector <4 x i32> %broadcast.splatinsert557, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 14 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 %index
  %wide.load = load <4 x i8>, ptr %i.aq, align 1, !tbaa !45, !alias.scope !404
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 %index
  store <4 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !45, !alias.scope !405, !noalias !406
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 %index
  %wide.load559 = load <4 x i8>, ptr %i.as, align 1, !tbaa !45, !alias.scope !404
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 %index
  store <4 x i8> %wide.load559, ptr %i.at, align 1, !tbaa !45, !alias.scope !407, !noalias !408
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %index
  %wide.load560 = load <4 x i8>, ptr %i.au, align 1, !tbaa !45, !alias.scope !404
  %i.av = sext <4 x i8> %wide.load560 to <4 x i32>
  %i.aw = add nsw <4 x i32> %broadcast.splat, %i.av
  %i.ax = trunc <4 x i32> %i.aw to <4 x i16>
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index ; 3 uses
  store <4 x i16> %i.ax, ptr %i.ay, align 2, !tbaa !48, !alias.scope !409, !noalias !410
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 %index
  %wide.load561 = load <4 x i8>, ptr %i.az, align 1, !tbaa !45, !alias.scope !404
  %i.ba = sext <4 x i8> %wide.load561 to <4 x i16>
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index ; 3 uses
  store <4 x i16> %i.ba, ptr %i.bb, align 2, !tbaa !48, !alias.scope !411, !noalias !412
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !45, !alias.scope !413
  %i.bl = load i8, ptr %i.be, align 1, !tbaa !45, !alias.scope !413
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !45, !alias.scope !413
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !45, !alias.scope !413
  %i.bo = insertelement <4 x i8> poison, i8 %i.bk, i64 0
  %i.bp = insertelement <4 x i8> %i.bo, i8 %i.bl, i64 1
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 2
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bn, i64 3
  %i.bs = sext <4 x i8> %i.br to <4 x i32>
  %i.bt = add nsw <4 x i32> %broadcast.splat556, %i.bs ; 2 uses
  %i.bu = trunc <4 x i32> %i.bt to <4 x i16>
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 30
  store <4 x i16> %i.bu, ptr %i.bv, align 2, !tbaa !48, !alias.scope !414, !noalias !415
  %wide.vec = load <8 x i16>, ptr %i.bj, align 2, !tbaa !48, !alias.scope !416 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec562 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bw = add <4 x i16> %strided.vec, splat (i16 128)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 30
  %i.by = shl <4 x i32> %i.bt, splat (i32 16)
  %i.bz = ashr exact <4 x i32> %i.by, splat (i32 9)
  %i.ca = ashr <4 x i32> %i.bz, %broadcast.splat558
  %i.cb = trunc <4 x i32> %i.ca to <4 x i16>
  %i.cc = sub <4 x i16> %i.bw, %i.cb              ; 3 uses
  %i.cd = sext <4 x i16> %i.cc to <4 x i32>
  %i.ce = add nsw <4 x i32> %i.cd, splat (i32 -128)
  %i.cf = icmp ult <4 x i32> %i.ce, splat (i32 -256)
  %i.cg = icmp sgt <4 x i16> %i.cc, splat (i16 -1)
  %i.ch = select <4 x i1> %i.cg, <4 x i16> splat (i16 127), <4 x i16> splat (i16 -128)
  %i.ci = select <4 x i1> %i.cf, <4 x i16> %i.ch, <4 x i16> %i.cc
  store <4 x i16> %i.ci, ptr %i.bx, align 2, !tbaa !48, !alias.scope !417, !noalias !418
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !45, !alias.scope !413
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !45, !alias.scope !413
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !45, !alias.scope !413
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !45, !alias.scope !413
  %i.cr = insertelement <4 x i8> poison, i8 %i.cn, i64 0
  %i.cs = insertelement <4 x i8> %i.cr, i8 %i.co, i64 1
  %i.ct = insertelement <4 x i8> %i.cs, i8 %i.cp, i64 2
  %i.cu = insertelement <4 x i8> %i.ct, i8 %i.cq, i64 3
  %i.cv = sext <4 x i8> %i.cu to <4 x i32>
  %i.cw = add nsw <4 x i32> %broadcast.splat556, %i.cv ; 2 uses
  %i.cx = trunc <4 x i32> %i.cw to <4 x i16>
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  store <4 x i16> %i.cx, ptr %i.cy, align 2, !tbaa !48, !alias.scope !419, !noalias !420
  %i.cz = add <4 x i16> %strided.vec562, splat (i16 128)
  %i.da = getelementptr inbounds nuw i8, ptr %i.bb, i64 60
  %i.db = shl <4 x i32> %i.cw, splat (i32 16)
  %i.dc = ashr exact <4 x i32> %i.db, splat (i32 9)
  %i.dd = ashr <4 x i32> %i.dc, %broadcast.splat558
  %i.de = trunc <4 x i32> %i.dd to <4 x i16>
  %i.df = sub <4 x i16> %i.cz, %i.de              ; 3 uses
  %i.dg = sext <4 x i16> %i.df to <4 x i32>
  %i.dh = add nsw <4 x i32> %i.dg, splat (i32 -128)
  %i.di = icmp ult <4 x i32> %i.dh, splat (i32 -256)
  %i.dj = icmp sgt <4 x i16> %i.df, splat (i16 -1)
  %i.dk = select <4 x i1> %i.dj, <4 x i16> splat (i16 127), <4 x i16> splat (i16 -128)
  %i.dl = select <4 x i1> %i.di, <4 x i16> %i.dk, <4 x i16> %i.df
  store <4 x i16> %i.dl, ptr %i.da, align 2, !tbaa !48, !alias.scope !421, !noalias !422
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 307
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !423 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !45
  %.not123 = icmp eq i8 %i.do, 0
  br i1 %.not123, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 155 ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 170 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 8 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 185 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 154 ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 334 ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 215 ; 12 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 246 ; 9 uses
  %wide.trip.count133 = zext i8 %i.do to i64      ; 8 uses
  %min.iters.check786 = icmp ult i8 %i.do, 52
  br i1 %min.iters.check786, label %scalar.ph785.preheader, label %vector.memcheck787

vector.memcheck787:                               ; preds = %.lr.ph121
  %75 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %76 = insertelement <2 x ptr> %75, ptr %0, i64 1 ; 4 uses
  %77 = getelementptr inbounds nuw i8, <2 x ptr> %76, <2 x i64> <i64 246, i64 34>
  %78 = shufflevector <2 x ptr> %76, <2 x ptr> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1>
  %79 = getelementptr inbounds nuw i8, <8 x ptr> %78, <8 x i64> <i64 34, i64 34, i64 34, i64 34, i64 34, i64 215, i64 34, i64 49>
  %80 = getelementptr inbounds nuw i8, <2 x ptr> %76, <2 x i64> <i64 155, i64 154>
  %i.ea = getelementptr i8, ptr %0, i64 %wide.trip.count133 ; 2 uses
  %i.eb = getelementptr i8, ptr %0, i64 %wide.trip.count133
  %i.ec = getelementptr i8, ptr %i.eb, i64 49     ; 7 uses
  %i.ed = shl nuw nsw i64 %wide.trip.count133, 1  ; 7 uses
  %i.ee = getelementptr i8, ptr %0, i64 %i.ed     ; 2 uses
  %i.ef = getelementptr i8, ptr %0, i64 %i.ed
  %i.eg = getelementptr i8, ptr %i.ef, i64 334    ; 7 uses
  %i.eh = getelementptr i8, ptr %0, i64 %i.ed     ; 3 uses
  %i.ei = getelementptr i8, ptr %0, i64 %i.ed     ; 3 uses
  %i.ej = getelementptr i8, ptr %0, i64 %i.ed     ; 3 uses
  %i.ek = getelementptr i8, ptr %0, i64 %i.ed     ; 3 uses
  %81 = shl nuw nsw i64 %wide.trip.count133, 2
  %i.el = getelementptr i8, ptr %1, i64 %81       ; 2 uses
  %i.em = getelementptr i8, ptr %1, i64 %i.ed
  %i.en = getelementptr i8, ptr %i.em, i64 215    ; 8 uses
  %i.eo = getelementptr i8, ptr %1, i64 %wide.trip.count133 ; 2 uses
  %bound0788 = icmp ult ptr %i.dr, %i.ec
  %bound0795 = icmp ult ptr %i.dr, %i.eg
  %82 = getelementptr i8, ptr %0, <4 x i64> <i64 184, i64 364, i64 214, i64 394>
  %83 = getelementptr i8, ptr %0, <4 x i64> <i64 184, i64 364, i64 214, i64 394>
  %84 = getelementptr i8, ptr %0, <4 x i64> <i64 184, i64 364, i64 214, i64 394>
  %i.ep = getelementptr i8, ptr %0, i64 394       ; 6 uses
  %85 = shufflevector <2 x ptr> %76, <2 x ptr> %80, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 2, i32 3>
  %86 = shufflevector <2 x ptr> %77, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %87 = shufflevector <8 x ptr> %85, <8 x ptr> %86, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %88 = getelementptr i8, <8 x ptr> %87, <8 x i64> <i64 184, i64 364, i64 214, i64 394, i64 0, i64 0, i64 0, i64 0>
  %i.eq = getelementptr i8, ptr %0, i64 214       ; 6 uses
  %i.er = getelementptr i8, ptr %0, i64 364       ; 6 uses
  %i.es = getelementptr i8, ptr %0, i64 184       ; 6 uses
  %i.et = getelementptr i8, ptr %i.ee, i64 154    ; 6 uses
  %89 = insertelement <8 x ptr> poison, ptr %i.eh, i64 0
  %90 = insertelement <8 x ptr> %89, ptr %i.ei, i64 1
  %91 = insertelement <8 x ptr> %90, ptr %i.ej, i64 2
  %92 = insertelement <8 x ptr> %91, ptr %i.ek, i64 3
  %93 = insertelement <8 x ptr> %92, ptr %i.el, i64 4
  %94 = insertelement <8 x ptr> %93, ptr %i.ea, i64 5
  %95 = insertelement <8 x ptr> %94, ptr %i.eo, i64 6
  %96 = insertelement <8 x ptr> %95, ptr %i.ee, i64 7
  %97 = getelementptr i8, <8 x ptr> %96, <8 x i64> <i64 184, i64 364, i64 214, i64 394, i64 246, i64 34, i64 200, i64 154> ; 2 uses
  %98 = getelementptr i8, ptr %i.eo, i64 200      ; 7 uses
  %99 = getelementptr i8, ptr %i.ea, i64 34       ; 3 uses
  %100 = getelementptr i8, ptr %i.el, i64 246     ; 7 uses
  %bound1789.a = icmp ult ptr %i.dt, %99
  %found.conflict790.a = and i1 %bound0788, %bound1789.a
  %bound0791 = icmp ult ptr %i.dr, %i.et
  %bound1792.a = icmp ult ptr %i.dv, %99
  %found.conflict793 = and i1 %bound0791, %bound1792.a
  %bound1796.a = icmp ult ptr %i.dx, %99
  %found.conflict797.a = and i1 %bound0795, %bound1796.a
  %101 = icmp ult <8 x ptr> %79, %97
  %102 = shufflevector <8 x ptr> %97, <8 x ptr> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 poison, i32 5, i32 poison>
  %103 = insertelement <8 x ptr> %102, ptr %i.en, i64 5
  %104 = insertelement <8 x ptr> %103, ptr %i.ec, i64 7
  %105 = icmp ult <8 x ptr> %88, %104
  %106 = and <8 x i1> %101, %105                  ; 2 uses
  %bound0831.a = icmp ult ptr %i.dt, %i.eg
  %bound1832 = icmp ult ptr %i.dx, %i.ec
  %found.conflict833 = and i1 %bound0831.a, %bound1832
  %107 = insertelement <4 x ptr> poison, ptr %i.eh, i64 0
  %108 = insertelement <4 x ptr> %107, ptr %i.ei, i64 1
  %109 = insertelement <4 x ptr> %108, ptr %i.ej, i64 2
  %110 = insertelement <4 x ptr> %109, ptr %i.ek, i64 3 ; 3 uses
  %111 = getelementptr i8, <4 x ptr> %110, <4 x i64> <i64 184, i64 364, i64 214, i64 394>
  %112 = insertelement <4 x ptr> poison, ptr %i.dt, i64 0
  %113 = shufflevector <4 x ptr> %112, <4 x ptr> poison, <4 x i32> zeroinitializer
  %114 = icmp ult <4 x ptr> %113, %111
  %115 = insertelement <4 x ptr> poison, ptr %i.ec, i64 0
  %116 = shufflevector <4 x ptr> %115, <4 x ptr> poison, <4 x i32> zeroinitializer
  %117 = icmp ult <4 x ptr> %82, %116
  %118 = and <4 x i1> %114, %117
  %bound0851.a = icmp ult ptr %i.dt, %100
  %bound1852.a = icmp ult ptr %i.dz, %i.ec
  %found.conflict853.a = and i1 %bound0851.a, %bound1852.a
  %bound0855.a = icmp ult ptr %i.dt, %i.en
  %bound1856.a = icmp ult ptr %i.dy, %i.ec
  %found.conflict857.a = and i1 %bound0855.a, %bound1856.a
  %bound0859.a = icmp ult ptr %i.dt, %98
  %bound1860.a = icmp ult ptr %i.dq, %i.ec
  %found.conflict861.a = and i1 %bound0859.a, %bound1860.a
  %bound0863.a = icmp ult ptr %i.dv, %i.eg
  %bound1864.a = icmp ult ptr %i.dx, %i.et
  %found.conflict865.a = and i1 %bound0863.a, %bound1864.a
  %119 = getelementptr i8, <4 x ptr> %110, <4 x i64> <i64 184, i64 364, i64 214, i64 394>
  %120 = insertelement <4 x ptr> poison, ptr %i.dv, i64 0
  %121 = shufflevector <4 x ptr> %120, <4 x ptr> poison, <4 x i32> zeroinitializer
  %122 = icmp ult <4 x ptr> %121, %119
  %123 = insertelement <4 x ptr> poison, ptr %i.et, i64 0
  %124 = shufflevector <4 x ptr> %123, <4 x ptr> poison, <4 x i32> zeroinitializer
  %125 = icmp ult <4 x ptr> %83, %124
  %126 = and <4 x i1> %122, %125
  %bound0883.a = icmp ult ptr %i.dv, %100
  %bound1884.a = icmp ult ptr %i.dz, %i.et
  %found.conflict885.a = and i1 %bound0883.a, %bound1884.a
  %bound0887.a = icmp ult ptr %i.dv, %i.en
  %bound1888.a = icmp ult ptr %i.dy, %i.et
  %found.conflict889.a = and i1 %bound0887.a, %bound1888.a
  %bound0891.a = icmp ult ptr %i.dv, %98
  %bound1892.a = icmp ult ptr %i.dq, %i.et
  %found.conflict893.a = and i1 %bound0891.a, %bound1892.a
  %127 = getelementptr i8, ptr %i.ek, i64 394     ; 6 uses
  %128 = getelementptr i8, <4 x ptr> %110, <4 x i64> <i64 184, i64 364, i64 214, i64 394>
  %129 = getelementptr i8, ptr %i.ej, i64 214     ; 6 uses
  %130 = getelementptr i8, ptr %i.ei, i64 364     ; 6 uses
  %131 = getelementptr i8, ptr %i.eh, i64 184     ; 6 uses
  %132 = insertelement <4 x ptr> poison, ptr %i.dx, i64 0
  %133 = shufflevector <4 x ptr> %132, <4 x ptr> poison, <4 x i32> zeroinitializer
  %134 = icmp ult <4 x ptr> %133, %128
  %135 = insertelement <4 x ptr> poison, ptr %i.eg, i64 0
  %136 = shufflevector <4 x ptr> %135, <4 x ptr> poison, <4 x i32> zeroinitializer
  %137 = icmp ult <4 x ptr> %84, %136
  %138 = and <4 x i1> %134, %137
  %bound0911.a = icmp ult ptr %i.dx, %100
  %bound1912.a = icmp ult ptr %i.dz, %i.eg
  %found.conflict913.a = and i1 %bound0911.a, %bound1912.a
  %bound0915.a = icmp ult ptr %i.dx, %i.en
  %bound1916.a = icmp ult ptr %i.dy, %i.eg
  %found.conflict917.a = and i1 %bound0915.a, %bound1916.a
  %bound0919.a = icmp ult ptr %i.dx, %98
  %bound1920.a = icmp ult ptr %i.dq, %i.eg
  %found.conflict921.a = and i1 %bound0919.a, %bound1920.a
  %bound0923.a = icmp ult ptr %i.es, %130
  %bound1924.a = icmp ult ptr %i.er, %131
  %found.conflict925.a = and i1 %bound0923.a, %bound1924.a
  %bound0927.a = icmp ult ptr %i.es, %129
  %bound1928.a = icmp ult ptr %i.eq, %131
  %found.conflict929.a = and i1 %bound0927.a, %bound1928.a
  %bound0931.a = icmp ult ptr %i.es, %127
  %bound1932.a = icmp ult ptr %i.ep, %131
  %found.conflict933.a = and i1 %bound0931.a, %bound1932.a
  %bound0935.a = icmp ult ptr %i.es, %100
  %bound1936.a = icmp ult ptr %i.dz, %131
  %found.conflict937.a = and i1 %bound0935.a, %bound1936.a
  %bound0939.a = icmp ult ptr %i.es, %i.en
  %bound1940.a = icmp ult ptr %i.dy, %131
  %found.conflict941.a = and i1 %bound0939.a, %bound1940.a
  %bound0943.a = icmp ult ptr %i.es, %98
  %bound1944.a = icmp ult ptr %i.dq, %131
  %found.conflict945.a = and i1 %bound0943.a, %bound1944.a
  %bound0947.a = icmp ult ptr %i.er, %129
  %bound1948.a = icmp ult ptr %i.eq, %130
  %found.conflict949.a = and i1 %bound0947.a, %bound1948.a
  %bound0951.a = icmp ult ptr %i.er, %127
  %bound1952.a = icmp ult ptr %i.ep, %130
  %found.conflict953.a = and i1 %bound0951.a, %bound1952.a
  %bound0955.a = icmp ult ptr %i.er, %100
  %bound1956.a = icmp ult ptr %i.dz, %130
  %found.conflict957.a = and i1 %bound0955.a, %bound1956.a
  %bound0959.a = icmp ult ptr %i.er, %i.en
  %bound1960.a = icmp ult ptr %i.dy, %130
  %found.conflict961.a = and i1 %bound0959.a, %bound1960.a
  %bound0963.a = icmp ult ptr %i.er, %98
  %bound1964.a = icmp ult ptr %i.dq, %130
  %found.conflict965.a = and i1 %bound0963.a, %bound1964.a
  %bound0967.a = icmp ult ptr %i.eq, %127
  %bound1968.a = icmp ult ptr %i.ep, %129
  %found.conflict969.a = and i1 %bound0967.a, %bound1968.a
  %bound0971.a = icmp ult ptr %i.eq, %100
  %bound1972.a = icmp ult ptr %i.dz, %129
  %found.conflict973.a = and i1 %bound0971.a, %bound1972.a
  %bound0975.a = icmp ult ptr %i.eq, %i.en
  %bound1976.a = icmp ult ptr %i.dy, %129
  %found.conflict977.a = and i1 %bound0975.a, %bound1976.a
  %bound0979.a = icmp ult ptr %i.eq, %98
  %bound1980.a = icmp ult ptr %i.dq, %129
  %found.conflict981.a = and i1 %bound0979.a, %bound1980.a
  %bound0983 = icmp ult ptr %i.ep, %100
  %bound1984.a = icmp ult ptr %i.dz, %127
  %found.conflict985 = and i1 %bound0983, %bound1984.a
  %bound0987.a = icmp ult ptr %i.ep, %i.en
  %bound1988 = icmp ult ptr %i.dy, %127
  %found.conflict989 = and i1 %bound0987.a, %bound1988
  %bound0991.a = icmp ult ptr %i.ep, %98
  %bound1992.a = icmp ult ptr %i.dq, %127
  %found.conflict993.a = and i1 %bound0991.a, %bound1992.a
  %139 = shufflevector <4 x i1> %118, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %140 = shufflevector <4 x i1> %126, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %141 = or <8 x i1> %139, %140
  %142 = shufflevector <4 x i1> %138, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %143 = or <8 x i1> %141, %142
  %144 = or <8 x i1> %143, %106
  %145 = shufflevector <8 x i1> %144, <8 x i1> %106, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %146 = bitcast <8 x i1> %145 to i8
  %147 = icmp ne i8 %146, 0
  %op.rdx = or i1 %147, %found.conflict790.a
  %op.rdx1018 = or i1 %found.conflict793, %found.conflict797.a
  %op.rdx1019 = or i1 %found.conflict833, %found.conflict853.a
  %op.rdx1020 = or i1 %found.conflict857.a, %found.conflict861.a
  %op.rdx1021 = or i1 %found.conflict865.a, %found.conflict885.a
  %op.rdx1022 = or i1 %found.conflict889.a, %found.conflict893.a
  %op.rdx1023 = or i1 %found.conflict913.a, %found.conflict917.a
  %op.rdx1024 = or i1 %found.conflict921.a, %found.conflict925.a
  %op.rdx1025 = or i1 %found.conflict929.a, %found.conflict933.a
  %op.rdx1026 = or i1 %found.conflict937.a, %found.conflict941.a
  %op.rdx1027 = or i1 %found.conflict945.a, %found.conflict949.a
  %op.rdx1028 = or i1 %found.conflict953.a, %found.conflict957.a
  %op.rdx1029 = or i1 %found.conflict961.a, %found.conflict965.a
  %op.rdx1030 = or i1 %found.conflict969.a, %found.conflict973.a
  %op.rdx1031 = or i1 %found.conflict977.a, %found.conflict981.a
  %op.rdx1032 = or i1 %found.conflict985, %found.conflict989
  %op.rdx1033 = or i1 %op.rdx, %op.rdx1018
  %op.rdx1034 = or i1 %op.rdx1019, %op.rdx1020
  %op.rdx1035 = or i1 %op.rdx1021, %op.rdx1022
  %op.rdx1036 = or i1 %op.rdx1023, %op.rdx1024
  %op.rdx1037 = or i1 %op.rdx1025, %op.rdx1026
  %op.rdx1038 = or i1 %op.rdx1027, %op.rdx1028
  %op.rdx1039 = or i1 %op.rdx1029, %op.rdx1030
  %op.rdx1040 = or i1 %op.rdx1031, %op.rdx1032
  %op.rdx1041 = or i1 %op.rdx1033, %op.rdx1034
  %op.rdx1042 = or i1 %op.rdx1035, %op.rdx1036
  %op.rdx1043 = or i1 %op.rdx1037, %op.rdx1038
  %op.rdx1044 = or i1 %op.rdx1039, %op.rdx1040
  %op.rdx1045 = or i1 %op.rdx1041, %op.rdx1042
  %op.rdx1046 = or i1 %op.rdx1043, %op.rdx1044
  %op.rdx1047 = or i1 %op.rdx1045, %op.rdx1046
  %op.rdx1048 = or i1 %op.rdx1047, %found.conflict993.a
  br i1 %op.rdx1048, label %scalar.ph785.preheader, label %vector.ph995

vector.ph995:                                     ; preds = %vector.memcheck787
  %n.vec996 = and i64 %wide.trip.count133, 252    ; 3 uses
  %broadcast.splatinsert997 = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat998 = shufflevector <4 x i32> %broadcast.splatinsert997, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1001 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat1002 = shufflevector <4 x i32> %broadcast.splatinsert1001, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph995
  %index1004 = phi i64 [ 0, %vector.ph995 ], [ %index.next1012, %vector.body1003 ] ; 14 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index1004
  %wide.load1005 = load <4 x i8>, ptr %i.eu, align 1, !tbaa !45, !alias.scope !424
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dr, i64 %index1004
  store <4 x i8> %wide.load1005, ptr %i.ev, align 1, !tbaa !45, !alias.scope !425, !noalias !426
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ds, i64 %index1004
  %wide.load1006 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !45, !alias.scope !424
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index1004
  store <4 x i8> %wide.load1006, ptr %i.ex, align 1, !tbaa !45, !alias.scope !427, !noalias !428
  %i.ey = getelementptr inbounds nuw i8, ptr %i.du, i64 %index1004
  %wide.load1007 = load <4 x i8>, ptr %i.ey, align 1, !tbaa !45, !alias.scope !424
  %i.ez = sext <4 x i8> %wide.load1007 to <4 x i32>
  %i.fa = add nsw <4 x i32> %broadcast.splat998, %i.ez
  %i.fb = trunc <4 x i32> %i.fa to <4 x i16>
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %index1004 ; 3 uses
  store <4 x i16> %i.fb, ptr %i.fc, align 2, !tbaa !48, !alias.scope !429, !noalias !430
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dw, i64 %index1004
  %wide.load1008 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !45, !alias.scope !424
  %i.fe = sext <4 x i8> %wide.load1008 to <4 x i16>
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %index1004 ; 3 uses
  store <4 x i16> %i.fe, ptr %i.ff, align 2, !tbaa !48, !alias.scope !431, !noalias !432
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %index1004 ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %index1004 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %index1004 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %index1004 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 6
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index1004
  %i.fo = load i8, ptr %i.fg, align 1, !tbaa !45, !alias.scope !433
  %i.fp = load i8, ptr %i.fi, align 1, !tbaa !45, !alias.scope !433
  %i.fq = load i8, ptr %i.fk, align 1, !tbaa !45, !alias.scope !433
  %i.fr = load i8, ptr %i.fm, align 1, !tbaa !45, !alias.scope !433
  %i.fs = insertelement <4 x i8> poison, i8 %i.fo, i64 0
  %i.ft = insertelement <4 x i8> %i.fs, i8 %i.fp, i64 1
  %i.fu = insertelement <4 x i8> %i.ft, i8 %i.fq, i64 2
  %i.fv = insertelement <4 x i8> %i.fu, i8 %i.fr, i64 3
  %i.fw = sext <4 x i8> %i.fv to <4 x i32>
  %i.fx = add nsw <4 x i32> %broadcast.splat1000, %i.fw ; 2 uses
  %i.fy = trunc <4 x i32> %i.fx to <4 x i16>
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fc, i64 30
  store <4 x i16> %i.fy, ptr %i.fz, align 2, !tbaa !48, !alias.scope !434, !noalias !435
  %wide.vec1009 = load <8 x i16>, ptr %i.fn, align 2, !tbaa !48, !alias.scope !436 ; 2 uses
  %strided.vec1010 = shufflevector <8 x i16> %wide.vec1009, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1011 = shufflevector <8 x i16> %wide.vec1009, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ga = add <4 x i16> %strided.vec1010, splat (i16 128)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ff, i64 30
  %i.gc = shl <4 x i32> %i.fx, splat (i32 16)
  %i.gd = ashr exact <4 x i32> %i.gc, splat (i32 9)
  %i.ge = ashr <4 x i32> %i.gd, %broadcast.splat1002
  %i.gf = trunc <4 x i32> %i.ge to <4 x i16>
  %i.gg = sub <4 x i16> %i.ga, %i.gf              ; 3 uses
  %i.gh = sext <4 x i16> %i.gg to <4 x i32>
  %i.gi = add nsw <4 x i32> %i.gh, splat (i32 -128)
  %i.gj = icmp ult <4 x i32> %i.gi, splat (i32 -256)
  %i.gk = icmp sgt <4 x i16> %i.gg, splat (i16 -1)
  %i.gl = select <4 x i1> %i.gk, <4 x i16> splat (i16 127), <4 x i16> splat (i16 -128)
  %i.gm = select <4 x i1> %i.gj, <4 x i16> %i.gl, <4 x i16> %i.gg
  store <4 x i16> %i.gm, ptr %i.gb, align 2, !tbaa !48, !alias.scope !437, !noalias !438
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fj, i64 5
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fl, i64 7
  %i.gr = load i8, ptr %i.gn, align 1, !tbaa !45, !alias.scope !433
  %i.gs = load i8, ptr %i.go, align 1, !tbaa !45, !alias.scope !433
  %i.gt = load i8, ptr %i.gp, align 1, !tbaa !45, !alias.scope !433
  %i.gu = load i8, ptr %i.gq, align 1, !tbaa !45, !alias.scope !433
  %i.gv = insertelement <4 x i8> poison, i8 %i.gr, i64 0
  %i.gw = insertelement <4 x i8> %i.gv, i8 %i.gs, i64 1
  %i.gx = insertelement <4 x i8> %i.gw, i8 %i.gt, i64 2
  %i.gy = insertelement <4 x i8> %i.gx, i8 %i.gu, i64 3
  %i.gz = sext <4 x i8> %i.gy to <4 x i32>
  %i.ha = add nsw <4 x i32> %broadcast.splat1000, %i.gz ; 2 uses
  %i.hb = trunc <4 x i32> %i.ha to <4 x i16>
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fc, i64 60
  store <4 x i16> %i.hb, ptr %i.hc, align 2, !tbaa !48, !alias.scope !439, !noalias !440
  %i.hd = add <4 x i16> %strided.vec1011, splat (i16 128)
  %i.he = getelementptr inbounds nuw i8, ptr %i.ff, i64 60
  %i.hf = shl <4 x i32> %i.ha, splat (i32 16)
  %i.hg = ashr exact <4 x i32> %i.hf, splat (i32 9)
  %i.hh = ashr <4 x i32> %i.hg, %broadcast.splat1002
  %i.hi = trunc <4 x i32> %i.hh to <4 x i16>
  %i.hj = sub <4 x i16> %i.hd, %i.hi              ; 3 uses
  %i.hk = sext <4 x i16> %i.hj to <4 x i32>
  %i.hl = add nsw <4 x i32> %i.hk, splat (i32 -128)
  %i.hm = icmp ult <4 x i32> %i.hl, splat (i32 -256)
  %i.hn = icmp sgt <4 x i16> %i.hj, splat (i16 -1)
  %i.ho = select <4 x i1> %i.hn, <4 x i16> splat (i16 127), <4 x i16> splat (i16 -128)
  %i.hp = select <4 x i1> %i.hm, <4 x i16> %i.ho, <4 x i16> %i.hj
  store <4 x i16> %i.hp, ptr %i.he, align 2, !tbaa !48, !alias.scope !441, !noalias !442
  %index.next1012 = add nuw i64 %index1004, 4     ; 2 uses
  %i.hq = icmp eq i64 %index.next1012, %n.vec996
  br i1 %i.hq, label %middle.block1013, label %vector.body1003, !llvm.loop !398

middle.block1013:                                 ; preds = %vector.body1003
  %cmp.n1014 = icmp eq i64 %n.vec996, %wide.trip.count133
  br i1 %cmp.n1014, label %._crit_edge122, label %scalar.ph785.preheader

scalar.ph785.preheader:                           ; preds = %vector.memcheck787, %.lr.ph121, %middle.block1013
  %indvars.iv130.ph = phi i64 [ 0, %vector.memcheck787 ], [ 0, %.lr.ph121 ], [ %n.vec996, %middle.block1013 ]
  br label %scalar.ph785

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 11 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !45
  %i.ht = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !45
  %i.hu = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !45
  %i.hw = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !45
  %i.hx = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !45
  %i.hz = sext i8 %i.hy to i32
  %i.ia = add nsw i32 %i.g, %i.hz
  %i.ib = trunc i32 %i.ia to i16
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv ; 3 uses
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !48
  %i.id = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !45
  %i.if = sext i8 %i.ie to i16
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  store i16 %i.if, ptr %i.ig, align 2, !tbaa !48
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.ij = load i8, ptr %i.ih, align 1, !tbaa !45
  %i.ik = sext i8 %i.ij to i32
  %i.il = add nsw i32 %i.i, %i.ik                 ; 2 uses
  %i.im = trunc i32 %i.il to i16
  %gep = getelementptr inbounds nuw i8, ptr %i.ic, i64 30
  store i16 %i.im, ptr %gep, align 2, !tbaa !48
  %i.in = load i16, ptr %i.ii, align 2, !tbaa !48
  %i.io = add i16 %i.in, 128
  %gep111 = getelementptr inbounds nuw i8, ptr %i.ig, i64 30
  %sext108 = shl i32 %i.il, 16
  %i.ip = ashr exact i32 %sext108, 9
  %i.iq = ashr i32 %i.ip, %i.h
  %i.ir = trunc i32 %i.iq to i16
  %i.is = sub i16 %i.io, %i.ir                    ; 3 uses
  %i.it = sext i16 %i.is to i32
  %i.iu = add nsw i32 %i.it, -128
  %i.iv = icmp ult i32 %i.iu, -256
  %i.iw = icmp sgt i16 %i.is, -1
  %i.ix = select i1 %i.iw, i16 127, i16 -128
  %i.iy = select i1 %i.iv, i16 %i.ix, i16 %i.is
  store i16 %i.iy, ptr %gep111, align 2, !tbaa !48
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !45
  %i.jb = sext i8 %i.ja to i32
  %i.jc = add nsw i32 %i.i, %i.jb                 ; 2 uses
  %i.jd = trunc i32 %i.jc to i16
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ic, i64 60
  store i16 %i.jd, ptr %gep.1, align 2, !tbaa !48
  %i.je = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !48
  %i.jg = add i16 %i.jf, 128
  %gep111.1 = getelementptr inbounds nuw i8, ptr %i.ig, i64 60
  %sext108.1 = shl i32 %i.jc, 16
  %i.jh = ashr exact i32 %sext108.1, 9
  %i.ji = ashr i32 %i.jh, %i.h
  %i.jj = trunc i32 %i.ji to i16
  %i.jk = sub i16 %i.jg, %i.jj                    ; 3 uses
  %i.jl = sext i16 %i.jk to i32
  %i.jm = add nsw i32 %i.jl, -128
  %i.jn = icmp ult i32 %i.jm, -256
  %i.jo = icmp sgt i16 %i.jk, -1
  %i.jp = select i1 %i.jo, i16 127, i16 -128
  %i.jq = select i1 %i.jn, i16 %i.jp, i16 %i.jk
  store i16 %i.jq, ptr %gep111.1, align 2, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !399

._crit_edge122:                                   ; preds = %scalar.ph785, %middle.block1013, %._crit_edge
  ret void

scalar.ph785:                                     ; preds = %scalar.ph785.preheader, %scalar.ph785
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph785 ], [ %indvars.iv130.ph, %scalar.ph785.preheader ] ; 11 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv130
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !45
  %i.jt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %indvars.iv130
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !45
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv130
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !45
  %i.jw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv130
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !45
end_hunk_0
