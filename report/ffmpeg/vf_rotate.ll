Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_rotate?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@filter_slice:bb.a
  call void @llvm.assume(i1 %lcmp.mod698)
  %i.abw = mul nuw nsw i64 %indvars.iv332.epil.init, 3
  %i.abx = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.abw ; 3 uses
  %i.aby = mul nsw i64 %indvars.iv332.epil.init, %i.te
  %i.abz = getelementptr inbounds i8, ptr %i.rk, i64 %i.aby ; 3 uses
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !60
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 1
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !60
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abz, i64 2
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !60
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abx, i64 2
  store i8 %i.ace, ptr %i.acf, align 1, !tbaa !60
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abx, i64 1
  store i8 %i.acc, ptr %i.acg, align 1, !tbaa !60
  store i8 %i.aca, ptr %i.abx, align 1, !tbaa !60
  br label %simple_rotate.exit213

simple_rotate.exit213:                            ; preds = %bb.aq, %.lr.ph282.prol.loopexit, %.lr.ph282, %.lr.ph284.epil.preheader, %simple_rotate.exit213.loopexit692.unr-lcssa, %.lr.ph286.prol.loopexit, %.lr.ph286, %.lr.ph288.prol.loopexit, %.lr.ph288, %copy_elem.exit, %.lr.ph292.prol.loopexit, %.lr.ph292, %.lr.ph294.epil.preheader, %simple_rotate.exit213.loopexit685.unr-lcssa, %.lr.ph296.prol.loopexit, %.lr.ph296, %.lr.ph298.prol.loopexit, %.lr.ph298, %copy_elem.exit243, %.lr.ph302.prol.loopexit, %.lr.ph302, %.lr.ph304.epil.preheader, %simple_rotate.exit213.loopexit679.unr-lcssa, %.lr.ph306.prol.loopexit, %.lr.ph306, %.lr.ph308.prol.loopexit, %.lr.ph308, %copy_elem.exit244, %middle.block668, %middle.block648, %middle.block615, %vec.epilog.middle.block628, %middle.block598, %middle.block560, %vec.epilog.middle.block574, %middle.block520, %vec.epilog.middle.block534, %middle.block496, %middle.block474, %middle.block, %vec.epilog.middle.block, %simple_rotate.exit213.sink.split, %.preheader276, %.preheader274, %.preheader272, %.preheader270, %.preheader268, %.preheader266, %.preheader264, %.preheader262, %.preheader260, %.preheader258, %.preheader256, %.preheader254, %.preheader252, %.preheader250, %.preheader248, %.preheader
  %i.ach = add nsw i32 %.0195311, %i.m
  %i.aci = add nsw i32 %.0194312, %i.k
  %i.acj = add i32 %.0192313, 1                   ; 2 uses
  %exitcond402.not = icmp eq i32 %i.acj, %i.r
  br i1 %exitcond402.not, label %._crit_edge, label %bb.b, !llvm.loop !131

._crit_edge:                                      ; preds = %simple_rotate.exit213, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal i32 @config_props(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !159    ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 24 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !161
  %i.j = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.i) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 2 uses
  %i.l = tail call i32 @ff_draw_init_from_link(ptr noundef nonnull %i.k, ptr noundef %i.g, i32 noundef 0) #12 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @ff_draw_color(ptr noundef nonnull %i.k, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !163
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.r, ptr %i.s, align 4, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !164
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.v, ptr %i.w, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !166
  %i.z = icmp eq i32 %i.y, 8
  %spec.select = select i1 %i.z, ptr @interpolate_bilinear8, ptr @interpolate_bilinear16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  store ptr %spec.select, ptr %i.aa, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 4 uses
  %i.ad = load <2 x i32>, ptr %i.ab, align 8, !tbaa !54
  %i.ae = sitofp <2 x i32> %i.ad to <2 x double>
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x double> %i.af, ptr %i.ac, align 8, !tbaa !41
  %i.ag = shl nuw i32 1, %i.r
  %i.ah = sitofp nsz i32 %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store double %i.ah, ptr %i.ai, align 8, !tbaa !41
  %i.aj = shl nuw i32 1, %i.v
  %i.ak = sitofp nsz i32 %i.aj to double
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store double %i.ak, ptr %i.al, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store <2 x double> splat (double +qnan), ptr %i.am, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  store <2 x double> splat (double +qnan), ptr %i.ao, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  store <2 x double> splat (double +qnan), ptr %i.aq, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  tail call void @av_expr_free(ptr noundef %i.as) #12
  store ptr null, ptr %i.ar, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !167
  %i.av = tail call i32 @av_expr_parse(ptr noundef nonnull %i.ar, ptr noundef %i.au, ptr noundef nonnull @var_names, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !167
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %i.ax) #12
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !168
  %i.ba = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.az, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.bb = load double, ptr %i.a, align 8, !tbaa !41 ; 3 uses
  store double %i.bb, ptr %i.an, align 8, !tbaa !41
  store double %i.bb, ptr %i.ao, align 8, !tbaa !41
  %i.bc = fadd nsz double %i.bb, 5.000000e-01
  %i.bd = fptosi double %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !170 ; 2 uses
  %i.bh = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bg, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  %.pre84 = load double, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.bj = fcmp uno double %.pre84, 0.000000e+00
  %or.cond87 = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond = call i1 @llvm.is.fpclass.f64(double %.pre84, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %i.bg, double noundef %.pre84) #12
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  store double %.pre84, ptr %i.ap, align 8, !tbaa !41
  store double %.pre84, ptr %i.aq, align 8, !tbaa !41
  %i.bk = fadd nsz double %.pre84, 5.000000e-01
  %i.bl = fptosi double %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !171
  %i.bn = load ptr, ptr %i.ay, align 8, !tbaa !168 ; 2 uses
  %i.bo = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bn, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  %.pre = load double, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.bq = fcmp uno double %.pre, 0.000000e+00
  %or.cond88 = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond88, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %or.cond3 = call i1 @llvm.is.fpclass.f64(double %.pre, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef %i.bn, double noundef %.pre) #12
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store double %.pre, ptr %i.an, align 8, !tbaa !41
  store double %.pre, ptr %i.ao, align 8, !tbaa !41
  %i.br = fadd nsz double %.pre, 5.000000e-01
  %i.bs = fptosi double %i.br to i32
  store i32 %i.bs, ptr %i.be, align 4, !tbaa !169
  %i.bt = load i32, ptr %i.h, align 4, !tbaa !161
  %i.bu = call i32 @av_pix_fmt_count_planes(i32 noundef %i.bt) #12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load <2 x i32>, ptr %i.bm, align 8, !tbaa !54
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.by, ptr %i.bw, align 8, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.j ], [ %i.av, %bb.c ], [ %i.bh, %bb.f ], [ %i.bo, %bb.i ], [ %i.l, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare i32 @ff_draw_init_from_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_draw_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @interpolate_bilinear8(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = and i32 %4, 65535                        ; 5 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.e = ashr i32 %5, 16                          ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %7)
  %.0.i = select i1 %i.f, i32 0, i32 %..i         ; 2 uses
  %i.g = add nsw i32 %.0.i, 1
  %i.h = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %7)
  %i.i = ashr i32 %4, 16                          ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  %..i56 = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %6)
  %.0.i57 = select i1 %i.j, i32 0, i32 %..i56     ; 2 uses
  %i.k = add nsw i32 %.0.i57, 1
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %6)
  %i.m = and i32 %5, 65535                        ; 2 uses
  %i.n = mul nsw i32 %.0.i57, %3
  %i.o = mul nsw i32 %.0.i, %2
  %i.p = mul nsw i32 %i.l, %3
  %i.q = mul nsw i32 %i.h, %2
  %i.r = sub nuw nsw i32 65536, %i.c              ; 4 uses
  %i.s = sub nuw nsw i32 65536, %i.m
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  %i.u = zext nneg i32 %i.m to i64                ; 3 uses
  %i.v = sext i32 %i.n to i64                     ; 4 uses
  %i.w = sext i32 %i.o to i64                     ; 4 uses
  %i.x = sext i32 %i.q to i64                     ; 4 uses
  %i.y = sext i32 %i.p to i64                     ; 5 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 6 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %invariant.gep60 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %invariant.gep62 = getelementptr i8, ptr %1, i64 %i.x ; 3 uses
  %invariant.gep64 = getelementptr i8, ptr %1, i64 %i.x ; 3 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = add i64 %i.b, %i.x
  %i.aa = add i64 %i.z, %i.y
  %i.ab = sub i64 %i.aa, %i.a
  %diff.check = icmp ugt i64 %i.ab, -16
  %i.ac = add i64 %i.b, %i.v                      ; 2 uses
  %i.ad = add i64 %i.ac, %i.x
  %i.ae = sub i64 %i.ad, %i.a
  %diff.check66 = icmp ugt i64 %i.ae, -16
  %conflict.rdx = or i1 %diff.check, %diff.check66
  %i.af = add i64 %i.b, %i.w
  %i.ag = add i64 %i.af, %i.y
  %i.ah = sub i64 %i.ag, %i.a
  %diff.check67 = icmp ugt i64 %i.ah, -16
  %conflict.rdx68 = or i1 %conflict.rdx, %diff.check67
  %i.ai = add i64 %i.ac, %i.w
  %i.aj = sub i64 %i.ai, %i.a
  %diff.check69 = icmp ugt i64 %i.aj, -16
  %conflict.rdx70 = or i1 %conflict.rdx68, %diff.check69
  br i1 %conflict.rdx70, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i32 %3, 16
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert72 = insertelement <16 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat73 = shufflevector <16 x i64> %broadcast.splatinsert72, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <16 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat75 = shufflevector <16 x i64> %broadcast.splatinsert74, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert76 = insertelement <16 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat77 = shufflevector <16 x i32> %broadcast.splatinsert76, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.al = add nsw i64 %index, %i.v                ; 2 uses
  %i.am = getelementptr i8, ptr %invariant.gep, i64 %i.al
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !60
  %i.an = zext <16 x i8> %wide.load to <16 x i32>
  %i.ao = add nsw i64 %index, %i.y                ; 2 uses
  %i.ap = getelementptr i8, ptr %invariant.gep60, i64 %i.ao
  %wide.load78 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !60
  %i.aq = zext <16 x i8> %wide.load78 to <16 x i32>
  %i.ar = getelementptr i8, ptr %invariant.gep62, i64 %i.al
  %wide.load79 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !60
  %i.as = zext <16 x i8> %wide.load79 to <16 x i32>
  %i.at = getelementptr i8, ptr %invariant.gep64, i64 %i.ao
  %wide.load80 = load <16 x i8>, ptr %i.at, align 1, !tbaa !60
  %i.au = zext <16 x i8> %wide.load80 to <16 x i32>
  %i.av = mul nuw nsw <16 x i32> %broadcast.splat, %i.an
  %i.aw = mul nuw nsw <16 x i32> %broadcast.splat77, %i.aq
  %i.ax = add nuw nsw <16 x i32> %i.aw, %i.av
  %i.ay = mul nuw nsw <16 x i32> %broadcast.splat, %i.as
  %i.az = mul nuw nsw <16 x i32> %broadcast.splat77, %i.au
  %i.ba = add nuw nsw <16 x i32> %i.az, %i.ay
  %i.bb = zext nneg <16 x i32> %i.ax to <16 x i64>
  %i.bc = mul nuw nsw <16 x i64> %broadcast.splat73, %i.bb
  %i.bd = zext nneg <16 x i32> %i.ba to <16 x i64>
  %i.be = mul nuw nsw <16 x i64> %broadcast.splat75, %i.bd
  %i.bf = add nuw nsw <16 x i64> %i.be, %i.bc
  %i.bg = lshr <16 x i64> %i.bf, splat (i64 32)
  %i.bh = trunc <16 x i64> %i.bg to <16 x i8>
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.bh, ptr %i.bi, align 1, !tbaa !60
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert82 = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat83 = shufflevector <4 x i32> %broadcast.splatinsert82, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert84 = insertelement <4 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat85 = shufflevector <4 x i64> %broadcast.splatinsert84, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <4 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat87 = shufflevector <4 x i64> %broadcast.splatinsert86, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat89 = shufflevector <4 x i32> %broadcast.splatinsert88, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 4 uses
  %i.bk = add nsw i64 %index90, %i.v              ; 2 uses
  %i.bl = getelementptr i8, ptr %invariant.gep, i64 %i.bk
  %wide.load91 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !60
  %i.bm = zext <4 x i8> %wide.load91 to <4 x i32>
  %i.bn = add nsw i64 %index90, %i.y              ; 2 uses
  %i.bo = getelementptr i8, ptr %invariant.gep60, i64 %i.bn
  %wide.load92 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !60
  %i.bp = zext <4 x i8> %wide.load92 to <4 x i32>
  %i.bq = getelementptr i8, ptr %invariant.gep62, i64 %i.bk
  %wide.load93 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !60
  %i.br = zext <4 x i8> %wide.load93 to <4 x i32>
  %i.bs = getelementptr i8, ptr %invariant.gep64, i64 %i.bn
  %wide.load94 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !60
  %i.bt = zext <4 x i8> %wide.load94 to <4 x i32>
  %i.bu = mul nuw nsw <4 x i32> %broadcast.splat83, %i.bm
  %i.bv = mul nuw nsw <4 x i32> %broadcast.splat89, %i.bp
  %i.bw = add nuw nsw <4 x i32> %i.bv, %i.bu
  %i.bx = mul nuw nsw <4 x i32> %broadcast.splat83, %i.br
  %i.by = mul nuw nsw <4 x i32> %broadcast.splat89, %i.bt
  %i.bz = add nuw nsw <4 x i32> %i.by, %i.bx
  %i.ca = zext nneg <4 x i32> %i.bw to <4 x i64>
  %i.cb = mul nuw nsw <4 x i64> %broadcast.splat85, %i.ca
  %i.cc = zext nneg <4 x i32> %i.bz to <4 x i64>
  %i.cd = mul nuw nsw <4 x i64> %broadcast.splat87, %i.cc
  %i.ce = add nuw nsw <4 x i64> %i.cd, %i.cb
  %i.cf = lshr <4 x i64> %i.ce, splat (i64 32)
  %i.cg = trunc <4 x i64> %i.cf to <4 x i8>
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %index90
  store <4 x i8> %i.cg, ptr %i.ch, align 1, !tbaa !60
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.ci = icmp eq i64 %index.next95, %n.vec81
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !173

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %n.vec81, %wide.trip.count
  br i1 %cmp.n96, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec81, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.cj = add nsw i64 %indvars.iv, %i.v           ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.cj
  %i.ck = load i8, ptr %gep, align 1, !tbaa !60
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i64 %indvars.iv, %i.y           ; 2 uses
  %gep61 = getelementptr i8, ptr %invariant.gep60, i64 %i.cm
  %i.cn = load i8, ptr %gep61, align 1, !tbaa !60
  %i.co = zext i8 %i.cn to i32
  %gep63 = getelementptr i8, ptr %invariant.gep62, i64 %i.cj
  %i.cp = load i8, ptr %gep63, align 1, !tbaa !60
  %i.cq = zext i8 %i.cp to i32
  %gep65 = getelementptr i8, ptr %invariant.gep64, i64 %i.cm
  %i.cr = load i8, ptr %gep65, align 1, !tbaa !60
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.r, %i.cl
  %i.cu = mul nuw nsw i32 %i.c, %i.co
  %i.cv = add nuw nsw i32 %i.cu, %i.ct
  %i.cw = mul nuw nsw i32 %i.r, %i.cq
  %i.cx = mul nuw nsw i32 %i.c, %i.cs
  %i.cy = add nuw nsw i32 %i.cx, %i.cw
  %i.cz = zext nneg i32 %i.cv to i64
  %i.da = mul nuw nsw i64 %i.cz, %i.t
  %i.db = zext nneg i32 %i.cy to i64
  %i.dc = mul nuw nsw i64 %i.db, %i.u
  %i.dd = add nuw nsw i64 %i.dc, %i.da
  %i.de = lshr i64 %i.dd, 32
  %i.df = trunc i64 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @interpolate_bilinear16(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #6 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ashr i32 %5, 16                          ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %7)
  %.0.i = select i1 %i.c, i32 0, i32 %..i         ; 2 uses
  %i.d = add nsw i32 %.0.i, 1
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %7)
  %i.f = ashr i32 %4, 16                          ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  %..i56 = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %6)
  %.0.i57 = select i1 %i.g, i32 0, i32 %..i56     ; 2 uses
  %i.h = add nsw i32 %.0.i57, 1
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %6)
  %i.j = and i32 %5, 65535
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = and i32 %4, 65535
  %i.m = zext nneg i32 %i.l to i64                ; 3 uses
  %i.n = mul nsw i32 %.0.i57, %3
  %i.o = mul nsw i32 %.0.i, %2
  %i.p = mul nsw i32 %i.i, %3
  %i.q = mul nsw i32 %i.e, %2
  %i.r = sub nuw nsw i64 65536, %i.m              ; 2 uses
  %i.s = sub nuw nsw i64 65536, %i.k              ; 2 uses
  %factor.op.mul = mul nuw nsw i64 %i.r, %i.s
  %factor.op.mul59 = mul nuw nsw i64 %i.s, %i.m
  %factor.op.mul61 = mul nuw nsw i64 %i.r, %i.k
  %factor.op.mul63 = mul nuw nsw i64 %i.m, %i.k
  %i.t = sext i32 %i.n to i64
  %i.u = sext i32 %i.o to i64                     ; 2 uses
  %i.v = sext i32 %i.q to i64                     ; 2 uses
  %i.w = sext i32 %i.p to i64
  %i.x = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.u
  %invariant.gep66 = getelementptr i8, ptr %1, i64 %i.u
  %invariant.gep68 = getelementptr i8, ptr %1, i64 %i.v
end_hunk_0
