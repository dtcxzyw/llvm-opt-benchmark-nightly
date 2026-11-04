Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/darkroom?download=true
inline.NumInlined: 177
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mouse_moved:bb.a
  %i.cj = icmp ne i32 %.1, 0
  %or.cond3 = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond3, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !57
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2892
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !213
  %.not116 = icmp eq i32 %i.cm, 0
  br i1 %.not116, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cn = call i32 @dt_iop_color_picker_is_visible(ptr noundef nonnull %i.i) #16
  %.not117 = icmp eq i32 %i.cn, 0
  br i1 %.not117, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !57
  %i.cp = call i32 @dt_dev_modulegroups_test_activated(ptr noundef %i.co) #16
  %.not118 = icmp eq i32 %i.cp, 0
  br i1 %.not118, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load float, ptr %i.a, align 4, !tbaa !148 ; 2 uses
  %i.cr = fcmp reassoc nsz arcp contract afn oeq float %i.cq, f0x7F7FFFFF
  br i1 %i.cr, label %bb.r, label %_get_zoom_pos.exit124

bb.r:                                             ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 2680
  %i.ct = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.cu = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.cs, float noundef %i.ct, float noundef %i.cu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %.pre133 = load float, ptr %i.a, align 4, !tbaa !148
  br label %_get_zoom_pos.exit124

_get_zoom_pos.exit124:                            ; preds = %bb.q, %bb.r
  %i.cv = phi float [ %i.cq, %bb.q ], [ %.pre133, %bb.r ]
  %i.cw = load ptr, ptr %i.ce, align 8, !tbaa !187 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 240
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !381
  %i.cz = load float, ptr %i.b, align 4, !tbaa !148
  %i.da = load float, ptr %i.c, align 4, !tbaa !148
  %i.db = call i32 %i.cy(ptr noundef %i.cw, float noundef %i.cv, float noundef %i.cz, double noundef %3, i32 noundef %4, float noundef %i.da) #16
  br label %bb.s

bb.s:                                             ; preds = %_get_zoom_pos.exit124, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.2 = phi i32 [ %.1, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ %i.db, %_get_zoom_pos.exit124 ], [ 0, %bb.p ], [ %.1, %bb.l ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 624
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !214
  %.not119 = icmp eq i32 %i.dd, 0
  br i1 %.not119, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 628
  %i.df = load i32, ptr %i.de, align 4, !tbaa !198
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %.not121 = icmp eq i32 %.2, 0
  br i1 %.not121, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 2680
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 640
  %i.dj = load double, ptr %i.di, align 8, !tbaa !382
  %i.dk = fsub reassoc nsz arcp contract afn double %1, %i.dj
  %i.dl = fptrunc reassoc nsz arcp contract afn double %i.dk to float
  %i.dm = getelementptr inbounds nuw i8, ptr %i.n, i64 648
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !383
  %i.do = fsub reassoc nsz arcp contract afn double %2, %i.dn
  %i.dp = fptrunc reassoc nsz arcp contract afn double %i.do to float
  call void @dt_dev_zoom_move(ptr noundef nonnull %i.dh, i32 noundef 5, float noundef -1.000000e+00, i32 noundef 0, float noundef %i.dl, float noundef %i.dp, i32 noundef 1) #16
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 2696
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !222
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %i.dr to double
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 2700
  %i.du = load <2 x i32>, ptr %i.dt, align 4, !tbaa !86
  %i.dv = sitofp reassoc nsz arcp contract afn <2 x i32> %i.du to <2 x double> ; 2 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 1 ; 4 uses
  %i.dx = fsub reassoc nsz arcp contract afn double %1, %i.dw ; 2 uses
  %i.dy = fcmp reassoc nsz arcp contract afn ogt double %i.dx, 0.000000e+00
  %i.dz = select reassoc nsz arcp contract afn i1 %i.dy, double 0.000000e+00, double %i.dx ; 2 uses
  %i.ea = fadd reassoc nsz arcp contract afn double %i.dw, %i.ds
  %i.eb = fsub reassoc nsz arcp contract afn double %1, %i.ea ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn olt double %i.eb, 0.000000e+00
  %i.ed = fadd reassoc nsz arcp contract afn double %i.dz, %i.eb
  %spec.select122 = select i1 %i.ec, double %i.dz, double %i.ed
  %i.ee = fptrunc reassoc nsz arcp contract afn double %spec.select122 to float ; 2 uses
  %i.ef = fsub reassoc nsz arcp contract afn double %2, %i.dw ; 2 uses
  %i.eg = fcmp reassoc nsz arcp contract afn ogt double %i.ef, 0.000000e+00
  %i.eh = select reassoc nsz arcp contract afn i1 %i.eg, double 0.000000e+00, double %i.ef ; 2 uses
  %i.ei = extractelement <2 x double> %i.dv, i64 0
  %i.ej = fadd reassoc nsz arcp contract afn double %i.dw, %i.ei
  %i.ek = fsub reassoc nsz arcp contract afn double %2, %i.ej ; 2 uses
  %i.el = fcmp reassoc nsz arcp contract afn olt double %i.ek, 0.000000e+00
  %i.em = fadd reassoc nsz arcp contract afn double %i.eh, %i.ek
  %i.en = select i1 %i.el, double %i.eh, double %i.em
  %i.eo = fptrunc reassoc nsz arcp contract afn double %i.en to float ; 2 uses
  %i.ep = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ee)
  %i.eq = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.eo)
  %i.er = fadd reassoc nsz arcp contract afn float %i.ep, %i.eq
  %i.es = fcmp reassoc nsz arcp contract afn ogt float %i.er, 5.000000e-01
  br i1 %i.es, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 2680
  call void @dt_dev_zoom_move(ptr noundef nonnull %i.et, i32 noundef 5, float noundef 1.000000e+00, i32 noundef 0, float noundef %i.ee, float noundef %i.eo, i32 noundef 1) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %i.n, i64 640
  store double %1, ptr %i.eu, align 8, !tbaa !382
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 648
  store double %2, ptr %i.ev, align 8, !tbaa !383
  br label %bb.ae

bb.z:                                             ; preds = %bb.t, %bb.s
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !190 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 624
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !214
  %i.ez = icmp eq i32 %i.ey, 0
  %i.fa = icmp ne i32 %.2, 0
  %or.cond5 = select i1 %i.ez, i1 true, i1 %i.fa
  br i1 %or.cond5, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 628
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !198
  %i.fd = icmp eq i32 %i.fc, 3
  br i1 %i.fd, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 2264 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !189 ; 2 uses
  %.not120 = icmp eq ptr %i.ff, null
  br i1 %.not120, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fg = load float, ptr %i.a, align 4, !tbaa !148 ; 2 uses
  %i.fh = fcmp reassoc nsz arcp contract afn oeq float %i.fg, f0x7F7FFFFF
  br i1 %i.fh, label %bb.ad, label %_get_zoom_pos.exit125

bb.ad:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 2680
  %i.fj = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.fk = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.fi, float noundef %i.fj, float noundef %i.fk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %.pre134 = load ptr, ptr %i.fe, align 8, !tbaa !189
  %.pre135 = load float, ptr %i.a, align 4, !tbaa !148
  br label %_get_zoom_pos.exit125

_get_zoom_pos.exit125:                            ; preds = %bb.ac, %bb.ad
  %i.fl = phi float [ %i.fg, %bb.ac ], [ %.pre135, %bb.ad ]
  %i.fm = phi ptr [ %i.ff, %bb.ac ], [ %.pre134, %bb.ad ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 240
  %i.fo = load ptr, ptr %i.fn, align 16, !tbaa !381
  %i.fp = load float, ptr %i.b, align 4, !tbaa !148
  %i.fq = load float, ptr %i.c, align 4, !tbaa !148
  %i.fr = call i32 %i.fo(ptr noundef %i.fm, float noundef %i.fl, float noundef %i.fp, double noundef %3, i32 noundef %4, float noundef %i.fq) #16 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.z, %bb.aa, %bb.ab, %_get_zoom_pos.exit125, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @dt_control_get_mouse_over_id() local_unnamed_addr #4

declare void @dt_color_picker_transform_box(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_color_picker_backtransform_box(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_control_queue_redraw_center() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_preview_pipe_zoom_correction(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 5 uses
  %i.b = alloca [2 x float], align 8              ; 5 uses
  store float 0.000000e+00, ptr %2, align 4, !tbaa !148
  store float 0.000000e+00, ptr %1, align 4, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !122 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 4 uses
  %.not54 = icmp eq ptr %i.f, null
  br i1 %.not54, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load <2 x i32>, ptr %i.g, align 16, !tbaa !86
  %.fr = freeze <2 x i32> %i.h                    ; 2 uses
  %3 = uitofp nneg <2 x i32> %.fr to <2 x float>
  %4 = icmp slt <2 x i32> %.fr, splat (i32 1)
  %5 = bitcast <2 x i1> %4 to i2
  %or.cond.not = icmp eq i2 %5, 0
  br i1 %or.cond.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 156
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.k = load <2 x i32>, ptr %i.i, align 4, !tbaa !86 ; 2 uses
  %i.l = load <2 x i32>, ptr %i.j, align 4, !tbaa !86 ; 2 uses
  %i.m = shufflevector <2 x i32> %i.k, <2 x i32> %i.l, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr.a = freeze <4 x i32> %i.m
  %i.n = icmp slt <4 x i32> %.fr.a, splat (i32 1)
  %i.o = bitcast <4 x i1> %i.n to i4
  %.not60 = icmp eq i4 %i.o, 0
  br i1 %.not60, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = uitofp nneg <2 x i32> %i.l to <2 x float>
  %i.q = uitofp nneg <2 x i32> %i.k to <2 x float>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !148
  store <2 x float> %i.s, ptr %i.a, align 8, !tbaa !148
  %i.t = call i32 @dt_dev_distort_transform_plus(ptr noundef nonnull %0, ptr noundef nonnull %i.f, double noundef 0.000000e+00, i32 noundef 5, ptr noundef nonnull %i.a, i64 noundef 1) #16 ; 0 uses
  %i.u = load ptr, ptr %i.c, align 16, !tbaa !122 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.w = load <2 x i32>, ptr %i.v, align 16, !tbaa !86
  %i.x = sitofp reassoc nsz arcp contract afn <2 x i32> %i.w to <2 x float>
  %i.y = load <2 x float>, ptr %i.r, align 4, !tbaa !148
  %i.z = fmul reassoc nsz arcp contract afn <2 x float> %i.y, %i.x
  %i.aa = fdiv reassoc nsz arcp contract afn <2 x float> %i.z, %3
  store <2 x float> %i.aa, ptr %i.b, align 8, !tbaa !148
  %i.ab = load <2 x float>, ptr %i.a, align 8, !tbaa !148
  %i.ac = fdiv reassoc nsz arcp contract afn <2 x float> %i.ab, %i.p
  %i.ad = call i32 @dt_dev_distort_transform_plus(ptr noundef nonnull %0, ptr noundef %i.u, double noundef 0.000000e+00, i32 noundef 5, ptr noundef nonnull %i.b, i64 noundef 1) #16 ; 0 uses
  %i.ae = load <2 x float>, ptr %i.b, align 8, !tbaa !148
  %i.af = fdiv reassoc nsz arcp contract afn <2 x float> %i.ae, %i.q
  %i.ag = fsub reassoc nsz arcp contract afn <2 x float> %i.af, %i.ac ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  store float %i.ah, ptr %1, align 4, !tbaa !148
  %i.ai = extractelement <2 x float> %i.ag, i64 1
  store float %i.ai, ptr %2, align 4, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %bb.b
  ret void
}

declare i32 @dt_masks_events_mouse_moved(ptr noundef, float noundef, float noundef, double noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nounwind uwtable
define range(i32 1, 0) i32 @button_released(ptr nofree noundef readnone captures(none) %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 11 uses
  %i.b = alloca float, align 4                    ; 8 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !57 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2892
  %i.h = load i32, ptr %i.g, align 4, !tbaa !213
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp eq i32 %3, 1                        ; 4 uses
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.194) #16
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i32 @dt_iop_color_picker_is_visible(ptr noundef nonnull %i.f) #16
  %i.l = icmp ne i32 %i.k, 0
  %or.cond3 = and i1 %i.j, %i.l
  br i1 %or.cond3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !172
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !182
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !207
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !122
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 348
  store i32 0, ptr %i.u, align 4, !tbaa !163
  tail call void @dt_control_queue_redraw_center() #16
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.194) #16
  br label %bb.s

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store float f0x7F7FFFFF, ptr %i.a, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.v = icmp eq i32 %3, 3
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 2264 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !189
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.h, label %_get_zoom_pos.exit

_get_zoom_pos.exit:                               ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 2680
  %i.z = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.aa = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.y, float noundef %i.z, float noundef %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !189 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !384
  %i.ae = load float, ptr %i.a, align 4, !tbaa !148
  %i.af = load float, ptr %i.b, align 4, !tbaa !148
  %i.ag = load float, ptr %i.c, align 4, !tbaa !148
  %i.ah = call i32 %i.ad(ptr noundef %i.ab, float noundef %i.ae, float noundef %i.af, i32 noundef 3, i32 noundef %4, float noundef %i.ag) #16 ; 2 uses
  %.not46 = icmp eq i32 %i.ah, 0
  br i1 %.not46, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_get_zoom_pos.exit, %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 2160
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !188
  %.not47 = icmp eq ptr %i.aj, null
  br i1 %.not47, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load float, ptr %i.a, align 4, !tbaa !148
  %i.al = fcmp reassoc nsz arcp contract afn oeq float %i.ak, f0x7F7FFFFF
  br i1 %i.al, label %bb.j, label %_get_zoom_pos.exit54

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 2680
  %i.an = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.ao = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.am, float noundef %i.an, float noundef %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  br label %_get_zoom_pos.exit54

_get_zoom_pos.exit54:                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call fastcc void @_preview_pipe_zoom_correction(ptr noundef nonnull %i.f, ptr noundef %i.d, ptr noundef %i.e)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !187
  %i.ar = load float, ptr %i.a, align 4, !tbaa !148
  %i.as = load float, ptr %i.d, align 4, !tbaa !148
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.ar
  %i.au = load float, ptr %i.b, align 4, !tbaa !148
  %i.av = load float, ptr %i.e, align 4, !tbaa !148
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.au
  %i.ax = load float, ptr %i.c, align 4, !tbaa !148
  %i.ay = call i32 @dt_masks_events_button_released(ptr noundef %i.aq, float noundef %i.at, float noundef %i.aw, i32 noundef %3, i32 noundef %4, float noundef %i.ax) #16 ; 2 uses
  %.not48 = icmp eq i32 %i.ay, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br i1 %.not48, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_get_zoom_pos.exit54, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !187 ; 2 uses
  %.not49 = icmp eq ptr %i.ba, null
  br i1 %.not49, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 248
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !384
  %.not50 = icmp eq ptr %i.bc, null
  br i1 %.not50, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !57
  %i.be = call i32 @dt_dev_modulegroups_test_activated(ptr noundef %i.bd) #16
  %.not51 = icmp eq i32 %i.be, 0
  br i1 %.not51, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load float, ptr %i.a, align 4, !tbaa !148 ; 2 uses
  %i.bg = fcmp reassoc nsz arcp contract afn oeq float %i.bf, f0x7F7FFFFF
  br i1 %i.bg, label %bb.o, label %_get_zoom_pos.exit55

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 2680
  %i.bi = fptrunc reassoc nsz arcp contract afn double %1 to float
  %i.bj = fptrunc reassoc nsz arcp contract afn double %2 to float
  call void @dt_dev_get_pointer_zoom_pos(ptr noundef nonnull %i.bh, float noundef %i.bi, float noundef %i.bj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #16
  %.pre = load float, ptr %i.a, align 4, !tbaa !148
  br label %_get_zoom_pos.exit55

_get_zoom_pos.exit55:                             ; preds = %bb.n, %bb.o
  %i.bk = phi float [ %i.bf, %bb.n ], [ %.pre, %bb.o ]
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !187 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 248
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !384
  %i.bo = load float, ptr %i.b, align 4, !tbaa !148
end_hunk_0
