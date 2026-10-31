Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_negadoctor?download=true
inline.NumInlined: 90
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@process:bb.a
  %i.fw = fptosi float %i.fv to i32
  %i.fx = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 -1065353216)
  %i.fy = add nsw i32 %i.fx, 1065353216
  %i.fz = bitcast i32 %i.fy to float
  %i.ga = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fz
  %i.gb = fmul reassoc nsz arcp contract afn float %i.ga, %i.f
  %i.gc = fadd reassoc nsz arcp contract afn float %i.gb, %i.e
  br label %_process_pixel.exit

_process_pixel.exit:                              ; preds = %bb.c, %bb.b
  %i.gd = phi reassoc nsz arcp contract afn float [ %i.gc, %bb.c ], [ %i.el, %bb.b ]
  store float %i.gd, ptr %i.ao, align 4, !tbaa !12
  %i.ge = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fe, %i.ab
  %i.gf = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fl
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.gf, %i.ad
  %i.gi = fadd reassoc nsz arcp contract afn <2 x float> %i.gh, %i.ab
  %i.gj = select <2 x i1> %i.ge, <2 x float> %i.gi, <2 x float> %i.fe
  store <2 x float> %i.gj, ptr %i.gg, align 4, !tbaa !12
  %i.gk = fcmp reassoc nsz arcp contract afn ogt float %i.en, %i.e
  %i.gl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fr
  %i.gm = fmul reassoc nsz arcp contract afn float %i.gl, %i.f
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gm, %i.e
  %i.go = select reassoc nsz arcp contract afn i1 %i.gk, float %i.gn, float %i.en
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store float %i.go, ptr %i.gp, align 4, !tbaa !12
  %i.gq = add nuw i64 %.032, 4                    ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.n
  br i1 %i.gr, label %bb.b, label %._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_default_init(ptr noundef %0) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <4 x float> <float 1.000000e+00, float 4.500000e-01, float 2.500000e-01, float 1.000000e+00>, ptr %i.c, align 4, !tbaa !12
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_negadoctor_params_t, align 4 ; 4 uses
  %2 = alloca %struct.dt_iop_negadoctor_params_t, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %1, ptr noundef nonnull align 4 dereferenceable(76) @__const.init_presets.tmp, i64 76, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = tail call i32 (...) %i.c() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef %i.d, ptr noundef nonnull %1, i32 noundef 76, i32 noundef 1, i32 noundef 3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %2, ptr noundef nonnull align 4 dereferenceable(76) @__const.init_presets.tmq, i64 76, i1 false)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.f = call i32 (...) %i.e() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i32 noundef %i.f, ptr noundef nonnull %2, i32 noundef 76, i32 noundef 1, i32 noundef 3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !57
  store i32 -999, ptr %i.a, align 4, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @g_malloc0(i64 noundef 80) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !31
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !31
  tail call void @g_free(ptr noundef %i.b) #20
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
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %apply_auto_Dmin.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !98  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load atomic i32, ptr %i.j seq_cst, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %apply_auto_Dmin.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 16, !tbaa !98  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 4 uses
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
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = atomicrmw add ptr %i.ab, i32 1 seq_cst, align 4 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !103
  %i.af = load float, ptr %i.p, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ae, float noundef %i.af) #20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ai = load float, ptr %i.t, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.ai) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !105
  %i.al = load float, ptr %i.w, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ak, float noundef %i.al) #20
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = atomicrmw add ptr %i.an, i32 -1 seq_cst, align 4 ; 0 uses
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !102 ; 4 uses
  %.val16.i = load ptr, ptr %i.d, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !107
  %i.aq = load i32, ptr %.val.i, align 4, !tbaa !35
  switch i32 %i.aq, label %Dmin_picker_update.exit.i [
    i32 1, label %bb.e
    i32 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.as = load <2 x float>, ptr %i.ar, align 4, !tbaa !12
  %i.at = fpext <2 x float> %i.as to <2 x double>
  store <2 x double> %i.at, ptr %5, align 16, !tbaa !108
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  %i.av = load float, ptr %i.au, align 4, !tbaa !12
  %i.aw = fpext reassoc nsz arcp contract afn float %i.av to double
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.aw, ptr %i.ax, align 16, !tbaa !109
  br label %Dmin_picker_update.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %i.ba = fpext reassoc nsz arcp contract afn float %i.az to double ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ba, ptr %i.bb, align 16, !tbaa !109
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.ba, ptr %i.bc, align 8, !tbaa !110
  store double %i.ba, ptr %5, align 16, !tbaa !111
  br label %Dmin_picker_update.exit.i

Dmin_picker_update.exit.i:                        ; preds = %bb.f, %bb.e, %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.val16.i, i64 136
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !112
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.be, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !113
  call void @dt_control_queue_redraw_widget(ptr noundef %i.bg) #20
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  call void @dt_dev_add_history_item(ptr noundef %i.bh, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %apply_auto_Dmin.exit

bb.g:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !115
  %i.bk = icmp eq ptr %1, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bn = load atomic i32, ptr %i.bm seq_cst, align 4
  %.not.i22 = icmp eq i32 %i.bn, 0
  br i1 %.not.i22, label %bb.i, label %apply_auto_Dmin.exit

bb.i:                                             ; preds = %bb.h
  %i.bo = load ptr, ptr %i.d, align 16, !tbaa !98 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !102 ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 52
  %i.bw = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !12
  %i.by = load float, ptr %i.bu, align 16, !tbaa !12
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.by, float f0x2F800000)
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.bx, %i.bz
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.ca)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.cf = load float, ptr %i.br, align 4, !tbaa !34 ; 2 uses
  %i.cg = load float, ptr %i.bv, align 4, !tbaa !33 ; 2 uses
  %i.ch = fmul reassoc nsz arcp contract afn float %i.bw, %i.cf
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.cb, %i.cg
  %i.cj = fsub reassoc nsz arcp contract afn float %i.ch, %i.ci
  %i.ck = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.cj
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ck) ; 2 uses
  %i.cm = load <2 x float>, ptr %i.cc, align 4, !tbaa !12
  %i.cn = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.co
  %i.cq = load <2 x float>, ptr %i.cd, align 4, !tbaa !12
  %i.cr = load <2 x float>, ptr %i.ce, align 4, !tbaa !12
  %i.cs = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cr, <2 x float> splat (float f0x2F800000))
  %i.ct = fdiv reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cs
  %i.cu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log10.v2f32(<2 x float> %i.ct)
  %i.cv = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fdiv reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cw
  %i.cy = fsub reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cx
  %i.cz = fdiv reassoc nsz arcp contract afn <2 x float> splat (float -1.000000e+00), %i.cy
  %i.da = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cz) ; 3 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.cl, float %i.db)
  %i.dd = extractelement <2 x float> %i.da, i64 1
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dc, float %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bq, i64 20 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.di = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.cl, i64 0
  %i.dj = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dl = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.de, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dn = fdiv reassoc nsz arcp contract afn <4 x float> %i.dk, %i.dm
  store <4 x float> %i.dn, ptr %i.df, align 4, !tbaa !12
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  %i.dq = atomicrmw add ptr %i.dp, i32 1 seq_cst, align 4 ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !116
  %i.dt = load float, ptr %i.df, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ds, float noundef %i.dt) #20
  %i.du = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !117
  %i.dw = load float, ptr %i.dg, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dv, float noundef %i.dw) #20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !118
  %i.dz = load float, ptr %i.dh, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dy, float noundef %i.dz) #20
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  %i.ec = atomicrmw add ptr %i.eb, i32 -1 seq_cst, align 4 ; 0 uses
  %.val.i23 = load ptr, ptr %i.bp, align 8, !tbaa !102 ; 2 uses
  %.val29.i = load ptr, ptr %i.d, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double 1.000000e+00, ptr %i.ed, align 8, !tbaa !107
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i23, i64 20
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i23, i64 28
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !12
  %i.eh = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.eg ; 2 uses
  %i.ei = load <2 x float>, ptr %i.ee, align 4, !tbaa !12
  %i.ej = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.ei ; 3 uses
  %i.ek = extractelement <2 x float> %i.ej, i64 0
  %i.el = extractelement <2 x float> %i.ej, i64 1
  %i.em = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ek, float %i.el)
  %i.en = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.em, float %i.eh) ; 2 uses
  %i.eo = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fdiv reassoc nsz arcp contract afn <2 x float> %i.ej, %i.ep
  %i.er = fdiv reassoc nsz arcp contract afn float %i.eh, %i.en
  %i.es = fpext <2 x float> %i.eq to <2 x double>
  store <2 x double> %i.es, ptr %4, align 16, !tbaa !108
  %i.et = fpext reassoc nsz arcp contract afn float %i.er to double
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.et, ptr %i.eu, align 16, !tbaa !109
  %i.ev = getelementptr inbounds nuw i8, ptr %.val29.i, i64 152
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !119
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.ew, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !113
  call void @dt_control_queue_redraw_widget(ptr noundef %i.ey) #20
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  call void @dt_dev_add_history_item(ptr noundef %i.ez, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %apply_auto_Dmin.exit

bb.j:                                             ; preds = %bb.g
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !120
  %i.fc = icmp eq ptr %1, %i.fb
  br i1 %i.fc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 104
  %i.ff = load atomic i32, ptr %i.fe seq_cst, align 4
  %.not.i24 = icmp eq i32 %i.ff, 0
  br i1 %.not.i24, label %bb.l, label %apply_auto_Dmin.exit

bb.l:                                             ; preds = %bb.k
  %i.fg = load ptr, ptr %i.d, align 16, !tbaa !98
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !102 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 52
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !33 ; 3 uses
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !12
  %i.fo = load float, ptr %i.fk, align 16, !tbaa !12
  %i.fp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fo, float f0x2F800000)
  %i.fq = fdiv reassoc nsz arcp contract afn float %i.fn, %i.fp
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.fq)
  %i.fs = fdiv reassoc nsz arcp contract afn float %i.fr, %i.fm
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.fv = load <2 x float>, ptr %i.fu, align 4, !tbaa !12
  %i.fw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fv, <2 x float> splat (float f0x2F800000))
  %i.fx = load <2 x float>, ptr %i.ft, align 4, !tbaa !12
  %i.fy = fdiv reassoc nsz arcp contract afn <2 x float> %i.fx, %i.fw
  %i.fz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log10.v2f32(<2 x float> %i.fy) ; 2 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0
  %i.gb = fdiv reassoc nsz arcp contract afn float %i.ga, %i.fm
  %i.gc = extractelement <2 x float> %i.fz, i64 1
  %i.gd = fdiv reassoc nsz arcp contract afn float %i.gc, %i.fm
  %i.ge = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fs, float %i.gb)
  %i.gf = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ge, float %i.gd)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fi, i64 56 ; 2 uses
  store float %i.gf, ptr %i.gg, align 4, !tbaa !34
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 104
  %i.gj = atomicrmw add ptr %i.gi, i32 1 seq_cst, align 4 ; 0 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !120
  %i.gm = load float, ptr %i.gg, align 4, !tbaa !34
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.gl, float noundef %i.gm) #20
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  %i.gp = atomicrmw add ptr %i.go, i32 -1 seq_cst, align 4 ; 0 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !113
  tail call void @dt_control_queue_redraw_widget(ptr noundef %i.gr) #20
  %i.gs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.gs, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %apply_auto_Dmin.exit

bb.m:                                             ; preds = %bb.j
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !121
  %i.gv = icmp eq ptr %1, %i.gu
  br i1 %i.gv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 104
  %i.gy = load atomic i32, ptr %i.gx seq_cst, align 4
  %.not.i25 = icmp eq i32 %i.gy, 0
  br i1 %.not.i25, label %bb.o, label %apply_auto_Dmin.exit

bb.o:                                             ; preds = %bb.n
  %i.gz = load ptr, ptr %i.d, align 16, !tbaa !98
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !102 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.he = load float, ptr %i.hc, align 4, !tbaa !12
  %i.hf = load float, ptr %i.hd, align 16, !tbaa !12
  %i.hg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hf, float f0x2F800000)
  %i.hh = fdiv reassoc nsz arcp contract afn float %i.he, %i.hg
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.hh)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.hl = load <2 x float>, ptr %i.hj, align 4, !tbaa !12
  %i.hm = load <2 x float>, ptr %i.hk, align 4, !tbaa !12
  %i.hn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hm, <2 x float> splat (float f0x2F800000))
  %i.ho = fdiv reassoc nsz arcp contract afn <2 x float> %i.hl, %i.hn ; 2 uses
  %i.hp = extractelement <2 x float> %i.ho, i64 0
  %i.hq = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.hp)
  %i.hr = extractelement <2 x float> %i.ho, i64 1
  %i.hs = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.hr)
  %i.ht = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hi, float %i.hq)
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ht, float %i.hs)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hb, i64 52 ; 2 uses
  store float %i.hu, ptr %i.hv, align 4, !tbaa !33
  %i.hw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 104
  %i.hy = atomicrmw add ptr %i.hx, i32 1 seq_cst, align 4 ; 0 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gz, i64 88
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !121
  %i.ib = load float, ptr %i.hv, align 4, !tbaa !33
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ia, float noundef %i.ib) #20
  %i.ic = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 104
  %i.ie = atomicrmw add ptr %i.id, i32 -1 seq_cst, align 4 ; 0 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !113
  tail call void @dt_control_queue_redraw_widget(ptr noundef %i.ig) #20
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.ih, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %apply_auto_Dmin.exit

bb.p:                                             ; preds = %bb.m
  %i.ii = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !122
  %i.ik = icmp eq ptr %1, %i.ij
  br i1 %i.ik, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.il = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 104
  %i.in = load atomic i32, ptr %i.im seq_cst, align 4
  %.not.i26 = icmp eq i32 %i.in, 0
  br i1 %.not.i26, label %bb.r, label %apply_auto_Dmin.exit

bb.r:                                             ; preds = %bb.q
  %i.io = load ptr, ptr %i.d, align 16, !tbaa !98 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !102 ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 52
  %i.iu = load float, ptr %i.it, align 4, !tbaa !33
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !12
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.iy = load float, ptr %i.ix, align 8, !tbaa !12
  %i.iz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.iy, float f0x2F800000)
  %i.ja = fdiv reassoc nsz arcp contract afn float %i.iw, %i.iz
  %i.jb = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.ja)
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iq, i64 36 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.je = getelementptr inbounds nuw i8, ptr %i.iq, i64 44
  %i.jf = load <2 x float>, ptr %i.ir, align 4, !tbaa !12
  %i.jg = load <2 x float>, ptr %i.is, align 16, !tbaa !12
  %i.jh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jg, <2 x float> splat (float f0x2F800000))
  %i.ji = fdiv reassoc nsz arcp contract afn <2 x float> %i.jf, %i.jh
  %i.jj = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log10.v2f32(<2 x float> %i.ji)
  %i.jk = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.jb, i64 2
  %i.jl = shufflevector <2 x float> %i.jj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> %i.jk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jn = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.iu, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jp = fdiv reassoc nsz arcp contract afn <4 x float> %i.jm, %i.jo ; 4 uses
  %i.jq = extractelement <4 x float> %i.jp, i64 0
  %i.jr = extractelement <4 x float> %i.jp, i64 1
  %i.js = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jq, float %i.jr)
  %i.jt = extractelement <4 x float> %i.jp, i64 2
  %i.ju = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.js, float %i.jt)
  %i.jv = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ju, i64 0
  %i.jw = shufflevector <4 x float> %i.jv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jx = fdiv reassoc nsz arcp contract afn <4 x float> %i.jw, %i.jp
  store <4 x float> %i.jx, ptr %i.jc, align 4, !tbaa !12
  %i.jy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 104
  %i.ka = atomicrmw add ptr %i.jz, i32 1 seq_cst, align 4 ; 0 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !123
  %i.kd = load float, ptr %i.jc, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kc, float noundef %i.kd) #20
  %i.ke = getelementptr inbounds nuw i8, ptr %i.io, i64 72
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !124
  %i.kg = load float, ptr %i.jd, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kf, float noundef %i.kg) #20
  %i.kh = getelementptr inbounds nuw i8, ptr %i.io, i64 80
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !125
  %i.kj = load float, ptr %i.je, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ki, float noundef %i.kj) #20
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 104
  %i.km = atomicrmw add ptr %i.kl, i32 -1 seq_cst, align 4 ; 0 uses
  %.val.i27 = load ptr, ptr %i.ip, align 8, !tbaa !102 ; 2 uses
  %.val26.i = load ptr, ptr %i.d, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double 1.000000e+00, ptr %i.kn, align 8, !tbaa !107
  %i.ko = getelementptr inbounds nuw i8, ptr %.val.i27, i64 36
  %i.kp = getelementptr inbounds nuw i8, ptr %.val.i27, i64 44
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !12
  %i.kr = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.kq ; 2 uses
  %i.ks = load <2 x float>, ptr %i.ko, align 4, !tbaa !12
  %i.kt = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.ks ; 3 uses
  %i.ku = extractelement <2 x float> %i.kt, i64 0
  %i.kv = extractelement <2 x float> %i.kt, i64 1
  %i.kw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ku, float %i.kv)
  %i.kx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kw, float %i.kr) ; 2 uses
  %i.ky = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fdiv reassoc nsz arcp contract afn <2 x float> %i.kt, %i.kz
  %i.lb = fdiv reassoc nsz arcp contract afn float %i.kr, %i.kx
  %i.lc = fpext <2 x float> %i.la to <2 x double>
  store <2 x double> %i.lc, ptr %3, align 16, !tbaa !108
  %i.ld = fpext reassoc nsz arcp contract afn float %i.lb to double
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.ld, ptr %i.le, align 16, !tbaa !109
  %i.lf = getelementptr inbounds nuw i8, ptr %.val26.i, i64 168
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !126
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.lg, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !113
  call void @dt_control_queue_redraw_widget(ptr noundef %i.li) #20
  %i.lj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  call void @dt_dev_add_history_item(ptr noundef %i.lj, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %apply_auto_Dmin.exit

bb.s:                                             ; preds = %bb.p
  %i.lk = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !127
  %i.lm = icmp eq ptr %1, %i.ll
  br i1 %i.lm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @apply_auto_exposure(ptr noundef nonnull %0)
  br label %apply_auto_Dmin.exit

bb.u:                                             ; preds = %bb.s
  %i.ln = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !128
  %i.lp = icmp eq ptr %1, %i.lo
  br i1 %i.lp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @apply_auto_black(ptr noundef nonnull %0)
  br label %apply_auto_Dmin.exit

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9) #20
  br label %apply_auto_Dmin.exit

apply_auto_Dmin.exit:                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %Dmin_picker_update.exit.i, %bb.c, %bb.v, %bb.w, %bb.t, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_auto_exposure(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.l = load float, ptr %i.k, align 4, !tbaa !33 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.o = load float, ptr %i.n, align 4, !tbaa !34 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.q = load float, ptr %i.p, align 4, !tbaa !37
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, 1.000000e+00 ; 3 uses
  %i.s = load float, ptr %i.h, align 4, !tbaa !12
  %i.t = load float, ptr %i.i, align 16, !tbaa !12
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.t, float f0x2F800000)
  %i.v = fdiv reassoc nsz arcp contract afn float %i.s, %i.u
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.v)
  %i.x = fneg reassoc nsz arcp contract afn float %i.w
  %i.y = load float, ptr %i.j, align 4, !tbaa !12
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %i.l
  %i.ab = load float, ptr %i.m, align 4, !tbaa !12
  %i.ac = fmul reassoc nsz arcp contract afn float %i.o, %i.ab
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.aa
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, f0x40549A78
  %i.af = tail call reassoc nsz arcp contract afn noundef float @llvm.exp2.f32(float %i.ae)
  %i.ag = fsub reassoc nsz arcp contract afn float %i.r, %i.af
  %i.ah = fdiv reassoc nsz arcp contract afn float f0x3F75C28F, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.am = load <2 x float>, ptr %i.aj, align 4, !tbaa !12
  %i.an = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.am, <2 x float> splat (float f0x2F800000))
  %i.ao = load <2 x float>, ptr %i.ai, align 4, !tbaa !12
  %i.ap = fdiv reassoc nsz arcp contract afn <2 x float> %i.ao, %i.an
  %i.aq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log10.v2f32(<2 x float> %i.ap)
  %i.ar = fneg reassoc nsz arcp contract afn <2 x float> %i.aq
  %i.as = load <2 x float>, ptr %i.ak, align 4, !tbaa !12
  %i.at = fmul reassoc nsz arcp contract afn <2 x float> %i.as, %i.ar
  %i.au = insertelement <2 x float> poison, float %i.l, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv reassoc nsz arcp contract afn <2 x float> %i.at, %i.av
  %i.ax = load <2 x float>, ptr %i.al, align 4, !tbaa !12 ; 2 uses
  %i.ay = insertelement <2 x float> %i.ax, float %i.o, i64 1
  %i.az = insertelement <2 x float> %i.ax, float %i.o, i64 0
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.ay, %i.az
  %i.bb = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, %i.aw ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, f0x40549A78
  %i.be = tail call reassoc nsz arcp contract afn noundef float @llvm.exp2.f32(float %i.bd)
  %i.bf = fsub reassoc nsz arcp contract afn float %i.r, %i.be
  %i.bg = fdiv reassoc nsz arcp contract afn float f0x3F75C28F, %i.bf
  %i.bh = extractelement <2 x float> %i.bb, i64 1
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, f0x40549A78
  %i.bj = tail call reassoc nsz arcp contract afn noundef float @llvm.exp2.f32(float %i.bi)
  %i.bk = fsub reassoc nsz arcp contract afn float %i.r, %i.bj
  %i.bl = fdiv reassoc nsz arcp contract afn float f0x3F75C28F, %i.bk
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ah, float %i.bg)
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bm, float %i.bl)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  store float %i.bn, ptr %i.bo, align 4, !tbaa !36
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.br = atomicrmw add ptr %i.bq, i32 1 seq_cst, align 4 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !127
  %i.bu = load float, ptr %i.bo, align 4, !tbaa !36
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.bu)
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bt, float noundef %i.bv) #20
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.by = atomicrmw add ptr %i.bx, i32 -1 seq_cst, align 4 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !113
  tail call void @dt_control_queue_redraw_widget(ptr noundef %i.ca) #20
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  tail call void @dt_dev_add_history_item(ptr noundef %i.cb, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_auto_black(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.l = load float, ptr %i.k, align 4, !tbaa !33 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.o = load float, ptr %i.n, align 4, !tbaa !34 ; 3 uses
  %i.p = load float, ptr %i.h, align 4, !tbaa !12
  %i.q = load float, ptr %i.i, align 16, !tbaa !12
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.q, float f0x2F800000)
  %i.s = fdiv reassoc nsz arcp contract afn float %i.p, %i.r
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.s)
  %i.u = fneg reassoc nsz arcp contract afn float %i.t
  %i.v = load float, ptr %i.j, align 4, !tbaa !12 ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, %i.u
  %i.x = fdiv reassoc nsz arcp contract afn float %i.w, %i.l
  %i.y = load float, ptr %i.m, align 4, !tbaa !12
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.v
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.o
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %i.x
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, f0x40549A78
  %i.ad = tail call reassoc nsz arcp contract afn noundef float @llvm.exp2.f32(float %i.ac)
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ad, f0xBF666666
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.ai
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.o
  %i.an = load <2 x float>, ptr %i.af, align 4, !tbaa !12
  %i.ao = load <2 x float>, ptr %i.ag, align 4, !tbaa !12
  %i.ap = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ao, <2 x float> splat (float f0x2F800000))
  %i.aq = fdiv reassoc nsz arcp contract afn <2 x float> %i.an, %i.ap
  %i.ar = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log10.v2f32(<2 x float> %i.aq)
  %i.as = fneg reassoc nsz arcp contract afn <2 x float> %i.ar ; 2 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = fmul reassoc nsz arcp contract afn float %i.ai, %i.at
  %i.av = fdiv reassoc nsz arcp contract afn float %i.au, %i.l
  %i.aw = fadd reassoc nsz arcp contract afn float %i.am, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, f0x40549A78
  %i.ay = tail call reassoc nsz arcp contract afn noundef float @llvm.exp2.f32(float %i.ax)
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, f0xBF666666
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 28
end_hunk_0
begin_hunk_1_@gui_init:bb.a
  %i.dd = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.39) #20 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !123
  %i.df = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.dd, ptr noundef null, ptr noundef nonnull @.str.40) #20 ; 0 uses
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !123
  %i.dh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.dg, ptr noundef %i.dh) #20
  %i.di = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.42) #20 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !124
  %i.dk = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.di, ptr noundef null, ptr noundef nonnull @.str.43) #20 ; 0 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !124
  %i.dm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.dl, ptr noundef %i.dm) #20
  %i.dn = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.44) #20 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !125
  %i.dp = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.dn, ptr noundef null, ptr noundef nonnull @.str.45) #20 ; 0 uses
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !125
  %i.dr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.dq, ptr noundef %i.dr) #20
  %i.ds = call ptr @gtk_color_button_new() #20    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 152 ; 4 uses
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !119
  call void @gtk_color_chooser_set_use_alpha(ptr noundef %i.ds, i32 noundef 0) #20
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !119
  %i.dv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #20
  call void @gtk_color_button_set_title(ptr noundef %i.du, ptr noundef %i.dv) #20
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !119
  %i.dx = call i64 @g_signal_connect_data(ptr noundef %i.dw, ptr noundef nonnull @.str.13, ptr noundef nonnull @WB_high_picker_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  %i.dy = call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 2, ptr noundef null) #20 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 160 ; 3 uses
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !115
  %i.ea = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.dy, ptr noundef %i.ea) #20
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !115
  %i.ec = call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.48, ptr noundef %i.eb, ptr noundef nonnull @dt_action_def_toggle) #20 ; 0 uses
  %i.ed = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.49, i64 noundef 8) #20
  %i.ee = call ptr @gtk_label_new(ptr noundef %i.ed) #20 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.ee, i32 noundef 0) #20
  call void @gtk_label_set_xalign(ptr noundef %i.ee, float noundef 5.000000e-01) #20
  call void @gtk_label_set_ellipsize(ptr noundef %i.ee, i32 noundef 3) #20
  call void @dt_gui_add_class(ptr noundef %i.ee, ptr noundef nonnull @.str.76) #20
  store ptr %i.ee, ptr %i.g, align 8, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.eg = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #20
  %i.eh = load ptr, ptr %i.dt, align 8, !tbaa !119 ; 2 uses
  call void @gtk_widget_set_hexpand(ptr noundef %i.eh, i32 noundef 1) #20
  store ptr %i.eh, ptr %i.h, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ej = load ptr, ptr %i.dz, align 8, !tbaa !115
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ek, align 8, !tbaa !14
  %i.el = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 949, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.eg, ptr noundef nonnull %i.h) #20
  store ptr %i.el, ptr %i.ef, align 8, !tbaa !14
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.em, align 8, !tbaa !14
  %i.en = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 949, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.cg, ptr noundef nonnull %i.g) #20 ; 0 uses
  %i.eo = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.50) #20 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !116
  %i.eq = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.eo, ptr noundef null, ptr noundef nonnull @.str.51) #20 ; 0 uses
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !116
  %i.es = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.er, ptr noundef %i.es) #20
  %i.et = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.53) #20 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !117
  %i.ev = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.et, ptr noundef null, ptr noundef nonnull @.str.54) #20 ; 0 uses
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !117
  %i.ex = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ew, ptr noundef %i.ex) #20
  %i.ey = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.55) #20 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !118
  %i.fa = call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.ey, ptr noundef null, ptr noundef nonnull @.str.56) #20 ; 0 uses
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !118
  %i.fc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.52, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fb, ptr noundef %i.fc) #20
  %i.fd = load ptr, ptr %i.m, align 8, !tbaa !144
  %i.fe = call ptr @dt_ui_notebook_page(ptr noundef %i.fd, ptr noundef nonnull @.str.57, ptr noundef null) #20 ; 3 uses
  store ptr %i.fe, ptr %i.s, align 8, !tbaa !113
  %i.ff = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.58, i64 noundef 8) #20
  %i.fg = call ptr @gtk_label_new(ptr noundef %i.ff) #20 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.fg, i32 noundef 0) #20
  call void @gtk_label_set_xalign(ptr noundef %i.fg, float noundef 5.000000e-01) #20
  call void @gtk_label_set_ellipsize(ptr noundef %i.fg, i32 noundef 3) #20
  call void @dt_gui_add_class(ptr noundef %i.fg, ptr noundef nonnull @.str.76) #20
  store ptr %i.fg, ptr %i.i, align 8, !tbaa !14
  %i.fh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.fh, align 8, !tbaa !14
  %i.fi = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 976, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.fe, ptr noundef nonnull %i.i) #20 ; 0 uses
  %i.fj = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.59) #20
  %i.fk = call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 2, ptr noundef %i.fj) #20 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 4 uses
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !128
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.fk, i32 noundef 4) #20
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !128
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.fm, float noundef 1.000000e+02) #20
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !128
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.fn, ptr noundef nonnull @.str.20) #20
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !128
  %i.fp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fo, ptr noundef %i.fp) #20
  %i.fq = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.61) #20 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !145
  %i.fs = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fq, ptr noundef %i.fs) #20
  %i.ft = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.63) #20 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !146
  call void @dt_bauhaus_slider_set_factor(ptr noundef %i.ft, float noundef 1.000000e+02) #20
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !146
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.fv, i32 noundef 4) #20
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !146
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.fw, ptr noundef nonnull @.str.20) #20
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !146
  %i.fy = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.fx, ptr noundef %i.fy) #20
  %i.fz = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.65, i64 noundef 8) #20
  %i.ga = call ptr @gtk_label_new(ptr noundef %i.fz) #20 ; 5 uses
  call void @gtk_widget_set_halign(ptr noundef %i.ga, i32 noundef 0) #20
  call void @gtk_label_set_xalign(ptr noundef %i.ga, float noundef 5.000000e-01) #20
  call void @gtk_label_set_ellipsize(ptr noundef %i.ga, i32 noundef 3) #20
  call void @dt_gui_add_class(ptr noundef %i.ga, ptr noundef nonnull @.str.76) #20
  store ptr %i.ga, ptr %i.j, align 8, !tbaa !14
  %i.gb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.gb, align 8, !tbaa !14
  %i.gc = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 998, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.fe, ptr noundef nonnull %i.j) #20 ; 0 uses
  %i.gd = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.66) #20
  %i.ge = call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 2, ptr noundef %i.gd) #20 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 5 uses
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !127
  call void @dt_bauhaus_slider_set_hard_min(ptr noundef %i.ge, float noundef -1.000000e+00) #20
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !127
  call void @dt_bauhaus_slider_set_soft_min(ptr noundef %i.gg, float noundef -1.000000e+00) #20
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !127
  call void @dt_bauhaus_slider_set_hard_max(ptr noundef %i.gh, float noundef 1.000000e+00) #20
  %i.gi = load ptr, ptr %i.gf, align 8, !tbaa !127
  %i.gj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #20
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.gi, ptr noundef %i.gj) #20
  %i.gk = load ptr, ptr %i.gf, align 8, !tbaa !127
  %i.gl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.gk, ptr noundef %i.gl) #20
  %i.gm = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #20
  store ptr inttoptr (i64 -1 to ptr), ptr %i.k, align 8, !tbaa !14
  %i.gn = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 1009, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.gm, ptr noundef nonnull %i.k) #20
  store ptr %i.gn, ptr %i.s, align 8, !tbaa !113
  %i.go = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.69) #20 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !129
  %i.gq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.70, i32 noundef 5) #20
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.go, ptr noundef %i.gq) #20
  %i.gr = load ptr, ptr %i.s, align 8, !tbaa !113
  %i.gs = load ptr, ptr %i.m, align 8, !tbaa !144
  store ptr %i.gs, ptr %i.l, align 8, !tbaa !14
  %i.gt = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.gt, align 8, !tbaa !14
  %i.gu = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.17, i32 noundef 1015, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.gr, ptr noundef nonnull %i.l) #20 ; 0 uses
  ret void
}

declare ptr @dt_ui_notebook_new(ptr noundef) local_unnamed_addr #3

declare ptr @dt_action_define_iop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ui_notebook_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_color_button_new() local_unnamed_addr #3

declare void @gtk_color_chooser_set_use_alpha(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_color_button_set_title(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @Dmin_picker_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct._GdkRGBA, align 16          ; 9 uses
  %3 = alloca %struct._GdkRGBA, align 16          ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !98  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 3 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @gtk_color_chooser_get_rgba(ptr noundef %0, ptr noundef nonnull %3) #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load <2 x double>, ptr %3, align 16, !tbaa !108
  %i.k = fptrunc <2 x double> %i.j to <2 x float>
  store <2 x float> %i.k, ptr %i.h, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load double, ptr %i.l, align 16, !tbaa !109
  %i.n = fptrunc reassoc nsz arcp contract afn double %i.m to float
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  store float %i.n, ptr %i.o, align 4, !tbaa !12
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = atomicrmw add ptr %i.q, i32 1 seq_cst, align 4 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !103
  %i.u = load float, ptr %i.h, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.t, float noundef %i.u) #20
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104
  %i.x = load float, ptr %i.i, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.w, float noundef %i.x) #20
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105
  %i.aa = load float, ptr %i.o, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.z, float noundef %i.aa) #20
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4 ; 0 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !102 ; 4 uses
  %.val16 = load ptr, ptr %i.d, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 1.000000e+00, ptr %i.ae, align 8, !tbaa !107
  %i.af = load i32, ptr %.val, align 4, !tbaa !35
  switch i32 %i.af, label %Dmin_picker_update.exit [
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !12
  %i.ai = fpext <2 x float> %i.ah to <2 x double>
  store <2 x double> %i.ai, ptr %2, align 16, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = fpext reassoc nsz arcp contract afn float %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.al, ptr %i.am, align 16, !tbaa !109
  br label %Dmin_picker_update.exit

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12
  %i.ap = fpext reassoc nsz arcp contract afn float %i.ao to double ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.ap, ptr %i.aq, align 16, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.ap, ptr %i.ar, align 8, !tbaa !110
  store double %i.ap, ptr %2, align 16, !tbaa !111
  br label %Dmin_picker_update.exit

Dmin_picker_update.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.val16, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !112
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.at, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #20
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  call void @dt_dev_add_history_item(ptr noundef %i.au, ptr noundef nonnull %1, i32 noundef 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %Dmin_picker_update.exit
  ret void
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @WB_low_picker_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %3 = alloca %struct._GdkRGBA, align 16          ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !98  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 3 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @gtk_color_chooser_get_rgba(ptr noundef %0, ptr noundef nonnull %3) #20
  %i.h = load <2 x double>, ptr %3, align 16, !tbaa !108
  %i.i = fsub reassoc nsz arcp contract afn <2 x double> splat (double 2.000000e+00), %i.h
  %i.j = fptrunc <2 x double> %i.i to <2 x float> ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load double, ptr %i.k, align 16, !tbaa !109
  %i.m = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.l
  %i.n = fptrunc reassoc nsz arcp contract afn double %i.m to float ; 2 uses
  %i.o = extractelement <2 x float> %i.j, i64 0
  %i.p = extractelement <2 x float> %i.j, i64 1
  %i.q = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.o, float %i.p)
  %i.r = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.q, float %i.n)
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 2 uses
  %i.t = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float 1.000000e+00, i64 3
  %i.v = insertelement <4 x float> %i.u, float %i.n, i64 2
  %i.w = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.r, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.y = fdiv reassoc nsz arcp contract afn <4 x float> %i.v, %i.x
  store <4 x float> %i.y, ptr %i.s, align 4, !tbaa !12
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ab = atomicrmw add ptr %i.aa, i32 1 seq_cst, align 4 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !123
  %i.ae = load float, ptr %i.s, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.ad, float noundef %i.ae) #20
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !124
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.ag, float noundef %i.ai) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.am = load float, ptr %i.al, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.ak, float noundef %i.am) #20
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 seq_cst, align 4 ; 0 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !102 ; 2 uses
  %.val21 = load ptr, ptr %i.d, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 1.000000e+00, ptr %i.aq, align 8, !tbaa !107
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.at = load float, ptr %i.as, align 4, !tbaa !12
  %i.au = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.at ; 2 uses
  %i.av = load <2 x float>, ptr %i.ar, align 4, !tbaa !12
  %i.aw = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.av ; 3 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  %i.ay = extractelement <2 x float> %i.aw, i64 1
  %i.az = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ax, float %i.ay)
  %i.ba = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.az, float %i.au) ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv reassoc nsz arcp contract afn <2 x float> %i.aw, %i.bc
  %i.be = fdiv reassoc nsz arcp contract afn float %i.au, %i.ba
  %i.bf = fpext <2 x float> %i.bd to <2 x double>
  store <2 x double> %i.bf, ptr %2, align 16, !tbaa !108
  %i.bg = fpext reassoc nsz arcp contract afn float %i.be to double
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.bg, ptr %i.bh, align 16, !tbaa !109
  %i.bi = getelementptr inbounds nuw i8, ptr %.val21, i64 168
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !126
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.bj, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #20
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  call void @dt_dev_add_history_item(ptr noundef %i.bk, ptr noundef %1, i32 noundef 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WB_high_picker_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %3 = alloca %struct._GdkRGBA, align 16          ; 5 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !98  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102  ; 3 uses
  tail call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @gtk_color_chooser_get_rgba(ptr noundef %0, ptr noundef nonnull %3) #20
  %i.h = load <2 x double>, ptr %3, align 16, !tbaa !108
  %i.i = fsub reassoc nsz arcp contract afn <2 x double> splat (double 2.000000e+00), %i.h
  %i.j = fptrunc <2 x double> %i.i to <2 x float> ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load double, ptr %i.k, align 16, !tbaa !109
  %i.m = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.l
  %i.n = fptrunc reassoc nsz arcp contract afn double %i.m to float ; 2 uses
  %i.o = extractelement <2 x float> %i.j, i64 0
  %i.p = extractelement <2 x float> %i.j, i64 1
  %i.q = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.o, float %i.p)
  %i.r = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.q, float %i.n)
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.t = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float 1.000000e+00, i64 3
  %i.v = insertelement <4 x float> %i.u, float %i.n, i64 2
  %i.w = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.r, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.y = fdiv reassoc nsz arcp contract afn <4 x float> %i.v, %i.x
  store <4 x float> %i.y, ptr %i.s, align 4, !tbaa !12
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ab = atomicrmw add ptr %i.aa, i32 1 seq_cst, align 4 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116
  %i.ae = load float, ptr %i.s, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.ad, float noundef %i.ae) #20
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.ag, float noundef %i.ai) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.am = load float, ptr %i.al, align 4, !tbaa !12
  call void @dt_bauhaus_slider_set(ptr noundef %i.ak, float noundef %i.am) #20
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 seq_cst, align 4 ; 0 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !102 ; 2 uses
  %.val21 = load ptr, ptr %i.d, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 1.000000e+00, ptr %i.aq, align 8, !tbaa !107
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !12
  %i.au = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.at ; 2 uses
  %i.av = load <2 x float>, ptr %i.ar, align 4, !tbaa !12
  %i.aw = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.av ; 3 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  %i.ay = extractelement <2 x float> %i.aw, i64 1
  %i.az = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ax, float %i.ay)
  %i.ba = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.az, float %i.au) ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv reassoc nsz arcp contract afn <2 x float> %i.aw, %i.bc
  %i.be = fdiv reassoc nsz arcp contract afn float %i.au, %i.ba
  %i.bf = fpext <2 x float> %i.bd to <2 x double>
  store <2 x double> %i.bf, ptr %2, align 16, !tbaa !108
  %i.bg = fpext reassoc nsz arcp contract afn float %i.be to double
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.bg, ptr %i.bh, align 16, !tbaa !109
  %i.bi = getelementptr inbounds nuw i8, ptr %.val21, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !119
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.bj, ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @dt_iop_color_picker_reset(ptr noundef %1, i32 noundef 1) #20
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !114
  call void @dt_dev_add_history_item(ptr noundef %i.bk, ptr noundef %1, i32 noundef 1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @dt_bauhaus_slider_set_hard_min(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_soft_min(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_hard_max(ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %4 = alloca %struct._GdkRGBA, align 16          ; 6 uses
  %5 = alloca %struct._GdkRGBA, align 16          ; 9 uses
  %6 = alloca %struct._GdkRGBA, align 16          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !98  ; 20 uses
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %.val48.val = load i32, ptr %i.b, align 4, !tbaa !35
  switch i32 %.val48.val, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  tail call void @gtk_widget_set_visible(ptr noundef %i.i, i32 noundef 0) #20
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  tail call void @gtk_widget_set_visible(ptr noundef %i.k, i32 noundef 0) #20
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103
  %i.n = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.m, ptr noundef null, ptr noundef nonnull @.str.77) #20 ; 0 uses
  br label %toggle_stock_controls.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !104
  tail call void @gtk_widget_set_visible(ptr noundef %i.p, i32 noundef 1) #20
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105
  tail call void @gtk_widget_set_visible(ptr noundef %i.r, i32 noundef 1) #20
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !103
  %i.u = tail call ptr @dt_bauhaus_widget_set_label(ptr noundef %i.t, ptr noundef null, ptr noundef nonnull @.str.21) #20 ; 0 uses
  br label %toggle_stock_controls.exit

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.78) #20
  br label %toggle_stock_controls.exit

toggle_stock_controls.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.val42 = load ptr, ptr %i.a, align 8, !tbaa !102 ; 4 uses
  %.val43 = load ptr, ptr %i.c, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double 1.000000e+00, ptr %i.v, align 8, !tbaa !107
  %i.w = load i32, ptr %.val42, align 4, !tbaa !35
  switch i32 %i.w, label %bb.r [
    i32 1, label %bb.g
    i32 0, label %bb.h
  ]

bb.g:                                             ; preds = %toggle_stock_controls.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.val42, i64 4
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !12
  %i.z = fpext <2 x float> %i.y to <2 x double>
  store <2 x double> %i.z, ptr %6, align 16, !tbaa !108
  %i.aa = getelementptr inbounds nuw i8, ptr %.val42, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = fpext reassoc nsz arcp contract afn float %i.ab to double
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ac, ptr %i.ad, align 16, !tbaa !109
  br label %bb.r

bb.h:                                             ; preds = %toggle_stock_controls.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.val42, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = fpext reassoc nsz arcp contract afn float %i.af to double ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.ag, ptr %i.ah, align 16, !tbaa !109
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.ag, ptr %i.ai, align 8, !tbaa !110
  store double %i.ag, ptr %6, align 16, !tbaa !111
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.al = icmp eq ptr %1, %i.ak
  br i1 %i.al, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.b, align 4, !tbaa !35
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !104
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ap, float noundef %i.ar) #20
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !105
  %i.au = load float, ptr %i.aq, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.at, float noundef %i.au) #20
  br label %.thread51

bb.l:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !104
  %i.ax = icmp eq ptr %1, %i.aw
  br i1 %i.ax, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !105
  %i.ba = icmp eq ptr %1, %i.az
  br i1 %i.ba, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.j, %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double 1.000000e+00, ptr %i.bb, align 8, !tbaa !107
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !35
  switch i32 %i.bc, label %Dmin_picker_update.exit50 [
    i32 1, label %bb.n
    i32 0, label %bb.o
  ]

bb.n:                                             ; preds = %.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.be = load <2 x float>, ptr %i.bd, align 4, !tbaa !12
  %i.bf = fpext <2 x float> %i.be to <2 x double>
  store <2 x double> %i.bf, ptr %5, align 16, !tbaa !108
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !12
  %i.bi = fpext reassoc nsz arcp contract afn float %i.bh to double
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.bi, ptr %i.bj, align 16, !tbaa !109
  br label %Dmin_picker_update.exit50

bb.o:                                             ; preds = %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = fpext reassoc nsz arcp contract afn float %i.bl to double ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.bm, ptr %i.bn, align 16, !tbaa !109
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.bm, ptr %i.bo, align 8, !tbaa !110
  store double %i.bm, ptr %5, align 16, !tbaa !111
  br label %Dmin_picker_update.exit50

Dmin_picker_update.exit50:                        ; preds = %.thread, %bb.n, %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !112
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.bq, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.thread51

bb.p:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !127
  %i.bt = icmp eq ptr %1, %i.bs
  br i1 %i.bt, label %bb.q, label %.thread51

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !36
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bv)
  store float %exp2, ptr %i.bu, align 4, !tbaa !36
  br label %.thread51

bb.r:                                             ; preds = %bb.h, %bb.g, %toggle_stock_controls.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.val43, i64 136
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !112
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.bx, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %.not, label %bb.u, label %.thread51

.thread51:                                        ; preds = %Dmin_picker_update.exit50, %bb.q, %bb.p, %bb.k, %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !116
  %i.ca = icmp eq ptr %1, %i.bz
  br i1 %i.ca, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.thread51
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !117
  %i.cd = icmp eq ptr %1, %i.cc
  br i1 %i.cd, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !118
  %i.cg = icmp eq ptr %1, %i.cf
  br i1 %i.cg, label %bb.u, label %.thread52

bb.u:                                             ; preds = %bb.r, %.thread51, %bb.s, %bb.t
  %.val44 = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.val45 = load ptr, ptr %i.c, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double 1.000000e+00, ptr %i.ch, align 8, !tbaa !107
  %i.ci = getelementptr inbounds nuw i8, ptr %.val44, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %.val44, i64 28
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !12
  %i.cl = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.ck ; 2 uses
  %i.cm = load <2 x float>, ptr %i.ci, align 4, !tbaa !12
  %i.cn = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.cm ; 3 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = extractelement <2 x float> %i.cn, i64 1
  %i.cq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.co, float %i.cp)
  %i.cr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cq, float %i.cl) ; 2 uses
  %i.cs = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fdiv reassoc nsz arcp contract afn <2 x float> %i.cn, %i.ct
  %i.cv = fdiv reassoc nsz arcp contract afn float %i.cl, %i.cr
  %i.cw = fpext <2 x float> %i.cu to <2 x double>
  store <2 x double> %i.cw, ptr %4, align 16, !tbaa !108
  %i.cx = fpext reassoc nsz arcp contract afn float %i.cv to double
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.cx, ptr %i.cy, align 16, !tbaa !109
  %i.cz = getelementptr inbounds nuw i8, ptr %.val45, i64 152
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !119
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.da, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.not, label %bb.x, label %.thread52

.thread52:                                        ; preds = %bb.t, %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !123
  %i.dd = icmp eq ptr %1, %i.dc
  br i1 %i.dd, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread52
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !124
  %i.dg = icmp eq ptr %1, %i.df
  br i1 %i.dg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !125
  %i.dj = icmp eq ptr %1, %i.di
  br i1 %i.dj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v, %.thread52, %bb.u
  %.val46 = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.val47 = load ptr, ptr %i.c, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double 1.000000e+00, ptr %i.dk, align 8, !tbaa !107
  %i.dl = getelementptr inbounds nuw i8, ptr %.val46, i64 36
  %i.dm = getelementptr inbounds nuw i8, ptr %.val46, i64 44
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !12
  %i.do = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.dn ; 2 uses
  %i.dp = load <2 x float>, ptr %i.dl, align 4, !tbaa !12
  %i.dq = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.dp ; 3 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  %i.ds = extractelement <2 x float> %i.dq, i64 1
  %i.dt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dr, float %i.ds)
  %i.du = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dt, float %i.do) ; 2 uses
  %i.dv = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fdiv reassoc nsz arcp contract afn <2 x float> %i.dq, %i.dw
  %i.dy = fdiv reassoc nsz arcp contract afn float %i.do, %i.du
  %i.dz = fpext <2 x float> %i.dx to <2 x double>
  store <2 x double> %i.dz, ptr %3, align 16, !tbaa !108
  %i.ea = fpext reassoc nsz arcp contract afn float %i.dy to double
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.ea, ptr %i.eb, align 16, !tbaa !109
  %i.ec = getelementptr inbounds nuw i8, ptr %.val47, i64 168
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !126
  call void @gtk_color_chooser_set_rgba(ptr noundef %i.ed, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !36
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.h)
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.f, float noundef %i.i) #20
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.k = load float, ptr %i.g, align 4, !tbaa !36
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.k)
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %i.j, float noundef %i.l) #20
  tail call void @gui_changed(ptr noundef %0, ptr noundef null, ptr poison)
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #14

declare void @dt_bauhaus_slider_set_default(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !149
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !150
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1288), align 8, !tbaa !150
  store ptr @introspection_init.f0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 72), align 8, !tbaa !150
  store ptr @introspection_init.f13, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1216), align 16, !tbaa !150
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.69) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.19) #22
  %.not28 = icmp eq i32 %i.b, 0
  br i1 %.not28, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.73) #22
  %.not29 = icmp eq i32 %i.d, 0
  br i1 %.not29, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.50) #22
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.74) #22
  %.not31 = icmp eq i32 %i.h, 0
  br i1 %.not31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.39) #22
  %.not32 = icmp eq i32 %i.j, 0
  br i1 %.not32, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.y

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.75) #22
  %.not33 = icmp eq i32 %i.l, 0
  br i1 %.not33, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.28) #22
  %.not34 = icmp eq i32 %i.n, 0
  br i1 %.not34, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.32) #22
  %.not35 = icmp eq i32 %i.p, 0
  br i1 %.not35, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.59) #22
  %.not36 = icmp eq i32 %i.r, 0
  br i1 %.not36, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.61) #22
  %.not37 = icmp eq i32 %i.t, 0
  br i1 %.not37, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.63) #22
  %.not38 = icmp eq i32 %i.v, 0
  br i1 %.not38, label %bb.w, label %bb.x

end_hunk_1
