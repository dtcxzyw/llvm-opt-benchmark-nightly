inline.NumInlined: 105
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_mul2temp:bb.a
  %i.bi = fcmp reassoc nsz arcp contract afn ogt double %i.bh, 1.000000e+00
  br i1 %i.bi, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = fmul reassoc nsz arcp contract afn double %i.u, %i.g
  %i.bk = fmul reassoc nsz arcp contract afn double %i.w, %i.k
  %i.bl = fadd reassoc nsz arcp contract afn double %i.bk, %i.bj
  %i.bm = extractelement <2 x double> %i.al, i64 0
  %i.bn = fmul reassoc nsz arcp contract afn double %i.y, %i.bm
  %i.bo = fadd reassoc nsz arcp contract afn double %i.bl, %i.bn
  %i.bp = extractelement <2 x double> %i.al, i64 1
  %i.bq = fmul reassoc nsz arcp contract afn double %i.aa, %i.bp
  %i.br = fadd reassoc nsz arcp contract afn double %i.bo, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn double %.sroa.0.0.copyload.i, %i.br
  %i.bt = fmul reassoc nsz arcp contract afn double %.sroa.5.0.copyload.i, %i.at
  %i.bu = fdiv reassoc nsz arcp contract afn double %i.bt, %i.bs
  %i.bv = fptrunc reassoc nsz arcp contract afn double %i.bu to float ; 2 uses
  store float %i.bv, ptr %2, align 4, !tbaa !11
  %i.bw = load float, ptr %1, align 4, !tbaa !11  ; 2 uses
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bw, 1.901000e+03
  br i1 %i.bx, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.by = fcmp reassoc nsz arcp contract afn ogt float %i.bw, 2.500000e+04
  br i1 %i.by, label %.sink.split.i, label %bb.e

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.sink.i = phi float [ 1.901000e+03, %bb.c ], [ 2.500000e+04, %bb.d ]
  store float %.sink.i, ptr %1, align 4, !tbaa !11
  %.pre = load float, ptr %2, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i, %bb.d
  %i.bz = phi float [ %.pre, %.sink.split.i ], [ %i.bv, %bb.d ] ; 2 uses
  %i.ca = fpext reassoc nsz arcp contract afn float %i.bz to double
  %i.cb = fcmp reassoc nsz arcp contract afn olt double %i.ca, 1.350000e-01 ; 2 uses
  %i.cc = select i1 %i.cb, float 1.350000e-01, float %i.bz ; 2 uses
  %i.cd = fpext reassoc nsz arcp contract afn float %i.cc to double
  %i.ce = fcmp reassoc nsz arcp contract afn ogt double %i.cd, 2.326000e+00 ; 2 uses
  %i.cf = or i1 %i.cb, %i.ce
  br i1 %i.cf, label %bb.f, label %_XYZ_to_temperature.exit

bb.f:                                             ; preds = %bb.e
  %simplifycfg.merge.i = select i1 %i.ce, float 2.326000e+00, float %i.cc
  store float %simplifycfg.merge.i, ptr %2, align 4, !tbaa !11
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !123 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.c) #22
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.e) #22
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 584 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !206
  %.not = icmp eq i32 %i.h, 0
  %i.i = zext i1 %.not to i32
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.f, i32 noundef %i.i) #22
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.k = load i32, ptr %i.g, align 8, !tbaa !206
  %.not84 = icmp eq i32 %i.k, 0
  %i.l = zext i1 %.not84 to i32
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.j, i32 noundef %i.l) #22
  %i.m = load i32, ptr %i.g, align 8, !tbaa !206
  %.not85 = icmp eq i32 %i.m, 0
  br i1 %.not85, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.o = load i32, ptr %i.n, align 4, !tbaa !207
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.q = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.p) #22
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.s = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.r) #22 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2416
  %i.w = load double, ptr %i.v, align 16, !tbaa !158
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2424
  %i.y = load double, ptr %i.x, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 2432
  %i.aa = load double, ptr %i.z, align 16, !tbaa !158
  %i.ab = fpext reassoc nsz arcp contract afn float %i.q to double ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias writable align 8 %3, double noundef %i.ab)
  %.val.i = load ptr, ptr %i.a, align 16, !tbaa !123 ; 8 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i, i64 392
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i, i64 400
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 408
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 416
  %i.ag = load double, ptr %i.af, align 8, !tbaa !158
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 424
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !158
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 432
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !158
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 440
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 448
  %i.an = load <2 x double>, ptr %3, align 16     ; 4 uses
  %i.ao = load double, ptr %i.al, align 8, !tbaa !158
  %i.ap = load double, ptr %i.ae, align 8, !tbaa !158
  %i.aq = load double, ptr %i.ad, align 8, !tbaa !158
  %i.ar = load double, ptr %i.ac, align 8, !tbaa !158
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1
  %i.au = fmul reassoc nsz arcp contract afn <2 x double> %i.at, %i.an
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = load <2 x double>, ptr %i.am, align 8, !tbaa !158 ; 2 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = insertelement <2 x double> %i.ax, double %i.ar, i64 0
  %i.az = fmul reassoc nsz arcp contract afn <2 x double> %i.ay, %i.an
  %i.ba = fadd reassoc nsz arcp contract afn <2 x double> %i.az, %i.av
  %i.bb = insertelement <2 x double> %i.aw, double %i.ap, i64 0
  %i.bc = insertelement <2 x double> poison, double %.sroa.5.0.copyload.i, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul reassoc nsz arcp contract afn <2 x double> %i.bb, %i.bd
  %i.bf = fadd reassoc nsz arcp contract afn <2 x double> %i.ba, %i.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.not86 = icmp eq i32 %i.o, 0
  br i1 %.not86, label %.preheader128, label %.preheader134

.preheader134:                                    ; preds = %bb.b
  %i.bg = extractelement <2 x double> %i.an, i64 1
  %i.bh = fmul reassoc nsz arcp contract afn double %i.ai, %i.bg
  %i.bi = extractelement <2 x double> %i.an, i64 0
  %i.bj = fmul reassoc nsz arcp contract afn double %i.ag, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn double %i.bh, %i.bj
  %i.bl = fmul reassoc nsz arcp contract afn double %i.ak, %.sroa.5.0.copyload.i
  %i.bm = fpext reassoc nsz arcp contract afn float %i.s to double
  %i.bn = fadd reassoc nsz arcp contract afn double %i.bk, %i.bl
  %i.bo = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.y
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bn, i64 1
  %i.bt = fptrunc <2 x double> %i.bs to <2 x float> ; 3 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0 ; 2 uses
  %i.bv = extractelement <2 x float> %i.bt, i64 1 ; 2 uses
  %i.bw = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bm
  br label %bb.c

.preheader128:                                    ; preds = %bb.b
  %i.bx = fpext reassoc nsz arcp contract afn float %i.s to double
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.bx
  br label %bb.d

bb.c:                                             ; preds = %.preheader134, %.loopexit131
  %.076138 = phi i32 [ 0, %.preheader134 ], [ %i.gh, %.loopexit131 ] ; 2 uses
  %i.cd = uitofp nneg i32 %.076138 to double      ; 3 uses
  %6 = fmul reassoc nnan nsz arcp contract afn double %i.cd, f0x3FAAF286BCA1AF28
  %7 = fptrunc reassoc nsz arcp contract afn double %6 to float ; 2 uses
  %8 = fmul reassoc nnan nsz arcp contract afn double %i.cd, f0x4092FEF286BCA1AF
  %9 = fadd reassoc nsz arcp contract afn double %8, 1.901000e+03
  %i.ce = fmul reassoc nnan nsz arcp contract afn double %i.cd, f0x3FBD8555E8807C2C
  %i.cf = fadd reassoc nsz arcp contract afn double %i.ce, 1.350000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias writable align 8 %2, double noundef %9)
  %i.cg = load double, ptr %i.bp, align 8, !tbaa !208
  %i.ch = fmul reassoc nsz arcp contract afn double %i.cg, %i.bw ; 3 uses
  %.val.i105 = load ptr, ptr %i.a, align 16, !tbaa !123 ; 9 uses
  %.sroa.0.0.copyload.i106 = load double, ptr %2, align 8 ; 3 uses
  %.sroa.5.0.copyload.i108 = load double, ptr %.sroa.5.0..sroa_idx.i107, align 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i105, i64 392
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i105, i64 400
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i105, i64 408
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !158
  %i.cm = fmul reassoc nsz arcp contract afn double %i.cl, %.sroa.5.0.copyload.i108
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i105, i64 416
  %i.co = load double, ptr %i.cn, align 8, !tbaa !158
  %i.cp = fmul reassoc nsz arcp contract afn double %i.co, %.sroa.0.0.copyload.i106
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i105, i64 424
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !158
  %i.cs = fmul reassoc nsz arcp contract afn double %i.cr, %i.ch
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i105, i64 432
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !158
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i105, i64 440
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !158
  %i.cx = fmul reassoc nsz arcp contract afn double %i.cw, %.sroa.0.0.copyload.i106
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i105, i64 448
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !158
  %i.da = fmul reassoc nsz arcp contract afn double %i.cz, %i.ch
  %i.db = fadd reassoc nsz arcp contract afn double %i.da, %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i105, i64 456
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !158
  %i.de = fmul reassoc nsz arcp contract afn double %i.dd, %.sroa.5.0.copyload.i108
  %i.df = fadd reassoc nsz arcp contract afn double %i.db, %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.dg = load double, ptr %i.cj, align 8, !tbaa !158
  %i.dh = load double, ptr %i.ci, align 8, !tbaa !158
  %i.di = fadd reassoc nsz arcp contract afn double %i.cs, %i.cp
  %i.dj = fmul reassoc nsz arcp contract afn double %i.dh, %.sroa.0.0.copyload.i106
  %i.dk = fmul reassoc nsz arcp contract afn double %i.cu, %.sroa.5.0.copyload.i108
  %i.dl = fmul reassoc nsz arcp contract afn double %i.dg, %i.ch
  %i.dm = fadd reassoc nsz arcp contract afn double %i.di, %i.dk
  %i.dn = fadd reassoc nsz arcp contract afn double %i.dl, %i.dj
  %i.do = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.dm ; 2 uses
  %i.dp = fadd reassoc nsz arcp contract afn double %i.dn, %i.cm
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias writable align 8 %1, double noundef %i.ab)
  %i.dq = load double, ptr %i.bq, align 8, !tbaa !208
  %10 = fdiv reassoc nsz arcp contract afn double %i.dq, %i.cf ; 3 uses
  %.val.i109 = load ptr, ptr %i.a, align 16, !tbaa !123 ; 9 uses
  %.sroa.0.0.copyload.i110 = load double, ptr %1, align 8 ; 2 uses
  %.sroa.5.0.copyload.i112 = load double, ptr %.sroa.5.0..sroa_idx.i111, align 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i109, i64 392
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i109, i64 400
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i109, i64 408
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i109, i64 416
  %i.dv = load double, ptr %i.du, align 8, !tbaa !158
  %11 = fmul reassoc nsz arcp contract afn double %i.dv, %.sroa.0.0.copyload.i110
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i109, i64 424
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !158
  %12 = fmul reassoc nsz arcp contract afn double %i.dx, %10
  %13 = fadd reassoc nsz arcp contract afn double %12, %11
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i109, i64 432
  %14 = load double, ptr %i.dy, align 8, !tbaa !158
  %i.dz = fmul reassoc nsz arcp contract afn double %14, %.sroa.5.0.copyload.i112
  %15 = fadd reassoc nsz arcp contract afn double %13, %i.dz
  %16 = getelementptr inbounds nuw i8, ptr %.val.i109, i64 440
  %17 = getelementptr inbounds nuw i8, ptr %.val.i109, i64 448
  %18 = getelementptr inbounds nuw i8, ptr %.val.i109, i64 456
  %19 = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.ea = fmul reassoc nsz arcp contract afn double %i.do, %i.aa
  %i.eb = fmul reassoc nsz arcp contract afn double %i.dp, %i.w
  %i.ec = fmul reassoc nsz arcp contract afn double %i.ea, %i.df
  %i.ed = fmul reassoc nsz arcp contract afn double %i.eb, %i.do
  %20 = insertelement <2 x double> poison, double %i.ed, i64 0
  %21 = insertelement <2 x double> %20, double %i.ec, i64 1
  %22 = fdiv reassoc nsz arcp contract afn <2 x double> splat (double 1.000000e+00), %21
  %23 = fptrunc <2 x double> %22 to <2 x float>   ; 4 uses
  %i.ee = load double, ptr %16, align 8, !tbaa !158
  %i.ef = load double, ptr %i.dt, align 8, !tbaa !158
  %i.eg = load double, ptr %i.ds, align 8, !tbaa !158
  %i.eh = load double, ptr %i.dr, align 8, !tbaa !158
  %i.ei = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ee, i64 1
  %i.ek = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i110, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul reassoc nsz arcp contract afn <2 x double> %i.ej, %i.el
  %24 = load double, ptr %18, align 8, !tbaa !158
  %25 = load double, ptr %17, align 8, !tbaa !158
  %i.en = fmul reassoc nsz arcp contract afn double %25, %10
  %i.eo = fmul reassoc nsz arcp contract afn double %i.eg, %10
  %i.ep = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.en, i64 1
  %i.er = fadd reassoc nsz arcp contract afn <2 x double> %i.eq, %i.em
  %i.es = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.et = insertelement <2 x double> %i.es, double %24, i64 1
  %i.eu = insertelement <2 x double> poison, double %.sroa.5.0.copyload.i112, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul reassoc nsz arcp contract afn <2 x double> %i.et, %i.ev
  %i.ex = fadd reassoc nsz arcp contract afn <2 x double> %i.er, %i.ew
  %i.ey = insertelement <2 x double> poison, double %19, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul reassoc nsz arcp contract afn <2 x double> %i.ez, %i.ex
  %i.fb = fdiv reassoc nsz arcp contract afn <2 x double> %i.bf, %i.fa
  %i.fc = fptrunc <2 x double> %i.fb to <2 x float> ; 4 uses
  %i.fd = extractelement <2 x float> %23, i64 1
  %i.fe = shufflevector <2 x float> %23, <2 x float> %i.fc, <2 x i32> <i32 0, i32 2>
  %i.ff = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fe, <2 x float> %i.bt) ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %i.fh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fg, float %i.fd) ; 3 uses
  %i.fi = extractelement <2 x float> %i.fc, i64 1
  %i.fj = extractelement <2 x float> %i.ff, i64 1
  %i.fk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fj, float %i.fi) ; 3 uses
  %i.fl = fcmp reassoc nsz arcp contract afn ogt float %i.fh, 1.000000e+00
  br i1 %i.fl, label %.preheader132, label %.loopexit133

.preheader132:                                    ; preds = %bb.c
  %i.fm = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fdiv reassoc nsz arcp contract afn <2 x float> %23, %i.fn
  %i.fp = fdiv reassoc nsz arcp contract afn float %i.bu, %i.fh
  %i.fq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fp, float 0.000000e+00)
  %i.fr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fo, <2 x float> zeroinitializer)
  br label %.loopexit133

.loopexit133:                                     ; preds = %.preheader132, %bb.c
  %.sroa.7176.0 = phi nsz float [ %i.fq, %.preheader132 ], [ %i.bu, %bb.c ]
  %i.fs = phi <2 x float> [ %i.fr, %.preheader132 ], [ %23, %bb.c ] ; 2 uses
  %i.ft = fcmp reassoc nsz arcp contract afn ogt float %i.fk, 1.000000e+00
  br i1 %i.ft, label %.preheader130, label %.loopexit131

.preheader130:                                    ; preds = %.loopexit133
  %i.fu = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = fdiv reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fv
  %i.fx = fdiv reassoc nsz arcp contract afn float %i.bv, %i.fk
  %i.fy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fx, float 0.000000e+00)
  %i.fz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fw, <2 x float> zeroinitializer)
  br label %.loopexit131

.loopexit131:                                     ; preds = %.preheader130, %.loopexit133
  %.sroa.7.0 = phi nsz float [ %i.fy, %.preheader130 ], [ %i.bv, %.loopexit133 ]
  %i.ga = phi <2 x float> [ %i.fz, %.preheader130 ], [ %i.fc, %.loopexit133 ] ; 2 uses
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.gc = extractelement <2 x float> %i.fs, i64 0
  %i.gd = extractelement <2 x float> %i.fs, i64 1
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.gb, float noundef %7, float noundef %i.gc, float noundef %.sroa.7176.0, float noundef %i.gd) #22
  %i.ge = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.gf = extractelement <2 x float> %i.ga, i64 0
  %i.gg = extractelement <2 x float> %i.ga, i64 1
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ge, float noundef %7, float noundef %i.gf, float noundef %.sroa.7.0, float noundef %i.gg) #22
  %i.gh = add nuw nsw i32 %.076138, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gh, 20
  br i1 %exitcond.not, label %.loopexit129, label %bb.c

bb.d:                                             ; preds = %.preheader128, %.loopexit
  %.079141 = phi i32 [ 0, %.preheader128 ], [ %i.jf, %.loopexit ] ; 2 uses
  %i.gi = uitofp nneg i32 %.079141 to double      ; 3 uses
  %26 = fmul reassoc nnan nsz arcp contract afn double %i.gi, f0x3FAAF286BCA1AF28
  %27 = fptrunc reassoc nsz arcp contract afn double %26 to float ; 2 uses
  %i.gj = fmul reassoc nnan nsz arcp contract afn double %i.gi, f0x4092FEF286BCA1AF
  %i.gk = fadd reassoc nsz arcp contract afn double %i.gj, 1.901000e+03
  %i.gl = fmul reassoc nnan nsz arcp contract afn double %i.gi, f0x3FBD8555E8807C2C
  %i.gm = fadd reassoc nsz arcp contract afn double %i.gl, 1.350000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias nonnull writable align 8 %4, double noundef %i.gk)
  %i.gn = load double, ptr %i.by, align 8, !tbaa !208, !alias.scope !210
  %i.go = fmul reassoc nsz arcp contract afn double %i.gn, %i.cc ; 2 uses
  store double %i.go, ptr %i.by, align 8, !tbaa !208, !alias.scope !210
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call fastcc void @_temperature_to_XYZ(ptr dead_on_unwind noalias nonnull writable align 8 %5, double noundef %i.ab)
  %i.gp = load double, ptr %i.bz, align 8, !tbaa !208, !alias.scope !213
  %i.gq = fdiv reassoc nsz arcp contract afn double %i.gp, %i.gm ; 2 uses
  store double %i.gq, ptr %i.bz, align 8, !tbaa !208, !alias.scope !213
  %i.gr = load double, ptr %4, align 8, !tbaa !216
  %i.gs = load double, ptr %i.ca, align 8, !tbaa !217
  %i.gt = load double, ptr %5, align 8, !tbaa !216
  %i.gu = load double, ptr %i.cb, align 8, !tbaa !217
  %i.gv = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gr, i64 1
  %i.gx = fptrunc <2 x double> %i.gw to <2 x float> ; 4 uses
  %i.gy = fmul reassoc nsz arcp contract afn <2 x float> %i.gx, <float f0x3FF0211F, float 5.564340e-02>
  %i.gz = fmul reassoc nsz arcp contract afn <2 x float> %i.gx, <float f0x3E50EC2A, float f0x3F7821D1>
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hb = fsub reassoc nsz arcp contract afn <2 x float> %i.gy, %i.ha
  %i.hc = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.gt, i64 1
  %i.he = fptrunc <2 x double> %i.hd to <2 x float> ; 4 uses
  %i.hf = shufflevector <2 x float> %i.gx, <2 x float> %i.he, <2 x i32> <i32 1, i32 3>
  %i.hg = fmul reassoc nsz arcp contract afn <2 x float> %i.hf, splat (float f0x404F639A)
  %i.hh = shufflevector <2 x float> %i.gx, <2 x float> %i.he, <2 x i32> <i32 0, i32 2>
  %i.hi = fmul reassoc nsz arcp contract afn <2 x float> %i.hh, splat (float f0x3FC4C0F4)
  %i.hj = fsub reassoc nsz arcp contract afn <2 x float> %i.hg, %i.hi
  %i.hk = fmul reassoc nsz arcp contract afn <2 x float> %i.he, <float f0x3FF0211F, float 5.564340e-02>
  %i.hl = fmul reassoc nsz arcp contract afn <2 x float> %i.he, <float f0x3E50EC2A, float f0x3F7821D1>
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hn = fsub reassoc nsz arcp contract afn <2 x float> %i.hk, %i.hm
  %i.ho = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.gu, i64 1
  %i.hq = fptrunc <2 x double> %i.hp to <2 x float> ; 3 uses
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul reassoc nsz arcp contract afn <2 x float> %i.hr, <float 4.155600e-02, float f0x3F875328>
  %i.ht = fadd reassoc nsz arcp contract afn <2 x float> %i.hb, %i.hs ; 4 uses
  %i.hu = fmul reassoc nsz arcp contract afn <2 x float> %i.hq, splat (float f0xBEFF3F82)
  %i.hv = fadd reassoc nsz arcp contract afn <2 x float> %i.hj, %i.hu ; 3 uses
  %i.hw = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hx = fmul reassoc nsz arcp contract afn <2 x float> %i.hw, <float 4.155600e-02, float f0x3F875328>
  %i.hy = fadd reassoc nsz arcp contract afn <2 x float> %i.hn, %i.hx ; 4 uses
  %i.hz = extractelement <2 x float> %i.ht, i64 1
  %i.ia = shufflevector <2 x float> %i.ht, <2 x float> %i.hy, <2 x i32> <i32 0, i32 2>
  %i.ib = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hv, <2 x float> %i.ia) ; 2 uses
  %i.ic = extractelement <2 x float> %i.ib, i64 0
  %i.id = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ic, float %i.hz) ; 3 uses
  %i.ie = extractelement <2 x float> %i.hy, i64 1
  %i.if = extractelement <2 x float> %i.ib, i64 1
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.if, float %i.ie) ; 3 uses
  %i.ih = fcmp reassoc nsz arcp contract afn ogt float %i.id, 1.000000e+00
  %i.ii = extractelement <2 x float> %i.hv, i64 0 ; 2 uses
  br i1 %i.ih, label %.preheader126, label %.loopexit127

.preheader126:                                    ; preds = %bb.d
  %i.ij = fdiv reassoc nsz arcp contract afn float %i.ii, %i.id
  %i.ik = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ij, float 0.000000e+00)
  %i.il = insertelement <2 x float> poison, float %i.id, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fdiv reassoc nsz arcp contract afn <2 x float> %i.ht, %i.im
  %i.io = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.in, <2 x float> zeroinitializer)
  br label %.loopexit127

.loopexit127:                                     ; preds = %.preheader126, %bb.d
  %.sroa.0153.0 = phi nsz float [ %i.ik, %.preheader126 ], [ %i.ii, %bb.d ]
  %i.ip = phi <2 x float> [ %i.io, %.preheader126 ], [ %i.ht, %bb.d ] ; 2 uses
  %i.iq = fcmp reassoc nsz arcp contract afn ogt float %i.ig, 1.000000e+00
  %i.ir = extractelement <2 x float> %i.hv, i64 1 ; 2 uses
  br i1 %i.iq, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit127
  %i.is = fdiv reassoc nsz arcp contract afn float %i.ir, %i.ig
  %i.it = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.is, float 0.000000e+00)
  %i.iu = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fdiv reassoc nsz arcp contract afn <2 x float> %i.hy, %i.iv
  %i.ix = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.iw, <2 x float> zeroinitializer)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit127
  %.sroa.0.0 = phi nsz float [ %i.it, %.preheader ], [ %i.ir, %.loopexit127 ]
  %i.iy = phi <2 x float> [ %i.ix, %.preheader ], [ %i.hy, %.loopexit127 ] ; 2 uses
  %i.iz = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.ja = extractelement <2 x float> %i.ip, i64 0
  %i.jb = extractelement <2 x float> %i.ip, i64 1
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.iz, float noundef %27, float noundef %.sroa.0153.0, float noundef %i.ja, float noundef %i.jb) #22
  %i.jc = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.jd = extractelement <2 x float> %i.iy, i64 0
  %i.je = extractelement <2 x float> %i.iy, i64 1
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.jc, float noundef %27, float noundef %.sroa.0.0, float noundef %i.jd, float noundef %i.je) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.jf = add nuw nsw i32 %.079141, 1             ; 2 uses
  %exitcond149.not = icmp eq i32 %i.jf, 20
  br i1 %exitcond149.not, label %.loopexit129, label %bb.d

.loopexit129:                                     ; preds = %.loopexit131, %.loopexit
  %i.jg = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.jh = tail call i32 @gtk_widget_get_visible(ptr noundef %i.jg) #22
  %.not94 = icmp eq i32 %i.jh, 0
  br i1 %.not94, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit129
  %i.ji = load ptr, ptr %i.b, align 8, !tbaa !128
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ji) #22
  %i.jj = load ptr, ptr %i.d, align 8, !tbaa !133
  tail call void @gtk_widget_queue_draw(ptr noundef %i.jj) #22
  br label %bb.f

bb.f:                                             ; preds = %.loopexit129, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_rgb_sliders(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !123 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = load i32, ptr %i.c, align 8, !tbaa !206
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1540
  %i.h = load i32, ptr %i.g, align 4, !tbaa !102
  %i.i = and i32 %i.h, 16384
  %.not120 = icmp eq i32 %i.i, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %.not120, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 13 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.l) #22
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 13 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !136
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.n) #22
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 11 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !138
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.p) #22
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !140
  tail call void @dt_bauhaus_slider_clear_stops(ptr noundef %i.r) #22
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.t = xor i1 %i.j, true
  %i.u = zext i1 %i.t to i32                      ; 4 uses
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.s, i32 noundef %i.u) #22
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !136
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.v, i32 noundef %i.u) #22
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !138
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.w, i32 noundef %i.u) #22
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !140
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.x, i32 noundef %i.u) #22
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.z = load i32, ptr %i.y, align 4, !tbaa !207
  %.not121 = icmp eq i32 %i.z, 0
  br i1 %.not121, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.ab = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.aa) #22
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.ad = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.ac) #22
  %i.ae = fdiv reassoc nsz arcp contract afn float %i.ab, %i.ad ; 4 uses
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !136
  %i.ag = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.af) #22
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !136
  %i.ai = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.ah) #22
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ag, %i.ai ; 4 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !138
  %i.al = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.ak) #22
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !138
  %i.an = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.am) #22
  %i.ao = fdiv reassoc nsz arcp contract afn float %i.al, %i.an ; 4 uses
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !134
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ap, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %i.aj, float noundef %i.ao) #22
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !134
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.aq, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %i.aj, float noundef %i.ao) #22
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !136
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ar, float noundef 0.000000e+00, float noundef %i.ae, float noundef 0.000000e+00, float noundef %i.ao) #22
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !136
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.as, float noundef 1.000000e+00, float noundef %i.ae, float noundef 1.000000e+00, float noundef %i.ao) #22
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !138
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.at, float noundef 0.000000e+00, float noundef %i.ae, float noundef %i.aj, float noundef 0.000000e+00) #22
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !138
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.au, float noundef 1.000000e+00, float noundef %i.ae, float noundef %i.aj, float noundef 1.000000e+00) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2416 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 2424
  %i.az = load <2 x double>, ptr %i.ax, align 16, !tbaa !158
  %i.ba = fdiv reassoc nsz arcp contract afn <2 x double> splat (double 1.000000e+00), %i.az ; 2 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 1 ; 5 uses
  %i.bc = extractelement <2 x double> %i.ba, i64 0 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 2432 ; 2 uses
  %i.be = load double, ptr %i.bd, align 16, !tbaa !158
  %i.bf = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.be ; 5 uses
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.bh = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.bg) #22 ; 2 uses
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.bj = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.bi) #22 ; 2 uses
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !136
  %i.bl = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.bk) #22 ; 2 uses
end_hunk_0
