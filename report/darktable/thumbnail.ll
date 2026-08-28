Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbnail?download=true
inline.NumInlined: 149
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_event_image_draw:bb.a
  %i.afe = fmul reassoc nsz arcp contract afn <2 x float> %i.aeq, splat (float 2.000000e+00)
  %i.aff = fsub reassoc nsz arcp contract afn <2 x float> %i.afe, %i.aet
  %i.afg = fpext <2 x float> %i.aff to <2 x double> ; 2 uses
  %i.afh = extractelement <2 x double> %i.afg, i64 0
  %i.afi = extractelement <2 x double> %i.afg, i64 1
  call void @cairo_curve_to(ptr noundef %i.xk, double noundef %i.aex, double noundef %i.afd, double noundef %i.aex, double noundef %i.afd, double noundef %i.afh, double noundef %i.afi) #22
  %i.afj = load float, ptr %i.ada, align 4, !tbaa !200
  %i.afk = load float, ptr %i.acx, align 4, !tbaa !200 ; 2 uses
  %i.afl = fadd reassoc nsz arcp contract afn float %i.afk, %i.afj
  %i.afm = load float, ptr %i.adb, align 4, !tbaa !200
  %i.afn = fsub reassoc nsz arcp contract afn float %i.afl, %i.afm
  %i.afo = fpext reassoc nsz arcp contract afn float %i.afn to double ; 2 uses
  %i.afp = load float, ptr %i.adc, align 4, !tbaa !200
  %i.afq = load float, ptr %i.acz, align 4, !tbaa !200 ; 2 uses
  %i.afr = fadd reassoc nsz arcp contract afn float %i.afq, %i.afp
  %i.afs = load float, ptr %i.add, align 4, !tbaa !200
  %i.aft = fsub reassoc nsz arcp contract afn float %i.afr, %i.afs
  %i.afu = fpext reassoc nsz arcp contract afn float %i.aft to double ; 2 uses
  %i.afv = fpext reassoc nsz arcp contract afn float %i.afk to double
  %i.afw = fpext reassoc nsz arcp contract afn float %i.afq to double
  call void @cairo_curve_to(ptr noundef %i.xk, double noundef %i.afo, double noundef %i.afu, double noundef %i.afo, double noundef %i.afu, double noundef %i.afv, double noundef %i.afw) #22
  call void @cairo_save(ptr noundef %i.xk) #22
  call void @cairo_scale(ptr noundef %i.xk, double noundef %i.acg, double noundef %i.acg) #22
  call void @cairo_set_line_width(ptr noundef %i.xk, double noundef 2.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.xk) #22
  call void @cairo_restore(ptr noundef %i.xk) #22
  br i1 %i.acq, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @cairo_set_source_rgb(ptr noundef %i.xk, double noundef %i.acv, double noundef f0x3FB99999A0000000, double noundef f0x3FB99999A0000000) #22
  br label %.critedge.i.loopexit

bb.dp:                                            ; preds = %bb.dn
  call void @cairo_set_source_rgb(ptr noundef %i.xk, double noundef f0x3FB99999A0000000, double noundef f0x3FB99999A0000000, double noundef %i.acv) #22
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %bb.do, %bb.dp
  %i.afx = load double, ptr %i.c, align 8, !tbaa !211
  call void @cairo_set_dash(ptr noundef %i.xk, ptr noundef nonnull %i.c, i32 noundef 1, double noundef %i.afx) #22
  %i.afy = load float, ptr %i.acx, align 4, !tbaa !200
  %i.afz = fpext reassoc nsz arcp contract afn float %i.afy to double
  %i.aga = load float, ptr %i.acz, align 4, !tbaa !200
  %i.agb = fpext reassoc nsz arcp contract afn float %i.aga to double
  call void @cairo_move_to(ptr noundef %i.xk, double noundef %i.afz, double noundef %i.agb) #22
  %i.agc = load float, ptr %i.ada, align 4, !tbaa !200
  %i.agd = load float, ptr %i.acx, align 4, !tbaa !200
  %i.age = fsub reassoc nsz arcp contract afn float %i.agd, %i.agc
  %i.agf = load float, ptr %i.adb, align 4, !tbaa !200 ; 2 uses
  %i.agg = fadd reassoc nsz arcp contract afn float %i.age, %i.agf
  %i.agh = fpext reassoc nsz arcp contract afn float %i.agg to double ; 2 uses
  %i.agi = load float, ptr %i.adc, align 4, !tbaa !200
  %i.agj = load float, ptr %i.acz, align 4, !tbaa !200
  %i.agk = fsub reassoc nsz arcp contract afn float %i.agj, %i.agi
  %i.agl = load float, ptr %i.add, align 4, !tbaa !200 ; 2 uses
  %i.agm = fadd reassoc nsz arcp contract afn float %i.agk, %i.agl
  %i.agn = fpext reassoc nsz arcp contract afn float %i.agm to double ; 2 uses
  %i.ago = fpext reassoc nsz arcp contract afn float %i.agf to double
  %i.agp = fpext reassoc nsz arcp contract afn float %i.agl to double
  call void @cairo_curve_to(ptr noundef %i.xk, double noundef %i.agh, double noundef %i.agn, double noundef %i.agh, double noundef %i.agn, double noundef %i.ago, double noundef %i.agp) #22
  %i.agq = load float, ptr %i.ada, align 4, !tbaa !200 ; 2 uses
  %i.agr = load float, ptr %i.acx, align 4, !tbaa !200 ; 2 uses
  %i.ags = fsub reassoc nsz arcp contract afn float %i.agq, %i.agr
  %i.agt = load float, ptr %i.adb, align 4, !tbaa !200
  %i.agu = fadd reassoc nsz arcp contract afn float %i.ags, %i.agt
  %i.agv = fpext reassoc nsz arcp contract afn float %i.agu to double ; 2 uses
  %i.agw = load float, ptr %i.adc, align 4, !tbaa !200 ; 2 uses
  %i.agx = load float, ptr %i.acz, align 4, !tbaa !200 ; 2 uses
  %i.agy = fsub reassoc nsz arcp contract afn float %i.agw, %i.agx
  %i.agz = load float, ptr %i.add, align 4, !tbaa !200
  %i.aha = fadd reassoc nsz arcp contract afn float %i.agy, %i.agz
  %i.ahb = fpext reassoc nsz arcp contract afn float %i.aha to double ; 2 uses
  %i.ahc = fmul reassoc nsz arcp contract afn float %i.agq, 2.000000e+00
  %i.ahd = fsub reassoc nsz arcp contract afn float %i.ahc, %i.agr
  %i.ahe = fpext reassoc nsz arcp contract afn float %i.ahd to double
  %i.ahf = fmul reassoc nsz arcp contract afn float %i.agw, 2.000000e+00
  %i.ahg = fsub reassoc nsz arcp contract afn float %i.ahf, %i.agx
  %i.ahh = fpext reassoc nsz arcp contract afn float %i.ahg to double
  call void @cairo_curve_to(ptr noundef %i.xk, double noundef %i.agv, double noundef %i.ahb, double noundef %i.agv, double noundef %i.ahb, double noundef %i.ahe, double noundef %i.ahh) #22
  %i.ahi = load float, ptr %i.acx, align 4, !tbaa !200
  %i.ahj = load float, ptr %i.acz, align 4, !tbaa !200
  %i.ahk = load <2 x float>, ptr %i.ada, align 4, !tbaa !200 ; 3 uses
  %i.ahl = extractelement <2 x float> %i.ahk, i64 0
  %i.ahm = fmul reassoc nsz arcp contract afn float %i.ahl, 3.000000e+00
  %i.ahn = load <2 x float>, ptr %i.adb, align 4, !tbaa !200 ; 3 uses
  %i.aho = extractelement <2 x float> %i.ahn, i64 0
  %i.ahp = fadd reassoc nsz arcp contract afn float %i.ahi, %i.aho
  %i.ahq = fsub reassoc nsz arcp contract afn float %i.ahm, %i.ahp
  %i.ahr = fpext reassoc nsz arcp contract afn float %i.ahq to double ; 2 uses
  %i.ahs = extractelement <2 x float> %i.ahk, i64 1
  %i.aht = fmul reassoc nsz arcp contract afn float %i.ahs, 3.000000e+00
  %i.ahu = extractelement <2 x float> %i.ahn, i64 1
  %i.ahv = fadd reassoc nsz arcp contract afn float %i.ahj, %i.ahu
  %i.ahw = fsub reassoc nsz arcp contract afn float %i.aht, %i.ahv
  %i.ahx = fpext reassoc nsz arcp contract afn float %i.ahw to double ; 2 uses
  %i.ahy = fmul reassoc nsz arcp contract afn <2 x float> %i.ahk, splat (float 2.000000e+00)
  %i.ahz = fsub reassoc nsz arcp contract afn <2 x float> %i.ahy, %i.ahn
  %i.aia = fpext <2 x float> %i.ahz to <2 x double> ; 2 uses
  %i.aib = extractelement <2 x double> %i.aia, i64 0
  %i.aic = extractelement <2 x double> %i.aia, i64 1
  call void @cairo_curve_to(ptr noundef %i.xk, double noundef %i.ahr, double noundef %i.ahx, double noundef %i.ahr, double noundef %i.ahx, double noundef %i.aib, double noundef %i.aic) #22
  %i.aid = load float, ptr %i.ada, align 4, !tbaa !200
  %i.aie = load float, ptr %i.acx, align 4, !tbaa !200 ; 2 uses
  %i.aif = fadd reassoc nsz arcp contract afn float %i.aie, %i.aid
  %i.aig = load float, ptr %i.adb, align 4, !tbaa !200
  %i.aih = fsub reassoc nsz arcp contract afn float %i.aif, %i.aig
  %i.aii = fpext reassoc nsz arcp contract afn float %i.aih to double ; 2 uses
  %i.aij = load float, ptr %i.adc, align 4, !tbaa !200
  %i.aik = load float, ptr %i.acz, align 4, !tbaa !200 ; 2 uses
  %i.ail = fadd reassoc nsz arcp contract afn float %i.aik, %i.aij
  %i.aim = load float, ptr %i.add, align 4, !tbaa !200
  %i.ain = fsub reassoc nsz arcp contract afn float %i.ail, %i.aim
  %i.aio = fpext reassoc nsz arcp contract afn float %i.ain to double ; 2 uses
  %i.aip = fpext reassoc nsz arcp contract afn float %i.aie to double
  %i.aiq = fpext reassoc nsz arcp contract afn float %i.aik to double
  call void @cairo_curve_to(ptr noundef %i.xk, double noundef %i.aii, double noundef %i.aio, double noundef %i.aii, double noundef %i.aio, double noundef %i.aip, double noundef %i.aiq) #22
  call void @cairo_save(ptr noundef %i.xk) #22
  call void @cairo_scale(ptr noundef %i.xk, double noundef %i.acg, double noundef %i.acg) #22
  call void @cairo_set_line_width(ptr noundef %i.xk, double noundef 2.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.xk) #22
  call void @cairo_restore(ptr noundef %i.xk) #22
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.dm
  %indvars.iv.next303.i = add nuw nsw i64 %indvars.iv302.i, 1 ; 2 uses
  %exitcond305.not.i = icmp eq i64 %indvars.iv.next303.i, 25
  br i1 %exitcond305.not.i, label %bb.dk, label %bb.dl

bb.dq:                                            ; preds = %bb.dk, %vector.body
  call void @cairo_destroy(ptr noundef %i.xk) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge161.sink.split

.critedge161.sink.split:                          ; preds = %bb.bc, %bb.dq
  %i.air = load ptr, ptr %i.i, align 8, !tbaa !196
  call void @free(ptr noundef %i.air) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %.critedge161

.critedge161:                                     ; preds = %.critedge161.sink.split, %.critedge
  %i.ais = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 0, ptr %i.ais, align 4, !tbaa !125
  %i.ait = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i32 0, ptr %i.ait, align 8, !tbaa !193
  call fastcc void @_thumb_update_zoom_label(ptr noundef nonnull %2)
  br label %.critedge162

.critedge162:                                     ; preds = %bb.bb, %bb.ba, %.critedge161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.dr

bb.dr:                                            ; preds = %.critedge162, %bb.r
  %i.aiu = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !97 ; 2 uses
  %.not.i175 = icmp eq ptr %i.aiv, null
  br i1 %.not.i175, label %_thumb_draw_image.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aiw = call ptr @gtk_widget_get_style_context(ptr noundef nonnull %i.aiv) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !173
  %i.aix = load ptr, ptr %i.aiu, align 8, !tbaa !97
  call void @gtk_widget_get_size_request(ptr noundef %i.aix, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.aiy = load ptr, ptr %i.ak, align 8, !tbaa !172 ; 2 uses
  %.not41.i = icmp eq ptr %i.aiy, null
  br i1 %.not41.i, label %bb.dz, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aiz = call i32 @cairo_surface_get_reference_count(ptr noundef nonnull %i.aiy) #22
  %.not42.i = icmp eq i32 %i.aiz, 0
  br i1 %.not42.i, label %bb.dz, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @cairo_save(ptr noundef %1) #22
  %i.aja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !176
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 1448
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !177
  %i.ajd = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ajc
  %i.aje = fptrunc reassoc nsz arcp contract afn double %i.ajd to float
  %i.ajf = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !192 ; 2 uses
  %i.ajh = fcmp reassoc nsz arcp contract afn ogt float %i.ajg, 0.000000e+00
  br i1 %i.ajh, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.aji = getelementptr inbounds nuw i8, ptr %2, i64 388
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !186 ; 2 uses
  %i.ajk = fcmp reassoc nsz arcp contract afn ogt float %i.ajj, 0.000000e+00
  br i1 %i.ajk, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.ajl = fdiv reassoc nsz arcp contract afn float %i.ajj, %i.ajg ; 3 uses
  %i.ajm = fcmp reassoc nsz arcp contract afn ogt float %i.ajl, 2.000000e+01
  br i1 %i.ajm, label %bb.dy, label %7

7:                                                ; preds = %bb.dw
  %8 = fcmp reassoc nsz arcp contract afn olt float %i.ajl, 1.000000e-01
  br i1 %8, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %7
  %i.ajn = fpext reassoc nsz arcp contract afn float %i.ajl to double
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %7, %bb.dw, %bb.dv, %bb.du
  %.0.i = phi double [ 1.000000e+00, %bb.du ], [ 1.000000e+00, %bb.dv ], [ 2.000000e+01, %bb.dw ], [ %i.ajn, %bb.dx ], [ f0x3FB99999A0000000, %7 ] ; 3 uses
  %i.ajo = fpext reassoc nsz arcp contract afn float %i.aje to double ; 2 uses
  call void @cairo_scale(ptr noundef %1, double noundef %i.ajo, double noundef %i.ajo) #22
  call void @cairo_save(ptr noundef %1) #22
  call void @cairo_scale(ptr noundef %1, double noundef %.0.i, double noundef %.0.i) #22
  %i.ajp = load ptr, ptr %i.ak, align 8, !tbaa !172
  %i.ajq = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.ajr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !176
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 1440
  %i.ajt = load double, ptr %i.ajs, align 8, !tbaa !212
  %i.aju = load <2 x double>, ptr %i.ajq, align 8, !tbaa !211
  %i.ajv = insertelement <2 x double> poison, double %i.ajt, i64 0
  %i.ajw = shufflevector <2 x double> %i.ajv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajx = fmul reassoc nsz arcp contract afn <2 x double> %i.aju, %i.ajw
  %i.ajy = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.ajz = shufflevector <2 x double> %i.ajy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aka = fdiv reassoc nsz arcp contract afn <2 x double> %i.ajx, %i.ajz ; 2 uses
  %i.akb = extractelement <2 x double> %i.aka, i64 0
  %i.akc = extractelement <2 x double> %i.aka, i64 1
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ajp, double noundef %i.akb, double noundef %i.akc) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.akd = load ptr, ptr %i.aiu, align 8, !tbaa !97
  %i.ake = call i32 @gtk_widget_get_state_flags(ptr noundef %i.akd) #22
  call void @gtk_style_context_get_color(ptr noundef %i.aiw, i32 noundef %i.ake, ptr noundef nonnull %3) #22
  %i.akf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.akg = load double, ptr %i.akf, align 8, !tbaa !213
  call void @cairo_paint_with_alpha(ptr noundef %1, double noundef %i.akg) #22
  call void @cairo_restore(ptr noundef %1) #22
  %i.akh = load i32, ptr %i.a, align 4, !tbaa !173
  %i.aki = sitofp reassoc nsz arcp contract afn i32 %i.akh to double
  %i.akj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !176
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 1448
  %i.akl = load double, ptr %i.akk, align 8, !tbaa !177 ; 2 uses
  %i.akm = fmul reassoc nsz arcp contract afn double %i.akl, %i.aki
  %i.akn = load i32, ptr %i.b, align 4, !tbaa !173
  %i.ako = sitofp reassoc nsz arcp contract afn i32 %i.akn to double
  %i.akp = fmul reassoc nsz arcp contract afn double %i.akl, %i.ako
  call void @gtk_render_frame(ptr noundef %i.aiw, ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.akm, double noundef %i.akp) #22
  call void @cairo_restore(ptr noundef %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dt, %bb.ds
  %i.akq = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.akr = load i32, ptr %i.akq, align 8, !tbaa !193
  %.not43.i = icmp eq i32 %i.akr, 0
  br i1 %.not43.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aks = load i32, ptr %i.a, align 4, !tbaa !173
  %i.akt = load i32, ptr %i.b, align 4, !tbaa !173
  call void @dt_control_draw_busy_msg(ptr noundef %1, i32 noundef %i.aks, i32 noundef %i.akt) #22
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_thumb_draw_image.exit

_thumb_draw_image.exit:                           ; preds = %bb.eb, %bb.dr, %bb.c, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @_event_image_style_updated(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i16, ptr %i.c, align 2, !tbaa !215
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !217
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.h = load i16, ptr %i.g, align 2, !tbaa !218
  %i.i = load i16, ptr %i.b, align 2, !tbaa !219
  tail call fastcc void @_thumb_retrieve_margins(ptr noundef %1)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !188  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i16, ptr %i.k, align 2, !tbaa !215
  %.not = icmp eq i16 %i.d, %i.l
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !217
  %.not13 = icmp eq i16 %i.f, %i.n
  br i1 %.not13, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.p = load i16, ptr %i.o, align 2, !tbaa !218
  %.not14 = icmp eq i16 %i.h, %i.p
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i16, ptr %i.j, align 2, !tbaa !219
  %.not15 = icmp eq i16 %i.i, %i.q
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call fastcc void @_thumb_resize_overlays(ptr noundef nonnull %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_event_cursor_draw(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct._GdkRGBA, align 8           ; 7 uses
  %i.a = tail call i32 @gtk_widget_get_allocated_width(ptr noundef %0) #22
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to double ; 3 uses
  %i.c = tail call i32 @gtk_widget_get_allocated_height(ptr noundef %0) #22
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to double ; 2 uses
  %i.e = tail call ptr @gtk_widget_get_style_context(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.f = call i32 @gtk_style_context_lookup_color(ptr noundef %i.e, ptr noundef nonnull @.str.62, ptr noundef nonnull %3) #22 ; 0 uses
  %i.g = load double, ptr %3, align 8, !tbaa !220
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !221
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !222
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !213
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.g, double noundef %i.i, double noundef %i.k, double noundef %i.m) #22
  call void @cairo_line_to(ptr noundef %1, double noundef %i.b, double noundef 0.000000e+00) #22
  %i.n = fmul reassoc nnan nsz arcp contract afn double %i.b, 5.000000e-01 ; 2 uses
  call void @cairo_line_to(ptr noundef %1, double noundef %i.n, double noundef %i.d) #22
  call void @cairo_line_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  call void @cairo_close_path(ptr noundef %1) #22
  call void @cairo_fill(ptr noundef %1) #22
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 11) #22
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !176
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1432
  %i.q = load double, ptr %i.p, align 8, !tbaa !223
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.r) #22
  call void @cairo_line_to(ptr noundef %1, double noundef %i.b, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %1, double noundef %i.n, double noundef %i.d) #22
  call void @cairo_line_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  call void @cairo_stroke(ptr noundef %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_event_box_enter_leave(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !169
  %i.b = icmp eq i32 %i.a, 10
  br i1 %i.b, label %bb.b, label %.thread13

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.d = load i32, ptr %i.c, align 8, !tbaa !119
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %2, align 8, !tbaa !87
  tail call void @dt_control_set_mouse_over_id(i32 noundef %i.e) #22
  %.pre = load i32, ptr %1, align 8, !tbaa !169
  %i.f = icmp eq i32 %.pre, 10
  br i1 %i.f, label %.thread, label %.thread13

.thread:                                          ; preds = %bb.b, %bb.c
  tail call void @gtk_widget_set_state_flags(ptr noundef %0, i32 noundef 2, i32 noundef 0) #22
  br label %_set_flag.exit

.thread13:                                        ; preds = %bb.a, %bb.c
  tail call void @gtk_widget_unset_state_flags(ptr noundef %0, i32 noundef 2) #22
  br label %_set_flag.exit

_set_flag.exit:                                   ; preds = %.thread, %.thread13
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96   ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !169
  %.not11 = icmp eq i32 %i.i, 10
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_set_flag.exit
  tail call void @gtk_widget_set_state_flags(ptr noundef %i.h, i32 noundef 2, i32 noundef 0) #22
  br label %_set_flag.exit9

bb.e:                                             ; preds = %_set_flag.exit
  tail call void @gtk_widget_unset_state_flags(ptr noundef %i.h, i32 noundef 2) #22
  br label %_set_flag.exit9

_set_flag.exit9:                                  ; preds = %bb.d, %bb.e
  ret i32 0
}

declare void @gtk_label_set_markup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare void @gtk_label_set_yalign(ptr noundef, float noundef) local_unnamed_addr #1

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #1

end_hunk_0
