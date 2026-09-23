Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_rotate?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@filter_slice:bb.a
bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.zj = load ptr, ptr %i.az, align 8, !tbaa !136
  %i.zk = load i32, ptr %i.bb, align 4, !tbaa !54
  %i.zl = mul nsw i32 %i.zk, %.0192313
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds i8, ptr %i.zj, i64 %i.zm
  %i.zo = load i32, ptr %i.bd, align 4, !tbaa !54 ; 4 uses
  %i.zp = mul nsw i32 %i.zo, %.0193278
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds i8, ptr %i.zn, i64 %i.zq ; 7 uses
  %i.zs = load i32, ptr %i.be, align 8, !tbaa !158
  %.not201 = icmp eq i32 %i.zs, 0
  br i1 %.not201, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.zt = load ptr, ptr %i.bf, align 8, !tbaa !62
  %i.zu = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.zv = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.zw = call ptr %i.zt(ptr noundef nonnull %i.a, ptr noundef %i.zu, i32 noundef %i.zv, i32 noundef %i.zo, i32 noundef %.0191279, i32 noundef %.0190280, i32 noundef %i.am, i32 noundef %i.ap) #12
  %.pre = load i32, ptr %i.bd, align 4, !tbaa !54
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.zx = icmp eq i32 %i.ze, -1
  %..i214 = call i32 @llvm.smin.i32(i32 %i.ze, i32 %i.am)
  %.0.i215 = select i1 %i.zx, i32 0, i32 %..i214
  %i.zy = icmp slt i32 %i.zf, 0
  %..i = call i32 @llvm.smin.i32(i32 %i.zf, i32 %i.ap)
  %.0.i = select i1 %i.zy, i32 0, i32 %..i
  %i.zz = load ptr, ptr %i.bg, align 8, !tbaa !136
  %i.aaa = load i32, ptr %i.bi, align 4, !tbaa !54
  %i.aab = mul nsw i32 %i.aaa, %.0.i
  %i.aac = sext i32 %i.aab to i64
  %i.aad = getelementptr inbounds i8, ptr %i.zz, i64 %i.aac
  %i.aae = mul nsw i32 %i.zo, %.0.i215
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr inbounds i8, ptr %i.aad, i64 %i.aaf
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.aah = phi i32 [ %.pre, %bb.ah ], [ %i.zo, %bb.ai ] ; 2 uses
  %.0 = phi ptr [ %i.zw, %bb.ah ], [ %i.aag, %bb.ai ] ; 7 uses
  switch i32 %i.aah, label %bb.ao [
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.aai = load i8, ptr %.0, align 1, !tbaa !60
  store i8 %i.aai, ptr %i.zr, align 1, !tbaa !60
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.aaj = load i16, ptr %.0, align 1, !tbaa !60
  store i16 %i.aaj, ptr %i.zr, align 1, !tbaa !60
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj
  %i.aak = load i8, ptr %.0, align 1, !tbaa !60
  %i.aal = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !60
  %i.aan = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !60
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zr, i64 2
  store i8 %i.aao, ptr %i.aap, align 1, !tbaa !60
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zr, i64 1
  store i8 %i.aam, ptr %i.aaq, align 1, !tbaa !60
  store i8 %i.aak, ptr %i.zr, align 1, !tbaa !60
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  %i.aar = load i32, ptr %.0, align 4, !tbaa !54
  store i32 %i.aar, ptr %i.zr, align 4, !tbaa !54
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.aas = sext i32 %i.aah to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zr, ptr align 1 %.0, i64 %i.aas, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.af, %.lr.ph
  %i.aat = add nsw i32 %.0191279, %i.k
  %i.aau = sub nsw i32 %.0190280, %i.m
  %i.aav = add nuw nsw i32 %.0193278, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.aav, %i.c
  br i1 %exitcond.not, label %simple_rotate.exit213, label %.lr.ph, !llvm.loop !130

simple_rotate.exit213.sink.split:                 ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi i64 [ %i.dd, %bb.g ], [ %i.bk, %bb.f ], [ %i.bm, %bb.e ], [ %i.bo, %bb.d ], [ %i.bp, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.da, i64 %.sink, i1 false)
  br label %simple_rotate.exit213

simple_rotate.exit213.loopexit679.unr-lcssa:      ; preds = %.lr.ph304
  br i1 %lcmp.mod723.not, label %simple_rotate.exit213, label %.lr.ph304.epil.preheader

.lr.ph304.epil.preheader:                         ; preds = %simple_rotate.exit213.loopexit679.unr-lcssa, %.lr.ph304.preheader
  %indvars.iv382.epil.init = phi i64 [ 0, %.lr.ph304.preheader ], [ %indvars.iv.next383.1, %simple_rotate.exit213.loopexit679.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod724)
  %i.aaw = mul nuw nsw i64 %indvars.iv382.epil.init, 3
  %i.aax = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.aaw ; 3 uses
  %i.aay = xor i64 %indvars.iv382.epil.init, -1
  %i.aaz = add nsw i64 %i.bp, %i.aay
  %i.aba = mul nsw i64 %i.aaz, %i.et
  %i.abb = getelementptr inbounds i8, ptr %i.dq, i64 %i.aba ; 3 uses
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !60
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !60
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abb, i64 2
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !60
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aax, i64 2
  store i8 %i.abg, ptr %i.abh, align 1, !tbaa !60
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aax, i64 1
  store i8 %i.abe, ptr %i.abi, align 1, !tbaa !60
  store i8 %i.abc, ptr %i.aax, align 1, !tbaa !60
  br label %simple_rotate.exit213

simple_rotate.exit213.loopexit685.unr-lcssa:      ; preds = %.lr.ph294
  br i1 %lcmp.mod709.not, label %simple_rotate.exit213, label %.lr.ph294.epil.preheader

.lr.ph294.epil.preheader:                         ; preds = %simple_rotate.exit213.loopexit685.unr-lcssa, %.lr.ph294.preheader
  %indvars.iv357.epil.init = phi i64 [ 0, %.lr.ph294.preheader ], [ %indvars.iv.next358.1, %simple_rotate.exit213.loopexit685.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod710)
  %i.abj = mul nuw nsw i64 %indvars.iv357.epil.init, 3
  %i.abk = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.abj ; 3 uses
  %i.abl = xor i64 %indvars.iv357.epil.init, -1
  %i.abm = add nsw i64 %i.bp, %i.abl
  %i.abn = mul nsw i64 %i.abm, 3
  %i.abo = getelementptr inbounds i8, ptr %i.kw, i64 %i.abn ; 3 uses
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !60
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abo, i64 1
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !60
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abo, i64 2
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !60
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abk, i64 2
  store i8 %i.abt, ptr %i.abu, align 1, !tbaa !60
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abk, i64 1
  store i8 %i.abr, ptr %i.abv, align 1, !tbaa !60
  store i8 %i.abp, ptr %i.abk, align 1, !tbaa !60
  br label %simple_rotate.exit213

simple_rotate.exit213.loopexit692.unr-lcssa:      ; preds = %.lr.ph284
  br i1 %lcmp.mod697.not, label %simple_rotate.exit213, label %.lr.ph284.epil.preheader

.lr.ph284.epil.preheader:                         ; preds = %simple_rotate.exit213.loopexit692.unr-lcssa, %.lr.ph284.preheader
  %indvars.iv332.epil.init = phi i64 [ 0, %.lr.ph284.preheader ], [ %indvars.iv.next333.1, %simple_rotate.exit213.loopexit692.unr-lcssa ] ; 2 uses
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 26 uses
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
  store i32 %i.r, ptr %i.s, align 4, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !164
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.v, ptr %i.w, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !166
  %i.z = icmp eq i32 %i.y, 8
  %spec.select = select i1 %i.z, ptr @interpolate_bilinear8, ptr @interpolate_bilinear16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  store ptr %spec.select, ptr %i.aa, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.ad = load <2 x i32>, ptr %i.ab, align 8, !tbaa !54
  %i.ae = sitofp <2 x i32> %i.ad to <2 x double>  ; 3 uses
  %3 = extractelement <2 x double> %i.ae, i64 0
  store double %3, ptr %i.ac, align 8, !tbaa !41
  %4 = extractelement <2 x double> %i.ae, i64 1
  store double %4, ptr %2, align 8, !tbaa !41
  store <2 x double> %i.ae, ptr %1, align 8, !tbaa !41
  %i.af = shl nuw i32 1, %i.r
  %i.ag = sitofp nsz i32 %i.af to double
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store double %i.ag, ptr %i.ah, align 8, !tbaa !41
  %i.ai = shl nuw i32 1, %i.v
  %i.aj = sitofp nsz i32 %i.ai to double
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store double %i.aj, ptr %i.ak, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store <2 x double> splat (double +qnan), ptr %i.al, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  store <2 x double> splat (double +qnan), ptr %i.an, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  store <2 x double> splat (double +qnan), ptr %i.ap, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  tail call void @av_expr_free(ptr noundef %i.ar) #12
  store ptr null, ptr %i.aq, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !167
  %i.au = tail call i32 @av_expr_parse(ptr noundef nonnull %i.aq, ptr noundef %i.at, ptr noundef nonnull @var_names, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !167
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %i.aw) #12
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !168
  %i.az = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.ay, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.ba = load double, ptr %i.a, align 8, !tbaa !41 ; 3 uses
  store double %i.ba, ptr %i.am, align 8, !tbaa !41
  store double %i.ba, ptr %i.an, align 8, !tbaa !41
  %i.bb = fadd nsz double %i.ba, 5.000000e-01
  %i.bc = fptosi double %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !169
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !170 ; 2 uses
  %i.bg = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bf, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  %.pre84 = load double, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.bi = fcmp uno double %.pre84, 0.000000e+00
  %or.cond87 = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond = call i1 @llvm.is.fpclass.f64(double %.pre84, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %i.bf, double noundef %.pre84) #12
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  store double %.pre84, ptr %i.ao, align 8, !tbaa !41
  store double %.pre84, ptr %i.ap, align 8, !tbaa !41
  %i.bj = fadd nsz double %.pre84, 5.000000e-01
  %i.bk = fptosi double %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !171
  %i.bm = load ptr, ptr %i.ax, align 8, !tbaa !168 ; 2 uses
  %i.bn = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.a, ptr noundef %i.bm, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ac, ptr noundef nonnull @func1_names, ptr noundef nonnull @func1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  %.pre = load double, ptr %i.a, align 8, !tbaa !41 ; 6 uses
  %i.bp = fcmp uno double %.pre, 0.000000e+00
  %or.cond88 = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond88, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %or.cond3 = call i1 @llvm.is.fpclass.f64(double %.pre, /* (inf zero nsub nnorm) */ i32 636)
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef %i.bm, double noundef %.pre) #12
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store double %.pre, ptr %i.am, align 8, !tbaa !41
  store double %.pre, ptr %i.an, align 8, !tbaa !41
  %i.bq = fadd nsz double %.pre, 5.000000e-01
  %i.br = fptosi double %i.bq to i32
  store i32 %i.br, ptr %i.bd, align 4, !tbaa !169
  %i.bs = load i32, ptr %i.h, align 4, !tbaa !161
  %i.bt = call i32 @av_pix_fmt_count_planes(i32 noundef %i.bs) #12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bw = load <2 x i32>, ptr %i.bl, align 8, !tbaa !54
  %i.bx = shufflevector <2 x i32> %i.bw, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bx, ptr %i.bv, align 8, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.j ], [ %i.au, %bb.c ], [ %i.bg, %bb.f ], [ %i.bn, %bb.i ], [ %i.l, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

declare i32 @ff_draw_init_from_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_draw_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @interpolate_bilinear8(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 4 uses
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
  %i.v = sext i32 %i.n to i64                     ; 5 uses
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
  %i.z = add i64 %i.a, %i.y
  %i.aa = add i64 %i.z, %i.x
  %i.ab = sub i64 %i.aa, %i.b
  %diff.check = icmp ugt i64 %i.ab, -16
  %i.ac = add i64 %i.a, %i.v
  %i.ad = add i64 %i.ac, %i.x
  %i.ae = sub i64 %i.ad, %i.b
  %diff.check66 = icmp ugt i64 %i.ae, -16
  %conflict.rdx = or i1 %diff.check, %diff.check66
  %i.af = add i64 %i.a, %i.w
  %i.ag = add i64 %i.af, %i.y
  %i.ah = sub i64 %i.ag, %i.b
  %diff.check67 = icmp ugt i64 %i.ah, -16
  %conflict.rdx68 = or i1 %conflict.rdx, %diff.check67
  %i.ai = add i64 %i.a, %i.v
  %i.aj = add i64 %i.ai, %i.w
  %i.ak = sub i64 %i.aj, %i.b
  %diff.check69 = icmp ugt i64 %i.ak, -16
  %conflict.rdx70 = or i1 %conflict.rdx68, %diff.check69
  br i1 %conflict.rdx70, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i32 %3, 16
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %wide.trip.count, 12
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
  %i.am = add nsw i64 %index, %i.v                ; 2 uses
  %i.an = getelementptr i8, ptr %invariant.gep, i64 %i.am
  %wide.load = load <16 x i8>, ptr %i.an, align 1, !tbaa !60
  %i.ao = zext <16 x i8> %wide.load to <16 x i32>
  %i.ap = add nsw i64 %index, %i.y                ; 2 uses
  %i.aq = getelementptr i8, ptr %invariant.gep60, i64 %i.ap
end_hunk_0
