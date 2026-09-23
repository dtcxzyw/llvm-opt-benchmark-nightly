Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_drawbox?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@init:bb.a
  %i.ac = add nuw nsw i32 %i.ab, %i.z
  %i.ad = lshr i32 %i.ac, 10
  %i.ae = trunc nuw i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %i.ae, ptr %i.af, align 8, !tbaa !23
  %i.ag = mul nuw nsw i32 %i.q, 261992
  %.neg = mul nuw nsw i32 %i.u, 261846
  %i.ah = mul nuw nsw i32 %i.y, 450
  %i.ai = add nuw nsw i32 %i.ag, 510
  %i.aj = add nuw nsw i32 %i.ai, %.neg
  %i.ak = add nuw nsw i32 %i.aj, %i.ah
  %i.al = lshr i32 %i.ak, 10
  %i.am = trunc i32 %i.al to i8
  %i.an = xor i8 %i.am, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !23
  %i.ap = mul nuw nsw i32 %i.q, 450
  %.neg30 = mul nuw nsw i32 %i.u, 261767
  %.neg31 = mul nuw nsw i32 %i.y, 262071
  %i.aq = add nuw nsw i32 %i.ap, 511
  %i.ar = add nuw nsw i32 %i.aq, %.neg30
  %i.as = add nuw nsw i32 %i.ar, %.neg31
  %i.at = lshr i32 %i.as, 10
  %i.au = trunc i32 %i.at to i8
  %i.av = xor i8 %i.au, -128
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  store i8 %i.av, ptr %i.aw, align 2, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 47
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.f, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load <4 x i32>, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 116 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #9 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @init(ptr noundef nonnull %0) #10 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @config_input(ptr noundef %i.c) ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %.037 = phi i32 [ %i.p, %bb.c ], [ %i.n, %bb.b ]
  store <4 x i32> %i.g, ptr %i.f, align 8, !tbaa !26
  store i32 %i.i, ptr %i.h, align 8, !tbaa !27
  store i32 %i.k, ptr %i.j, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.a
  %.033 = phi i32 [ %i.l, %bb.a ], [ %.037, %.thread ], [ 0, %bb.c ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = icmp eq i32 %i.f, 22
  br i1 %i.g, label %bb.b, label %.lr.ph.split.us

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @av_frame_get_side_data(ptr noundef %1, i32 noundef 22) #9 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 24, ptr noundef nonnull @.str.5) #9
  br label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = load i32, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 108
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !41 ; 2 uses
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !42 ; 2 uses
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !43
  %i.aj = add nsw i32 %i.ai, %i.af
  %i.ak = load i32, ptr %i.y, align 8, !tbaa !47
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ak)
  %i.am = load i32, ptr %i.ab, align 4, !tbaa !48
  %i.an = add nsw i32 %i.am, %i.ag
  %i.ao = load i32, ptr %i.x, align 4, !tbaa !49
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.ao)
  tail call void %i.ae(ptr noundef %1, ptr noundef nonnull %i.d, i32 noundef %spec.select.us, i32 noundef %i.ah, i32 noundef %i.al, i32 noundef %i.ap, ptr noundef nonnull @pixel_belongs_to_box) #9
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %av_get_detection_bbox.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %av_get_detection_bbox.exit ] ; 3 uses
  %i.aq = load i32, ptr %i.n, align 8, !tbaa !64
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv, %i.ar
  br i1 %i.as, label %av_get_detection_bbox.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 86) #9
  tail call void @abort() #11
  unreachable

av_get_detection_bbox.exit:                       ; preds = %.lr.ph.split
  %i.at = load i64, ptr %i.o, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.at
  %i.av = load i64, ptr %i.p, align 8, !tbaa !66
  %i.aw = mul i64 %i.av, %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !68 ; 3 uses
  store i32 %i.az, ptr %i.q, align 4, !tbaa !42
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !69 ; 3 uses
  store i32 %i.ba, ptr %i.r, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !70 ; 2 uses
  store i32 %i.bc, ptr %i.s, align 4, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !71 ; 2 uses
  store i32 %i.be, ptr %i.t, align 8, !tbaa !43
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !40
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 0)
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %i.bh = add nsw i32 %i.be, %i.ba
  %i.bi = load i32, ptr %i.v, align 8, !tbaa !47
  %i.bj = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bi)
  %i.bk = add nsw i32 %i.bc, %i.az
  %i.bl = load i32, ptr %i.w, align 4, !tbaa !49
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %i.bl)
  tail call void %i.bf(ptr noundef %1, ptr noundef nonnull %i.d, i32 noundef %spec.select, i32 noundef %i.bg, i32 noundef %i.bj, i32 noundef %i.bm, ptr noundef nonnull @pixel_belongs_to_box) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !60

._crit_edge:                                      ; preds = %av_get_detection_bbox.exit, %.lr.ph.split.us, %bb.d, %bb.c
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !51
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25
  %i.br = tail call i32 @ff_filter_frame(ptr noundef %i.bq, ptr noundef %1) #9
  ret i32 %i.br
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = alloca [14 x double], align 16           ; 18 uses
  %i.b = alloca double, align 8                   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !73
  %i.i = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.h) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load i32, ptr %i.g, align 4, !tbaa !73
  %i.l = tail call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.j, i32 noundef %i.k) #9 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !75
  %i.o = and i64 %i.n, 32
  %.not = icmp eq i64 %i.o, 0
  %spec.select = select i1 %.not, ptr @draw_region, ptr @draw_region_rgb_packed
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %spec.select, ptr %i.p, align 8, !tbaa !40
  %i.q = tail call i32 @av_get_padded_bits_per_pixel(ptr noundef nonnull %i.i) #9
  %i.r = ashr i32 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i32 %i.r, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !76    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %i.v, ptr %i.w, align 4, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.y = load i8, ptr %i.x, align 2, !tbaa !77    ; 2 uses
  %i.z = zext i8 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !54
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !75
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ai = load <2 x i32>, ptr %i.ah, align 8, !tbaa !26
  %i.aj = sitofp <2 x i32> %i.ai to <2 x double>  ; 3 uses
  %1 = shufflevector <2 x double> %i.aj, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  store <4 x double> %1, ptr %i.ag, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !80
  %.not96 = icmp eq i32 %i.al, 0
  br i1 %.not96, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = load i64, ptr %i.ak, align 8            ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.am to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.am, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.an = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.ao = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.ap = fdiv nsz double %i.an, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aq = phi nsz double [ %i.ap, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.aq, ptr %i.ar, align 8, !tbaa !79
  %2 = extractelement <2 x double> %i.aj, i64 0
  %3 = extractelement <2 x double> %i.aj, i64 1
  %i.as = fdiv nsz double %2, %3
  %i.at = fmul nsz double %i.as, %i.aq
  store double %i.at, ptr %i.a, align 16, !tbaa !79
  %i.au = uitofp i8 %i.u to double
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.au, ptr %i.av, align 8, !tbaa !79
  %i.aw = uitofp i8 %i.y to double
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.aw, ptr %i.ax, align 16, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store <2 x double> splat (double +qnan), ptr %i.ay, align 16, !tbaa !79
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x double> splat (double +qnan), ptr %i.ba, align 16, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  store double +qnan, ptr %i.bc, align 16, !tbaa !79
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.i
  %.098 = phi i32 [ 0, %bb.c ], [ %i.da, %bb.i ]  ; 2 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !81
  %i.bp = sitofp nsz i32 %i.bo to double
  store double %i.bp, ptr %i.bd, align 8, !tbaa !79
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !82 ; 2 uses
  %i.br = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.bq, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %i.d) #9 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  %i.bt = icmp eq i32 %.098, 5                    ; 5 uses
  %or.cond = and i1 %i.bt, %i.bs
  br i1 %or.cond, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = load double, ptr %i.b, align 8, !tbaa !79 ; 2 uses
  store double %i.bu, ptr %i.ay, align 16, !tbaa !79
  %i.bv = fptosi double %i.bu to i32
  store i32 %i.bv, ptr %i.bf, align 8, !tbaa !41
  %i.bw = load i32, ptr %i.af, align 4, !tbaa !83
  %i.bx = sitofp nsz i32 %i.bw to double
  store double %i.bx, ptr %i.bd, align 8, !tbaa !79
  %i.by = load ptr, ptr %i.bg, align 8, !tbaa !84 ; 2 uses
  %i.bz = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.by, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %i.d) #9 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  %or.cond3 = and i1 %i.bt, %i.ca
  br i1 %or.cond3, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = load double, ptr %i.b, align 8, !tbaa !79 ; 2 uses
  store double %i.cb, ptr %i.az, align 8, !tbaa !79
  %i.cc = fptosi double %i.cb to i32
  store i32 %i.cc, ptr %i.bh, align 4, !tbaa !42
  %i.cd = load i32, ptr %i.ah, align 8, !tbaa !81
  %i.ce = load i32, ptr %i.bf, align 8, !tbaa !41
  %i.cf = sub nsw i32 %i.cd, %i.ce
  %i.cg = sitofp nsz i32 %i.cf to double
  store double %i.cg, ptr %i.bd, align 8, !tbaa !79
  %i.ch = load ptr, ptr %i.bi, align 8, !tbaa !85 ; 2 uses
  %i.ci = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.ch, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %i.d) #9 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  %or.cond5 = and i1 %i.bt, %i.cj
  br i1 %or.cond5, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = load double, ptr %i.b, align 8, !tbaa !79 ; 2 uses
  store double %i.ck, ptr %i.bb, align 8, !tbaa !79
  %i.cl = fptosi double %i.ck to i32
  store i32 %i.cl, ptr %i.bj, align 8, !tbaa !43
  %i.cm = load i32, ptr %i.af, align 4, !tbaa !83
  %i.cn = load i32, ptr %i.bh, align 4, !tbaa !42
  %i.co = sub nsw i32 %i.cm, %i.cn
  %i.cp = sitofp nsz i32 %i.co to double
  store double %i.cp, ptr %i.bd, align 8, !tbaa !79
  %i.cq = load ptr, ptr %i.bk, align 8, !tbaa !86 ; 2 uses
  %i.cr = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.cq, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %i.d) #9 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  %or.cond7 = and i1 %i.bt, %i.cs
  br i1 %or.cond7, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = load double, ptr %i.b, align 8, !tbaa !79 ; 2 uses
  store double %i.ct, ptr %i.ba, align 16, !tbaa !79
  %i.cu = fptosi double %i.ct to i32
  store i32 %i.cu, ptr %i.bl, align 4, !tbaa !48
  store double f0x41DFFFFFFFC00000, ptr %i.bd, align 8, !tbaa !79
  %i.cv = load ptr, ptr %i.bm, align 8, !tbaa !87 ; 2 uses
  %i.cw = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.b, ptr noundef %i.cv, ptr noundef nonnull @var_names, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %i.d) #9 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  %or.cond9 = and i1 %i.bt, %i.cx
  br i1 %or.cond9, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = load double, ptr %i.b, align 8, !tbaa !79 ; 2 uses
  store double %i.cy, ptr %i.bc, align 16, !tbaa !79
  %i.cz = fptosi double %i.cy to i32
  store i32 %i.cz, ptr %i.bn, align 8, !tbaa !27
  %i.da = add nuw nsw i32 %.098, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, 6
  br i1 %exitcond.not, label %bb.j, label %bb.d, !llvm.loop !72

bb.j:                                             ; preds = %bb.i
  %i.db = load i32, ptr %i.bj, align 8, !tbaa !43 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load i32, ptr %i.ah, align 8, !tbaa !81
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.de = phi i32 [ %i.dd, %bb.k ], [ %i.db, %bb.j ] ; 3 uses
  store i32 %i.de, ptr %i.bj, align 8, !tbaa !43
  %i.df = load i32, ptr %i.bl, align 4, !tbaa !48 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = load i32, ptr %i.af, align 4, !tbaa !83
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.di = phi i32 [ %i.dh, %bb.m ], [ %i.df, %bb.l ] ; 3 uses
  store i32 %i.di, ptr %i.bl, align 4, !tbaa !48
  %i.dj = icmp slt i32 %i.de, 0
  %i.dk = icmp slt i32 %i.di, 0
  %or.cond97 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond97, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 16, ptr noundef nonnull @.str.9) #9
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.dl = load i32, ptr %i.bf, align 8, !tbaa !41
  %i.dm = load i32, ptr %i.bh, align 4, !tbaa !42
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !23
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 49
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !23
  %i.ds = zext i8 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 50
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !23
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 51
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !23
  %i.dy = zext i8 %i.dx to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 40, ptr noundef nonnull @.str.10, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dp, i32 noundef %i.ds, i32 noundef %i.dv, i32 noundef %i.dy) #9
  br label %bb.r

bb.q:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.085 = phi ptr [ %i.bq, %bb.d ], [ %i.by, %bb.e ], [ %i.ch, %bb.f ], [ %i.cq, %bb.g ], [ %i.cv, %bb.h ]
  %.084 = phi i32 [ %i.br, %bb.d ], [ %i.bz, %bb.e ], [ %i.ci, %bb.f ], [ %i.cr, %bb.g ], [ %i.cw, %bb.h ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 16, ptr noundef nonnull @.str.11, ptr noundef %.085) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.086 = phi i32 [ %.084, %bb.q ], [ -22, %bb.o ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.086
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_get_side_data(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @pixel_belongs_to_box(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %i.c = sub nsw i32 %2, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 4 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48
  %i.i = xor i32 %2, -1
  %i.j = add i32 %i.b, %i.i
  %i.k = add i32 %i.j, %i.h
  %i.l = icmp slt i32 %i.k, %i.e
  br i1 %i.l, label %bb.e, label %bb.c

end_hunk_0
