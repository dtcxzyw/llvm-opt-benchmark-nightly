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
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 19 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 63 ; 13 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 94 ; 10 uses
  %wide.trip.count = zext i8 %i.k to i64          ; 8 uses
  %min.iters.check = icmp ult i8 %i.k, 52
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %2 = getelementptr i8, ptr %0, i64 %wide.trip.count
  %i.w = getelementptr i8, ptr %2, i64 4          ; 10 uses
  %i.x = getelementptr i8, ptr %0, i64 %wide.trip.count
  %i.y = getelementptr i8, ptr %i.x, i64 19       ; 10 uses
  %i.z = shl nuw nsw i64 %wide.trip.count, 1      ; 7 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 64     ; 10 uses
  %i.ac = getelementptr i8, ptr %0, i64 %i.z
  %i.ad = getelementptr i8, ptr %i.ac, i64 244    ; 10 uses
  %i.ae = getelementptr i8, ptr %0, i64 94        ; 10 uses
  %i.af = getelementptr i8, ptr %0, i64 %i.z
  %i.ag = getelementptr i8, ptr %i.af, i64 94     ; 10 uses
  %i.ah = getelementptr i8, ptr %0, i64 274       ; 10 uses
  %i.ai = getelementptr i8, ptr %0, i64 %i.z
  %i.aj = getelementptr i8, ptr %i.ai, i64 274    ; 10 uses
  %i.ak = getelementptr i8, ptr %0, i64 124       ; 10 uses
  %3 = getelementptr i8, ptr %0, i64 %i.z
  %4 = getelementptr i8, ptr %3, i64 124          ; 10 uses
  %5 = getelementptr i8, ptr %0, i64 304          ; 10 uses
  %i.al = getelementptr i8, ptr %0, i64 %i.z
  %6 = getelementptr i8, ptr %i.al, i64 304       ; 10 uses
  %7 = shl nuw nsw i64 %wide.trip.count, 2
  %8 = getelementptr i8, ptr %1, i64 %7
  %9 = getelementptr i8, ptr %8, i64 94           ; 8 uses
  %i.am = getelementptr i8, ptr %1, i64 %i.z
  %i.an = getelementptr i8, ptr %i.am, i64 63     ; 8 uses
  %i.ao = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.ap = getelementptr i8, ptr %i.ao, i64 48     ; 8 uses
  %bound0 = icmp ult ptr %i.n, %i.y
  %bound1 = icmp ult ptr %i.p, %i.w
  %found.conflict = and i1 %bound0, %bound1
  %bound0352 = icmp ult ptr %i.n, %i.ab
  %bound1353 = icmp ult ptr %i.r, %i.w
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx = or i1 %found.conflict, %found.conflict354
  %bound0355 = icmp ult ptr %i.n, %i.ad
  %bound1356 = icmp ult ptr %i.t, %i.w
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx358 = or i1 %conflict.rdx, %found.conflict357
  %bound0359 = icmp ult ptr %i.n, %i.ag
  %bound1.a = icmp ult ptr %i.ae, %i.w
  %found.conflict.a = and i1 %bound0359, %bound1.a
  %conflict.rdx362 = or i1 %conflict.rdx358, %found.conflict.a
  %bound1353.a = icmp ult ptr %i.n, %i.aj
  %bound1356.a = icmp ult ptr %i.ah, %i.w
  %found.conflict357.a = and i1 %bound1353.a, %bound1356.a
  %conflict.rdx366 = or i1 %conflict.rdx362, %found.conflict357.a
  %bound0367 = icmp ult ptr %i.n, %4
  %bound1368 = icmp ult ptr %i.ak, %i.w
  %found.conflict369 = and i1 %bound0367, %bound1368
  %conflict.rdx370 = or i1 %conflict.rdx366, %found.conflict369
  %bound0371 = icmp ult ptr %i.n, %6
  %bound0391.a = icmp ult ptr %5, %i.w
  %found.conflict373 = and i1 %bound0371, %bound0391.a
  %conflict.rdx374 = or i1 %conflict.rdx370, %found.conflict373
  %bound0375 = icmp ult ptr %i.n, %9
  %bound1376 = icmp ult ptr %i.v, %i.w
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  %bound0379 = icmp ult ptr %i.n, %i.an
  %bound1380 = icmp ult ptr %i.u, %i.w
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %conflict.rdx378, %found.conflict381
  %bound0383 = icmp ult ptr %i.n, %i.ap
  %bound1384 = icmp ult ptr %i.m, %i.w
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  %bound0411.a = icmp ult ptr %i.p, %i.ab
  %bound1412.a = icmp ult ptr %i.r, %i.y
  %found.conflict413.a = and i1 %bound0411.a, %bound1412.a
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict413.a
  %bound0415.a = icmp ult ptr %i.p, %i.ad
  %bound1416.a = icmp ult ptr %i.t, %i.y
  %found.conflict417.a = and i1 %bound0415.a, %bound1416.a
  %conflict.rdx394 = or i1 %conflict.rdx390, %found.conflict417.a
  %bound0419.a = icmp ult ptr %i.p, %i.ag
  %bound1420.a = icmp ult ptr %i.ae, %i.y
  %found.conflict421.a = and i1 %bound0419.a, %bound1420.a
  %conflict.rdx398 = or i1 %conflict.rdx394, %found.conflict421.a
  %bound0423.a = icmp ult ptr %i.p, %i.aj
  %bound1424.a = icmp ult ptr %i.ah, %i.y
  %found.conflict425.a = and i1 %bound0423.a, %bound1424.a
  %conflict.rdx402 = or i1 %conflict.rdx398, %found.conflict425.a
  %bound0403 = icmp ult ptr %i.p, %4
  %bound1404 = icmp ult ptr %i.ak, %i.y
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  %bound0407 = icmp ult ptr %i.p, %6
  %bound1408 = icmp ult ptr %5, %i.y
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  %bound0443.a = icmp ult ptr %i.p, %9
  %bound1444.a = icmp ult ptr %i.v, %i.y
  %found.conflict445.a = and i1 %bound0443.a, %bound1444.a
  %conflict.rdx414 = or i1 %conflict.rdx410, %found.conflict445.a
  %bound0447.a = icmp ult ptr %i.p, %i.an
  %bound1448.a = icmp ult ptr %i.u, %i.y
  %found.conflict449.a = and i1 %bound0447.a, %bound1448.a
  %conflict.rdx418 = or i1 %conflict.rdx414, %found.conflict449.a
  %bound0451.a = icmp ult ptr %i.p, %i.ap
  %bound1452.a = icmp ult ptr %i.m, %i.y
  %found.conflict453.a = and i1 %bound0451.a, %bound1452.a
  %conflict.rdx422 = or i1 %conflict.rdx418, %found.conflict453.a
  %bound0423 = icmp ult ptr %i.r, %i.ad
  %bound1424 = icmp ult ptr %i.t, %i.ab
  %found.conflict425 = and i1 %bound0423, %bound1424
  %conflict.rdx426 = or i1 %conflict.rdx422, %found.conflict425
  %bound0427 = icmp ult ptr %i.r, %i.ag
  %bound1428 = icmp ult ptr %i.ae, %i.ab
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx430 = or i1 %conflict.rdx426, %found.conflict429
  %bound0431 = icmp ult ptr %i.r, %i.aj
  %bound1432 = icmp ult ptr %i.ah, %i.ab
  %found.conflict433 = and i1 %bound0431, %bound1432
  %conflict.rdx434 = or i1 %conflict.rdx430, %found.conflict433
  %bound0471.a = icmp ult ptr %i.r, %4
  %bound1472.a = icmp ult ptr %i.ak, %i.ab
  %found.conflict473.a = and i1 %bound0471.a, %bound1472.a
  %conflict.rdx438 = or i1 %conflict.rdx434, %found.conflict473.a
  %bound0475.a = icmp ult ptr %i.r, %6
  %bound1476.a = icmp ult ptr %5, %i.ab
  %found.conflict477.a = and i1 %bound0475.a, %bound1476.a
  %conflict.rdx442 = or i1 %conflict.rdx438, %found.conflict477.a
  %bound0479.a = icmp ult ptr %i.r, %9
  %bound1480.a = icmp ult ptr %i.v, %i.ab
  %found.conflict481.a = and i1 %bound0479.a, %bound1480.a
  %conflict.rdx446 = or i1 %conflict.rdx442, %found.conflict481.a
  %bound0483.a = icmp ult ptr %i.r, %i.an
  %bound1484.a = icmp ult ptr %i.u, %i.ab
  %found.conflict485.a = and i1 %bound0483.a, %bound1484.a
  %conflict.rdx450 = or i1 %conflict.rdx446, %found.conflict485.a
  %bound0487.a = icmp ult ptr %i.r, %i.ap
  %bound1488.a = icmp ult ptr %i.m, %i.ab
  %found.conflict489.a = and i1 %bound0487.a, %bound1488.a
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict489.a
  %bound0491.a = icmp ult ptr %i.t, %i.ag
  %bound1492.a = icmp ult ptr %i.ae, %i.ad
  %found.conflict493.a = and i1 %bound0491.a, %bound1492.a
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict493.a
  %bound0495.a = icmp ult ptr %i.t, %i.aj
  %bound1496.a = icmp ult ptr %i.ah, %i.ad
  %found.conflict497.a = and i1 %bound0495.a, %bound1496.a
  %conflict.rdx462 = or i1 %conflict.rdx458, %found.conflict497.a
  %bound0499.a = icmp ult ptr %i.t, %4
  %bound1500.a = icmp ult ptr %i.ak, %i.ad
  %found.conflict501.a = and i1 %bound0499.a, %bound1500.a
  %conflict.rdx466 = or i1 %conflict.rdx462, %found.conflict501.a
  %bound0503.a = icmp ult ptr %i.t, %6
  %bound1504.a = icmp ult ptr %5, %i.ad
  %found.conflict505.a = and i1 %bound0503.a, %bound1504.a
  %conflict.rdx470 = or i1 %conflict.rdx466, %found.conflict505.a
  %bound0507.a = icmp ult ptr %i.t, %9
  %bound1508.a = icmp ult ptr %i.v, %i.ad
  %found.conflict509.a = and i1 %bound0507.a, %bound1508.a
  %conflict.rdx474 = or i1 %conflict.rdx470, %found.conflict509.a
  %bound0511.a = icmp ult ptr %i.t, %i.an
  %bound1512.a = icmp ult ptr %i.u, %i.ad
  %found.conflict513.a = and i1 %bound0511.a, %bound1512.a
  %conflict.rdx478 = or i1 %conflict.rdx474, %found.conflict513.a
  %bound0515.a = icmp ult ptr %i.t, %i.ap
  %bound1516.a = icmp ult ptr %i.m, %i.ad
  %found.conflict517.a = and i1 %bound0515.a, %bound1516.a
  %conflict.rdx482 = or i1 %conflict.rdx478, %found.conflict517.a
  %bound0519.a = icmp ult ptr %i.ae, %i.aj
  %bound1520.a = icmp ult ptr %i.ah, %i.ag
  %found.conflict521.a = and i1 %bound0519.a, %bound1520.a
  %conflict.rdx486 = or i1 %conflict.rdx482, %found.conflict521.a
  %bound0523.a = icmp ult ptr %i.ae, %4
  %bound1524.a = icmp ult ptr %i.ak, %i.ag
  %found.conflict525.a = and i1 %bound0523.a, %bound1524.a
  %conflict.rdx490 = or i1 %conflict.rdx486, %found.conflict525.a
  %bound0527.a = icmp ult ptr %i.ae, %6
  %bound1528.a = icmp ult ptr %5, %i.ag
  %found.conflict529.a = and i1 %bound0527.a, %bound1528.a
  %conflict.rdx494 = or i1 %conflict.rdx490, %found.conflict529.a
  %bound0531.a = icmp ult ptr %i.ae, %9
  %bound1532.a = icmp ult ptr %i.v, %i.ag
  %found.conflict533.a = and i1 %bound0531.a, %bound1532.a
  %conflict.rdx498 = or i1 %conflict.rdx494, %found.conflict533.a
  %bound0535.a = icmp ult ptr %i.ae, %i.an
  %bound1536.a = icmp ult ptr %i.u, %i.ag
  %found.conflict537.a = and i1 %bound0535.a, %bound1536.a
  %conflict.rdx502 = or i1 %conflict.rdx498, %found.conflict537.a
  %bound0539.a = icmp ult ptr %i.ae, %i.ap
  %bound1540.a = icmp ult ptr %i.m, %i.ag
  %found.conflict541.a = and i1 %bound0539.a, %bound1540.a
  %conflict.rdx506 = or i1 %conflict.rdx502, %found.conflict541.a
  %bound1544.a = icmp ult ptr %i.ah, %4
  %bound0547.a = icmp ult ptr %i.ak, %i.aj
  %found.conflict509 = and i1 %bound1544.a, %bound0547.a
  %conflict.rdx510 = or i1 %conflict.rdx506, %found.conflict509
  %bound0551.a = icmp ult ptr %i.ah, %6
  %bound1552.a = icmp ult ptr %5, %i.aj
  %found.conflict553.a = and i1 %bound0551.a, %bound1552.a
  %conflict.rdx514 = or i1 %conflict.rdx510, %found.conflict553.a
  %bound0515 = icmp ult ptr %i.ah, %9
  %bound1516 = icmp ult ptr %i.v, %i.aj
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx518 = or i1 %conflict.rdx514, %found.conflict517
  %bound0519 = icmp ult ptr %i.ah, %i.an
  %bound1520 = icmp ult ptr %i.u, %i.aj
  %found.conflict521 = and i1 %bound0519, %bound1520
  %conflict.rdx522 = or i1 %conflict.rdx518, %found.conflict521
  %bound0523 = icmp ult ptr %i.ah, %i.ap
  %bound1524 = icmp ult ptr %i.m, %i.aj
  %found.conflict525 = and i1 %bound0523, %bound1524
  %op.rdx1055 = or i1 %conflict.rdx522, %found.conflict525
  %bound0527 = icmp ult ptr %i.ak, %6
  %bound1528 = icmp ult ptr %5, %4
  %found.conflict529 = and i1 %bound0527, %bound1528
  %op.rdx1059 = or i1 %op.rdx1055, %found.conflict529
  %bound0531 = icmp ult ptr %i.ak, %9
  %bound1532 = icmp ult ptr %i.v, %4
  %found.conflict533 = and i1 %bound0531, %bound1532
  %op.rdx1063 = or i1 %op.rdx1059, %found.conflict533
  %bound0535 = icmp ult ptr %i.ak, %i.an
  %bound1536 = icmp ult ptr %i.u, %4
  %found.conflict537 = and i1 %bound0535, %bound1536
  %op.rdx1067 = or i1 %op.rdx1063, %found.conflict537
  %bound0539 = icmp ult ptr %i.ak, %i.ap
  %bound1540 = icmp ult ptr %i.m, %4
  %found.conflict541 = and i1 %bound0539, %bound1540
  %op.rdx1071 = or i1 %op.rdx1067, %found.conflict541
  %bound0543 = icmp ult ptr %5, %9
  %bound1544 = icmp ult ptr %i.v, %6
  %found.conflict545 = and i1 %bound0543, %bound1544
  %op.rdx1075 = or i1 %op.rdx1071, %found.conflict545
  %bound0547 = icmp ult ptr %5, %i.an
  %bound1548 = icmp ult ptr %i.u, %6
  %found.conflict549 = and i1 %bound0547, %bound1548
  %op.rdx1079 = or i1 %op.rdx1075, %found.conflict549
  %bound0551 = icmp ult ptr %5, %i.ap
  %bound1552 = icmp ult ptr %i.m, %6
  %found.conflict553 = and i1 %bound0551, %bound1552
  %op.rdx1083 = or i1 %op.rdx1079, %found.conflict553
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
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 155 ; 10 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 12 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 170 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 12 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 185 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 154 ; 12 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 334 ; 12 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 215 ; 13 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 246 ; 10 uses
  %wide.trip.count133 = zext i8 %i.do to i64      ; 8 uses
  %min.iters.check786 = icmp ult i8 %i.do, 52
  br i1 %min.iters.check786, label %scalar.ph785.preheader, label %vector.memcheck787

vector.memcheck787:                               ; preds = %.lr.ph121
  %10 = getelementptr i8, ptr %0, i64 %wide.trip.count133
  %i.ea = getelementptr i8, ptr %10, i64 34       ; 10 uses
  %i.eb = getelementptr i8, ptr %0, i64 %wide.trip.count133
  %i.ec = getelementptr i8, ptr %i.eb, i64 49     ; 10 uses
  %i.ed = shl nuw nsw i64 %wide.trip.count133, 1  ; 7 uses
  %i.ee = getelementptr i8, ptr %0, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 154    ; 10 uses
  %i.eg = getelementptr i8, ptr %0, i64 %i.ed
  %i.eh = getelementptr i8, ptr %i.eg, i64 334    ; 10 uses
  %i.ei = getelementptr i8, ptr %0, i64 184       ; 10 uses
  %i.ej = getelementptr i8, ptr %0, i64 %i.ed
  %i.ek = getelementptr i8, ptr %i.ej, i64 184    ; 10 uses
  %i.el = getelementptr i8, ptr %0, i64 364       ; 10 uses
  %i.em = getelementptr i8, ptr %0, i64 %i.ed
  %i.en = getelementptr i8, ptr %i.em, i64 364    ; 10 uses
  %i.eo = getelementptr i8, ptr %0, i64 214       ; 10 uses
  %11 = getelementptr i8, ptr %0, i64 %i.ed
  %12 = getelementptr i8, ptr %11, i64 214        ; 10 uses
  %13 = getelementptr i8, ptr %0, i64 394         ; 10 uses
  %i.ep = getelementptr i8, ptr %0, i64 %i.ed
  %14 = getelementptr i8, ptr %i.ep, i64 394      ; 10 uses
  %15 = shl nuw nsw i64 %wide.trip.count133, 2
  %16 = getelementptr i8, ptr %1, i64 %15
  %17 = getelementptr i8, ptr %16, i64 246        ; 8 uses
  %i.eq = getelementptr i8, ptr %1, i64 %i.ed
  %i.er = getelementptr i8, ptr %i.eq, i64 215    ; 8 uses
  %i.es = getelementptr i8, ptr %1, i64 %wide.trip.count133
  %i.et = getelementptr i8, ptr %i.es, i64 200    ; 8 uses
  %bound0788 = icmp ult ptr %i.dr, %i.ec
  %bound1789 = icmp ult ptr %i.dt, %i.ea
  %found.conflict790 = and i1 %bound0788, %bound1789
  %bound0791 = icmp ult ptr %i.dr, %i.ef
  %bound1792 = icmp ult ptr %i.dv, %i.ea
  %found.conflict793 = and i1 %bound0791, %bound1792
  %conflict.rdx794 = or i1 %found.conflict790, %found.conflict793
  %bound0795 = icmp ult ptr %i.dr, %i.eh
  %bound1796 = icmp ult ptr %i.dx, %i.ea
  %found.conflict797 = and i1 %bound0795, %bound1796
  %conflict.rdx798 = or i1 %conflict.rdx794, %found.conflict797
  %bound0799 = icmp ult ptr %i.dr, %i.ek
  %bound1789.a = icmp ult ptr %i.ei, %i.ea
  %found.conflict790.a = and i1 %bound0799, %bound1789.a
  %conflict.rdx802 = or i1 %conflict.rdx798, %found.conflict790.a
  %bound1792.a = icmp ult ptr %i.dr, %i.en
  %bound1796.a = icmp ult ptr %i.el, %i.ea
  %found.conflict797.a = and i1 %bound1792.a, %bound1796.a
  %conflict.rdx806 = or i1 %conflict.rdx802, %found.conflict797.a
  %bound0807 = icmp ult ptr %i.dr, %12
  %bound1808 = icmp ult ptr %i.eo, %i.ea
  %found.conflict809 = and i1 %bound0807, %bound1808
  %conflict.rdx810 = or i1 %conflict.rdx806, %found.conflict809
  %bound0811 = icmp ult ptr %i.dr, %14
  %bound0831.a = icmp ult ptr %13, %i.ea
  %found.conflict813 = and i1 %bound0811, %bound0831.a
  %conflict.rdx814 = or i1 %conflict.rdx810, %found.conflict813
  %bound0815 = icmp ult ptr %i.dr, %17
  %bound1816 = icmp ult ptr %i.dz, %i.ea
  %found.conflict817 = and i1 %bound0815, %bound1816
  %conflict.rdx818 = or i1 %conflict.rdx814, %found.conflict817
  %bound0819 = icmp ult ptr %i.dr, %i.er
  %bound1820 = icmp ult ptr %i.dy, %i.ea
  %found.conflict821 = and i1 %bound0819, %bound1820
  %conflict.rdx822 = or i1 %conflict.rdx818, %found.conflict821
  %bound0823 = icmp ult ptr %i.dr, %i.et
  %bound1824 = icmp ult ptr %i.dq, %i.ea
  %found.conflict825 = and i1 %bound0823, %bound1824
  %conflict.rdx826 = or i1 %conflict.rdx822, %found.conflict825
  %bound0851.a = icmp ult ptr %i.dt, %i.ef
  %bound1852.a = icmp ult ptr %i.dv, %i.ec
  %found.conflict853.a = and i1 %bound0851.a, %bound1852.a
  %conflict.rdx830 = or i1 %conflict.rdx826, %found.conflict853.a
  %bound0855.a = icmp ult ptr %i.dt, %i.eh
  %bound1856.a = icmp ult ptr %i.dx, %i.ec
  %found.conflict857.a = and i1 %bound0855.a, %bound1856.a
  %conflict.rdx834 = or i1 %conflict.rdx830, %found.conflict857.a
  %bound0859.a = icmp ult ptr %i.dt, %i.ek
  %bound1860.a = icmp ult ptr %i.ei, %i.ec
  %found.conflict861.a = and i1 %bound0859.a, %bound1860.a
  %conflict.rdx838 = or i1 %conflict.rdx834, %found.conflict861.a
  %bound0863.a = icmp ult ptr %i.dt, %i.en
  %bound1864.a = icmp ult ptr %i.el, %i.ec
  %found.conflict865.a = and i1 %bound0863.a, %bound1864.a
  %conflict.rdx842 = or i1 %conflict.rdx838, %found.conflict865.a
  %bound0843 = icmp ult ptr %i.dt, %12
  %bound1844 = icmp ult ptr %i.eo, %i.ec
  %found.conflict845 = and i1 %bound0843, %bound1844
  %conflict.rdx846 = or i1 %conflict.rdx842, %found.conflict845
  %bound0847 = icmp ult ptr %i.dt, %14
  %bound1848 = icmp ult ptr %13, %i.ec
  %found.conflict849 = and i1 %bound0847, %bound1848
  %conflict.rdx850 = or i1 %conflict.rdx846, %found.conflict849
  %bound0883.a = icmp ult ptr %i.dt, %17
  %bound1884.a = icmp ult ptr %i.dz, %i.ec
  %found.conflict885.a = and i1 %bound0883.a, %bound1884.a
  %conflict.rdx854 = or i1 %conflict.rdx850, %found.conflict885.a
  %bound0887.a = icmp ult ptr %i.dt, %i.er
  %bound1888.a = icmp ult ptr %i.dy, %i.ec
  %found.conflict889.a = and i1 %bound0887.a, %bound1888.a
  %conflict.rdx858 = or i1 %conflict.rdx854, %found.conflict889.a
  %bound0891.a = icmp ult ptr %i.dt, %i.et
  %bound1892.a = icmp ult ptr %i.dq, %i.ec
  %found.conflict893.a = and i1 %bound0891.a, %bound1892.a
  %conflict.rdx862 = or i1 %conflict.rdx858, %found.conflict893.a
  %bound0863 = icmp ult ptr %i.dv, %i.eh
  %bound1864 = icmp ult ptr %i.dx, %i.ef
  %found.conflict865 = and i1 %bound0863, %bound1864
  %conflict.rdx866 = or i1 %conflict.rdx862, %found.conflict865
  %bound0867 = icmp ult ptr %i.dv, %i.ek
  %bound1868 = icmp ult ptr %i.ei, %i.ef
  %found.conflict869 = and i1 %bound0867, %bound1868
  %conflict.rdx870 = or i1 %conflict.rdx866, %found.conflict869
  %bound0871 = icmp ult ptr %i.dv, %i.en
  %bound1872 = icmp ult ptr %i.el, %i.ef
  %found.conflict873 = and i1 %bound0871, %bound1872
  %conflict.rdx874 = or i1 %conflict.rdx870, %found.conflict873
  %bound0911.a = icmp ult ptr %i.dv, %12
  %bound1912.a = icmp ult ptr %i.eo, %i.ef
  %found.conflict913.a = and i1 %bound0911.a, %bound1912.a
  %conflict.rdx878 = or i1 %conflict.rdx874, %found.conflict913.a
  %bound0915.a = icmp ult ptr %i.dv, %14
  %bound1916.a = icmp ult ptr %13, %i.ef
  %found.conflict917.a = and i1 %bound0915.a, %bound1916.a
  %conflict.rdx882 = or i1 %conflict.rdx878, %found.conflict917.a
  %bound0919.a = icmp ult ptr %i.dv, %17
  %bound1920.a = icmp ult ptr %i.dz, %i.ef
  %found.conflict921.a = and i1 %bound0919.a, %bound1920.a
  %conflict.rdx886 = or i1 %conflict.rdx882, %found.conflict921.a
  %bound0923.a = icmp ult ptr %i.dv, %i.er
  %bound1924.a = icmp ult ptr %i.dy, %i.ef
  %found.conflict925.a = and i1 %bound0923.a, %bound1924.a
  %conflict.rdx890 = or i1 %conflict.rdx886, %found.conflict925.a
  %bound0927.a = icmp ult ptr %i.dv, %i.et
  %bound1928.a = icmp ult ptr %i.dq, %i.ef
  %found.conflict929.a = and i1 %bound0927.a, %bound1928.a
  %conflict.rdx894 = or i1 %conflict.rdx890, %found.conflict929.a
  %bound0931.a = icmp ult ptr %i.dx, %i.ek
  %bound1932.a = icmp ult ptr %i.ei, %i.eh
  %found.conflict933.a = and i1 %bound0931.a, %bound1932.a
  %conflict.rdx898 = or i1 %conflict.rdx894, %found.conflict933.a
  %bound0935.a = icmp ult ptr %i.dx, %i.en
  %bound1936.a = icmp ult ptr %i.el, %i.eh
  %found.conflict937.a = and i1 %bound0935.a, %bound1936.a
  %conflict.rdx902 = or i1 %conflict.rdx898, %found.conflict937.a
  %bound0939.a = icmp ult ptr %i.dx, %12
  %bound1940.a = icmp ult ptr %i.eo, %i.eh
  %found.conflict941.a = and i1 %bound0939.a, %bound1940.a
  %conflict.rdx906 = or i1 %conflict.rdx902, %found.conflict941.a
  %bound0943.a = icmp ult ptr %i.dx, %14
  %bound1944.a = icmp ult ptr %13, %i.eh
  %found.conflict945.a = and i1 %bound0943.a, %bound1944.a
  %conflict.rdx910 = or i1 %conflict.rdx906, %found.conflict945.a
  %bound0947.a = icmp ult ptr %i.dx, %17
  %bound1948.a = icmp ult ptr %i.dz, %i.eh
  %found.conflict949.a = and i1 %bound0947.a, %bound1948.a
  %conflict.rdx914 = or i1 %conflict.rdx910, %found.conflict949.a
  %bound0951.a = icmp ult ptr %i.dx, %i.er
  %bound1952.a = icmp ult ptr %i.dy, %i.eh
  %found.conflict953.a = and i1 %bound0951.a, %bound1952.a
  %conflict.rdx918 = or i1 %conflict.rdx914, %found.conflict953.a
  %bound0955.a = icmp ult ptr %i.dx, %i.et
  %bound1956.a = icmp ult ptr %i.dq, %i.eh
  %found.conflict957.a = and i1 %bound0955.a, %bound1956.a
  %conflict.rdx922 = or i1 %conflict.rdx918, %found.conflict957.a
  %bound0959.a = icmp ult ptr %i.ei, %i.en
  %bound1960.a = icmp ult ptr %i.el, %i.ek
  %found.conflict961.a = and i1 %bound0959.a, %bound1960.a
  %conflict.rdx926 = or i1 %conflict.rdx922, %found.conflict961.a
  %bound0963.a = icmp ult ptr %i.ei, %12
  %bound1964.a = icmp ult ptr %i.eo, %i.ek
  %found.conflict965.a = and i1 %bound0963.a, %bound1964.a
  %conflict.rdx930 = or i1 %conflict.rdx926, %found.conflict965.a
  %bound0967.a = icmp ult ptr %i.ei, %14
  %bound1968.a = icmp ult ptr %13, %i.ek
  %found.conflict969.a = and i1 %bound0967.a, %bound1968.a
  %conflict.rdx934 = or i1 %conflict.rdx930, %found.conflict969.a
  %bound0971.a = icmp ult ptr %i.ei, %17
  %bound1972.a = icmp ult ptr %i.dz, %i.ek
  %found.conflict973.a = and i1 %bound0971.a, %bound1972.a
  %conflict.rdx938 = or i1 %conflict.rdx934, %found.conflict973.a
  %bound0975.a = icmp ult ptr %i.ei, %i.er
  %bound1976.a = icmp ult ptr %i.dy, %i.ek
  %found.conflict977.a = and i1 %bound0975.a, %bound1976.a
  %conflict.rdx942 = or i1 %conflict.rdx938, %found.conflict977.a
  %bound0979.a = icmp ult ptr %i.ei, %i.et
  %bound1980.a = icmp ult ptr %i.dq, %i.ek
  %found.conflict981.a = and i1 %bound0979.a, %bound1980.a
  %conflict.rdx946 = or i1 %conflict.rdx942, %found.conflict981.a
  %bound1984.a = icmp ult ptr %i.el, %12
  %bound0987.a = icmp ult ptr %i.eo, %i.en
  %found.conflict949 = and i1 %bound1984.a, %bound0987.a
  %conflict.rdx950 = or i1 %conflict.rdx946, %found.conflict949
  %bound0991.a = icmp ult ptr %i.el, %14
  %bound1992.a = icmp ult ptr %13, %i.en
  %found.conflict993.a = and i1 %bound0991.a, %bound1992.a
  %conflict.rdx954 = or i1 %conflict.rdx950, %found.conflict993.a
  %bound0955 = icmp ult ptr %i.el, %17
  %bound1956 = icmp ult ptr %i.dz, %i.en
  %found.conflict957 = and i1 %bound0955, %bound1956
  %conflict.rdx958 = or i1 %conflict.rdx954, %found.conflict957
  %bound0959 = icmp ult ptr %i.el, %i.er
  %bound1960 = icmp ult ptr %i.dy, %i.en
  %found.conflict961 = and i1 %bound0959, %bound1960
  %conflict.rdx962 = or i1 %conflict.rdx958, %found.conflict961
  %bound0963 = icmp ult ptr %i.el, %i.et
  %bound1964 = icmp ult ptr %i.dq, %i.en
  %found.conflict965 = and i1 %bound0963, %bound1964
  %op.rdx1020 = or i1 %conflict.rdx962, %found.conflict965
  %bound0967 = icmp ult ptr %i.eo, %14
  %bound1968 = icmp ult ptr %13, %12
  %found.conflict969 = and i1 %bound0967, %bound1968
  %op.rdx1024 = or i1 %op.rdx1020, %found.conflict969
  %bound0971 = icmp ult ptr %i.eo, %17
  %bound1972 = icmp ult ptr %i.dz, %12
  %found.conflict973 = and i1 %bound0971, %bound1972
  %op.rdx1028 = or i1 %op.rdx1024, %found.conflict973
  %bound0975 = icmp ult ptr %i.eo, %i.er
  %bound1976 = icmp ult ptr %i.dy, %12
  %found.conflict977 = and i1 %bound0975, %bound1976
  %op.rdx1032 = or i1 %op.rdx1028, %found.conflict977
  %bound0979 = icmp ult ptr %i.eo, %i.et
  %bound1980 = icmp ult ptr %i.dq, %12
  %found.conflict981 = and i1 %bound0979, %bound1980
  %op.rdx1036 = or i1 %op.rdx1032, %found.conflict981
  %bound0983 = icmp ult ptr %13, %17
  %bound1984 = icmp ult ptr %i.dz, %14
  %found.conflict985 = and i1 %bound0983, %bound1984
  %op.rdx1040 = or i1 %op.rdx1036, %found.conflict985
  %bound0987 = icmp ult ptr %13, %i.er
  %bound1988 = icmp ult ptr %i.dy, %14
  %found.conflict989 = and i1 %bound0987, %bound1988
  %op.rdx1044 = or i1 %op.rdx1040, %found.conflict989
  %bound0991 = icmp ult ptr %13, %i.et
  %bound1992 = icmp ult ptr %i.dq, %14
  %found.conflict993 = and i1 %bound0991, %bound1992
  %op.rdx1048 = or i1 %op.rdx1044, %found.conflict993
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
