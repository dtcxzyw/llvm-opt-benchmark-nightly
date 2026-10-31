Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_temperature?download=true
inline.NumInlined: 105
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@gui_update:bb.a

bb.s:                                             ; preds = %bb.r
  %i.er = call ptr @dt_wb_preset(i32 noundef %.0174.peel307) #21
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !108
  %i.eu = load i32, ptr %i.eb, align 4, !tbaa !15
  %i.ev = call ptr @dt_wb_preset(i32 noundef %i.eu) #21
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !108
  %i.ey = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.et, ptr noundef nonnull dereferenceable(1) %i.ex) #22
  %.not211.peel = icmp eq i32 %i.ey, 0
  br i1 %.not211.peel, label %bb.t, label %.critedge7

bb.t:                                             ; preds = %bb.s
  %i.ez = call ptr @dt_wb_preset(i32 noundef %.0174.in.ph306) #21
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !113
  %i.fc = add nsw i32 %i.fb, 1
  %i.fd = call ptr @dt_wb_preset(i32 noundef %.0174.peel307) #21
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !113
  %i.fg = icmp eq i32 %i.fc, %i.ff
  br i1 %i.fg, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.t, %bb.x
  %.0174.in = phi i32 [ %.0174, %bb.x ], [ %.0174.peel307, %bb.t ] ; 3 uses
  %.0174 = add nsw i32 %.0174.in, 1               ; 7 uses
  %i.fh = call i32 @dt_wb_presets_count() #21
  %i.fi = icmp slt i32 %.0174, %i.fh
  br i1 %i.fi, label %bb.u, label %.critedge7

bb.u:                                             ; preds = %.peel.next
  %i.fj = call ptr @dt_wb_preset(i32 noundef %.0174) #21
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !106
  %i.fl = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 912
  %i.fn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fk, ptr noundef nonnull dereferenceable(1) %i.fm) #22
  %.not209 = icmp eq i32 %i.fn, 0
  br i1 %.not209, label %bb.v, label %.critedge7

bb.v:                                             ; preds = %bb.u
  %i.fo = call ptr @dt_wb_preset(i32 noundef %.0174) #21
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !107
  %i.fr = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 976
  %i.ft = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fq, ptr noundef nonnull dereferenceable(1) %i.fs) #22
  %.not210 = icmp eq i32 %i.ft, 0
  br i1 %.not210, label %bb.w, label %.critedge7

bb.w:                                             ; preds = %bb.v
  %i.fu = call ptr @dt_wb_preset(i32 noundef %.0174) #21
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !108
  %i.fx = load i32, ptr %i.eb, align 4, !tbaa !15
  %i.fy = call ptr @dt_wb_preset(i32 noundef %i.fx) #21
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !108
  %i.gb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fw, ptr noundef nonnull dereferenceable(1) %i.ga) #22
  %.not211 = icmp eq i32 %i.gb, 0
  br i1 %.not211, label %bb.x, label %.critedge7

bb.x:                                             ; preds = %bb.w
  %i.gc = call ptr @dt_wb_preset(i32 noundef %.0174.in) #21
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !113
  %i.gf = add nsw i32 %i.ge, 1
  %i.gg = call ptr @dt_wb_preset(i32 noundef %.0174) #21
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !113
  %i.gj = icmp eq i32 %i.gf, %i.gi
  br i1 %i.gj, label %.peel.next, label %.loopexit, !llvm.loop !210

.loopexit:                                        ; preds = %bb.x, %bb.t
  %.0174.in.lcssa260 = phi i32 [ %.0174.in.ph306, %bb.t ], [ %.0174.in, %bb.x ] ; 2 uses
  %.0174.lcssa259 = phi i32 [ %.0174.peel307, %bb.t ], [ %.0174, %bb.x ] ; 4 uses
  %i.gk = call ptr @dt_wb_preset(i32 noundef %.0174.in.lcssa260) #21
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !113
  %.0253 = add nsw i32 %i.gm, 1                   ; 2 uses
  %i.gn = call ptr @dt_wb_preset(i32 noundef %.0174.lcssa259) #21
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !113
  %i.gq = icmp slt i32 %.0253, %i.gp
  br i1 %i.gq, label %.lr.ph255, label %.critedge9

.lr.ph255:                                        ; preds = %.loopexit, %bb.ab
  %.0254 = phi i32 [ %.0, %bb.ab ], [ %.0253, %.loopexit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  store i32 %.0254, ptr %i.bp, align 8, !tbaa !113
  %i.gr = call ptr @dt_wb_preset(i32 noundef %.0174.in.lcssa260) #21
  %i.gs = call ptr @dt_wb_preset(i32 noundef %.0174.lcssa259) #21
  call void @dt_wb_preset_interpolate(ptr noundef %i.gr, ptr noundef %i.gs, ptr noundef nonnull %1) #21
  %i.gt = call i32 @dt_dev_equal_chroma(ptr noundef nonnull %i.f, ptr noundef nonnull %i.bq) #21
  %.not213 = icmp eq i32 %i.gt, 0
  br i1 %.not213, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph255
  %i.gu = load ptr, ptr %i.at, align 8, !tbaa !102
  call void @dt_bauhaus_combobox_set(ptr noundef %i.gu, i32 noundef %i.ed) #21
  %i.gv = load ptr, ptr %i.at, align 8, !tbaa !102
  %i.gw = call ptr @dt_bauhaus_combobox_get_data(ptr noundef %i.gv) #21 ; 4 uses
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = icmp ugt i32 %i.gy, 4
  br i1 %i.gz, label %bb.z, label %.thread227

bb.z:                                             ; preds = %bb.y
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !110 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !111
  %.not237 = icmp eq i32 %i.hb, %i.hd
  br i1 %.not237, label %.thread227, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.he = call ptr @dt_wb_preset(i32 noundef %i.hb) #21
  %i.hf = load i32, ptr %i.gw, align 4, !tbaa !112
  %i.hg = call ptr @dt_wb_preset(i32 noundef %i.hf) #21
  %i.hh = load i32, ptr %i.hc, align 4, !tbaa !111
  %i.hi = call ptr @dt_wb_preset(i32 noundef %i.hh) #21
  %i.hj = load ptr, ptr %i.av, align 8, !tbaa !103
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !113
  %i.hm = sitofp reassoc nsz arcp contract afn i32 %i.hl to float
  call void @dt_bauhaus_slider_set_hard_min(ptr noundef %i.hj, float noundef %i.hm) #21
  %i.hn = load ptr, ptr %i.av, align 8, !tbaa !103
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !113
  %i.hq = sitofp reassoc nsz arcp contract afn i32 %i.hp to float
  call void @dt_bauhaus_slider_set_hard_max(ptr noundef %i.hn, float noundef %i.hq) #21
  %i.hr = load ptr, ptr %i.av, align 8, !tbaa !103
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !113
  %i.hu = sitofp reassoc nsz arcp contract afn i32 %i.ht to float
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.hr, float noundef %i.hu) #21
  br label %.thread227

.thread227:                                       ; preds = %bb.y, %bb.aa, %bb.z
  %.8189 = phi i32 [ 1, %bb.aa ], [ 0, %bb.z ], [ %.6187.ph305, %bb.y ]
  %i.hv = load ptr, ptr %i.av, align 8, !tbaa !103
  %i.hw = sitofp reassoc nsz arcp contract afn i32 %.0254 to float
  call void @dt_bauhaus_slider_set(ptr noundef %i.hv, float noundef %i.hw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %.critedge9

bb.ab:                                            ; preds = %.lr.ph255
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.0 = add nsw i32 %.0254, 1                     ; 2 uses
  %i.hx = call ptr @dt_wb_preset(i32 noundef %.0174.lcssa259) #21
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !113
  %i.ia = icmp slt i32 %.0, %i.hz
  br i1 %i.ia, label %.lr.ph255, label %.critedge9

.critedge9:                                       ; preds = %bb.ab, %.loopexit, %.thread227
  %.10191 = phi i32 [ %.8189, %.thread227 ], [ %.6187.ph305, %.loopexit ], [ %.6187.ph305, %bb.ab ] ; 2 uses
  %i.ib = phi i1 [ false, %.thread227 ], [ true, %.loopexit ], [ true, %bb.ab ]
  br i1 %i.ib, label %bb.p, label %.critedge219.thread

.critedge7:                                       ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.v, %bb.u, %.peel.next, %bb.w
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270308, 1 ; 2 uses
  %i.ic = load i32, ptr %i.bj, align 8, !tbaa !104
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next271, %i.id
  br i1 %i.ie, label %.lr.ph310, label %.critedge218

.critedge218:                                     ; preds = %.critedge7, %.critedge.preheader
  %.5186256.lcssa = phi i32 [ 0, %.critedge.preheader ], [ %.6187.ph305, %.critedge7 ]
  %i.if = load ptr, ptr %i.at, align 8, !tbaa !102
  call void @dt_bauhaus_combobox_set(ptr noundef %i.if, i32 noundef 2) #21
  %i.ig = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 2, ptr %i.ig, align 4, !tbaa !86
  br label %bb.ac

.critedge219.thread.loopexit258:                  ; preds = %bb.n, %bb.o, %bb.m
  %.2183 = phi i32 [ 1, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ]
  %i.ih = load ptr, ptr %i.av, align 8, !tbaa !103
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !113
  %i.ik = sitofp reassoc nsz arcp contract afn i32 %i.ij to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ih, float noundef %i.ik) #21
  br label %.critedge219.thread

.critedge219.thread:                              ; preds = %.critedge9, %.critedge219.thread.loopexit258, %bb.h, %bb.f, %bb.d
  %.12.ph = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ %.2183, %.critedge219.thread.loopexit258 ], [ %.10191, %.critedge9 ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.im = load float, ptr %i.il, align 8, !tbaa !114
  %i.in = fcmp reassoc nsz arcp contract afn une float %i.im, f0xFF7FFFFF
  br i1 %i.in, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.critedge218, %.critedge219.thread
  %.12235 = phi i32 [ %.12.ph, %.critedge219.thread ], [ %.5186256.lcssa, %.critedge218 ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store float %i.aa, ptr %i.io, align 8, !tbaa !114
  %i.ip = getelementptr inbounds nuw i8, ptr %i.d, i64 388
  store float %i.ad, ptr %i.ip, align 4, !tbaa !115
  %i.iq = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.ir = load <4 x float>, ptr %i.f, align 4, !tbaa !12
  %i.is = fpext <4 x float> %i.ir to <4 x double>
  store <4 x double> %i.is, ptr %i.iq, align 8, !tbaa !116
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.critedge219.thread
  %.12234 = phi i32 [ %.12235, %bb.ac ], [ %.12.ph, %.critedge219.thread ]
  %i.it = load ptr, ptr %i.av, align 8, !tbaa !103
  call void @gtk_widget_set_visible(ptr noundef %i.it, i32 noundef %.12234) #21
  %i.iu = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !117
  %i.iw = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !118
  call void @gtk_widget_set_visible(ptr noundef %i.iv, i32 noundef %i.ix) #21
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !86 ; 3 uses
  %.val220 = load ptr, ptr %i.l, align 8, !tbaa !47
  %.val221 = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.ja = getelementptr inbounds nuw i8, ptr %.val221, i64 16
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !86
  %i.jb = icmp eq i32 %i.iz, 4
  %i.jc = zext i1 %i.jb to i32
  %i.jd = getelementptr inbounds nuw i8, ptr %.val220, i64 2480
  store i32 %i.jc, ptr %i.jd, align 16, !tbaa !67
  %i.je = load ptr, ptr %i.at, align 8, !tbaa !102
  call void @dt_bauhaus_combobox_set(ptr noundef %i.je, i32 noundef %i.iz) #21
  %i.jf = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !119
  %i.jh = load i32, ptr %i.iy, align 4, !tbaa !86
  %i.ji = icmp eq i32 %i.jh, 0
  %i.jj = zext i1 %i.ji to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.jg, i32 noundef %i.jj) #21
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !120
  %i.jm = load i32, ptr %i.iy, align 4, !tbaa !86
  %i.jn = icmp eq i32 %i.jm, 2
  %i.jo = zext i1 %i.jn to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.jl, i32 noundef %i.jo) #21
  %i.jp = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !121
  %i.jr = load i32, ptr %i.iy, align 4, !tbaa !86
  %i.js = icmp eq i32 %i.jr, 3
  %i.jt = zext i1 %i.js to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.jq, i32 noundef %i.jt) #21
  %i.ju = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !122
  %i.jw = load i32, ptr %i.iy, align 4, !tbaa !86
  %i.jx = icmp eq i32 %i.jw, 4
  %i.jy = zext i1 %i.jx to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.jv, i32 noundef %i.jy) #21
  call fastcc void @_color_temptint_sliders(ptr noundef nonnull %0)
  call fastcc void @_color_rgb_sliders(ptr noundef nonnull %0)
  %.val222 = load ptr, ptr %i.c, align 16, !tbaa !87
  call fastcc void @_color_finetuning_slider(ptr %.val222)
  %i.jz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !160
  %i.ka = and i32 %i.jz, 33554432
  %.not216 = icmp eq i32 %i.ka, 0
  br i1 %.not216, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kb = load i32, ptr %i.iy, align 4, !tbaa !86 ; 2 uses
  %i.kc = icmp ult i32 %i.kb, 5
  br i1 %i.kc, label %switch.lookup, label %_preset_to_str.exit

switch.lookup:                                    ; preds = %bb.ae
  %i.kd = zext nneg i32 %i.kb to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.gui_update, i64 %i.kd
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_preset_to_str.exit

_preset_to_str.exit:                              ; preds = %bb.ae, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.67, %bb.ae ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ax, i64 2416
  %i.kf = load double, ptr %i.ke, align 16, !tbaa !116
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ax, i64 2424
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !116
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ax, i64 2432
  %i.kj = load double, ptr %i.ki, align 16, !tbaa !116
  %i.kk = load double, ptr %i.ay, align 16, !tbaa !116
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ax, i64 2456
  %i.km = load double, ptr %i.kl, align 8, !tbaa !116
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ax, i64 2464
  %i.ko = load double, ptr %i.kn, align 16, !tbaa !116
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef nonnull %0, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull %.0.i, double noundef %i.kf, double noundef %i.kh, double noundef %i.kj, double noundef %i.kk, double noundef %i.km, double noundef %i.ko) #21
  br label %bb.af

bb.af:                                            ; preds = %_preset_to_str.exit, %bb.ad
  %i.kp = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  call void @dt_gui_update_collapsible_section(ptr noundef nonnull %i.kp) #21
  %i.kq = load ptr, ptr %i.v, align 8, !tbaa !91
  call void @gtk_widget_queue_draw(ptr noundef %i.kq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af
  ret void
}

declare i32 @dt_is_scene_referred() local_unnamed_addr #5

declare i32 @dt_image_monochrome_flags(ptr noundef) local_unnamed_addr #5

declare i32 @dt_image_is_matrix_correction_supported(ptr noundef) local_unnamed_addr #5

declare void @gtk_stack_set_visible_child_name(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_mul2temp(ptr nofree readonly captures(none) %.704.val, ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.cmsCIEXYZ, align 8          ; 6 uses
  %i.a = load <4 x float>, ptr %0, align 4, !tbaa !12, !noalias !218 ; 5 uses
  %i.b = fpext <4 x float> %i.a to <4 x double>
  %i.c = extractelement <4 x float> %i.a, i64 0
  %i.d = fcmp reassoc nsz arcp contract afn ogt float %i.c, 0.000000e+00
  %i.e = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %i.b ; 4 uses
  %i.f = extractelement <4 x double> %i.e, i64 0
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.d, double %i.f, double 0.000000e+00 ; 3 uses
  %i.g = extractelement <4 x float> %i.a, i64 1
  %i.h = fcmp reassoc nsz arcp contract afn ogt float %i.g, 0.000000e+00
  %i.i = extractelement <4 x double> %i.e, i64 1
  %spec.select.1.i = select reassoc nsz arcp contract afn i1 %i.h, double %i.i, double 0.000000e+00 ; 3 uses
  %i.j = extractelement <4 x float> %i.a, i64 2
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = extractelement <4 x double> %i.e, i64 2
  %spec.select.2.i = select reassoc nsz arcp contract afn i1 %i.k, double %i.l, double 0.000000e+00 ; 3 uses
  %i.m = extractelement <4 x float> %i.a, i64 3
  %i.n = fcmp reassoc nsz arcp contract afn ogt float %i.m, 0.000000e+00
  %i.o = extractelement <4 x double> %i.e, i64 3
  %spec.select.3.i = select reassoc nsz arcp contract afn i1 %i.n, double %i.o, double 0.000000e+00 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.704.val, i64 488
  %i.q = load double, ptr %i.p, align 8, !tbaa !116, !noalias !218
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, %spec.select.i
  %i.s = getelementptr inbounds nuw i8, ptr %.704.val, i64 496
  %i.t = load double, ptr %i.s, align 8, !tbaa !116, !noalias !218
  %i.u = fmul reassoc nsz arcp contract afn double %i.t, %spec.select.1.i
  %i.v = fadd reassoc nsz arcp contract afn double %i.u, %i.r
  %i.w = getelementptr inbounds nuw i8, ptr %.704.val, i64 504
  %i.x = load double, ptr %i.w, align 8, !tbaa !116, !noalias !218
  %i.y = fmul reassoc nsz arcp contract afn double %i.x, %spec.select.2.i
  %i.z = fadd reassoc nsz arcp contract afn double %i.v, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.704.val, i64 512
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !116, !noalias !218
  %i.ac = fmul reassoc nsz arcp contract afn double %i.ab, %spec.select.3.i
  %i.ad = fadd reassoc nsz arcp contract afn double %i.z, %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.704.val, i64 520
  %i.af = load double, ptr %i.ae, align 8, !tbaa !116, !noalias !218
  %i.ag = getelementptr inbounds nuw i8, ptr %.704.val, i64 528
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !116, !noalias !218
  %i.ai = getelementptr inbounds nuw i8, ptr %.704.val, i64 536
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !116, !noalias !218
  %i.ak = getelementptr inbounds nuw i8, ptr %.704.val, i64 544
  %i.al = load double, ptr %i.ak, align 8, !tbaa !116, !noalias !218
  %i.am = getelementptr inbounds nuw i8, ptr %.704.val, i64 552
  %i.an = load double, ptr %i.am, align 8, !tbaa !116, !noalias !218
  %i.ao = fmul reassoc nsz arcp contract afn double %i.an, %spec.select.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.704.val, i64 560
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !116, !noalias !218
  %i.ar = fmul reassoc nsz arcp contract afn double %i.aq, %spec.select.1.i
  %i.as = fadd reassoc nsz arcp contract afn double %i.ar, %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %.704.val, i64 568
  %i.au = load double, ptr %i.at, align 8, !tbaa !116, !noalias !218
  %i.av = fmul reassoc nsz arcp contract afn double %i.au, %spec.select.2.i
  %i.aw = fadd reassoc nsz arcp contract afn double %i.as, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.704.val, i64 576
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !116, !noalias !218
  %i.az = fmul reassoc nsz arcp contract afn double %i.ay, %spec.select.3.i
  %i.ba = fadd reassoc nsz arcp contract afn double %i.aw, %i.az
  store float 1.345050e+04, ptr %1, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = fdiv reassoc nsz arcp contract afn double %i.ba, %i.ad
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.025.i = phi double [ 1.901000e+03, %bb.a ], [ %.025..i, %bb.b ]
  %.02124.i = phi double [ 2.500000e+04, %bb.a ], [ %..02124.i, %bb.b ]
  %storemerge23.i = phi float [ 1.345050e+04, %bb.a ], [ %i.bj, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bc = fpext reassoc nsz arcp contract afn float %storemerge23.i to double
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias writable align 8 %3, double noundef %i.bc)
  %.sroa.0.0.copyload.i = load double, ptr %3, align 8, !tbaa !116 ; 2 uses
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !116
  %.sroa.6.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bd = fdiv reassoc nsz arcp contract afn double %.sroa.6.0.copyload.i, %.sroa.0.0.copyload.i
  %i.be = fcmp reassoc nsz arcp contract afn ogt double %i.bd, %i.bb ; 2 uses
  %i.bf = load float, ptr %1, align 4, !tbaa !12
  %i.bg = fpext reassoc nsz arcp contract afn float %i.bf to double ; 2 uses
  %..02124.i = select nsz i1 %i.be, double %i.bg, double %.02124.i ; 3 uses
  %.025..i = select nsz i1 %i.be, double %.025.i, double %i.bg ; 3 uses
  %i.bh = fadd reassoc nsz arcp contract afn double %.025..i, %..02124.i
  %i.bi = fmul reassoc nsz arcp contract afn double %i.bh, 5.000000e-01
  %i.bj = fptrunc reassoc nsz arcp contract afn double %i.bi to float ; 2 uses
  store float %i.bj, ptr %1, align 4, !tbaa !12
  %i.bk = fsub reassoc nsz arcp contract afn double %..02124.i, %.025..i
  %i.bl = fcmp reassoc nsz arcp contract afn ogt double %i.bk, 1.000000e+00
  br i1 %i.bl, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = fmul reassoc nsz arcp contract afn double %i.af, %spec.select.i
  %i.bn = fmul reassoc nsz arcp contract afn double %i.ah, %spec.select.1.i
  %i.bo = fadd reassoc nsz arcp contract afn double %i.bn, %i.bm
  %i.bp = fmul reassoc nsz arcp contract afn double %i.aj, %spec.select.2.i
  %i.bq = fadd reassoc nsz arcp contract afn double %i.bo, %i.bp
  %i.br = fmul reassoc nsz arcp contract afn double %i.al, %spec.select.3.i
  %i.bs = fadd reassoc nsz arcp contract afn double %i.bq, %i.br
  %i.bt = fmul reassoc nsz arcp contract afn double %.sroa.0.0.copyload.i, %i.bs
  %i.bu = fmul reassoc nsz arcp contract afn double %.sroa.5.0.copyload.i, %i.ad
  %i.bv = fdiv reassoc nsz arcp contract afn double %i.bu, %i.bt
  %i.bw = fptrunc reassoc nsz arcp contract afn double %i.bv to float ; 2 uses
  store float %i.bw, ptr %2, align 4, !tbaa !12
  %i.bx = load float, ptr %1, align 4, !tbaa !12  ; 2 uses
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bx, 1.901000e+03
  br i1 %i.by, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.bx, 2.500000e+04
  br i1 %i.bz, label %.sink.split.i, label %bb.e

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.sink.i = phi float [ 1.901000e+03, %bb.c ], [ 2.500000e+04, %bb.d ]
  store float %.sink.i, ptr %1, align 4, !tbaa !12
  %.pre = load float, ptr %2, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i, %bb.d
  %i.ca = phi float [ %.pre, %.sink.split.i ], [ %i.bw, %bb.d ] ; 2 uses
  %i.cb = fpext reassoc nsz arcp contract afn float %i.ca to double
  %i.cc = fcmp reassoc nsz arcp contract afn olt double %i.cb, 1.350000e-01 ; 2 uses
  %i.cd = select i1 %i.cc, float 1.350000e-01, float %i.ca ; 2 uses
  %i.ce = fpext reassoc nsz arcp contract afn float %i.cd to double
  %i.cf = fcmp reassoc nsz arcp contract afn ogt double %i.ce, 2.326000e+00 ; 2 uses
  %i.cg = or i1 %i.cc, %i.cf
  br i1 %i.cg, label %bb.f, label %_XYZ_to_temperature.exit

bb.f:                                             ; preds = %bb.e
  %simplifycfg.merge.i = select i1 %i.cf, float 2.326000e+00, float %i.cd
  store float %simplifycfg.merge.i, ptr %2, align 4, !tbaa !12
  br label %_XYZ_to_temperature.exit

_XYZ_to_temperature.exit:                         ; preds = %bb.e, %bb.f
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @dt_dev_equal_chroma(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dt_wb_presets_count() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare ptr @dt_wb_preset(i32 noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_combobox_get_data(ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_hard_min(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_hard_max(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_default(ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare void @dt_wb_preset_interpolate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_temptint_sliders(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.cmsCIEXYZ, align 8          ; 6 uses
  %2 = alloca %struct.cmsCIEXYZ, align 8          ; 6 uses
  %3 = alloca %struct.cmsCIEXYZ, align 16         ; 5 uses
  %4 = alloca %struct.cmsCIEXYZ, align 8          ; 6 uses
  %5 = alloca %struct.cmsCIEXYZ, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !87  ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.c) #21
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.e) #21
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 584 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !161
  %.not = icmp eq i32 %i.h, 0
  %i.i = zext i1 %.not to i32
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.f, i32 noundef %i.i) #21
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.k = load i32, ptr %i.g, align 8, !tbaa !161
  %.not84 = icmp eq i32 %i.k, 0
  %i.l = zext i1 %.not84 to i32
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.j, i32 noundef %i.l) #21
  %i.m = load i32, ptr %i.g, align 8, !tbaa !161
  %.not85 = icmp eq i32 %i.m, 0
  br i1 %.not85, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.o = load i32, ptr %i.n, align 4, !tbaa !162
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.q = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.p) #21
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.s = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.r) #21 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2416
  %i.w = load double, ptr %i.v, align 16, !tbaa !116
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2424
  %i.y = load double, ptr %i.x, align 8, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 2432
  %i.aa = load double, ptr %i.z, align 16, !tbaa !116
  %i.ab = fpext reassoc nsz arcp contract afn float %i.q to double ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias writable align 8 %3, double noundef %i.ab)
  %.val.i = load ptr, ptr %i.a, align 16, !tbaa !87 ; 7 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 392
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 408
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !116
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 416
  %i.ag = load double, ptr %i.af, align 8, !tbaa !116
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 424
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !116
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 432
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !116
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 440
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 456
  %i.an = load double, ptr %i.am, align 8, !tbaa !116
  %i.ao = load <2 x double>, ptr %3, align 16     ; 4 uses
  %i.ap = load <2 x double>, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
  %i.aq = load <2 x double>, ptr %i.al, align 8, !tbaa !116 ; 2 uses
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.as = fmul reassoc nsz arcp contract afn <2 x double> %i.ar, %i.ao
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> %i.aq, <2 x i32> <i32 3, i32 0>
  %i.au = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = fmul reassoc nsz arcp contract afn <2 x double> %i.at, %i.au
  %i.aw = fadd reassoc nsz arcp contract afn <2 x double> %i.as, %i.av
  %i.ax = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.ae, i64 1
  %i.az = insertelement <2 x double> poison, double %.sroa.5.0.copyload.i, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul reassoc nsz arcp contract afn <2 x double> %i.ay, %i.ba
  %i.bc = fadd reassoc nsz arcp contract afn <2 x double> %i.aw, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not86 = icmp eq i32 %i.o, 0
  br i1 %.not86, label %.preheader128, label %.preheader134

.preheader134:                                    ; preds = %bb.b
  %i.bd = extractelement <2 x double> %i.ao, i64 1
  %i.be = fmul reassoc nsz arcp contract afn double %i.ai, %i.bd
  %i.bf = extractelement <2 x double> %i.ao, i64 0
  %i.bg = fmul reassoc nsz arcp contract afn double %i.ag, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn double %i.be, %i.bg
  %i.bi = fmul reassoc nsz arcp contract afn double %i.ak, %.sroa.5.0.copyload.i
  %i.bj = fpext reassoc nsz arcp contract afn float %i.s to double
  %i.bk = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.bh, i64 1 ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.y, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bi, i64 1 ; 2 uses
  %i.bn = fdiv reassoc nsz arcp contract afn <2 x double> %i.bk, %i.bm
  %i.bo = fadd reassoc nsz arcp contract afn <2 x double> %i.bk, %i.bm
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = fptrunc <2 x double> %i.bp to <2 x float> ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.bu = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bv = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bj
  br label %bb.c

.preheader128:                                    ; preds = %bb.b
  %i.bw = fpext reassoc nsz arcp contract afn float %i.s to double
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cb = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bw
  br label %bb.d

bb.c:                                             ; preds = %.preheader134, %.loopexit131
  %.079138 = phi i32 [ 0, %.preheader134 ], [ %i.gv, %.loopexit131 ] ; 2 uses
  %i.cc = uitofp nsz nneg i32 %.079138 to double  ; 3 uses
  %i.cd = fmul reassoc nnan nsz arcp contract afn double %i.cc, f0x3FAAF286BCA1AF28
  %i.ce = fptrunc reassoc nsz arcp contract afn double %i.cd to float ; 2 uses
  %i.cf = fmul reassoc nnan nsz arcp contract afn double %i.cc, f0x4092FEF286BCA1AF
  %i.cg = fadd reassoc nsz arcp contract afn double %i.cf, 1.901000e+03
  %i.ch = fmul reassoc nnan nsz arcp contract afn double %i.cc, f0x3FBD8555E8807C2C
  %i.ci = fadd reassoc nsz arcp contract afn double %i.ch, 1.350000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias writable align 8 %2, double noundef %i.cg)
  %.val.i105 = load ptr, ptr %i.a, align 16, !tbaa !87 ; 9 uses
  %.sroa.5.0.copyload.i108 = load double, ptr %.sroa.5.0..sroa_idx.i107, align 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i105, i64 392
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i105, i64 400
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i105, i64 408
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !116
  %i.cn = fmul reassoc nsz arcp contract afn double %i.cm, %.sroa.5.0.copyload.i108
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i105, i64 416
  %i.cp = load double, ptr %i.co, align 8, !tbaa !116
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i105, i64 424
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !116
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i105, i64 432
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !116
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i105, i64 440
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !116
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i105, i64 448
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !116
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i105, i64 456
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !116
  %i.da = fmul reassoc nsz arcp contract afn double %i.cz, %.sroa.5.0.copyload.i108
  %i.db = load double, ptr %i.bq, align 8, !tbaa !164
  %i.dc = fmul reassoc nsz arcp contract afn double %i.db, %i.bv ; 3 uses
  %.sroa.0.0.copyload.i106 = load double, ptr %2, align 8 ; 3 uses
  %i.dd = load double, ptr %i.cj, align 8, !tbaa !116
  %i.de = fmul reassoc nsz arcp contract afn double %i.dd, %.sroa.0.0.copyload.i106
  %i.df = load double, ptr %i.ck, align 8, !tbaa !116
  %i.dg = fmul reassoc nsz arcp contract afn double %i.df, %i.dc
  %i.dh = fadd reassoc nsz arcp contract afn double %i.dg, %i.de
  %i.di = fadd reassoc nsz arcp contract afn double %i.dh, %i.cn
  %i.dj = fmul reassoc nsz arcp contract afn double %i.cp, %.sroa.0.0.copyload.i106
  %i.dk = fmul reassoc nsz arcp contract afn double %i.cr, %i.dc
  %i.dl = fadd reassoc nsz arcp contract afn double %i.dk, %i.dj
  %i.dm = fmul reassoc nsz arcp contract afn double %i.ct, %.sroa.5.0.copyload.i108
  %i.dn = fadd reassoc nsz arcp contract afn double %i.dl, %i.dm
  %i.do = fmul reassoc nsz arcp contract afn double %i.cv, %.sroa.0.0.copyload.i106
  %i.dp = fmul reassoc nsz arcp contract afn double %i.cx, %i.dc
  %i.dq = fadd reassoc nsz arcp contract afn double %i.dp, %i.do
  %i.dr = fadd reassoc nsz arcp contract afn double %i.dq, %i.da
  %i.ds = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.dn ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias writable align 8 %1, double noundef %i.ab)
  %i.dt = load double, ptr %i.br, align 8, !tbaa !164
  %.val.i109 = load ptr, ptr %i.a, align 16, !tbaa !87 ; 7 uses
  %.sroa.0.0.copyload.i110 = load double, ptr %1, align 8 ; 2 uses
  %.sroa.5.0.copyload.i112 = load double, ptr %.sroa.5.0..sroa_idx.i111, align 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i109, i64 392
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i109, i64 408
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !116
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i109, i64 416
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !116
  %i.dz = fmul reassoc nsz arcp contract afn double %i.dy, %.sroa.0.0.copyload.i110
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i109, i64 424
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !116
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i109, i64 432
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !116
  %i.ee = fmul reassoc nsz arcp contract afn double %i.ed, %.sroa.5.0.copyload.i112
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i109, i64 440
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i109, i64 456
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.ei = fmul reassoc nsz arcp contract afn double %i.di, %i.w
  %i.ej = fmul reassoc nsz arcp contract afn double %i.ei, %i.ds
  %i.ek = fmul reassoc nsz arcp contract afn double %i.ds, %i.aa
  %i.el = fmul reassoc nsz arcp contract afn double %i.ek, %i.dr
  %i.em = insertelement <2 x double> poison, double %i.el, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ej, i64 1
  %i.eo = fdiv reassoc nsz arcp contract afn <2 x double> splat (double 1.000000e+00), %i.en
  %i.ep = fptrunc <2 x double> %i.eo to <2 x float> ; 4 uses
  %i.eq = fdiv reassoc nsz arcp contract afn double %i.dt, %i.ci ; 2 uses
  %i.er = load <2 x double>, ptr %i.du, align 8, !tbaa !116 ; 2 uses
  %i.es = fmul reassoc nsz arcp contract afn double %i.eb, %i.eq
  %i.et = fadd reassoc nsz arcp contract afn double %i.es, %i.dz
  %i.eu = fadd reassoc nsz arcp contract afn double %i.et, %i.ee
  %i.ev = load <2 x double>, ptr %i.ef, align 8, !tbaa !116 ; 2 uses
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> %i.er, <2 x i32> <i32 0, i32 2>
  %i.ex = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i110, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul reassoc nsz arcp contract afn <2 x double> %i.ew, %i.ey
  %i.fa = shufflevector <2 x double> %i.ev, <2 x double> %i.er, <2 x i32> <i32 1, i32 3>
  %i.fb = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fmul reassoc nsz arcp contract afn <2 x double> %i.fa, %i.fc
  %i.fe = fadd reassoc nsz arcp contract afn <2 x double> %i.fd, %i.ez
  %i.ff = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.dw, i64 1
  %i.fh = insertelement <2 x double> poison, double %.sroa.5.0.copyload.i112, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul reassoc nsz arcp contract afn <2 x double> %i.fg, %i.fi
  %i.fk = fadd reassoc nsz arcp contract afn <2 x double> %i.fe, %i.fj
  %i.fl = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.eu
  %i.fm = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = fmul reassoc nsz arcp contract afn <2 x double> %i.fk, %i.fn
  %i.fp = fdiv reassoc nsz arcp contract afn <2 x double> %i.bc, %i.fo
  %i.fq = fptrunc <2 x double> %i.fp to <2 x float> ; 4 uses
  %i.fr = extractelement <2 x float> %i.ep, i64 0
  %i.fs = shufflevector <2 x float> %i.ep, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3>
  %i.ft = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fs, <2 x float> %i.bs) ; 2 uses
  %i.fu = extractelement <2 x float> %i.ft, i64 0
  %i.fv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fu, float %i.fr) ; 3 uses
  %i.fw = extractelement <2 x float> %i.fq, i64 0
  %i.fx = extractelement <2 x float> %i.ft, i64 1
  %i.fy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fx, float %i.fw) ; 3 uses
  %i.fz = fcmp reassoc nsz arcp contract afn ogt float %i.fv, 1.000000e+00
  br i1 %i.fz, label %.preheader132, label %.loopexit133

.preheader132:                                    ; preds = %bb.c
  %i.ga = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fdiv reassoc nsz arcp contract afn <2 x float> %i.ep, %i.gb
  %i.gd = fdiv reassoc nsz arcp contract afn float %i.bt, %i.fv
  %i.ge = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gd, float 0.000000e+00)
  %i.gf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gc, <2 x float> zeroinitializer)
  br label %.loopexit133

.loopexit133:                                     ; preds = %.preheader132, %bb.c
  %.sroa.7176.0 = phi nsz float [ %i.ge, %.preheader132 ], [ %i.bt, %bb.c ]
  %i.gg = phi <2 x float> [ %i.gf, %.preheader132 ], [ %i.ep, %bb.c ] ; 2 uses
  %i.gh = fcmp reassoc nsz arcp contract afn ogt float %i.fy, 1.000000e+00
  br i1 %i.gh, label %.preheader130, label %.loopexit131

.preheader130:                                    ; preds = %.loopexit133
  %i.gi = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fdiv reassoc nsz arcp contract afn <2 x float> %i.fq, %i.gj
  %i.gl = fdiv reassoc nsz arcp contract afn float %i.bu, %i.fy
  %i.gm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gl, float 0.000000e+00)
  %i.gn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gk, <2 x float> zeroinitializer)
  br label %.loopexit131

.loopexit131:                                     ; preds = %.preheader130, %.loopexit133
  %.sroa.7.0 = phi nsz float [ %i.gm, %.preheader130 ], [ %i.bu, %.loopexit133 ]
  %i.go = phi <2 x float> [ %i.gn, %.preheader130 ], [ %i.fq, %.loopexit133 ] ; 2 uses
  %i.gp = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.gq = extractelement <2 x float> %i.gg, i64 0
  %i.gr = extractelement <2 x float> %i.gg, i64 1
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.gp, float noundef %i.ce, float noundef %i.gr, float noundef %.sroa.7176.0, float noundef %i.gq) #21
  %i.gs = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.gt = extractelement <2 x float> %i.go, i64 0
  %i.gu = extractelement <2 x float> %i.go, i64 1
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.gs, float noundef %i.ce, float noundef %i.gu, float noundef %.sroa.7.0, float noundef %i.gt) #21
  %i.gv = add nuw nsw i32 %.079138, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gv, 20
  br i1 %exitcond.not, label %.loopexit129, label %bb.c

bb.d:                                             ; preds = %.preheader128, %.loopexit
  %.076141 = phi i32 [ 0, %.preheader128 ], [ %i.jv, %.loopexit ] ; 2 uses
  %i.gw = uitofp nsz nneg i32 %.076141 to double  ; 3 uses
  %i.gx = fmul reassoc nnan nsz arcp contract afn double %i.gw, f0x3FAAF286BCA1AF28
  %i.gy = fptrunc reassoc nsz arcp contract afn double %i.gx to float ; 2 uses
  %i.gz = fmul reassoc nnan nsz arcp contract afn double %i.gw, f0x4092FEF286BCA1AF
  %i.ha = fadd reassoc nsz arcp contract afn double %i.gz, 1.901000e+03
  %i.hb = fmul reassoc nnan nsz arcp contract afn double %i.gw, f0x3FBD8555E8807C2C
  %i.hc = fadd reassoc nsz arcp contract afn double %i.hb, 1.350000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias nonnull writable align 8 %4, double noundef %i.ha)
  %i.hd = load double, ptr %i.bx, align 8, !tbaa !164, !alias.scope !223
  %i.he = fmul reassoc nsz arcp contract afn double %i.hd, %i.cb ; 2 uses
  store double %i.he, ptr %i.bx, align 8, !tbaa !164, !alias.scope !223
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias nonnull writable align 8 %5, double noundef %i.ab)
  %i.hf = load double, ptr %i.by, align 8, !tbaa !164, !alias.scope !224
  %i.hg = fdiv reassoc nsz arcp contract afn double %i.hf, %i.hc ; 2 uses
  store double %i.hg, ptr %i.by, align 8, !tbaa !164, !alias.scope !224
  %i.hh = load double, ptr %4, align 8, !tbaa !165
  %i.hi = load double, ptr %i.bz, align 8, !tbaa !166
  %i.hj = load double, ptr %5, align 8, !tbaa !165
  %i.hk = load double, ptr %i.ca, align 8, !tbaa !166
  %i.hl = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hh, i64 1
  %i.hn = fptrunc <2 x double> %i.hm to <2 x float> ; 4 uses
  %i.ho = fmul reassoc nsz arcp contract afn <2 x float> %i.hn, <float f0x3FF0211F, float 5.564340e-02>
  %i.hp = fmul reassoc nsz arcp contract afn <2 x float> %i.hn, <float f0x3E50EC2A, float f0x3F7821D1>
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hr = fsub reassoc nsz arcp contract afn <2 x float> %i.ho, %i.hq
  %i.hs = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %i.hj, i64 1
  %i.hu = fptrunc <2 x double> %i.ht to <2 x float> ; 4 uses
  %i.hv = shufflevector <2 x float> %i.hn, <2 x float> %i.hu, <2 x i32> <i32 1, i32 3>
  %i.hw = fmul reassoc nsz arcp contract afn <2 x float> %i.hv, splat (float f0x404F639A)
  %i.hx = shufflevector <2 x float> %i.hn, <2 x float> %i.hu, <2 x i32> <i32 0, i32 2>
  %i.hy = fmul reassoc nsz arcp contract afn <2 x float> %i.hx, splat (float f0x3FC4C0F4)
  %i.hz = fsub reassoc nsz arcp contract afn <2 x float> %i.hw, %i.hy
  %i.ia = fmul reassoc nsz arcp contract afn <2 x float> %i.hu, <float f0x3FF0211F, float 5.564340e-02>
  %i.ib = fmul reassoc nsz arcp contract afn <2 x float> %i.hu, <float f0x3E50EC2A, float f0x3F7821D1>
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.id = fsub reassoc nsz arcp contract afn <2 x float> %i.ia, %i.ic
  %i.ie = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.hk, i64 1
  %i.ig = fptrunc <2 x double> %i.if to <2 x float> ; 3 uses
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ii = fmul reassoc nsz arcp contract afn <2 x float> %i.ih, <float 4.155600e-02, float f0x3F875328>
  %i.ij = fadd reassoc nsz arcp contract afn <2 x float> %i.hr, %i.ii ; 4 uses
  %i.ik = fmul reassoc nsz arcp contract afn <2 x float> %i.ig, splat (float f0xBEFF3F82)
  %i.il = fadd reassoc nsz arcp contract afn <2 x float> %i.hz, %i.ik ; 3 uses
  %i.im = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.in = fmul reassoc nsz arcp contract afn <2 x float> %i.im, <float 4.155600e-02, float f0x3F875328>
  %i.io = fadd reassoc nsz arcp contract afn <2 x float> %i.id, %i.in ; 4 uses
  %i.ip = extractelement <2 x float> %i.ij, i64 1
  %i.iq = shufflevector <2 x float> %i.ij, <2 x float> %i.io, <2 x i32> <i32 0, i32 2>
  %i.ir = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.il, <2 x float> %i.iq) ; 2 uses
  %i.is = extractelement <2 x float> %i.ir, i64 0
  %i.it = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.is, float %i.ip) ; 3 uses
  %i.iu = extractelement <2 x float> %i.io, i64 1
  %i.iv = extractelement <2 x float> %i.ir, i64 1
  %i.iw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.iv, float %i.iu) ; 3 uses
  %i.ix = fcmp reassoc nsz arcp contract afn ogt float %i.it, 1.000000e+00
  %i.iy = extractelement <2 x float> %i.il, i64 0 ; 2 uses
  br i1 %i.ix, label %.preheader126, label %.loopexit127

.preheader126:                                    ; preds = %bb.d
  %i.iz = fdiv reassoc nsz arcp contract afn float %i.iy, %i.it
  %i.ja = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.iz, float 0.000000e+00)
  %i.jb = insertelement <2 x float> poison, float %i.it, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = fdiv reassoc nsz arcp contract afn <2 x float> %i.ij, %i.jc
  %i.je = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jd, <2 x float> zeroinitializer)
  br label %.loopexit127

.loopexit127:                                     ; preds = %.preheader126, %bb.d
  %.sroa.0153.0 = phi nsz float [ %i.ja, %.preheader126 ], [ %i.iy, %bb.d ]
  %i.jf = phi <2 x float> [ %i.je, %.preheader126 ], [ %i.ij, %bb.d ] ; 2 uses
  %i.jg = fcmp reassoc nsz arcp contract afn ogt float %i.iw, 1.000000e+00
  %i.jh = extractelement <2 x float> %i.il, i64 1 ; 2 uses
  br i1 %i.jg, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit127
  %i.ji = fdiv reassoc nsz arcp contract afn float %i.jh, %i.iw
  %i.jj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ji, float 0.000000e+00)
  %i.jk = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fdiv reassoc nsz arcp contract afn <2 x float> %i.io, %i.jl
  %i.jn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jm, <2 x float> zeroinitializer)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit127
  %.sroa.0.0 = phi nsz float [ %i.jj, %.preheader ], [ %i.jh, %.loopexit127 ]
  %i.jo = phi <2 x float> [ %i.jn, %.preheader ], [ %i.io, %.loopexit127 ] ; 2 uses
  %i.jp = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.jq = extractelement <2 x float> %i.jf, i64 0
  %i.jr = extractelement <2 x float> %i.jf, i64 1
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.jp, float noundef %i.gy, float noundef %.sroa.0153.0, float noundef %i.jq, float noundef %i.jr) #21
  %i.js = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.jt = extractelement <2 x float> %i.jo, i64 0
  %i.ju = extractelement <2 x float> %i.jo, i64 1
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.js, float noundef %i.gy, float noundef %.sroa.0.0, float noundef %i.jt, float noundef %i.ju) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.jv = add nuw nsw i32 %.076141, 1             ; 2 uses
  %exitcond149.not = icmp eq i32 %i.jv, 20
  br i1 %exitcond149.not, label %.loopexit129, label %bb.d

.loopexit129:                                     ; preds = %.loopexit131, %.loopexit
  %i.jw = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.jx = tail call i32 @gtk_widget_get_visible(ptr noundef %i.jw) #21
  %.not94 = icmp eq i32 %i.jx, 0
  br i1 %.not94, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit129
  %i.jy = load ptr, ptr %i.b, align 8, !tbaa !96
  tail call void @gtk_widget_queue_draw(ptr noundef %i.jy) #21
  %i.jz = load ptr, ptr %i.d, align 8, !tbaa !97
  tail call void @gtk_widget_queue_draw(ptr noundef %i.jz) #21
  br label %bb.f

bb.f:                                             ; preds = %.loopexit129, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_rgb_sliders(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !87  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = load i32, ptr %i.c, align 8, !tbaa !161
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1540
  %i.h = load i32, ptr %i.g, align 4, !tbaa !84
  %i.i = and i32 %i.h, 16384
  %.not120 = icmp eq i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %.not120, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 13 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.l) #21
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 13 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.n) #21
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 11 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !100
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.p) #21
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.r) #21
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.t = xor i1 %i.j, true
  %i.u = zext i1 %i.t to i32                      ; 4 uses
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.s, i32 noundef %i.u) #21
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !99
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.v, i32 noundef %i.u) #21
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !100
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.w, i32 noundef %i.u) #21
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !101
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.x, i32 noundef %i.u) #21
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.z = load i32, ptr %i.y, align 4, !tbaa !162
  %.not121 = icmp eq i32 %i.z, 0
  br i1 %.not121, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.ab = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.aa) #21
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.ad = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.ac) #21
  %i.ae = fdiv reassoc nsz arcp contract afn float %i.ab, %i.ad ; 4 uses
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.ag = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.af) #21
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.ai = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.ah) #21
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ag, %i.ai ; 4 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.al = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.ak) #21
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.an = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.am) #21
  %i.ao = fdiv reassoc nsz arcp contract afn float %i.al, %i.an ; 4 uses
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !98
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ap, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.aj, float noundef %i.ao) #21
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !98
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.aq, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %i.aj, float noundef %i.ao) #21
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !99
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ar, float noundef 0.000000e+00, float noundef %i.ae, float noundef 0.000000e+00, float noundef %i.ao) #21
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !99
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.as, float noundef 1.000000e+00, float noundef %i.ae, float noundef 1.000000e+00, float noundef %i.ao) #21
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !100
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.at, float noundef 0.000000e+00, float noundef %i.ae, float noundef %i.aj, float noundef 0.000000e+00) #21
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !100
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.au, float noundef 1.000000e+00, float noundef %i.ae, float noundef %i.aj, float noundef 1.000000e+00) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2416 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 2424
  %i.az = load <2 x double>, ptr %i.ax, align 16, !tbaa !116
  %i.ba = fdiv reassoc nsz arcp contract afn <2 x double> splat (double 1.000000e+00), %i.az ; 2 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 1 ; 5 uses
  %i.bc = extractelement <2 x double> %i.ba, i64 0 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 2432 ; 2 uses
  %i.be = load double, ptr %i.bd, align 16, !tbaa !116
  %i.bf = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.be ; 5 uses
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.bh = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.bg) #21 ; 2 uses
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.bj = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.bi) #21 ; 2 uses
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.bl = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.bk) #21 ; 2 uses
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.bn = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.bm) #21
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.bp = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.bo) #21 ; 2 uses
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.br = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.bq) #21 ; 2 uses
  %i.bs = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.bt = fmul reassoc nsz arcp contract afn double %i.bc, 0.000000e+00
  %i.bu = fptrunc reassoc nsz arcp contract afn double %i.bt to float
  %i.bv = fpext reassoc nsz arcp contract afn float %i.bl to double
  %i.bw = fmul reassoc nsz arcp contract afn double %i.bb, %i.bv
  %i.bx = fptrunc reassoc nsz arcp contract afn double %i.bw to float ; 4 uses
  %i.by = fpext reassoc nsz arcp contract afn float %i.bp to double
  %i.bz = fmul reassoc nsz arcp contract afn double %i.bf, %i.by
  %i.ca = fptrunc reassoc nsz arcp contract afn double %i.bz to float ; 4 uses
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.bs, float noundef 0.000000e+00, float noundef %i.bu, float noundef %i.bx, float noundef %i.ca) #21
  %i.cb = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.cc = load double, ptr %i.ax, align 16, !tbaa !116 ; 2 uses
  %i.cd = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.ce = fdiv reassoc nsz arcp contract afn double %i.cc, %i.cd
  %i.cf = fptrunc reassoc nsz arcp contract afn double %i.ce to float
  %i.cg = fmul reassoc nsz arcp contract afn double %i.cc, %i.bc
  %i.ch = fptrunc reassoc nsz arcp contract afn double %i.cg to float
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.cb, float noundef %i.cf, float noundef %i.ch, float noundef %i.bx, float noundef %i.ca) #21
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.cj = fptrunc reassoc nsz arcp contract afn double %i.bc to float
  %i.ck = fdiv reassoc nsz arcp contract afn float %i.bl, %i.bn
  %i.cl = fpext reassoc nsz arcp contract afn float %i.ck to double
  %i.cm = fmul reassoc nsz arcp contract afn double %i.bb, %i.cl
  %i.cn = fptrunc reassoc nsz arcp contract afn double %i.cm to float ; 2 uses
  %i.co = fdiv reassoc nsz arcp contract afn float %i.bp, %i.br
  %i.cp = fpext reassoc nsz arcp contract afn float %i.co to double
  %i.cq = fmul reassoc nsz arcp contract afn double %i.bf, %i.cp
  %i.cr = fptrunc reassoc nsz arcp contract afn double %i.cq to float ; 2 uses
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ci, float noundef 1.000000e+00, float noundef %i.cj, float noundef %i.cn, float noundef %i.cr) #21
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.ct = fpext reassoc nsz arcp contract afn float %i.bh to double
  %i.cu = fmul reassoc nsz arcp contract afn double %i.bc, %i.ct
  %i.cv = fptrunc reassoc nsz arcp contract afn double %i.cu to float ; 4 uses
  %i.cw = fmul reassoc nsz arcp contract afn double %i.bb, 0.000000e+00
  %i.cx = fptrunc reassoc nsz arcp contract afn double %i.cw to float
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.cs, float noundef 0.000000e+00, float noundef %i.cv, float noundef %i.cx, float noundef %i.ca) #21
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.cz = load double, ptr %i.ay, align 8, !tbaa !116 ; 2 uses
  %i.da = fpext reassoc nsz arcp contract afn float %i.br to double ; 2 uses
  %i.db = fdiv reassoc nsz arcp contract afn double %i.cz, %i.da
  %i.dc = fptrunc reassoc nsz arcp contract afn double %i.db to float
  %i.dd = fmul reassoc nsz arcp contract afn double %i.cz, %i.bb
  %i.de = fptrunc reassoc nsz arcp contract afn double %i.dd to float
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.cy, float noundef %i.dc, float noundef %i.cv, float noundef %i.de, float noundef %i.ca) #21
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.bh, %i.bj
  %i.dh = fpext reassoc nsz arcp contract afn float %i.dg to double
  %i.di = fmul reassoc nsz arcp contract afn double %i.bc, %i.dh
  %i.dj = fptrunc reassoc nsz arcp contract afn double %i.di to float ; 2 uses
  %i.dk = fptrunc reassoc nsz arcp contract afn double %i.bb to float
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.df, float noundef 1.000000e+00, float noundef %i.dj, float noundef %i.dk, float noundef %i.cr) #21
  %i.dl = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.dm = fmul reassoc nsz arcp contract afn double %i.bf, 0.000000e+00
  %i.dn = fptrunc reassoc nsz arcp contract afn double %i.dm to float
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.dl, float noundef 0.000000e+00, float noundef %i.cv, float noundef %i.bx, float noundef %i.dn) #21
  %i.do = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.dp = load double, ptr %i.bd, align 16, !tbaa !116 ; 2 uses
  %i.dq = fdiv reassoc nsz arcp contract afn double %i.dp, %i.da
  %i.dr = fptrunc reassoc nsz arcp contract afn double %i.dq to float
  %i.ds = fmul reassoc nsz arcp contract afn double %i.dp, %i.bf
  %i.dt = fptrunc reassoc nsz arcp contract afn double %i.ds to float
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.do, float noundef %i.dr, float noundef %i.cv, float noundef %i.bx, float noundef %i.dt) #21
  %i.du = load ptr, ptr %i.o, align 8, !tbaa !100
  %i.dv = fptrunc reassoc nsz arcp contract afn double %i.bf to float
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.du, float noundef 1.000000e+00, float noundef %i.dj, float noundef %i.cn, float noundef %i.dv) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.dx = tail call i32 @gtk_widget_get_visible(ptr noundef %i.dw) #21
  %.not122 = icmp eq i32 %i.dx, 0
  br i1 %.not122, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dy = load ptr, ptr %i.k, align 8, !tbaa !98
  tail call void @gtk_widget_queue_draw(ptr noundef %i.dy) #21
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !99
  tail call void @gtk_widget_queue_draw(ptr noundef %i.dz) #21
  %i.ea = load ptr, ptr %i.o, align 8, !tbaa !100
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ea) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_finetuning_slider(ptr nofree readonly captures(none) %.704.val) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.704.val, i64 56 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.b) #21
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %.704.val, i64 584 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !161
  %.not = icmp eq i32 %i.e, 0
  %i.f = zext i1 %.not to i32
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.c, i32 noundef %i.f) #21
  %i.g = load i32, ptr %i.d, align 8, !tbaa !161
  %.not50 = icmp eq i32 %i.g, 0
  br i1 %.not50, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.704.val, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.j = tail call ptr @dt_bauhaus_combobox_get_data(ptr noundef %i.i) #21 ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp ugt i32 %i.l, 4
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !110
  %i.p = tail call ptr @dt_wb_preset(i32 noundef %i.o) #21 ; 3 uses
  %i.q = load i32, ptr %i.j, align 4, !tbaa !112
  %i.r = tail call ptr @dt_wb_preset(i32 noundef %i.q) #21
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !111
  %i.u = tail call ptr @dt_wb_preset(i32 noundef %i.t) #21 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.704.val, i64 588
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %.not51 = icmp eq i32 %i.w, 0
  br i1 %.not51, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.y = load double, ptr %i.x, align 8, !tbaa !116
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aa = load double, ptr %i.z, align 8, !tbaa !116
  %i.ab = fcmp reassoc nsz arcp contract afn olt double %i.y, %i.aa ; 2 uses
  %spec.select = select i1 %i.ab, float 1.000000e-01, float f0x3F666666
  %spec.select25 = select i1 %i.ab, <4 x float> <float 1.000000e-01, float 5.000000e-01, float f0x3F666666, float f0x3F666666>, <4 x float> <float f0x3F666666, float 5.000000e-01, float 1.000000e-01, float 1.000000e-01>
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ag = load double, ptr %i.af, align 8, !tbaa !116 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !116
  %i.aj = load <3 x double>, ptr %i.ac, align 8, !tbaa !116
  %i.ak = shufflevector <3 x double> %i.aj, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.al = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %i.ak ; 3 uses
  %i.am = load <2 x double>, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %i.an = load <2 x double>, ptr %i.ae, align 8, !tbaa !116 ; 2 uses
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> %i.an, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <4 x double> %i.al, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.aq = fmul reassoc nsz arcp contract afn <2 x double> %i.ao, %i.ap ; 2 uses
  %i.ar = insertelement <4 x double> poison, double %i.ag, i64 2
  %i.as = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <4 x double> %i.ar, <4 x double> %i.as, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.au = shufflevector <2 x double> %i.am, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = shufflevector <4 x double> %i.au, <4 x double> %i.at, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aw = fmul reassoc nsz arcp contract afn <4 x double> %i.av, %i.al ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.ai, i64 1
  %i.az = shufflevector <4 x double> %i.al, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ba = fmul reassoc nsz arcp contract afn <2 x double> %i.ay, %i.az ; 2 uses
  %i.bb = shufflevector <4 x double> %i.aw, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.bc = tail call reassoc nsz arcp contract afn <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bb, <2 x double> %i.aq)
  %i.bd = tail call reassoc nsz arcp contract afn <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bc, <2 x double> %i.ba)
  %i.be = fptrunc <2 x double> %i.bd to <2 x float>
  %i.bf = fpext <2 x float> %i.be to <2 x double> ; 2 uses
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bh = fdiv reassoc nsz arcp contract afn <4 x double> %i.aw, %i.bg
  %i.bi = shufflevector <2 x double> %i.aq, <2 x double> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.bj = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fdiv reassoc nsz arcp contract afn <2 x double> %i.bi, %i.bj
  %i.bl = fptrunc <4 x double> %i.bh to <4 x float>
  %i.bm = fptrunc <2 x double> %i.bk to <2 x float> ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.preheader.preheader, %bb.d
  %.sroa.014.0 = phi float [ 1.000000e+00, %bb.d ], [ f0x3F666666, %.preheader.preheader ] ; 3 uses
  %.sroa.11.0 = phi float [ %i.bn, %bb.d ], [ 5.000000e-01, %.preheader.preheader ]
  %.sroa.17.0 = phi float [ %i.bo, %bb.d ], [ %spec.select, %.preheader.preheader ]
  %i.bp = phi <4 x float> [ %i.bl, %bb.d ], [ %spec.select25, %.preheader.preheader ] ; 4 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.br = extractelement <4 x float> %i.bp, i64 0
  %i.bs = extractelement <4 x float> %i.bp, i64 1
  %i.bt = extractelement <4 x float> %i.bp, i64 2
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.bq, float noundef 0.000000e+00, float noundef %i.br, float noundef %i.bs, float noundef %i.bt) #21
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !103
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.bu, float noundef 5.000000e-01, float noundef %.sroa.014.0, float noundef %.sroa.014.0, float noundef %.sroa.014.0) #21
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.bw = extractelement <4 x float> %i.bp, i64 3
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.bv, float noundef 1.000000e+00, float noundef %i.bw, float noundef %.sroa.11.0, float noundef %.sroa.17.0) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.by = tail call i32 @gtk_widget_get_visible(ptr noundef %i.bx) #21
  %.not52 = icmp eq i32 %i.by, 0
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !103
  tail call void @gtk_widget_queue_draw(ptr noundef %i.bz) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  ret void
}

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @dt_gui_update_collapsible_section(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 6 uses
  %i.b = alloca [4 x double], align 16            ; 6 uses
  %i.c = alloca [4 x double], align 16            ; 8 uses
  %i.d = alloca [4 x double], align 16            ; 9 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !89  ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.k = tail call i32 @dt_is_scene_referred() #21
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, i32 0, i32 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store <4 x float> splat (float 1.000000e+00), ptr %i.h, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 15 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 3 uses
  %.not117 = icmp eq ptr %i.r, null
  br i1 %.not117, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1552
  %i.t = load i32, ptr %i.s, align 16, !tbaa !225
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.aq

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.w = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.v) #21
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.z = tail call i32 @dt_image_monochrome_flags(ptr noundef nonnull %i.y) #21
  %i.aa = and i32 %i.z, 32768                     ; 2 uses
  %i.ab = tail call i32 @dt_is_scene_referred() #21
  %.not118 = icmp eq i32 %i.ab, 0
  br i1 %.not118, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1552
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !225
  %i.af = tail call i32 @dt_history_check_module_exists(i32 noundef %i.ae, ptr noundef nonnull @.str.9, i32 noundef 1) #21
  %i.ag = icmp ne i32 %i.af, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0112 = phi i1 [ false, %bb.c ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ah = tail call i32 @dt_is_scene_referred() #21
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = select i1 %i.ai, i1 true, i1 %.0112     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !90
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store i32 %i.aa, ptr %i.al, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) @__const.reload_defaults.as_shot, i64 32, i1 false)
  %i.am = load <4 x float>, ptr %i.h, align 4, !tbaa !12
  %i.an = fpext <4 x float> %i.am to <4 x double> ; 2 uses
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.aq = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.ap) #21
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1904
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1728
  %i.au = call i32 @dt_colorspaces_conversion_matrices_rgb(ptr noundef nonnull %i.as, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.at, ptr noundef nonnull %i.b) #21
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %_calculate_bogus_daylight_wb.exit, label %_calculate_bogus_daylight_wb.exit.thread144

_calculate_bogus_daylight_wb.exit.thread144:      ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aw = load <2 x double>, ptr %i.b, align 16, !tbaa !116 ; 2 uses
  %i.ax = load <2 x double>, ptr %i.av, align 16, !tbaa !116
  %i.ay = shufflevector <2 x double> %i.aw, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.az = insertelement <4 x double> %i.ay, double 1.000000e+00, i64 1
  %i.ba = shufflevector <2 x double> %i.ax, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x double> %i.az, <4 x double> %i.ba, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bc = shufflevector <2 x double> %i.aw, <2 x double> <double poison, double 1.000000e+00>, <4 x i32> <i32 1, i32 3, i32 1, i32 1>
  %i.bd = fdiv reassoc nsz arcp contract afn <4 x double> %i.bb, %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.critedge

_calculate_bogus_daylight_wb.exit:                ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.be = call i32 @dt_wb_presets_count() #21
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_calculate_bogus_daylight_wb.exit, %bb.k
  %.0111152 = phi i32 [ %i.by, %bb.k ], [ 0, %_calculate_bogus_daylight_wb.exit ] ; 2 uses
  %i.bg = call ptr @dt_wb_preset(i32 noundef %.0111152) #21 ; 5 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !106
  %i.bi = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 912
  %i.bk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(1) %i.bj) #22
  %.not120 = icmp eq i32 %i.bk, 0
  br i1 %.not120, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !107
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 976
  %i.bo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(1) %i.bn) #22
  %.not121 = icmp eq i32 %i.bo, 0
  br i1 %.not121, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !108 ; 2 uses
  %i.br = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(9) @.str.10) #22
  %.not122 = icmp eq i32 %i.br, 0
  br i1 %.not122, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(15) @.str.11) #22
  %.not123 = icmp eq i32 %i.bs, 0
  br i1 %.not123, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !113
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.preheader149, label %bb.k

.preheader149:                                    ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bx = load <4 x double>, ptr %i.bw, align 8, !tbaa !116
  br label %.critedge

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %.lr.ph
  %i.by = add nuw nsw i32 %.0111152, 1            ; 2 uses
  %i.bz = call i32 @dt_wb_presets_count() #21
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.e, %.preheader149, %_calculate_bogus_daylight_wb.exit, %_calculate_bogus_daylight_wb.exit.thread144
  %i.cb = phi <4 x double> [ %i.bd, %_calculate_bogus_daylight_wb.exit.thread144 ], [ %i.bx, %.preheader149 ], [ splat (double 1.000000e+00), %bb.e ], [ %i.an, %_calculate_bogus_daylight_wb.exit ], [ %i.an, %bb.k ] ; 4 uses
  %.not124 = icmp eq i32 %i.w, 0                  ; 2 uses
  br i1 %.not124, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge
  call fastcc void @_find_coeffs(ptr noundef nonnull %0, ptr noundef %i.c)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !116 ; 2 uses
  %i.ce = load double, ptr %i.c, align 16, !tbaa !116
  %i.cf = fdiv reassoc nsz arcp contract afn double %i.ce, %i.cd ; 2 uses
  store double %i.cf, ptr %i.c, align 16, !tbaa !116
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ch = load <2 x double>, ptr %i.cg, align 16, !tbaa !116
  %i.ci = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fdiv reassoc nsz arcp contract afn <2 x double> %i.ch, %i.cj ; 3 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  store <2 x double> %i.ck, ptr %i.cg, align 16, !tbaa !116
  store double 1.000000e+00, ptr %i.cc, align 8, !tbaa !116
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %i.cm = phi double [ %i.cl, %bb.l ], [ 1.000000e+00, %.critedge ]
  %i.cn = phi double [ %i.cf, %bb.l ], [ 1.000000e+00, %.critedge ] ; 3 uses
  %i.co = phi <2 x double> [ %i.ck, %bb.l ], [ splat (double 1.000000e+00), %.critedge ] ; 2 uses
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !47  ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2448
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 2416
  store <4 x double> %i.cb, ptr %i.cr, align 8, !tbaa !116
  store double %i.cn, ptr %i.cq, align 8, !tbaa !116
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 2456
  store double 1.000000e+00, ptr %i.cs, align 8, !tbaa !116
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 2464
  store <2 x double> %i.co, ptr %i.ct, align 8, !tbaa !116
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !160
  %i.cv = and i32 %i.cu, 2097152
  %.not125 = icmp eq i32 %i.cv, 0
  br i1 %.not125, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = call i32 @dt_is_scene_referred() #21
  %.not126 = icmp eq i32 %i.cw, 0
  %i.cx = select i1 %.not126, ptr @.str.14, ptr @.str.13
  %i.cy = select i1 %i.aj, ptr @.str.13, ptr @.str.14
  %i.cz = select i1 %.0112, ptr @.str.13, ptr @.str.14
  %i.da = extractelement <4 x double> %i.cb, i64 0
  %i.db = extractelement <4 x double> %i.cb, i64 1
  %i.dc = extractelement <4 x double> %i.cb, i64 2
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz, double noundef %i.da, double noundef %i.db, double noundef %i.dc, double noundef %i.cn, double noundef 1.000000e+00, double noundef %i.cm) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  store i32 0, ptr %i.dd, align 4, !tbaa !86
  store i32 0, ptr %i.m, align 4, !tbaa !86
  %.not127 = icmp eq i32 %i.aa, 0
  br i1 %.not127, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !87 ; 5 uses
  %.not128 = icmp eq ptr %i.df, null
  br i1 %.not128, label %_prepare_matrices.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  %i.di = call i32 @dt_image_is_raw(ptr noundef nonnull %i.dh) #21
  %.not.i134 = icmp eq i32 %i.di, 0
  br i1 %.not.i134, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dj, ptr noundef nonnull align 16 dereferenceable(96) @__const._prepare_matrices.XYZ_to_RGB, i64 96, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dk, ptr noundef nonnull align 16 dereferenceable(96) @__const._prepare_matrices.RGB_to_XYZ, i64 96, i1 false)
  br label %_prepare_matrices.exit

bb.s:                                             ; preds = %bb.q
  %i.dl = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1904
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 1728
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 392
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 488
  %i.dq = call i32 @dt_colorspaces_conversion_matrices_xyz(ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp) #21
  %.not12.i = icmp eq i32 %i.dq, 0
  br i1 %.not12.i, label %bb.t, label %_prepare_matrices.exit

bb.t:                                             ; preds = %bb.s
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1988
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !226
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.u, label %_prepare_matrices.exit

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 1104 ; 2 uses
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.87, ptr noundef nonnull %i.dv) #21
  %i.dw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 5) #21
  call void (ptr, ...) @dt_control_log(ptr noundef %i.dw, ptr noundef nonnull %i.dv) #21
  br label %_prepare_matrices.exit

_prepare_matrices.exit:                           ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.p
  br i1 %.not124, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %_prepare_matrices.exit
  store i32 1, ptr %i.ak, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br i1 %i.aj, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 112
  %i.dz = call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.dy) #21
  %.not.i135 = icmp eq i32 %i.dz, 0
  br i1 %.not.i135, label %.critedge147, label %bb.x

.critedge147:                                     ; preds = %bb.w
  store double 1.000000e+00, ptr %i.d, align 16, !tbaa !116
  br label %.preheader

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ea = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1904
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 1728
  %i.ed = call i32 @dt_colorspaces_conversion_matrices_rgb(ptr noundef nonnull %i.eb, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.a) #21
  %.not11.i136.not = icmp eq i32 %i.ed, 0
  br i1 %.not11.i136.not, label %.critedge148, label %_calculate_bogus_daylight_wb.exit139

_calculate_bogus_daylight_wb.exit139:             ; preds = %bb.x
  %i.ee = load double, ptr %i.a, align 16, !tbaa !116
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !116
  %i.eh = fdiv reassoc nsz arcp contract afn double %i.ee, %i.eg
  store double %i.eh, ptr %i.d, align 16, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.preheader

.preheader:                                       ; preds = %.critedge147, %_calculate_bogus_daylight_wb.exit139
  %i.ei = fptrunc reassoc nsz arcp contract afn double %i.cn to float
  store float %i.ei, ptr %i.h, align 4, !tbaa !12
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !12
  %i.ej = fptrunc <2 x double> %i.co to <2 x float>
  store <2 x float> %i.ej, ptr %i.o, align 4, !tbaa !12
  store i32 4, ptr %i.dd, align 4, !tbaa !86
  store i32 4, ptr %i.m, align 4, !tbaa !86
  br label %bb.z

.critedge148:                                     ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.y

bb.y:                                             ; preds = %.critedge148, %bb.v
  call fastcc void @_find_coeffs(ptr noundef nonnull %0, ptr noundef %i.d)
  %i.ek = load double, ptr %i.d, align 16, !tbaa !116
  %i.el = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.em = load double, ptr %i.el, align 8, !tbaa !116 ; 2 uses
  %i.en = fdiv reassoc nsz arcp contract afn double %i.ek, %i.em
  %i.eo = fptrunc reassoc nsz arcp contract afn double %i.en to float
  store float %i.eo, ptr %i.h, align 4, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eq = load <2 x double>, ptr %i.ep, align 16, !tbaa !116
  %i.er = insertelement <2 x double> poison, double %i.em, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fdiv reassoc nsz arcp contract afn <2 x double> %i.eq, %i.es
  %i.eu = fptrunc <2 x double> %i.et to <2 x float>
  store <2 x float> %i.eu, ptr %i.o, align 4, !tbaa !12
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.aa

bb.aa:                                            ; preds = %_prepare_matrices.exit, %bb.z, %bb.o
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.ew = load ptr, ptr %i.ev, align 16, !tbaa !87 ; 15 uses
  %.not130 = icmp eq ptr %i.ew, null
  br i1 %.not130, label %bb.ap, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !91
  %i.ez = load i32, ptr %i.al, align 8, !tbaa !68
  %.not131 = icmp eq i32 %i.ez, 0
  %i.fa = select i1 %.not131, ptr @.str.6, ptr @.str.5
  call void @gtk_stack_set_visible_child_name(ptr noundef %i.ey, ptr noundef nonnull %i.fa) #21
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !98
  %i.fd = load float, ptr %i.h, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.fc, float noundef %i.fd) #21
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !99
  %i.fg = load float, ptr %i.n, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.ff, float noundef %i.fg) #21
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !100
  %i.fj = load float, ptr %i.o, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.fi, float noundef %i.fj) #21
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !101
  %i.fm = load float, ptr %i.p, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.fl, float noundef %i.fm) #21
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 352
  %i.fo = load <4 x float>, ptr %i.h, align 4, !tbaa !12
  %i.fp = fpext <4 x float> %i.fo to <4 x double>
  store <4 x double> %i.fp, ptr %i.fn, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  %.val = load ptr, ptr %i.ev, align 16, !tbaa !87
  call fastcc void @_mul2temp(ptr %.val, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %i.fq = load ptr, ptr %i.ew, align 8, !tbaa !96
  %i.fr = load float, ptr %i.e, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.fq, float noundef %i.fr) #21
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !97
  %i.fu = load float, ptr %i.f, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.ft, float noundef %i.fu) #21
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 48 ; 7 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !102
  call void @dt_bauhaus_combobox_clear(ptr noundef %i.fw) #21
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !102
  %i.fy = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.15, i64 noundef 14) #21
  call void @dt_bauhaus_combobox_add(ptr noundef %i.fx, ptr noundef %i.fy) #21
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !102
  %i.ga = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.16, i64 noundef 14) #21
  call void @dt_bauhaus_combobox_add(ptr noundef %i.fz, ptr noundef %i.ga) #21
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !102
  %i.gc = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.17, i64 noundef 14) #21
  call void @dt_bauhaus_combobox_add(ptr noundef %i.gb, ptr noundef %i.gc) #21
  %i.gd = load ptr, ptr %i.fv, align 8, !tbaa !102
  %i.ge = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.18, i64 noundef 14) #21
  call void @dt_bauhaus_combobox_add(ptr noundef %i.gd, ptr noundef %i.ge) #21
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !102
  %i.gg = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.19, i64 noundef 14) #21
  call void @dt_bauhaus_combobox_add(ptr noundef %i.gf, ptr noundef %i.gg) #21
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ew, i64 128
  store i32 5, ptr %i.gh, align 8, !tbaa !104
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ew, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(216) %i.gi, i8 0, i64 216, i1 false)
  %i.gj = load ptr, ptr %i.ev, align 16, !tbaa !87 ; 3 uses
  %i.gk = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 112
  %i.gm = call i32 @dt_image_is_ldr(ptr noundef nonnull %i.gl) #21
  %.not.i140 = icmp eq i32 %i.gm, 0
  br i1 %.not.i140, label %.preheader.i, label %_generate_preset_combo.exit

.preheader.i:                                     ; preds = %bb.ab
  %i.gn = call i32 @dt_wb_presets_count() #21
  %i.go = icmp slt i32 %i.gn, 1
  br i1 %i.go, label %_generate_preset_combo.exit, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.preheader.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 48 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 128 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 132
  br label %bb.ac

bb.ac:                                            ; preds = %bb.am, %.lr.ph71.i
  %.05269.i = phi i32 [ 0, %.lr.ph71.i ], [ %i.it, %bb.am ] ; 7 uses
  %.05368.i = phi ptr [ null, %.lr.ph71.i ], [ %.154.i, %bb.am ] ; 5 uses
  %.05567.i = phi i32 [ 0, %.lr.ph71.i ], [ %.156.i, %bb.am ] ; 4 uses
  %i.gs = call ptr @dt_wb_preset(i32 noundef %.05269.i) #21 ; 6 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !106
  %i.gu = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 912 ; 2 uses
  %i.gw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(1) %i.gv) #22
  %.not58.i = icmp eq i32 %i.gw, 0
  br i1 %.not58.i, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !107
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 976 ; 2 uses
  %i.ha = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gy, ptr noundef nonnull dereferenceable(1) %i.gz) #22
  %.not59.i = icmp eq i32 %i.ha, 0
  br i1 %.not59.i, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %.not60.i = icmp eq ptr %.05368.i, null
  br i1 %.not60.i, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %bb.ae
  %i.hb = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.89, ptr noundef nonnull %i.gv, ptr noundef nonnull %i.gz) #21 ; 2 uses
  %i.hc = load ptr, ptr %i.gp, align 8, !tbaa !102
  call void @dt_bauhaus_combobox_add_section(ptr noundef %i.hc, ptr noundef %i.hb) #21
  call void @g_free(ptr noundef %i.hb) #21
  %i.hd = load i32, ptr %i.gq, align 8, !tbaa !104
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.gq, align 8, !tbaa !104
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !108
  br label %bb.ag

.critedge.i:                                      ; preds = %bb.ae
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !108 ; 2 uses
  %i.hh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.05368.i, ptr noundef nonnull dereferenceable(1) %i.hg) #22
  %.not61.i = icmp eq i32 %i.hh, 0
  br i1 %.not61.i, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i, %bb.af
  %i.hi = phi ptr [ %.pre.i, %bb.af ], [ %i.hg, %.critedge.i ] ; 3 uses
  %i.hj = call noalias dereferenceable_or_null(12) ptr @malloc(i64 noundef 12) #20 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store i32 %.05269.i, ptr %i.hj, align 4, !tbaa !112
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 2 uses
  store i32 %.05269.i, ptr %i.hl, align 4, !tbaa !111
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 %.05269.i, ptr %i.hm, align 4, !tbaa !110
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !113 ; 2 uses
  %.not62.i = icmp eq i32 %i.ho, 0
  br i1 %.not62.i, label %.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.05164.i = add nuw nsw i32 %.05269.i, 1        ; 2 uses
  %i.hp = call ptr @dt_wb_preset(i32 noundef %.05164.i) #21
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !108
  %i.hs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hi, ptr noundef nonnull dereferenceable(1) %i.hr) #22
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.ah, %bb.al
  %.05166.i = phi i32 [ %.051.i, %bb.al ], [ %.05164.i, %bb.ah ] ; 6 uses
  %.065.i = phi i32 [ %.1.i141, %bb.al ], [ %i.ho, %bb.ah ] ; 2 uses
  %i.hu = call ptr @dt_wb_preset(i32 noundef %.05166.i) #21
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !113
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i
  store i32 %.05166.i, ptr %i.hj, align 4, !tbaa !112
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i
  %i.hy = call ptr @dt_wb_preset(i32 noundef %.05166.i) #21
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !113
  %i.ib = icmp sgt i32 %i.ia, %.065.i
  br i1 %i.ib, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 %.05166.i, ptr %i.hl, align 4, !tbaa !111
  %i.ic = call ptr @dt_wb_preset(i32 noundef %.05166.i) #21
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !113
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.1.i141 = phi i32 [ %i.ie, %bb.ak ], [ %.065.i, %bb.aj ]
  %.051.i = add nuw nsw i32 %.05166.i, 1          ; 2 uses
  %i.if = call ptr @dt_wb_preset(i32 noundef %.051.i) #21
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !108
  %i.ii = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hi, ptr noundef nonnull dereferenceable(1) %i.ih) #22
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.al, %bb.ah, %bb.ag
  %i.ik = load ptr, ptr %i.gp, align 8, !tbaa !102
  %i.il = load ptr, ptr %i.hk, align 8, !tbaa !108
  %i.im = call ptr @dcgettext(ptr noundef null, ptr noundef %i.il, i32 noundef 5) #21
  call void @dt_bauhaus_combobox_add_full(ptr noundef %i.ik, ptr noundef %i.im, i32 noundef 1, ptr noundef nonnull %i.hj, ptr noundef nonnull @free, i32 noundef 1) #21
  %i.in = load i32, ptr %i.gq, align 8, !tbaa !104
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.io
  store i32 %.05269.i, ptr %i.ip, align 4, !tbaa !15
  %i.iq = load i32, ptr %i.gq, align 8, !tbaa !104
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.gq, align 8, !tbaa !104
  %i.is = add nsw i32 %.05567.i, 1
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.i, %.critedge.i, %bb.ad, %bb.ac
  %.156.i = phi i32 [ %.05567.i, %bb.ac ], [ %.05567.i, %bb.ad ], [ %i.is, %.loopexit.i ], [ %.05567.i, %.critedge.i ] ; 2 uses
  %.154.i = phi ptr [ %.05368.i, %bb.ac ], [ %.05368.i, %bb.ad ], [ %i.hi, %.loopexit.i ], [ %.05368.i, %.critedge.i ]
  %i.it = add nuw nsw i32 %.05269.i, 1            ; 2 uses
  %i.iu = call i32 @dt_wb_presets_count() #21
  %i.iv = icmp sge i32 %i.it, %i.iu
  %i.iw = icmp sgt i32 %.156.i, 49
  %or.cond.i = select i1 %i.iv, i1 true, i1 %i.iw
  br i1 %or.cond.i, label %_generate_preset_combo.exit, label %bb.ac

_generate_preset_combo.exit:                      ; preds = %bb.am, %bb.ab, %.preheader.i
  %.val132 = load ptr, ptr %i.q, align 8, !tbaa !47 ; 2 uses
  %.val133 = load ptr, ptr %i.ev, align 16, !tbaa !87 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val132, i64 1608
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !227
  %i.iz = getelementptr inbounds nuw i8, ptr %.val133, i64 16 ; 5 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !98 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.val133, i64 24 ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val133, i64 32 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.val133, i64 40 ; 7 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.val133, i64 640 ; 8 uses
  switch i32 %i.iy, label %bb.ao [
    i32 -1263225676, label %bb.an
    i32 1263225675, label %bb.an
    i32 505290270, label %bb.an
    i32 -505290271, label %bb.an
  ]

bb.an:                                            ; preds = %_generate_preset_combo.exit, %_generate_preset_combo.exit, %_generate_preset_combo.exit, %_generate_preset_combo.exit
  %i.jf = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ja, ptr noundef null, ptr noundef nonnull @.str.56) #21 ; 0 uses
  %i.jg = load ptr, ptr %i.iz, align 8, !tbaa !98
  %i.jh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.jg, ptr noundef %i.jh) #21
  %i.ji = load ptr, ptr %i.jb, align 8, !tbaa !99
  %i.jj = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ji, ptr noundef null, ptr noundef nonnull @.str.91) #21 ; 0 uses
  %i.jk = load ptr, ptr %i.jb, align 8, !tbaa !99
  %i.jl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.92, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.jk, ptr noundef %i.jl) #21
  %i.jm = load ptr, ptr %i.jc, align 8, !tbaa !100
  %i.jn = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.jm, ptr noundef null, ptr noundef nonnull @.str.93) #21 ; 0 uses
  %i.jo = load ptr, ptr %i.jc, align 8, !tbaa !100
  %i.jp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.94, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.jo, ptr noundef %i.jp) #21
  %i.jq = load ptr, ptr %i.jd, align 8, !tbaa !101
  %i.jr = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.jq, ptr noundef null, ptr noundef nonnull @.str.95) #21 ; 0 uses
  %i.js = load ptr, ptr %i.jd, align 8, !tbaa !101
  %i.jt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.96, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.js, ptr noundef %i.jt) #21
  %i.ju = load ptr, ptr %i.je, align 8, !tbaa !167
  %i.jv = load ptr, ptr %i.jc, align 8, !tbaa !100
  call void @gtk_box_reorder_child(ptr noundef %i.ju, ptr noundef %i.jv, i32 noundef 0) #21
  %i.jw = load ptr, ptr %i.je, align 8, !tbaa !167
  %i.jx = load ptr, ptr %i.jd, align 8, !tbaa !101
  call void @gtk_box_reorder_child(ptr noundef %i.jw, ptr noundef %i.jx, i32 noundef 1) #21
  %i.jy = load ptr, ptr %i.je, align 8, !tbaa !167
  %i.jz = load ptr, ptr %i.jb, align 8, !tbaa !99
  call void @gtk_box_reorder_child(ptr noundef %i.jy, ptr noundef %i.jz, i32 noundef 2) #21
  %i.ka = load ptr, ptr %i.je, align 8, !tbaa !167
  %i.kb = load ptr, ptr %i.iz, align 8, !tbaa !98
  call void @gtk_box_reorder_child(ptr noundef %i.ka, ptr noundef %i.kb, i32 noundef 3) #21
  br label %_gui_sliders_update.exit

bb.ao:                                            ; preds = %_generate_preset_combo.exit
  %i.kc = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ja, ptr noundef null, ptr noundef nonnull @.str.55) #21 ; 0 uses
  %i.kd = load ptr, ptr %i.iz, align 8, !tbaa !98
  %i.ke = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.kd, ptr noundef %i.ke) #21
  %i.kf = load ptr, ptr %i.jb, align 8, !tbaa !99
  %i.kg = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.kf, ptr noundef null, ptr noundef nonnull @.str.56) #21 ; 0 uses
  %i.kh = load ptr, ptr %i.jb, align 8, !tbaa !99
  %i.ki = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.kh, ptr noundef %i.ki) #21
  %i.kj = load ptr, ptr %i.jc, align 8, !tbaa !100
  %i.kk = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.kj, ptr noundef null, ptr noundef nonnull @.str.57) #21 ; 0 uses
  %i.kl = load ptr, ptr %i.jc, align 8, !tbaa !100
  %i.km = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.98, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.kl, ptr noundef %i.km) #21
  %i.kn = load ptr, ptr %i.jd, align 8, !tbaa !101
  %i.ko = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.kn, ptr noundef null, ptr noundef nonnull @.str.99) #21 ; 0 uses
  %i.kp = load ptr, ptr %i.jd, align 8, !tbaa !101
  %i.kq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.100, i32 noundef 5) #21
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.kp, ptr noundef %i.kq) #21
  %i.kr = load ptr, ptr %i.je, align 8, !tbaa !167
  %i.ks = load ptr, ptr %i.iz, align 8, !tbaa !98
  call void @gtk_box_reorder_child(ptr noundef %i.kr, ptr noundef %i.ks, i32 noundef 0) #21
  %i.kt = load ptr, ptr %i.je, align 8, !tbaa !167
  %i.ku = load ptr, ptr %i.jb, align 8, !tbaa !99
  call void @gtk_box_reorder_child(ptr noundef %i.kt, ptr noundef %i.ku, i32 noundef 1) #21
  %i.kv = load ptr, ptr %i.je, align 8, !tbaa !167
  %i.kw = load ptr, ptr %i.jc, align 8, !tbaa !100
  call void @gtk_box_reorder_child(ptr noundef %i.kv, ptr noundef %i.kw, i32 noundef 2) #21
  %i.kx = load ptr, ptr %i.je, align 8, !tbaa !167
  %i.ky = load ptr, ptr %i.jd, align 8, !tbaa !101
  call void @gtk_box_reorder_child(ptr noundef %i.kx, ptr noundef %i.ky, i32 noundef 3) #21
  br label %_gui_sliders_update.exit

_gui_sliders_update.exit:                         ; preds = %bb.an, %bb.ao
  %i.kz = load ptr, ptr %i.jd, align 8, !tbaa !101
  %i.la = getelementptr inbounds nuw i8, ptr %.val132, i64 1540
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !168
  %i.lc = and i32 %i.lb, 16384
  call void @gtk_widget_set_visible(ptr noundef %i.kz, i32 noundef %i.lc) #21
  %i.ld = load ptr, ptr %i.fv, align 8, !tbaa !102
  %i.le = load i32, ptr %i.dd, align 4, !tbaa !86
  call void @dt_bauhaus_combobox_set(ptr noundef %i.ld, i32 noundef %i.le) #21
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ew, i64 104
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !122
  %i.lh = load i32, ptr %i.dd, align 4, !tbaa !86
  %i.li = icmp eq i32 %i.lh, 4
  %i.lj = zext i1 %i.li to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.lg, i32 noundef %i.lj) #21
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !119
  %i.lm = load i32, ptr %i.dd, align 4, !tbaa !86
  %i.ln = icmp eq i32 %i.lm, 0
  %i.lo = zext i1 %i.ln to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.ll, i32 noundef %i.lo) #21
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !120
  call void @gtk_toggle_button_set_active(ptr noundef %i.lq, i32 noundef 0) #21
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ew, i64 96
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !121
  call void @gtk_toggle_button_set_active(ptr noundef %i.ls, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %bb.ap

bb.ap:                                            ; preds = %_gui_sliders_update.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %bb.b, %bb.ap
  ret void
}

declare i32 @dt_history_check_module_exists(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_find_coeffs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1540
  %i.e = load i32, ptr %i.d, align 4, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1888 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !12
  %i.h = tail call i1 @llvm.is.fpclass.f32(float %i.g, /* (norm) */ i32 264)
  br i1 %i.h, label %bb.c, label %.critedge

bb.b:                                             ; preds = %bb.e, %bb.d
  %.lcssa92 = phi i1 [ %i.v, %bb.d ], [ %i.ab, %bb.e ]
  br i1 %.lcssa92, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.i = load <2 x float>, ptr %i.f, align 4, !tbaa !12
  %i.j = fpext <2 x float> %i.i to <2 x double>
  store <2 x double> %i.j, ptr %1, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1896
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !12
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  store double %i.o, ptr %i.l, align 8, !tbaa !116
  %i.p = extractelement <2 x double> %i.n, i64 1
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1892
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = tail call i1 @llvm.is.fpclass.f32(float %i.r, /* (norm) */ i32 264)
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1896
  %i.u = load float, ptr %i.t, align 4, !tbaa !12
  %i.v = tail call i1 @llvm.is.fpclass.f32(float %i.u, /* (norm) */ i32 264) ; 2 uses
  %i.w = and i32 %i.e, 16384
  %i.x = icmp ne i32 %i.w, 0
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1900
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = tail call i1 @llvm.is.fpclass.f32(float %i.aa, /* (norm) */ i32 264)
  br label %bb.b

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ad = tail call i32 @dt_image_is_matrix_correction_supported(ptr noundef nonnull %i.ac) #21
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %.preheader67, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1904
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1728
  %i.ah = call i32 @dt_colorspaces_conversion_matrices_rgb(ptr noundef nonnull %i.af, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #21
  %.not11.i.not = icmp eq i32 %i.ah, 0
  br i1 %.not11.i.not, label %.critedge66, label %_calculate_bogus_daylight_wb.exit

_calculate_bogus_daylight_wb.exit:                ; preds = %bb.f
  %i.ai = load double, ptr %i.a, align 16, !tbaa !116
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !116 ; 2 uses
  %i.al = fdiv reassoc nsz arcp contract afn double %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load <2 x double>, ptr %i.am, align 16, !tbaa !116
  %i.ao = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv reassoc nsz arcp contract afn <2 x double> %i.an, %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.preheader67

.preheader67:                                     ; preds = %.critedge, %_calculate_bogus_daylight_wb.exit
  %.sroa.0.0 = phi nsz double [ %i.al, %_calculate_bogus_daylight_wb.exit ], [ 1.000000e+00, %.critedge ]
  %i.ar = phi <2 x double> [ %i.aq, %_calculate_bogus_daylight_wb.exit ], [ splat (double 1.000000e+00), %.critedge ] ; 2 uses
  store double %.sroa.0.0, ptr %1, align 8, !tbaa !116
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !116
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = extractelement <2 x double> %i.ar, i64 0
  store double %i.as, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !116
  %i.at = extractelement <2 x double> %i.ar, i64 1
  br label %.loopexit

.critedge66:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.au = call i32 @dt_wb_presets_count() #21
  %.not5672 = icmp sgt i32 %i.au, 0
  br i1 %.not5672, label %.lr.ph, label %.critedge60

.lr.ph:                                           ; preds = %.critedge66
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 912
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 976
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.04673 = phi i32 [ 0, %.lr.ph ], [ %i.bk, %bb.i ] ; 2 uses
  %i.ax = call ptr @dt_wb_preset(i32 noundef %.04673) #21 ; 5 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !106
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) %i.av) #22
  %.not54 = icmp eq i32 %i.az, 0
  br i1 %.not54, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !107
  %i.bc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(1) %i.aw) #22
  %.not55 = icmp eq i32 %i.bc, 0
  br i1 %.not55, label %.preheader68, label %bb.i

.preheader68:                                     ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.be = load double, ptr %i.bd, align 8, !tbaa !116
  store double %i.be, ptr %1, align 8, !tbaa !116
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !116
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.bg, ptr %i.bh, align 8, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !116
  br label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bk = add nuw nsw i32 %.04673, 1              ; 2 uses
  %i.bl = call i32 @dt_wb_presets_count() #21
  %.not56 = icmp slt i32 %i.bk, %i.bl
  br i1 %.not56, label %bb.g, label %.critedge60

.critedge60:                                      ; preds = %bb.i, %.critedge66
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !47  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1236 ; 2 uses
  %i.bo = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bn) #22 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, 7
  br i1 %i.bp, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %.critedge60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bs = load i64, ptr %i.br, align 1
  %i.bt = icmp ne i64 %i.bs, 7453004583995205677
  %i.bu = zext i1 %i.bt to i32
  %.not.i62 = icmp eq i32 %i.bu, 0
  br i1 %.not.i62, label %_ignore_missing_wb.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %.critedge60
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 1988
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !228
  switch i32 %i.bw, label %_ignore_missing_wb.exit.thread [
    i32 0, label %bb.k
    i32 8, label %bb.k
  ]

bb.k:                                             ; preds = %.critedge.i, %.critedge.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 1104 ; 16 uses
  %i.by = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(21) @.str.71) #22
  %.not28.i = icmp eq i32 %i.by, 0
  br i1 %.not28.i, label %_ignore_missing_wb.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(22) @.str.72) #22
  %.not28.1.i = icmp eq i32 %i.bz, 0
  br i1 %.not28.1.i, label %_ignore_missing_wb.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(21) @.str.73) #22
  %.not28.2.i = icmp eq i32 %i.ca, 0
  br i1 %.not28.2.i, label %_ignore_missing_wb.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(24) @.str.74) #22
  %.not28.3.i = icmp eq i32 %i.cb, 0
  br i1 %.not28.3.i, label %_ignore_missing_wb.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(21) @.str.75) #22
  %.not28.4.i = icmp eq i32 %i.cc, 0
  br i1 %.not28.4.i, label %_ignore_missing_wb.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(21) @.str.76) #22
  %.not28.5.i = icmp eq i32 %i.cd, 0
  br i1 %.not28.5.i, label %_ignore_missing_wb.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(21) @.str.77) #22
  %.not28.6.i = icmp eq i32 %i.ce, 0
  br i1 %.not28.6.i, label %_ignore_missing_wb.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(25) @.str.78) #22
  %.not28.7.i = icmp eq i32 %i.cf, 0
  br i1 %.not28.7.i, label %_ignore_missing_wb.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(10) @.str.79) #22
  %.not28.8.i = icmp eq i32 %i.cg, 0
  br i1 %.not28.8.i, label %_ignore_missing_wb.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(17) @.str.80) #22
  %.not28.9.i = icmp eq i32 %i.ch, 0
  br i1 %.not28.9.i, label %_ignore_missing_wb.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(16) @.str.81) #22
  %.not28.10.i = icmp eq i32 %i.ci, 0
  br i1 %.not28.10.i, label %_ignore_missing_wb.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(14) @.str.82) #22
  %.not28.11.i = icmp eq i32 %i.cj, 0
  br i1 %.not28.11.i, label %_ignore_missing_wb.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(14) @.str.83) #22
  %.not28.12.i = icmp eq i32 %i.ck, 0
  br i1 %.not28.12.i, label %_ignore_missing_wb.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(12) @.str.84) #22
  %.not28.13.i = icmp eq i32 %i.cl, 0
  br i1 %.not28.13.i, label %_ignore_missing_wb.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(14) @.str.85) #22
  %.not28.14.i = icmp eq i32 %i.cm, 0
  br i1 %.not28.14.i, label %_ignore_missing_wb.exit.thread, label %_ignore_missing_wb.exit

_ignore_missing_wb.exit:                          ; preds = %bb.y
  %i.cn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(11) @.str.86) #22
  %.not28.15.i.not = icmp eq i32 %i.cn, 0
  br i1 %.not28.15.i.not, label %_ignore_missing_wb.exit.thread, label %bb.z

bb.z:                                             ; preds = %_ignore_missing_wb.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 1232
  %i.cp = load i32, ptr %i.co, align 16, !tbaa !229
  %.not58 = icmp eq i32 %i.cp, 0
  br i1 %.not58, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #21
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 1236
  call void (ptr, ...) @dt_control_log(ptr noundef %i.cq, ptr noundef nonnull %i.cr) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 1236
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.69, ptr noundef nonnull %i.cs) #21
  br label %_ignore_missing_wb.exit.thread

_ignore_missing_wb.exit.thread:                   ; preds = %bb.w, %bb.r, %bb.v, %bb.q, %bb.x, %bb.p, %bb.t, %bb.o, %bb.y, %bb.n, %bb.u, %bb.m, %bb.l, %bb.s, %bb.k, %bb.j, %.critedge.i, %bb.ab, %_ignore_missing_wb.exit
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, ptr %1, align 8, !tbaa !116
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 1.500000e+00, ptr %i.ct, align 8, !tbaa !116
  br label %.loopexit

.loopexit:                                        ; preds = %_ignore_missing_wb.exit.thread, %.preheader67, %.preheader68, %.preheader
  %.sink88 = phi i64 [ 24, %_ignore_missing_wb.exit.thread ], [ 24, %.preheader67 ], [ 16, %.preheader68 ], [ 24, %.preheader ]
  %.sink = phi double [ 1.000000e+00, %_ignore_missing_wb.exit.thread ], [ %i.at, %.preheader67 ], [ %i.bj, %.preheader68 ], [ %i.p, %.preheader ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.sink88
  store double %.sink, ptr %i.cu, align 8, !tbaa !116
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

declare void @dt_bauhaus_combobox_clear(ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_combobox_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(12) ptr @malloc(i64 noundef 12) #20 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !171
  store i32 -999, ptr %i.a, align 4, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -999, ptr %i.c, align 4, !tbaa !232
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -999, ptr %i.d, align 4, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  tail call void @free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !171
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !87  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.f = load <4 x float>, ptr %i.d, align 4, !tbaa !12
  %i.g = fpext <4 x float> %i.f to <4 x double>
  store <4 x double> %i.g, ptr %i.e, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 388
  tail call fastcc void @_mul2temp(ptr %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.k, i32 noundef 2) #21
  %i.l = getelementptr i8, ptr %0, i64 664
  %.val10 = load ptr, ptr %i.l, align 8, !tbaa !47
  %.val11 = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  store i32 2, ptr %i.m, align 4, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %.val10, i64 2480
  store i32 0, ptr %i.n, align 16, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.e = load float, ptr %i.d, align 16, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.g = load float, ptr %i.f, align 16, !tbaa !12
  %i.h = fcmp reassoc nsz arcp contract afn olt float %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.o = load float, ptr %i.n, align 4, !tbaa !12 ; 2 uses
  %i.p = fcmp reassoc nsz arcp contract afn ogt float %i.o, 1.000000e-03
  %i.q = select i1 %i.p, float %i.o, float 1.000000e+00 ; 4 uses
  %i.r = load float, ptr %i.m, align 16, !tbaa !12 ; 2 uses
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.r, 1.000000e-03
  %i.t = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.r
  %spec.select21 = select reassoc nsz arcp contract afn i1 %i.s, float %i.t, float 1.000000e+00
  %i.u = fmul reassoc nsz arcp contract afn float %spec.select21, %i.q
  %i.v = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.u, float 8.000000e+00)
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.v, float 0.000000e+00)
  store float %i.w, ptr %i.j, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.y = load float, ptr %i.x, align 4, !tbaa !12 ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, 1.000000e-03
  %i.aa = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.y
  %spec.select21.1 = select reassoc nsz arcp contract afn i1 %i.z, float %i.aa, float 1.000000e+00
  %i.ab = fmul reassoc nsz arcp contract afn float %spec.select21.1, %i.q
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ab, float 8.000000e+00)
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ac, float 0.000000e+00)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store float %i.ad, ptr %i.ae, align 4, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ag = load float, ptr %i.af, align 8, !tbaa !12 ; 2 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 1.000000e-03
  %i.ai = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ag
  %spec.select21.2 = select reassoc nsz arcp contract afn i1 %i.ah, float %i.ai, float 1.000000e+00
  %i.aj = fmul reassoc nsz arcp contract afn float %spec.select21.2, %i.q
  %i.ak = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.aj, float 8.000000e+00)
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ak, float 0.000000e+00)
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store float %i.al, ptr %i.am, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12 ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.ao, 1.000000e-03
  %i.aq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ao
  %spec.select21.3 = select reassoc nsz arcp contract afn i1 %i.ap, float %i.aq, float 1.000000e+00
  %i.ar = fmul reassoc nsz arcp contract afn float %spec.select21.3, %i.q
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ar, float 8.000000e+00)
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.as, float 0.000000e+00)
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store float %i.at, ptr %i.au, align 4, !tbaa !12
  store float 1.000000e+00, ptr %i.ae, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.aw, i32 noundef 1) #21
  %i.ax = getelementptr i8, ptr %0, i64 664
  %.val = load ptr, ptr %i.ax, align 8, !tbaa !47
  %.val22 = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  store i32 1, ptr %i.ay, align 4, !tbaa !86
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 2480
  store i32 0, ptr %i.az, align 16, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #15

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [6 x ptr], align 8                ; 7 uses
  %i.b = alloca [7 x ptr], align 8                ; 7 uses
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef 656) #21 ; 29 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(656) %i.c, i8 0, i64 656, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.c, ptr %i.d, align 16, !tbaa !87
  %i.e = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.23) #21 ; 2 uses
  %i.f = tail call i32 @g_strcmp0(ptr noundef %i.e, ptr noundef nonnull @.str.24) #21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 584 ; 2 uses
  store i32 %i.f, ptr %i.g, align 8, !tbaa !161
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_iop_gui_alloc.exit
  %i.h = tail call i32 @g_strcmp0(ptr noundef %i.e, ptr noundef nonnull @.str.25) #21
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %.pre = load i32, ptr %i.g, align 8, !tbaa !161
  %i.k = icmp eq i32 %.pre, 0
  %i.l = zext i1 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_iop_gui_alloc.exit
  %.not108 = phi i32 [ 1, %_iop_gui_alloc.exit ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = phi i32 [ 0, %_iop_gui_alloc.exit ], [ %i.j, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 588
  store i32 %i.m, ptr %i.n, align 4, !tbaa !162
  %i.o = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.26) #21
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  store i32 %i.o, ptr %i.p, align 8, !tbaa !118
  %i.q = tail call ptr @dt_iop_togglebutton_new(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef nonnull @_btn_toggled, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dtgtk_cairo_paint_camera, ptr noundef null) #21 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !119
  %i.s = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #21
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.q, ptr noundef %i.s) #21
  %i.t = tail call ptr @dt_color_picker_new_with_cst(ptr noundef nonnull %0, i32 noundef 2, ptr noundef null, i32 noundef -1) #21 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 5 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !173
  %i.v = tail call ptr @dt_action_define_iop(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30, ptr noundef %i.t, ptr noundef nonnull @dt_action_def_toggle) #21 ; 0 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !173
  tail call void @dtgtk_togglebutton_set_paint(ptr noundef %i.w, ptr noundef nonnull @dtgtk_cairo_paint_colorpicker, i32 noundef 0, ptr noundef null) #21
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !173
  tail call void @dt_gui_add_class(ptr noundef %i.x, ptr noundef nonnull @.str.31) #21
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.z = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #21
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.y, ptr noundef %i.z) #21
  %i.aa = tail call ptr @dt_iop_togglebutton_new(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef nonnull @_btn_toggled, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dtgtk_cairo_paint_masks_drawn, ptr noundef null) #21 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !120
  %i.ac = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #21
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.aa, ptr noundef %i.ac) #21
  %i.ad = tail call ptr @dt_iop_togglebutton_new(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef nonnull @_btn_toggled, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dtgtk_cairo_paint_bulb, ptr noundef null) #21 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !121
  %i.af = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #21
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ad, ptr noundef %i.af) #21
  %i.ag = tail call ptr @dt_iop_togglebutton_new(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef nonnull @_btn_toggled, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dtgtk_cairo_paint_bulb_mod, ptr noundef null) #21 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !122
  %i.ai = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #21
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ag, ptr noundef %i.ai) #21
  %i.aj = tail call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #21
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.ak, i32 noundef 1) #21
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !173 ; 2 uses
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.am, i32 noundef 1) #21
  store ptr %i.am, ptr %i.al, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !120 ; 2 uses
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.ao, i32 noundef 1) #21
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !121 ; 2 uses
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.aq, i32 noundef 1) #21
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !122 ; 2 uses
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.as, i32 noundef 1) #21
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 -1 to ptr), ptr %i.at, align 8, !tbaa !14
  %i.au = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.39, i32 noundef 2124, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.aj, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
end_hunk_0
begin_hunk_1_@temp_label_click:bb.a
  store i32 0, ptr %i.g, align 8, !tbaa !161
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink = phi i32 [ 1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  store i32 %.sink, ptr %i.h, align 4, !tbaa !162
  tail call void @g_free(ptr noundef %i.c) #21
  tail call fastcc void @_color_temptint_sliders(ptr noundef nonnull %2)
  tail call fastcc void @_color_rgb_sliders(ptr noundef nonnull %2)
  %.val = load ptr, ptr %i.a, align 16, !tbaa !87
  tail call fastcc void @_color_finetuning_slider(ptr %.val)
  ret i32 1
}

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_widget_set_no_show_all(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_temp_tint_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %2 = alloca %struct.cmsCIEXYZ, align 8          ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !87  ; 8 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #21
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.g = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.f) #21
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  store float %i.g, ptr %i.h, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.k = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.j) #21 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 388
  store float %i.k, ptr %i.l, align 4, !tbaa !115
  %i.m = load float, ptr %i.h, align 8, !tbaa !114
  %i.n = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.o = fpext reassoc nsz arcp contract afn float %i.k to double
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias writable align 8 %2, double noundef %i.n)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !164
  %.val.i = load ptr, ptr %i.d, align 16, !tbaa !87 ; 8 uses
  %.sroa.0.0.copyload.i = load double, ptr %2, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 392
  %i.t = load double, ptr %i.s, align 8, !tbaa !116
  %i.u = fmul reassoc nsz arcp contract afn double %i.t, %.sroa.0.0.copyload.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i, i64 400
  %i.w = load double, ptr %i.v, align 8, !tbaa !116
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 408
  %i.y = load double, ptr %i.x, align 8, !tbaa !116
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, %.sroa.5.0.copyload.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 416
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !116
  %i.ac = fmul reassoc nsz arcp contract afn double %i.ab, %.sroa.0.0.copyload.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 424
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !116
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 432
  %i.ag = load double, ptr %i.af, align 8, !tbaa !116
  %i.ah = fmul reassoc nsz arcp contract afn double %i.ag, %.sroa.5.0.copyload.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 440
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 472
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.am = fdiv reassoc nsz arcp contract afn double %i.r, %i.o ; 3 uses
  %i.an = fmul reassoc nsz arcp contract afn double %i.w, %i.am
  %i.ao = fadd reassoc nsz arcp contract afn double %i.an, %i.u
  %i.ap = fadd reassoc nsz arcp contract afn double %i.ao, %i.z
  %i.aq = fmul reassoc nsz arcp contract afn double %i.ae, %i.am
  %i.ar = fadd reassoc nsz arcp contract afn double %i.aq, %i.ac
  %i.as = fadd reassoc nsz arcp contract afn double %i.ar, %i.ah ; 2 uses
  %i.at = load <4 x double>, ptr %i.ai, align 8, !tbaa !116 ; 3 uses
  %i.au = shufflevector <4 x double> %i.at, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.av = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul reassoc nsz arcp contract afn <2 x double> %i.au, %i.aw
  %i.ay = load <2 x double>, ptr %i.aj, align 8, !tbaa !116 ; 2 uses
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x double> %i.at, <4 x double> %i.az, <2 x i32> <i32 1, i32 4>
  %i.bb = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul reassoc nsz arcp contract afn <2 x double> %i.ba, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn <2 x double> %i.bd, %i.ax
  %i.bf = shufflevector <4 x double> %i.at, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.bh = insertelement <2 x double> poison, double %.sroa.5.0.copyload.i, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fmul reassoc nsz arcp contract afn <2 x double> %i.bg, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn <2 x double> %i.be, %i.bj
  %i.bl = fdiv reassoc nsz arcp contract afn double %i.as, %i.ap
  store double %i.bl, ptr %i.p, align 8, !tbaa !116
  %i.bm = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv reassoc nsz arcp contract afn <2 x double> %i.bn, %i.bk
  store <2 x double> %i.bo, ptr %i.al, align 8, !tbaa !116
  store double 1.000000e+00, ptr %i.ak, align 8, !tbaa !116
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !102
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.bq, i32 noundef 2) #21
  %i.br = getelementptr i8, ptr %1, i64 664
  %.val = load ptr, ptr %i.br, align 8, !tbaa !47
  %i.bs = getelementptr i8, ptr %1, i64 680
  %.val19 = load ptr, ptr %i.bs, align 8, !tbaa !88
  %i.bt = getelementptr inbounds nuw i8, ptr %.val19, i64 16
  store i32 2, ptr %i.bt, align 4, !tbaa !86
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 2480
  store i32 0, ptr %i.bu, align 16, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_preset_tune_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %2 = alloca %struct.dt_wb_data, align 8         ; 6 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load atomic i32, ptr %i.e seq_cst, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !87  ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88   ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.m = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.l) #21 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.p = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.o) #21
  %i.q = fptosi float %i.p to i32                 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119
  %i.t = icmp eq i32 %i.m, 0
  %i.u = zext i1 %i.t to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.s, i32 noundef %i.u) #21
  %.not119 = icmp eq i32 %i.m, 1
  br i1 %.not119, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !120
  %i.x = icmp eq i32 %i.m, 2                      ; 2 uses
  %i.y = zext i1 %i.x to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.w, i32 noundef %i.y) #21
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ab = icmp eq i32 %i.m, 3
  %i.ac = zext i1 %i.ab to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.aa, i32 noundef %i.ac) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !122
  %i.af = icmp eq i32 %i.m, 4
  %i.ag = zext i1 %i.af to i32                    ; 2 uses
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ae, i32 noundef %i.ag) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 4 uses
  %.val136 = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %.val136, i64 16
  store i32 %i.m, ptr %i.aj, align 4, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 2480
  store i32 %i.ag, ptr %i.ak, align 16, !tbaa !67
  switch i32 %i.m, label %bb.k [
    i32 -1, label %bb.ac
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 2448
  %i.am = load <4 x double>, ptr %i.al, align 16, !tbaa !116
  %i.an = fptrunc <4 x double> %i.am to <4 x float>
  store <4 x float> %i.an, ptr %i.j, align 4, !tbaa !12
  br label %.critedge2.thread

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !173
  %i.aq = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.ap) #21
  %.not120 = icmp eq i32 %i.aq, 0
  br i1 %.not120, label %bb.g, label %.critedge2.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !173
  call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef %i.ar, ptr noundef nonnull @.str.104, ptr noundef null, ptr noundef nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.critedge2.thread

bb.h:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.at = load <4 x double>, ptr %i.as, align 8, !tbaa !116
  %i.au = fptrunc <4 x double> %i.at to <4 x float>
  store <4 x float> %i.au, ptr %i.j, align 4, !tbaa !12
  br label %.critedge2.thread

bb.i:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 2416
  %i.aw = load <4 x double>, ptr %i.av, align 16, !tbaa !116
  %i.ax = fptrunc <4 x double> %i.aw to <4 x float>
  store <4 x float> %i.ax, ptr %i.j, align 4, !tbaa !12
  br label %.critedge2.thread

bb.j:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 2448
  %i.az = load <4 x double>, ptr %i.ay, align 16, !tbaa !116
  %i.ba = fptrunc <4 x double> %i.az to <4 x float>
  store <4 x float> %i.ba, ptr %i.j, align 4, !tbaa !12
  br label %.critedge2.thread

bb.k:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !102
  %i.bc = tail call ptr @dt_bauhaus_combobox_get_data(ptr noundef %i.bb) #21 ; 10 uses
  %.not121 = icmp eq ptr %i.bc, null
  br i1 %.not121, label %.critedge131, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !110 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !111
  %.not122146 = icmp sgt i32 %i.be, %i.bg
  br i1 %.not122146, label %.critedge131, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.p
  %.0110147 = phi i32 [ %i.ci, %bb.p ], [ %i.be, %bb.l ] ; 7 uses
  %i.bh = tail call ptr @dt_wb_preset(i32 noundef %.0110147) #21
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !106
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 912
  %i.bl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bi, ptr noundef nonnull dereferenceable(1) %i.bk) #22
  %.not123 = icmp eq i32 %i.bl, 0
  br i1 %.not123, label %bb.m, label %.critedge131

bb.m:                                             ; preds = %.lr.ph
  %i.bm = tail call ptr @dt_wb_preset(i32 noundef %.0110147) #21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !107
  %i.bp = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 976
  %i.br = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bo, ptr noundef nonnull dereferenceable(1) %i.bq) #22
  %.not124 = icmp eq i32 %i.br, 0
  br i1 %.not124, label %bb.n, label %.critedge131

bb.n:                                             ; preds = %bb.m
  %i.bs = tail call ptr @dt_wb_preset(i32 noundef %.0110147) #21
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !108
  %i.bv = load i32, ptr %i.bc, align 4, !tbaa !112
  %i.bw = tail call ptr @dt_wb_preset(i32 noundef %i.bv) #21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !108
  %i.bz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(1) %i.by) #22
  %.not125 = icmp eq i32 %i.bz, 0
  br i1 %.not125, label %bb.o, label %.critedge131

bb.o:                                             ; preds = %bb.n
  %i.ca = tail call ptr @dt_wb_preset(i32 noundef %.0110147) #21
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !113
  %i.cd = icmp eq i32 %i.cc, %i.q
  br i1 %i.cd, label %.critedge, label %bb.p

.critedge:                                        ; preds = %bb.o
  %i.ce = tail call ptr @dt_wb_preset(i32 noundef %.0110147) #21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load <4 x double>, ptr %i.cf, align 8, !tbaa !116
  %i.ch = fptrunc <4 x double> %i.cg to <4 x float>
  store <4 x float> %i.ch, ptr %i.j, align 4, !tbaa !12
  br label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ci = add nsw i32 %.0110147, 1
  %i.cj = load i32, ptr %i.bf, align 4, !tbaa !111
  %.not122.not = icmp slt i32 %.0110147, %i.cj
  br i1 %.not122.not, label %.lr.ph, label %.critedge131

.critedge131:                                     ; preds = %bb.m, %.lr.ph, %bb.p, %bb.n, %bb.l, %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !110 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !111
  %i.co = icmp slt i32 %i.cl, %i.cn
  br i1 %i.co, label %.lr.ph154, label %.critedge2.thread

.lr.ph154:                                        ; preds = %.critedge131, %bb.u
  %.0.in152 = phi i32 [ %.0153, %bb.u ], [ %i.cl, %.critedge131 ] ; 4 uses
  %.0153 = add nsw i32 %.0.in152, 1               ; 7 uses
  %i.cp = tail call ptr @dt_wb_preset(i32 noundef %.0153) #21
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !106
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 912
  %i.ct = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cq, ptr noundef nonnull dereferenceable(1) %i.cs) #22
  %.not127 = icmp eq i32 %i.ct, 0
  br i1 %.not127, label %bb.q, label %.critedge2.thread

bb.q:                                             ; preds = %.lr.ph154
  %i.cu = tail call ptr @dt_wb_preset(i32 noundef %.0153) #21
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !107
  %i.cx = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 976
  %i.cz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(1) %i.cy) #22
  %.not128 = icmp eq i32 %i.cz, 0
  br i1 %.not128, label %bb.r, label %.critedge2.thread

bb.r:                                             ; preds = %bb.q
  %i.da = tail call ptr @dt_wb_preset(i32 noundef %.0153) #21
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !108
  %i.dd = load i32, ptr %i.bc, align 4, !tbaa !112
  %i.de = tail call ptr @dt_wb_preset(i32 noundef %i.dd) #21
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !108
  %i.dh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dc, ptr noundef nonnull dereferenceable(1) %i.dg) #22
  %.not129 = icmp eq i32 %i.dh, 0
  br i1 %.not129, label %bb.s, label %.critedge2.thread

bb.s:                                             ; preds = %bb.r
  %i.di = tail call ptr @dt_wb_preset(i32 noundef %.0.in152) #21
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !113
  %i.dl = icmp slt i32 %i.dk, %i.q
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dm = tail call ptr @dt_wb_preset(i32 noundef %.0153) #21
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !113
  %i.dp = icmp sgt i32 %i.do, %i.q
  br i1 %i.dp, label %.critedge2, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dq = load i32, ptr %i.cm, align 4, !tbaa !111
  %i.dr = icmp slt i32 %.0153, %i.dq
  br i1 %i.dr, label %.lr.ph154, label %.critedge2.thread

.critedge2:                                       ; preds = %bb.t
  %i.ds = icmp eq i32 %.0.in152, -2147483648
  br i1 %i.ds, label %.critedge2.thread, label %.critedge134

.critedge134:                                     ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.q, ptr %i.dt, align 8, !tbaa !113
  %i.du = tail call ptr @dt_wb_preset(i32 noundef %.0.in152) #21
  %i.dv = tail call ptr @dt_wb_preset(i32 noundef %.0153) #21
  call void @dt_wb_preset_interpolate(ptr noundef %i.du, ptr noundef %i.dv, ptr noundef nonnull %2) #21
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dx = load <4 x double>, ptr %i.dw, align 8, !tbaa !116
  %i.dy = fptrunc <4 x double> %i.dx to <4 x float>
  store <4 x float> %i.dy, ptr %i.j, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.v

bb.v:                                             ; preds = %.critedge134, %.critedge
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !110 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !111
  %.not142 = icmp eq i32 %i.ea, %i.ec
  br i1 %.not142, label %.critedge2.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = call ptr @dt_wb_preset(i32 noundef %i.ea) #21
  %i.ee = load i32, ptr %i.bc, align 4, !tbaa !112
  %i.ef = call ptr @dt_wb_preset(i32 noundef %i.ee) #21
  %i.eg = load i32, ptr %i.eb, align 4, !tbaa !111
  %i.eh = call ptr @dt_wb_preset(i32 noundef %i.eg) #21
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 104
  %i.ek = atomicrmw add ptr %i.ej, i32 1 seq_cst, align 4 ; 0 uses
  %i.el = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.en = load i32, ptr %i.em, align 8, !tbaa !113
  %i.eo = sitofp reassoc nsz arcp contract afn i32 %i.en to float
  call void @dt_bauhaus_slider_set_hard_min(ptr noundef %i.el, float noundef %i.eo) #21
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !113
  %i.es = sitofp reassoc nsz arcp contract afn i32 %i.er to float
  call void @dt_bauhaus_slider_set_hard_max(ptr noundef %i.ep, float noundef %i.es) #21
  %i.et = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !113
  %i.ew = sitofp reassoc nsz arcp contract afn i32 %i.ev to float
  call void @dt_bauhaus_slider_set_default(ptr noundef %i.et, float noundef %i.ew) #21
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 104
  %i.ez = atomicrmw add ptr %i.ey, i32 -1 seq_cst, align 4 ; 0 uses
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.lr.ph154, %bb.q, %bb.u, %bb.r, %.critedge131, %.critedge2, %bb.w, %bb.v, %bb.f, %bb.g, %bb.j, %bb.i, %bb.h, %bb.e
  %.1114 = phi i32 [ 0, %bb.j ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %.critedge2 ], [ 1, %bb.w ], [ 0, %bb.v ], [ 0, %.critedge131 ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.q ], [ 0, %.lr.ph154 ]
  %i.fa = load ptr, ptr %i.n, align 8, !tbaa !103
  call void @gtk_widget_set_visible(ptr noundef %i.fa, i32 noundef %.1114) #21
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.fc = load ptr, ptr %i.fb, align 16, !tbaa !238 ; 2 uses
  %.not130 = icmp eq ptr %i.fc, null
  br i1 %.not130, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge2.thread
  call void @gtk_toggle_button_set_active(ptr noundef nonnull %i.fc, i32 noundef 1) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge2.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  br i1 %i.x, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 388
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.val = load ptr, ptr %i.g, align 16, !tbaa !87
  call fastcc void @_mul2temp(ptr %.val, ptr noundef %i.j, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.in = phi ptr [ %i.c, %bb.aa ], [ %i.fe, %bb.z ]
  %.in170 = phi ptr [ %i.b, %bb.aa ], [ %i.fd, %bb.z ]
  %i.ff = load float, ptr %.in170, align 4, !tbaa !12
  %i.fg = load float, ptr %.in, align 4, !tbaa !12
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 104
  %i.fj = atomicrmw add ptr %i.fi, i32 1 seq_cst, align 4 ; 0 uses
  %i.fk = load ptr, ptr %i.h, align 8, !tbaa !96
  call void @dt_bauhaus_slider_set(ptr noundef %i.fk, float noundef %i.ff) #21
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !97
  call void @dt_bauhaus_slider_set(ptr noundef %i.fm, float noundef %i.fg) #21
  %i.fn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !98
  %i.fp = load float, ptr %i.j, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.fo, float noundef %i.fp) #21
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !99
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.fr, float noundef %i.ft) #21
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !100
  %i.fw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.fv, float noundef %i.fx) #21
  %i.fy = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !101
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.fz, float noundef %i.gb) #21
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  %i.ge = atomicrmw add ptr %i.gd, i32 -1 seq_cst, align 4 ; 0 uses
  call fastcc void @_color_temptint_sliders(ptr noundef nonnull %1)
  call fastcc void @_color_rgb_sliders(ptr noundef nonnull %1)
  %.val137 = load ptr, ptr %i.g, align 16, !tbaa !87
  call fastcc void @_color_finetuning_slider(ptr %.val137)
  %i.gf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !239
  call void @dt_dev_add_history_item(ptr noundef %i.gf, ptr noundef nonnull %1, i32 noundef 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.d, %bb.a
  ret void
}

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_preference_changed(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !87  ; 4 uses
  %i.c = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.23) #21 ; 2 uses
  %i.d = tail call i32 @g_strcmp0(ptr noundef %i.c, ptr noundef nonnull @.str.24) #21
  %.not = icmp ne i32 %i.d, 0                     ; 2 uses
  %i.e = zext i1 %.not to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  store i32 %i.e, ptr %i.f, align 8, !tbaa !161
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @g_strcmp0(ptr noundef %i.c, ptr noundef nonnull @.str.25) #21
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  store i32 %i.j, ptr %i.k, align 4, !tbaa !162
  %i.l = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.26) #21 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store i32 %i.l, ptr %i.m, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117
  tail call void @gtk_widget_set_visible(ptr noundef %i.o, i32 noundef %i.l) #21
  tail call fastcc void @_color_temptint_sliders(ptr noundef nonnull %1)
  tail call fastcc void @_color_rgb_sliders(ptr noundef nonnull %1)
  %.val = load ptr, ptr %i.a, align 16, !tbaa !87
  tail call fastcc void @_color_finetuning_slider(ptr %.val)
  ret void
}

declare ptr @gtk_stack_new() local_unnamed_addr #5

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @gui_cleanup(ptr nofree noundef writeonly captures(none) initializes((492, 496)) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 0, ptr %i.a, align 4, !tbaa !240
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !87  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !89
  %i.e = tail call i32 @dt_is_scene_referred() #21
  %i.f = icmp ne i32 %i.e, 0                      ; 3 uses
  %i.g = select i1 %i.f, i32 4, i32 0             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.g, ptr %i.h, align 4, !tbaa !86
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #21
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !119
  %not. = xor i1 %i.f, true
  %i.k = zext i1 %not. to i32
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.j, i32 noundef %i.k) #21
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.m, i32 noundef 0) #21
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !121
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.o, i32 noundef 0) #21
end_hunk_1
