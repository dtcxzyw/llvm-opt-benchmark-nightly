Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_negadoctor?download=true
inline.NumInlined: 90
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@init_presets
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_negadoctor_params_t, align 4 ; 4 uses
  %2 = alloca %struct.dt_iop_negadoctor_params_t, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %1, ptr noundef nonnull align 4 dereferenceable(76) @__const.init_presets.tmp, i64 76, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.d = tail call i32 (...) %i.c() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef %i.d, ptr noundef nonnull %1, i32 noundef 76, i32 noundef 1, i32 noundef 3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, ptr noundef nonnull align 4 dereferenceable(76) @__const.init_presets.tmq, i64 76, i1 false)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.f = call i32 (...) %i.e() #19
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i32 noundef %i.f, ptr noundef nonnull %2, i32 noundef 76, i32 noundef 1, i32 noundef 3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  store i32 -999, ptr %i.a, align 4, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @g_malloc0(i64 noundef 80) #20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !31
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31
  tail call void @g_free(ptr noundef %i.b) #19
  store ptr null, ptr %i.a, align 16, !tbaa !31
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %4 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %5 = alloca %struct._GdkRGBA, align 16          ; 9 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %apply_auto_Dmin.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !97  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load atomic i32, ptr %i.j seq_cst, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %apply_auto_Dmin.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 16, !tbaa !97  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.q = load float, ptr %i.o, align 16, !tbaa !12
  store float %i.q, ptr %i.p, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store float %i.s, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.v = load float, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  store float %i.v, ptr %i.w, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store float %i.y, ptr %i.z, align 4, !tbaa !12
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = atomicrmw add ptr %i.ab, i32 1 seq_cst, align 4 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !102
  %i.af = load float, ptr %i.p, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ae, float noundef %i.af) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ai = load float, ptr %i.t, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.ai) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.al = load float, ptr %i.w, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ak, float noundef %i.al) #19
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = atomicrmw sub ptr %i.an, i32 1 seq_cst, align 4 ; 0 uses
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !101 ; 4 uses
  %.val16.i = load ptr, ptr %i.d, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !106
  %i.aq = load i32, ptr %.val.i, align 4, !tbaa !35
  switch i32 %i.aq, label %Dmin_picker_update.exit.i [
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.as = load <2 x float>, ptr %i.ar, align 4, !tbaa !12
  %i.at = fpext <2 x float> %i.as to <2 x double>
  store <2 x double> %i.at, ptr %5, align 16, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  %i.av = load float, ptr %i.au, align 4, !tbaa !12
  %i.aw = fpext reassoc nsz arcp contract afn float %i.av to double
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.aw, ptr %i.ax, align 16, !tbaa !108
  br label %Dmin_picker_update.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %i.ba = fpext reassoc nsz arcp contract afn float %i.az to double ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ba, ptr %i.bb, align 16, !tbaa !108
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.ba, ptr %i.bc, align 8, !tbaa !109
  store double %i.ba, ptr %5, align 16, !tbaa !110
  br label %Dmin_picker_update.exit.i

Dmin_picker_update.exit.i:                        ; preds = %bb.f, %bb.e, %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.val16.i, i64 136
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !111
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.be, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !112
  call void @dt_control_queue_redraw_widget(ptr noundef %i.bg) #19
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.bh, ptr noundef nonnull %0, i32 noundef 1) #19
  br label %apply_auto_Dmin.exit

bb.g:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !114
  %i.bk = icmp eq ptr %1, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bn = load atomic i32, ptr %i.bm seq_cst, align 4
  %.not.i22 = icmp eq i32 %i.bn, 0
  br i1 %.not.i22, label %bb.i, label %apply_auto_Dmin.exit

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.d, align 16, !tbaa !97 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !101 ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 52
  %i.bv = load float, ptr %i.br, align 4, !tbaa !12
  %i.bw = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bx = load float, ptr %i.bt, align 16, !tbaa !12
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bx, float f0x2F800000)
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bw, %i.by
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 516
  %6 = load <2 x float>, ptr %i.bu, align 4, !tbaa !12 ; 4 uses
  %7 = extractelement <2 x float> %6, i64 1
  %i.ce = fmul reassoc nsz arcp contract afn float %i.bv, %7
  %8 = extractelement <2 x float> %6, i64 0
  %i.cf = fdiv reassoc nsz arcp contract afn float %i.ca, %8
  %i.cg = fsub reassoc nsz arcp contract afn float %i.ce, %i.cf
  %i.ch = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.cg
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ch) ; 2 uses
  %i.cj = load <2 x float>, ptr %i.cb, align 4, !tbaa !12
  %9 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = fmul reassoc nsz arcp contract afn <2 x float> %i.cj, %9
  %i.cl = load <2 x float>, ptr %i.cc, align 4, !tbaa !12
  %i.cm = load <2 x float>, ptr %i.cd, align 4, !tbaa !12
  %i.cn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cm, <2 x float> splat (float f0x2F800000))
  %i.co = fdiv reassoc nsz arcp contract afn <2 x float> %i.cl, %i.cn
  %i.cp = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log10.v2f32(<2 x float> %i.co)
  %i.cq = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fdiv reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cq
  %i.cs = fsub reassoc nsz arcp contract afn <2 x float> %i.ck, %i.cr
  %i.ct = fdiv reassoc nsz arcp contract afn <2 x float> splat (float -1.000000e+00), %i.cs
  %i.cu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ct) ; 3 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ci, float %i.cv)
  %i.cx = extractelement <2 x float> %i.cu, i64 1
  %i.cy = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.cw, float %i.cx)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bq, i64 20 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.dc = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ci, i64 0
  %i.dd = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <4 x float> %i.dc, <4 x float> %i.dd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.df = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cy, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dh = fdiv reassoc nsz arcp contract afn <4 x float> %i.de, %i.dg
  store <4 x float> %i.dh, ptr %i.cz, align 4, !tbaa !12
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  %i.dk = atomicrmw add ptr %i.dj, i32 1 seq_cst, align 4 ; 0 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !115
  %i.dn = load float, ptr %i.cz, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dm, float noundef %i.dn) #19
  %i.do = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !116
  %i.dq = load float, ptr %i.da, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dp, float noundef %i.dq) #19
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !117
  %i.dt = load float, ptr %i.db, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ds, float noundef %i.dt) #19
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  %i.dw = atomicrmw sub ptr %i.dv, i32 1 seq_cst, align 4 ; 0 uses
  %.val.i23 = load ptr, ptr %i.bp, align 8, !tbaa !101 ; 2 uses
  %.val29.i = load ptr, ptr %i.d, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double 1.000000e+00, ptr %i.dx, align 8, !tbaa !106
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i23, i64 20
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i23, i64 28
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.ea ; 2 uses
  %i.ec = load <2 x float>, ptr %i.dy, align 4, !tbaa !12
  %i.ed = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.ec ; 3 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %i.ef = extractelement <2 x float> %i.ed, i64 1
  %i.eg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ee, float %i.ef)
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eg, float %i.eb) ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fdiv reassoc nsz arcp contract afn <2 x float> %i.ed, %i.ej
  %i.el = fdiv reassoc nsz arcp contract afn float %i.eb, %i.eh
  %i.em = fpext <2 x float> %i.ek to <2 x double>
  store <2 x double> %i.em, ptr %4, align 16, !tbaa !107
  %i.en = fpext reassoc nsz arcp contract afn float %i.el to double
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.en, ptr %i.eo, align 16, !tbaa !108
  %i.ep = getelementptr inbounds nuw i8, ptr %.val29.i, i64 152
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !118
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.eq, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !112
  call void @dt_control_queue_redraw_widget(ptr noundef %i.es) #19
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.et, ptr noundef nonnull %0, i32 noundef 1) #19
  br label %apply_auto_Dmin.exit

bb.j:                                             ; preds = %bb.g
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !119
  %i.ew = icmp eq ptr %1, %i.ev
  br i1 %i.ew, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 104
  %i.ez = load atomic i32, ptr %i.ey seq_cst, align 4
  %.not.i24 = icmp eq i32 %i.ez, 0
  br i1 %.not.i24, label %bb.l, label %apply_auto_Dmin.exit

bb.l:                                             ; preds = %bb.k
  %i.fa = load ptr, ptr %i.d, align 16, !tbaa !97
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !101 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 52
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !33 ; 3 uses
  %i.fh = load float, ptr %i.fd, align 4, !tbaa !12
  %i.fi = load float, ptr %i.fe, align 16, !tbaa !12
  %i.fj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fi, float f0x2F800000)
  %i.fk = fdiv reassoc nsz arcp contract afn float %i.fh, %i.fj
  %i.fl = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.fk)
  %i.fm = fdiv reassoc nsz arcp contract afn float %i.fl, %i.fg
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.fp = load <2 x float>, ptr %i.fo, align 4, !tbaa !12
  %i.fq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fp, <2 x float> splat (float f0x2F800000))
  %i.fr = load <2 x float>, ptr %i.fn, align 4, !tbaa !12
  %i.fs = fdiv reassoc nsz arcp contract afn <2 x float> %i.fr, %i.fq
  %i.ft = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log10.v2f32(<2 x float> %i.fs) ; 2 uses
  %i.fu = extractelement <2 x float> %i.ft, i64 0
  %i.fv = fdiv reassoc nsz arcp contract afn float %i.fu, %i.fg
  %i.fw = extractelement <2 x float> %i.ft, i64 1
  %i.fx = fdiv reassoc nsz arcp contract afn float %i.fw, %i.fg
  %i.fy = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fm, float %i.fv)
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fy, float %i.fx)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fc, i64 56 ; 2 uses
  store float %i.fz, ptr %i.ga, align 4, !tbaa !34
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 104
  %i.gd = atomicrmw add ptr %i.gc, i32 1 seq_cst, align 4 ; 0 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !119
  %i.gg = load float, ptr %i.ga, align 4, !tbaa !34
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.gf, float noundef %i.gg) #19
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 104
  %i.gj = atomicrmw sub ptr %i.gi, i32 1 seq_cst, align 4 ; 0 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !112
  tail call void @dt_control_queue_redraw_widget(ptr noundef %i.gl) #19
  %i.gm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  tail call void @dt_dev_add_history_item(ptr noundef %i.gm, ptr noundef nonnull %0, i32 noundef 1) #19
  br label %apply_auto_Dmin.exit

bb.m:                                             ; preds = %bb.j
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !120
  %i.gp = icmp eq ptr %1, %i.go
  br i1 %i.gp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 104
  %i.gs = load atomic i32, ptr %i.gr seq_cst, align 4
  %.not.i25 = icmp eq i32 %i.gs, 0
  br i1 %.not.i25, label %bb.o, label %apply_auto_Dmin.exit

bb.o:                                             ; preds = %bb.n
  %i.gt = load ptr, ptr %i.d, align 16, !tbaa !97
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !101 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.gy = load float, ptr %i.gw, align 4, !tbaa !12
  %i.gz = load float, ptr %i.gx, align 16, !tbaa !12
  %i.ha = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gz, float f0x2F800000)
  %i.hb = fdiv reassoc nsz arcp contract afn float %i.gy, %i.ha
  %i.hc = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.hb)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.hf = load <2 x float>, ptr %i.hd, align 4, !tbaa !12
  %i.hg = load <2 x float>, ptr %i.he, align 4, !tbaa !12
  %i.hh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hg, <2 x float> splat (float f0x2F800000))
  %i.hi = fdiv reassoc nsz arcp contract afn <2 x float> %i.hf, %i.hh ; 2 uses
  %i.hj = extractelement <2 x float> %i.hi, i64 0
  %i.hk = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.hj)
  %i.hl = extractelement <2 x float> %i.hi, i64 1
  %i.hm = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.hl)
  %i.hn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hc, float %i.hk)
  %i.ho = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hn, float %i.hm)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gv, i64 52 ; 2 uses
  store float %i.ho, ptr %i.hp, align 4, !tbaa !33
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 104
  %i.hs = atomicrmw add ptr %i.hr, i32 1 seq_cst, align 4 ; 0 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !120
  %i.hv = load float, ptr %i.hp, align 4, !tbaa !33
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.hu, float noundef %i.hv) #19
  %i.hw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 104
  %i.hy = atomicrmw sub ptr %i.hx, i32 1 seq_cst, align 4 ; 0 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !112
  tail call void @dt_control_queue_redraw_widget(ptr noundef %i.ia) #19
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  tail call void @dt_dev_add_history_item(ptr noundef %i.ib, ptr noundef nonnull %0, i32 noundef 1) #19
  br label %apply_auto_Dmin.exit

bb.p:                                             ; preds = %bb.m
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !121
  %i.ie = icmp eq ptr %1, %i.id
  br i1 %i.ie, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.if = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !96
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 104
  %i.ih = load atomic i32, ptr %i.ig seq_cst, align 4
  %.not.i26 = icmp eq i32 %i.ih, 0
  br i1 %.not.i26, label %bb.r, label %apply_auto_Dmin.exit

bb.r:                                             ; preds = %bb.q
  %i.ii = load ptr, ptr %i.d, align 16, !tbaa !97 ; 3 uses
end_hunk_0
