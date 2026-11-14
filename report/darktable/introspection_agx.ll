Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_agx?download=true
inline.NumInlined: 178
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_set_smooth_params:bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 1, ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 132
  store <8 x float> <float 1.000000e-01, float f0x3D0EFA36, float 1.000000e-01, float f0xBC8EFA36, float 1.500000e-01, float f0xBD567751, float 0.000000e+00, float 1.000000e+00>, ptr %i.g, align 4, !tbaa !12
  store <4 x float> <float 1.000000e-01, float f0x3D0EFA36, float 1.000000e-01, float f0xBC8EFA36>, ptr %i.h, align 4, !tbaa !12
  store <2 x float> <float 1.500000e-01, float f0xBD567751>, ptr %i.i, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef initializes((548, 552)) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_agx_params_t, align 16 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 1, ptr %i.a, align 4, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.c, align 8, !tbaa !154
  store float 0.000000e+00, ptr %1, align 16, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !199
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store float 6.000000e-01, ptr %i.e, align 16, !tbaa !200
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float -1.000000e+01, ptr %i.f, align 4, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float 6.500000e+00, ptr %i.g, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float 1.000000e-01, ptr %i.h, align 4, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 5 uses
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !155
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  store i32 0, ptr %i.n, align 16, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store <8 x float> <float f0x3F1B26CA, float 1.800000e-01, float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.500000e+00, float 3.300000e+00, float 2.200000e+00>, ptr %i.o, align 16, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  store i32 0, ptr %i.p, align 16, !tbaa !141
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 6 uses
  store i32 0, ptr %i.q, align 4, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 6 uses
  store i32 2, ptr %i.r, align 4, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr %i.t, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float 1.000000e+00, ptr %i.u, align 16, !tbaa !201
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = tail call i32 (...) %i.y() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.w, i32 noundef %i.z, ptr noundef nonnull %1, i32 noundef 144, i32 noundef 1, i32 noundef 4) #22
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1, align 16, !tbaa !12
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 4, !tbaa !12
  store i32 0, ptr %i.n, align 16, !tbaa !137
  store i32 0, ptr %i.p, align 16, !tbaa !141
  store i32 0, ptr %i.q, align 4, !tbaa !142
  store i32 2, ptr %i.r, align 4, !tbaa !16
  store <8 x float> <float f0x3E96D906, float f0x3D11030A, float f0x3E8469BE, float f0xBCACBC41, float f0x3E15ED7A, float f0xBD812427, float 1.000000e+00, float 0.000000e+00>, ptr %i.s, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 5 uses
  store <4 x float> <float f0x3E94E0A5, float f0x3D11030A, float f0x3E86BC4E, float f0xBCACBC41>, ptr %i.v, align 4, !tbaa !12
  store <2 x float> <float f0x3D3BA406, float f0xBD812427>, ptr %i.aa, align 4, !tbaa !12
  store <4 x float> <float 0.000000e+00, float 1.500000e+00, float 1.500000e+00, float 2.400000e+00>, ptr %i.j, align 16, !tbaa !12
  store <8 x float> <float 6.000000e-01, float -1.000000e+01, float 6.500000e+00, float 1.000000e-01, float f0x3F1B26CA, float 1.800000e-01, float f0x401D068C, float 0.000000e+00>, ptr %i.e, align 16, !tbaa !12
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.ac = call i32 (...) %i.ab() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.w, i32 noundef %i.ac, ptr noundef nonnull %1, i32 noundef 144, i32 noundef 1, i32 noundef 4) #22
  store float 0.000000e+00, ptr %1, align 16, !tbaa !198
  store <2 x float> <float f0x3F0C7765, float 1.400000e+00>, ptr %i.c, align 8, !tbaa !12
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.ae = call i32 (...) %i.ad() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.18, ptr noundef nonnull %i.w, i32 noundef %i.ae, ptr noundef nonnull %1, i32 noundef 144, i32 noundef 1, i32 noundef 4) #22
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 4, !tbaa !12
  store i32 0, ptr %i.n, align 16, !tbaa !137
  store i32 0, ptr %i.p, align 16, !tbaa !141
  store i32 0, ptr %i.q, align 4, !tbaa !142
  store i32 2, ptr %i.r, align 4, !tbaa !16
  store <8 x float> <float f0x3E96D906, float f0x3D11030A, float f0x3E8469BE, float f0xBCACBC41, float f0x3E15ED7A, float f0xBD812427, float 1.000000e+00, float 0.000000e+00>, ptr %i.s, align 4, !tbaa !12
  store <4 x float> <float f0x3E94E0A5, float f0x3D11030A, float f0x3E86BC4E, float f0xBCACBC41>, ptr %i.v, align 4, !tbaa !12
  store <2 x float> <float f0x3D3BA406, float f0xBD812427>, ptr %i.aa, align 4, !tbaa !12
  store <8 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+01, float 6.500000e+00, float 1.000000e-01>, ptr %1, align 16, !tbaa !12
  store <8 x float> <float f0x3F1B26CA, float 1.800000e-01, float 3.070000e+00, float 0.000000e+00, float 0.000000e+00, float 1.400000e+00, float 3.710000e+00, float 2.200000e+00>, ptr %i.o, align 16, !tbaa !12
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.ag = call i32 (...) %i.af() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.19, ptr noundef nonnull %i.w, i32 noundef %i.ag, ptr noundef nonnull %1, i32 noundef 144, i32 noundef 1, i32 noundef 4) #22
  store i32 0, ptr %i.p, align 16, !tbaa !141
  store i32 0, ptr %i.q, align 4, !tbaa !142
  store i32 1, ptr %i.r, align 4, !tbaa !16
  store <8 x float> <float 1.000000e-01, float f0x3D0EFA36, float 1.000000e-01, float f0xBC8EFA36, float 1.500000e-01, float f0xBD567751, float 0.000000e+00, float 1.000000e+00>, ptr %i.s, align 4, !tbaa !12
  store <4 x float> <float 1.000000e-01, float f0x3D0EFA36, float 1.000000e-01, float f0xBC8EFA36>, ptr %i.v, align 4, !tbaa !12
  store <2 x float> <float 1.500000e-01, float f0xBD567751>, ptr %i.aa, align 4, !tbaa !12
  store float 0.000000e+00, ptr %i.e, align 16, !tbaa !200
  store float 2.980000e+00, ptr %i.i, align 8, !tbaa !156
  store <2 x float> <float 1.610000e+00, float 3.020000e+00>, ptr %i.k, align 4, !tbaa !12
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.ai = call i32 (...) %i.ah() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.w, i32 noundef %i.ai, ptr noundef nonnull %1, i32 noundef 144, i32 noundef 1, i32 noundef 4) #22
  %i.aj = call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.21) #22
  %i.ak = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(21) @.str.22) #25
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <8 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 6.000000e-01, float -1.000000e+01, float 6.500000e+00, float 1.000000e-01>, ptr %1, align 16, !tbaa !12
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 4, !tbaa !12
  store i32 0, ptr %i.n, align 16, !tbaa !137
  store <8 x float> <float f0x3F1B26CA, float 1.800000e-01, float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.500000e+00, float 3.300000e+00, float 2.200000e+00>, ptr %i.o, align 16, !tbaa !12
  store i32 0, ptr %i.p, align 16, !tbaa !141
  store i32 0, ptr %i.q, align 4, !tbaa !142
  store i32 2, ptr %i.r, align 4, !tbaa !16
  store <8 x float> <float f0x3E96D906, float f0x3D11030A, float f0x3E8469BE, float f0xBCACBC41, float f0x3E15ED7A, float f0xBD812427, float 1.000000e+00, float 0.000000e+00>, ptr %i.s, align 4, !tbaa !12
  store <4 x float> <float f0x3E94E0A5, float f0x3D11030A, float f0x3E86BC4E, float f0xBCACBC41>, ptr %i.v, align 4, !tbaa !12
  store <2 x float> <float f0x3D3BA406, float f0xBD812427>, ptr %i.aa, align 4, !tbaa !12
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.an = call i32 (...) %i.am() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.w, i32 noundef %i.an, ptr noundef nonnull %1, i32 noundef 144, i32 noundef 1, i32 noundef 4) #22
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.ap = call i32 (...) %i.ao() #22
  call void @dt_gui_presets_update_format(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.w, i32 noundef %i.ap, i32 noundef 34) #22
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.ar = call i32 (...) %i.aq() #22
  call void @dt_gui_presets_update_autoapply(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.w, i32 noundef %i.ar, i32 noundef 1) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store <8 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 6.000000e-01, float -1.000000e+01, float 6.500000e+00, float 1.000000e-01>, ptr %1, align 16, !tbaa !12
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 4, !tbaa !12
  store i32 0, ptr %i.n, align 16, !tbaa !137
  store <8 x float> <float f0x3F1B26CA, float 1.800000e-01, float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.500000e+00, float 3.300000e+00, float 2.200000e+00>, ptr %i.o, align 16, !tbaa !12
  store i32 0, ptr %i.p, align 16, !tbaa !141
  store i32 0, ptr %i.q, align 4, !tbaa !142
  store i32 1, ptr %i.r, align 4, !tbaa !16
  store <8 x float> <float 1.000000e-01, float f0x3D0EFA36, float 1.000000e-01, float f0xBC8EFA36, float 1.500000e-01, float f0xBD567751, float 0.000000e+00, float 1.000000e+00>, ptr %i.s, align 4, !tbaa !12
  store <4 x float> <float 1.000000e-01, float f0x3D0EFA36, float 1.000000e-01, float f0xBC8EFA36>, ptr %i.v, align 4, !tbaa !12
  store <2 x float> <float 1.500000e-01, float f0xBD567751>, ptr %i.aa, align 4, !tbaa !12
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.at = call i32 (...) %i.as() #22
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.w, i32 noundef %i.at, ptr noundef nonnull %1, i32 noundef 144, i32 noundef 1, i32 noundef 4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare void @dt_gui_presets_update_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_presets_update_autoapply(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.tone_mapping_params_t, align 4 ; 5 uses
  %4 = alloca %struct.tone_mapping_params_t, align 4 ; 25 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !117 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 9 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !132 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 7 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 232 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.n = icmp eq ptr %1, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.p = load float, ptr %i.o, align 16, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.p, float %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.u = load float, ptr %i.t, align 8, !tbaa !12
  %i.v = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.s, float %i.u)
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.v, float f0x358637BD)
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, f0x40B1C71C
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.aa = load float, ptr %i.z, align 4, !tbaa !136
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, 1.000000e+00
  %i.ac = fmul reassoc nsz arcp contract afn float %i.y, %i.ab ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ult float %i.ac, -2.000000e+01
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.ac, -1.000000e-01
  %spec.select.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.ac, float -1.000000e-01
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float -2.000000e+01, float %spec.select.i
  store float %i.ae, ptr %i.h, align 4, !tbaa !132
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.ah = atomicrmw add ptr %i.ag, i32 1 seq_cst, align 4 ; 0 uses
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.aj = load float, ptr %i.h, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ai, float noundef %i.aj) #22
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.am = atomicrmw add ptr %i.al, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 240 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !134
  %i.ap = icmp eq ptr %1, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ar = load float, ptr %i.aq, align 16, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.at = load float, ptr %i.as, align 4, !tbaa !12
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ar, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.aw = load float, ptr %i.av, align 8, !tbaa !12
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.au, float %i.aw)
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ax, float f0x358637BD)
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, f0x40B1C71C
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !136
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, 1.000000e+00
  %i.be = fmul reassoc nsz arcp contract afn float %i.ba, %i.bd ; 3 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ult float %i.be, 1.000000e-01
  %.inv.i35 = fcmp reassoc nsz arcp contract afn ole float %i.be, 2.000000e+01
  %spec.select.i36 = select reassoc nsz arcp contract afn i1 %.inv.i35, float %i.be, float 2.000000e+01
  %i.bg = select reassoc nsz arcp contract afn i1 %i.bf, float 1.000000e-01, float %spec.select.i36
  store float %i.bg, ptr %i.j, align 4, !tbaa !130
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.bj = atomicrmw add ptr %i.bi, i32 1 seq_cst, align 4 ; 0 uses
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !134
  %i.bl = load float, ptr %i.j, align 4, !tbaa !130
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bk, float noundef %i.bl) #22
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = atomicrmw add ptr %i.bn, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !153
  %i.br = icmp eq ptr %1, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bt = load float, ptr %i.bs, align 16, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bt, float %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.by = load float, ptr %i.bx, align 8, !tbaa !12
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bw, float %i.by)
  %i.ca = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bz, float f0x358637BD)
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, f0x40B1C71C
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !136
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, 1.000000e+00 ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cc, %i.cf ; 3 uses
  %i.ch = fcmp reassoc nsz arcp contract afn ult float %i.cg, -2.000000e+01
  %.inv.i37 = fcmp reassoc nsz arcp contract afn ole float %i.cg, -1.000000e-01
  %spec.select.i38 = select reassoc nsz arcp contract afn i1 %.inv.i37, float %i.cg, float -1.000000e-01
  %i.ci = select reassoc nsz arcp contract afn i1 %i.ch, float -2.000000e+01, float %spec.select.i38
  store float %i.ci, ptr %i.h, align 4, !tbaa !132
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ck = load float, ptr %i.cj, align 16, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ck, float %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.cp = load float, ptr %i.co, align 8, !tbaa !12
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cn, float %i.cp)
  %i.cr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cq, float f0x358637BD)
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, f0x40B1C71C
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.cs)
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.cf ; 3 uses
  %i.cv = fcmp reassoc nsz arcp contract afn ult float %i.cu, 1.000000e-01
  %.inv24.i = fcmp reassoc nsz arcp contract afn ole float %i.cu, 2.000000e+01
  %spec.select23.i = select reassoc nsz arcp contract afn i1 %.inv24.i, float %i.cu, float 2.000000e+01
  %i.cw = select reassoc nsz arcp contract afn i1 %i.cv, float 1.000000e-01, float %spec.select23.i
  store float %i.cw, ptr %i.j, align 4, !tbaa !130
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %i.cz = atomicrmw add ptr %i.cy, i32 1 seq_cst, align 4 ; 0 uses
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.db = load float, ptr %i.h, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.da, float noundef %i.db) #22
  %i.dc = load ptr, ptr %i.an, align 8, !tbaa !134
  %i.dd = load float, ptr %i.j, align 4, !tbaa !130
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dc, float noundef %i.dd) #22
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  %i.dg = atomicrmw add ptr %i.df, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !131
  %i.dj = icmp eq ptr %1, %i.di
  br i1 %i.dj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dk = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %2) #22
  %i.dl = load ptr, ptr %i.d, align 8, !tbaa !118 ; 3 uses
  %i.dm = load ptr, ptr %i.f, align 16, !tbaa !117
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.do = tail call reassoc nsz arcp contract afn fastcc float @_luminance_from_profile(ptr noundef nonnull readonly %i.dn, ptr noundef readonly %i.dk)
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.do, float f0x358637BD)
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, f0x40B1C71C
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.dq) ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !132 ; 4 uses
  %i.du = fcmp reassoc nsz arcp contract afn ult float %i.dr, %i.dt
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !130 ; 3 uses
  %.inv.i39 = fcmp reassoc nsz arcp contract afn ole float %i.dr, %.pre.i
  %..i = select reassoc nsz arcp contract afn i1 %.inv.i39, float %i.dr, float %.pre.i
  %i.dv = select reassoc nsz arcp contract afn i1 %i.du, float %i.dt, float %..i
  %i.dw = fsub reassoc nsz arcp contract afn float %.pre.i, %i.dt
  %i.dx = fsub reassoc nsz arcp contract afn float %i.dv, %i.dt
  %i.dy = fdiv reassoc nsz arcp contract afn float %i.dx, %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 2 uses
  store float %i.dy, ptr %i.dz, align 4, !tbaa !133
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  %i.ec = atomicrmw add ptr %i.eb, i32 1 seq_cst, align 4 ; 0 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 272
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !131
  %i.ef = load float, ptr %i.dz, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ee, float noundef %i.ef) #22
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !202
  %i.el = icmp eq ptr %1, %i.ek
  br i1 %i.el, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.em = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %2) #22
  %i.en = load ptr, ptr %i.d, align 8, !tbaa !118 ; 6 uses
  %i.eo = load ptr, ptr %i.f, align 16, !tbaa !117 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.eq = tail call reassoc nsz arcp contract afn fastcc float @_luminance_from_profile(ptr noundef nonnull readonly %i.ep, ptr noundef readonly %i.em)
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eq, float f0x358637BD)
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, f0x40B1C71C
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.es) ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !132 ; 4 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ult float %i.et, %i.ev
  %.phi.trans.insert.i40 = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %.pre.i41 = load float, ptr %.phi.trans.insert.i40, align 4, !tbaa !130 ; 3 uses
  %.inv.i42 = fcmp reassoc nsz arcp contract afn ole float %i.et, %.pre.i41
  %..i43 = select reassoc nsz arcp contract afn i1 %.inv.i42, float %i.et, float %.pre.i41
  %i.ex = select reassoc nsz arcp contract afn i1 %i.ew, float %i.ev, float %..i43
  %i.ey = fsub reassoc nsz arcp contract afn float %.pre.i41, %i.ev
  %i.ez = fsub reassoc nsz arcp contract afn float %i.ex, %i.ev
  %i.fa = fdiv reassoc nsz arcp contract afn float %i.ez, %i.ey ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call fastcc void @_calculate_tone_mapping_params(ptr dead_on_unwind noalias writable align 4 %4, ptr noundef nonnull %i.en)
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !97 ; 2 uses
  %i.fd = fcmp reassoc nsz arcp contract afn olt float %i.fa, %i.fc
  br i1 %i.fd, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !99
  %.not37.i.i = icmp eq i32 %i.ff, 0
  br i1 %.not37.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fg = fcmp reassoc nsz arcp contract afn olt float %i.fa, 0.000000e+00
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !98 ; 2 uses
  br i1 %i.fg, label %_apply_auto_pivot_xy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !100
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !101
  %i.fn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.fa, float %i.fm)
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.fk
  %i.fp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fo, float 0.000000e+00)
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, %i.fi
  br label %_apply_auto_pivot_xy.exit

bb.o:                                             ; preds = %bb.l
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !102 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !103
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !104 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !105
  %i.fz = fsub reassoc nsz arcp contract afn float %i.fa, %i.fc
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fu, %i.fz
  %i.gb = fdiv reassoc nsz arcp contract afn float %i.ga, %i.fs ; 2 uses
  %i.gc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gb, float %i.fw)
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, 1.000000e+00
  %i.ge = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.fw
  %i.gf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gd, float %i.ge)
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gb, %i.fs
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, %i.gf
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %i.fy
  br label %_apply_auto_pivot_xy.exit

bb.p:                                             ; preds = %bb.k
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !106 ; 2 uses
  %i.gl = fcmp reassoc nsz arcp contract afn ugt float %i.fa, %i.gk
  br i1 %i.gl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !103
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.gp = load float, ptr %i.go, align 4, !tbaa !107
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gn, %i.fa
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %i.gp
  br label %_apply_auto_pivot_xy.exit

bb.r:                                             ; preds = %bb.p
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !108
  %.not.i.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gu = fcmp reassoc nsz arcp contract afn ult float %i.fa, 1.000000e+00
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !109 ; 2 uses
  br i1 %i.gu, label %bb.t, label %_apply_auto_pivot_xy.exit

bb.t:                                             ; preds = %bb.s
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !110
  %i.gz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fa
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !111
  %i.hc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gz, float %i.hb)
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, %i.gy
  %i.he = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hd, float 0.000000e+00)
  %i.hf = fsub reassoc nsz arcp contract afn float %i.gw, %i.he
  br label %_apply_auto_pivot_xy.exit

bb.u:                                             ; preds = %bb.r
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !112 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !103
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !113 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !114
  %i.ho = fsub reassoc nsz arcp contract afn float %i.fa, %i.gk
  %i.hp = fmul reassoc nsz arcp contract afn float %i.hj, %i.ho
  %i.hq = fdiv reassoc nsz arcp contract afn float %i.hp, %i.hh ; 2 uses
  %i.hr = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hq, float %i.hl)
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hr, 1.000000e+00
  %i.ht = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.hl
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hs, float %i.ht)
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hq, %i.hh
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hv, %i.hu
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hw, %i.hn
  br label %_apply_auto_pivot_xy.exit

_apply_auto_pivot_xy.exit:                        ; preds = %bb.m, %bb.n, %bb.o, %bb.q, %bb.s, %bb.t, %bb.u
  %.0.i.i = phi nsz float [ %i.gi, %bb.o ], [ %i.gr, %bb.q ], [ %i.hx, %bb.u ], [ %i.fi, %bb.m ], [ %i.fq, %bb.n ], [ %i.hf, %bb.t ], [ %i.gw, %bb.s ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !98 ; 2 uses
  %i.ia = fcmp reassoc nsz arcp contract afn ult float %.0.i.i, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ic = load float, ptr %i.ib, align 4          ; 2 uses
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %.0.i.i, %i.ic
  %..0.i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %.0.i.i, float %i.ic
  %i.id = select reassoc nsz arcp contract afn i1 %i.ia, float %i.hz, float %..0.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.en, i64 60
  %i.if = load float, ptr %i.ie, align 4, !tbaa !15
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.id, float %i.if)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.en, i64 36 ; 2 uses
  store float %i.ig, ptr %i.ih, align 4, !tbaa !138
  %i.ii = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  store float %i.fa, ptr %i.ii, align 4, !tbaa !133
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 104
  %i.il = atomicrmw add ptr %i.ik, i32 1 seq_cst, align 4 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.eo, i64 272
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !131
  %i.io = load float, ptr %i.ii, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.in, float noundef %i.io) #22
  %i.ip = getelementptr inbounds nuw i8, ptr %i.eo, i64 280
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !202
  %i.ir = load float, ptr %i.ih, align 4, !tbaa !138
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.iq, float noundef %i.ir) #22
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 104
  %i.iu = atomicrmw add ptr %i.it, i32 -1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.i, %_apply_auto_pivot_xy.exit, %bb.j, %bb.g, %bb.c
  %.val = load ptr, ptr %i.f, align 16, !tbaa !117
  %i.iv = getelementptr i8, ptr %.val, i64 272
  %.val.val = load ptr, ptr %i.iv, align 8, !tbaa !131 ; 4 uses
  %i.iw = load float, ptr %i.h, align 4, !tbaa !132 ; 4 uses
  %i.ix = load float, ptr %i.j, align 4, !tbaa !130 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !133
  %i.ja = fsub reassoc nsz arcp contract afn float %i.k, %i.i
  %i.jb = fmul reassoc nsz arcp contract afn float %i.iz, %i.ja
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.i ; 3 uses
  %i.jd = fcmp reassoc nsz arcp contract afn ult float %i.jc, %i.iw
  %i.je = fcmp reassoc nsz arcp contract afn ole float %i.jc, %i.ix
  %i.jf = select reassoc nsz arcp contract afn i1 %i.je, float %i.jc, float %i.ix
  %i.jg = select reassoc nsz arcp contract afn i1 %i.jd, float %i.iw, float %i.jf
  %i.jh = fsub reassoc nsz arcp contract afn float %i.ix, %i.iw
  %i.ji = fsub reassoc nsz arcp contract afn float %i.jg, %i.iw
  %i.jj = fdiv reassoc nsz arcp contract afn float %i.ji, %i.jh
  store float %i.jj, ptr %i.iy, align 4, !tbaa !133
  %i.jk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 104
  %i.jm = atomicrmw add ptr %i.jl, i32 1 seq_cst, align 4 ; 0 uses
  %i.jn = load float, ptr %i.j, align 4, !tbaa !130
  %i.jo = load float, ptr %i.h, align 4, !tbaa !132
  %i.jp = fsub reassoc nsz arcp contract afn float %i.jn, %i.jo ; 2 uses
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %.val.val, float noundef %i.jp) #22
  %i.jq = load float, ptr %i.h, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set_offset(ptr noundef %.val.val, float noundef %i.jq) #22
  %i.jr = load float, ptr %i.h, align 4, !tbaa !132
  %i.js = fneg reassoc nsz arcp contract afn float %i.jr
  %i.jt = fdiv reassoc nsz arcp contract afn float %i.js, %i.jp
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %.val.val, float noundef %i.jt) #22
  %i.ju = load float, ptr %i.iy, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %.val.val, float noundef %i.ju) #22
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 104
  %i.jx = atomicrmw add ptr %i.jw, i32 -1 seq_cst, align 4 ; 0 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !137
  %.not32 = icmp eq i32 %i.jz, 0
  br i1 %.not32, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_calculate_tone_mapping_params:bb.a
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.h)
  %.pn = select i1 %i.g, float %i.i, float %i.f
  %i.j = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.pn
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.j, ptr %i.k, align 4, !tbaa !115
  %i.l = load <2 x float>, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  store <2 x float> %i.l, ptr %i.d, align 4, !tbaa !12
  %i.m = shufflevector <2 x float> %i.b, <2 x float> %i.l, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.n = insertelement <4 x float> %i.m, float %i.f, i64 1
  %.fr = freeze <4 x float> %i.n
  %i.o = fcmp reassoc nsz arcp contract afn une <4 x float> %.fr, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.p = bitcast <4 x i1> %i.o to i4
  %i.q = icmp ne i4 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = extractelement <2 x float> %i.l, i64 1
  %i.t = fcmp reassoc nsz arcp contract afn une float %i.s, 0.000000e+00
  %i.u = insertelement <2 x i1> poison, i1 %i.q, i64 0
  %i.v = insertelement <2 x i1> %i.u, i1 %i.t, i64 1
  %i.w = zext <2 x i1> %i.v to <2 x i32>
  store <2 x i32> %i.w, ptr %i.r, align 4, !tbaa !20
  %i.x = getelementptr i8, ptr %1, i64 20
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  store <2 x float> %i.y, ptr %0, align 4, !tbaa !12
  %shift = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %shift, %i.y
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.z, ptr %i.aa, align 4, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !133 ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ult float %i.ac, f0x358637BD
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.ac, f0x3F7FFFEF
  %spec.select.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.ac, float f0x3F7FFFEF
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float f0x358637BD, float %spec.select.i ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ae, ptr %i.af, align 4, !tbaa !158
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !137
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !138 ; 3 uses
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.aj)
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ae)
  %i.an = fdiv reassoc nsz arcp contract afn float %i.al, %i.am
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi reassoc nsz arcp contract afn float [ %i.an, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aq, ptr %i.ar, align 4, !tbaa !116
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.at = load float, ptr %i.as, align 4, !tbaa !15 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.at, ptr %i.au, align 4, !tbaa !116
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !138
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = phi float [ %.pre.i, %bb.f ], [ %i.aj, %bb.e ] ; 5 uses
  %i.aw = phi float [ %i.at, %bb.f ], [ %i.aq, %bb.e ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !155 ; 4 uses
  %i.az = fcmp reassoc nsz arcp contract afn ult float %i.av, %i.ay
  br i1 %i.az, label %_adjust_pivot.exit._calculate_slope_gamma_compensation.exit_crit_edge, label %bb.h

_adjust_pivot.exit._calculate_slope_gamma_compensation.exit_crit_edge: ; preds = %bb.g
  %i.ba = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aw ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ay, float %i.ba) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bb, ptr %i.bc, align 4, !tbaa !159
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !14
  br label %_calculate_slope_gamma_compensation.exit

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.be = load float, ptr %i.bd, align 4, !tbaa !14 ; 2 uses
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %i.av, %i.be
  %..i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %i.av, float %i.be
  %i.bf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aw ; 2 uses
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %..i.i, float %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bg, ptr %i.bh, align 4, !tbaa !159
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !14 ; 3 uses
  %.inv.i.i53 = fcmp reassoc nsz arcp contract afn ole float %i.av, %i.bj
  %..i.i54 = select reassoc nsz arcp contract afn i1 %.inv.i.i53, float %i.av, float %i.bj
  br label %_calculate_slope_gamma_compensation.exit

_calculate_slope_gamma_compensation.exit:         ; preds = %_adjust_pivot.exit._calculate_slope_gamma_compensation.exit_crit_edge, %bb.h
  %i.bk = phi float [ %i.bg, %bb.h ], [ %i.bb, %_adjust_pivot.exit._calculate_slope_gamma_compensation.exit_crit_edge ] ; 5 uses
  %i.bl = phi float [ %i.bf, %bb.h ], [ %i.ba, %_adjust_pivot.exit._calculate_slope_gamma_compensation.exit_crit_edge ] ; 2 uses
  %i.bm = phi float [ %i.bj, %bb.h ], [ %.pre, %_adjust_pivot.exit._calculate_slope_gamma_compensation.exit_crit_edge ]
  %i.bn = phi reassoc nsz arcp contract afn float [ %..i.i54, %bb.h ], [ %i.ay, %_adjust_pivot.exit._calculate_slope_gamma_compensation.exit_crit_edge ]
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bo = load float, ptr %.in, align 4, !tbaa !156
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bn, float f0x3EE8BA2E)
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bk, float f0x358637BD)
  %i.br = fadd reassoc nsz arcp contract afn float %i.aw, -1.000000e+00
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bq, float %i.br)
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.aw
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float f0x358637BD)
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bu, float 1.200000e+00)
  %i.bw = fmul reassoc nsz arcp contract afn float %i.z, f0x3E088889
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bo
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, %i.bv
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.by, %i.bt ; 10 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.bz, ptr %i.ca, align 4, !tbaa !103
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ay, float %i.bl) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cb, ptr %i.cc, align 4, !tbaa !98
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !209
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ce, float f0x3C23D70A) ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.cf, ptr %i.cg, align 4, !tbaa !104
  %i.ch = fsub reassoc nsz arcp contract afn float %i.bk, %i.cb
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !210
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.ch
  %i.cl = fdiv reassoc nsz arcp contract afn float %i.ck, %i.bz
  %i.cm = fsub reassoc nsz arcp contract afn float %i.ae, %i.cl
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cm, float f0x358637BD) ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cn, ptr %i.co, align 4, !tbaa !97
  %i.cp = fsub reassoc nsz arcp contract afn float %i.ae, %i.cn
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.bz
  %i.cr = fsub reassoc nsz arcp contract afn float %i.bk, %i.cq ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cr, ptr %i.cs, align 4, !tbaa !105
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cn, %i.bz ; 3 uses
  %i.cu = fsub reassoc nsz arcp contract afn float %i.cr, %i.cb
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cu, float f0x358637BD) ; 4 uses
  %i.cw = fneg reassoc nsz arcp contract afn float %i.cf ; 2 uses
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ct, float %i.cw)
  %i.cy = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float %i.cw)
  %i.cz = fsub reassoc nsz arcp contract afn float %i.cy, %i.cx
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cz, float f0x358637BD)
  %i.db = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.cf
  %i.dc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.da, float %i.db)
  %i.dd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dc, float 1.000000e+09)
  %i.de = fneg reassoc nsz arcp contract afn float %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.de, ptr %i.df, align 4, !tbaa !102
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.cv, %i.cn
  %i.dh = fcmp reassoc nsz arcp contract afn ogt float %i.dg, %i.bz
  %i.di = zext i1 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !99
  %i.dk = fdiv reassoc nsz arcp contract afn float %i.ct, %i.cv ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.dk, ptr %i.dl, align 4, !tbaa !101
  %i.dm = fneg reassoc nsz arcp contract afn float %i.dk
  %i.dn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cn, float %i.dm)
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.cv
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.do, ptr %i.dp, align 4, !tbaa !100
  %i.dq = fsub reassoc nsz arcp contract afn float %i.cr, %i.ct
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.dq, ptr %i.dr, align 4, !tbaa !107
  %i.ds = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bm, float %i.bl) ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.ds, ptr %i.dt, align 4, !tbaa !109
  %i.du = fsub reassoc nsz arcp contract afn float %i.ds, %i.bk
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !211
  %i.dx = fmul reassoc nsz arcp contract afn float %i.du, %i.dw
  %i.dy = fdiv reassoc nsz arcp contract afn float %i.dx, %i.bz
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.ae
  %i.ea = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dz, float f0x3F7FFFEF) ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.ea, ptr %i.eb, align 4, !tbaa !106
  %i.ec = fsub reassoc nsz arcp contract afn float %i.ea, %i.ae
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.bz
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, %i.bk ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.ee, ptr %i.ef, align 4, !tbaa !114
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !212
  %i.ei = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eh, float f0x3C23D70A) ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.ei, ptr %i.ej, align 4, !tbaa !113
  %i.ek = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ea ; 4 uses
  %i.el = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ek, float f0x358637BD)
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.bz
  %i.en = fsub reassoc nsz arcp contract afn float %i.ds, %i.ee
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.en, float f0x358637BD) ; 4 uses
  %i.ep = fneg reassoc nsz arcp contract afn float %i.ei ; 2 uses
  %i.eq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.em, float %i.ep)
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.eo, float %i.ep)
  %i.es = fsub reassoc nsz arcp contract afn float %i.er, %i.eq
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.es, float f0x358637BD)
  %i.eu = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.ei
  %i.ev = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.et, float %i.eu)
  %i.ew = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ev, float 1.000000e+09)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.ew, ptr %i.ex, align 4, !tbaa !112
  %i.ey = fdiv reassoc nsz arcp contract afn float %i.eo, %i.ek
  %i.ez = fcmp reassoc nsz arcp contract afn ogt float %i.ey, %i.bz
  %i.fa = zext i1 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !108
  %i.fc = fmul reassoc nsz arcp contract afn float %i.ek, %i.bz
  %i.fd = fdiv reassoc nsz arcp contract afn float %i.fc, %i.eo ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %i.fd, ptr %i.fe, align 4, !tbaa !111
  %i.ff = fneg reassoc nsz arcp contract afn float %i.fd
  %i.fg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ek, float %i.ff)
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %i.eo
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.fh, ptr %i.fi, align 4, !tbaa !110
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @dt_is_scene_referred() #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !213 ; 10 uses
  store <8 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 6.000000e-01, float -1.000000e+01, float 6.500000e+00, float 1.000000e-01>, ptr %i.c, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.d, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 0, ptr %i.e, align 4, !tbaa !137
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <8 x float> <float f0x3F1B26CA, float 1.800000e-01, float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.500000e+00, float 3.300000e+00, float 2.200000e+00>, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 0, ptr %i.g, align 4, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  store i32 0, ptr %i.h, align 4, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 2, ptr %i.i, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  store <8 x float> <float f0x3E96D906, float f0x3D11030A, float f0x3E8469BE, float f0xBCACBC41, float f0x3E15ED7A, float f0xBD812427, float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store <4 x float> <float f0x3E94E0A5, float f0x3D11030A, float f0x3E86BC4E, float f0xBCACBC41>, ptr %i.k, align 4, !tbaa !12
  store <2 x float> <float f0x3D3BA406, float f0xBD812427>, ptr %i.l, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @dt_is_scene_referred() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #22
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

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
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !216
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1288), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1376), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1464), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1552), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1640), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1728), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1816), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1904), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1992), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2080), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2168), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2256), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2344), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2432), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2520), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2608), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2696), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2784), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2872), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2960), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 3048), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 3136), align 16, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 3224), align 8, !tbaa !217
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 3312), align 16, !tbaa !217
  store ptr @introspection_init.f19, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1744), align 16, !tbaa !217
  store ptr @introspection_init.f36, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 3240), align 8, !tbaa !217
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.38) #25
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.39) #25
  %.not74 = icmp eq i32 %i.b, 0
  br i1 %.not74, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.bs

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.40) #25
  %.not75 = icmp eq i32 %i.d, 0
  br i1 %.not75, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.bs

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.41) #25
  %.not76 = icmp eq i32 %i.f, 0
  br i1 %.not76, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.bs

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(28) @.str.42) #25
  %.not77 = icmp eq i32 %i.h, 0
  br i1 %.not77, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.bs

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(24) @.str.43) #25
  %.not78 = icmp eq i32 %i.j, 0
  br i1 %.not78, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.bs

end_hunk_1
begin_hunk_2_@get_f:bb.a
  %i.z = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.63) #22
  %.not61 = icmp eq i32 %i.z, 0
  br i1 %.not61, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aa = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.64) #22
  %.not62 = icmp eq i32 %i.aa, 0
  br i1 %.not62, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ab = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.65) #22
  %.not63 = icmp eq i32 %i.ab, 0
  br i1 %.not63, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ac = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.66) #22
  %.not64 = icmp eq i32 %i.ac, 0
  br i1 %.not64, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ad = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.67) #22
  %.not65 = icmp eq i32 %i.ad, 0
  br i1 %.not65, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ae = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.68) #22
  %.not66 = icmp eq i32 %i.ae, 0
  br i1 %.not66, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.af = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.69) #22
  %.not67 = icmp eq i32 %i.af, 0
  br i1 %.not67, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ag = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.70) #22
  %.not68 = icmp eq i32 %i.ag, 0
  br i1 %.not68, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ah = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.71) #22
  %.not69 = icmp eq i32 %i.ah, 0
  br i1 %.not69, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ai = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.72) #22
  %.not70 = icmp eq i32 %i.ai, 0
  br i1 %.not70, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aj = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.73) #22
  %.not71 = icmp eq i32 %i.aj, 0
  %. = select i1 %.not71, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 3080), ptr null
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2992), %bb.ai ], [ %., %bb.aj ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2904), %bb.ah ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2816), %bb.ag ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2728), %bb.af ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2640), %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2552), %bb.ad ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2464), %bb.ac ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2376), %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2288), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2200), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2112), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2024), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1936), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1848), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1760), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1672), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_ioppr_get_export_profile_type(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_add_profile_info_to_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_colorspaces_get_name(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @mat3SSEinv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_rotate_and_scale_primary(ptr noundef, float noundef, float noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_make_transposed_matrices_from_primaries_and_whitepoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @remainderf(float noundef, float noundef) local_unnamed_addr #17

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_factor(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_offset(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_default(ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_tooltip(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_soft_range(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ui_resize_wrap(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @g_object_set_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_can_focus(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_agx_draw_curve(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct.tone_mapping_params_t, align 4 ; 45 uses
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %i.b = alloca [2 x double], align 16            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !117 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call fastcc void @_calculate_tone_mapping_params(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  tail call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %i.g) #22
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1432
  %i.j = load double, ptr %i.i, align 8, !tbaa !223
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, 5.000000e+00
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 324 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !224
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to double
  %i.o = fsub reassoc nsz arcp contract afn double %i.n, %i.k
  %i.p = fptosi double %i.o to i32                ; 2 uses
  store i32 %i.p, ptr %i.l, align 4, !tbaa !224
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !225
  %i.s = sitofp reassoc nsz arcp contract afn i32 %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !226 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn double %i.u, %i.s
  %i.w = fptosi double %i.v to i32
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.p to double
  %i.y = fmul reassoc nsz arcp contract afn double %i.u, %i.x
  %i.z = fptosi double %i.y to i32
  %i.aa = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.w, i32 noundef %i.z) #22 ; 4 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1440
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !226 ; 2 uses
  tail call void @cairo_surface_set_device_scale(ptr noundef %i.aa, double noundef %i.ad, double noundef %i.ad) #22
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 336
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !234
  %i.ah = tail call ptr @pango_font_description_copy_static(ptr noundef %i.ag) #22 ; 5 uses
  %i.ai = tail call ptr @cairo_create(ptr noundef %i.aa) #22 ; 78 uses
  %i.aj = tail call ptr @pango_cairo_create_layout(ptr noundef %i.ai) #22 ; 12 uses
  tail call void @pango_layout_set_font_description(ptr noundef %i.aj, ptr noundef %i.ah) #22
  %i.ak = tail call ptr @pango_layout_get_context(ptr noundef %i.aj) #22
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1424
  %i.an = load double, ptr %i.am, align 8, !tbaa !235
  tail call void @pango_cairo_context_set_resolution(ptr noundef %i.ak, double noundef %i.an) #22
  %i.ao = tail call ptr @gtk_widget_get_style_context(ptr noundef %0) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.aq = tail call i32 @pango_font_description_get_size(ptr noundef %i.ah) #25
  %i.ar = sitofp reassoc nsz arcp contract afn i32 %i.aq to double
  %i.as = fmul reassoc nsz arcp contract afn double %i.ar, f0x3FEE666666666666
  %i.at = fptosi double %i.as to i32
  tail call void @pango_font_description_set_size(ptr noundef %i.ah, i32 noundef %i.at) #22
  tail call void @pango_layout_set_font_description(ptr noundef %i.aj, ptr noundef %i.ah) #22
  %i.au = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.100, i64 noundef 32) #22 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef -1) #22
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 4 uses
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aj, ptr noundef nonnull %i.av, ptr noundef null) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 340
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !237
  %i.ay = sitofp reassoc nsz arcp contract afn i32 %i.ax to float ; 3 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1432
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !223
  %i.bc = fmul reassoc nsz arcp contract afn double %i.bb, 4.000000e+00
  %i.bd = fptosi double %i.bc to i32
  %i.be = fmul reassoc nsz arcp contract afn float %i.ay, 3.000000e+00
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.bd to float ; 5 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, 2.000000e+00 ; 2 uses
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.be ; 5 uses
  %i.bi = fmul reassoc nsz arcp contract afn float %i.ay, 5.000000e-01
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bf ; 2 uses
  %i.bk = load i32, ptr %i.q, align 8, !tbaa !225 ; 2 uses
  %i.bl = sitofp reassoc nsz arcp contract afn i32 %i.bk to float
  %i.bm = fsub reassoc nsz arcp contract afn float %i.bl, %i.bf ; 2 uses
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bh ; 9 uses
  %i.bo = load i32, ptr %i.l, align 4, !tbaa !224 ; 2 uses
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %.neg = fmul reassoc nsz arcp contract afn float %i.ay, 2.000000e+00
  %i.bq = fadd reassoc nsz arcp contract afn float %.neg, %i.bg
  %i.br = fsub reassoc nsz arcp contract afn float %i.bp, %i.bq ; 5 uses
  %i.bs = fsub reassoc nsz arcp contract afn float %i.br, %i.bj ; 11 uses
  %i.bt = load ptr, ptr %i.ap, align 8, !tbaa !236
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %i.bk to double
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bo to double
  call void @gtk_render_background(ptr noundef %i.bt, ptr noundef %i.ai, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bu, double noundef %i.bv) #22
  %i.bw = fpext reassoc nsz arcp contract afn float %i.bh to double
  %i.bx = fpext reassoc nsz arcp contract afn float %i.br to double
  call void @cairo_translate(ptr noundef %i.ai, double noundef %i.bw, double noundef %i.bx) #22
  call void @cairo_scale(ptr noundef %i.ai, double noundef 1.000000e+00, double noundef -1.000000e+00) #22
  %i.by = fpext reassoc nsz arcp contract afn float %i.bn to double ; 4 uses
  %i.bz = fpext reassoc nsz arcp contract afn float %i.bs to double ; 4 uses
  call void @cairo_rectangle(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.by, double noundef %i.bz) #22
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 584
  %.sroa.0.0.copyload = load double, ptr %i.cb, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 592
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 600
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 608
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload, double noundef %.sroa.6.0.copyload) #22
  call void @cairo_fill_preserve(ptr noundef %i.ai) #22
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 648
  %.sroa.0325.0.copyload = load double, ptr %i.cd, align 8
  %.sroa.4326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 656
  %.sroa.4326.0.copyload = load double, ptr %.sroa.4326.0..sroa_idx, align 8
  %.sroa.5327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 664
  %.sroa.5327.0.copyload = load double, ptr %.sroa.5327.0..sroa_idx, align 8
  %.sroa.6328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 672
  %.sroa.6328.0.copyload = load double, ptr %.sroa.6328.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0325.0.copyload, double noundef %.sroa.4326.0.copyload, double noundef %.sroa.5327.0.copyload, double noundef %.sroa.6328.0.copyload) #22
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1432
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !223
  %i.ch = fmul reassoc nsz arcp contract afn double %i.cg, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.ai, double noundef %i.ch) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  call void @cairo_save(ptr noundef %i.ai) #22
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 648
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !238
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 656
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !239
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 664
  %i.co = load double, ptr %i.cn, align 8, !tbaa !240
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %i.ck, double noundef %i.cm, double noundef %i.co, double noundef 5.000000e-01) #22
  call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.by, double noundef %i.bz) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  call void @cairo_restore(ptr noundef %i.ai) #22
  call void @cairo_save(ptr noundef %i.ai) #22
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 680
  %.sroa.0329.0.copyload = load double, ptr %i.cq, align 8
  %.sroa.4330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 688
  %.sroa.4330.0.copyload = load double, ptr %.sroa.4330.0..sroa_idx, align 8
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 696
  %.sroa.5331.0.copyload = load double, ptr %.sroa.5331.0..sroa_idx, align 8
  %.sroa.6332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  %.sroa.6332.0.copyload = load double, ptr %.sroa.6332.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0329.0.copyload, double noundef %.sroa.4330.0.copyload, double noundef %.sroa.5331.0.copyload, double noundef %.sroa.6332.0.copyload) #22
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 680
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !241
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 688
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !242
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 696
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !243
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %i.ct, double noundef %i.cv, double noundef %i.cx, double noundef 4.000000e-01) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1440
  %i.da = load double, ptr %i.cz, align 8, !tbaa !226
  %i.db = fdiv reassoc nsz arcp contract afn double 4.000000e+00, %i.da ; 2 uses
  store double %i.db, ptr %i.b, align 16, !tbaa !244
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.db, ptr %i.dc, align 8, !tbaa !244
  call void @cairo_set_dash(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 2, double noundef 0.000000e+00) #22
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1432
  %i.df = load double, ptr %i.de, align 8, !tbaa !223
  %i.dg = fmul reassoc nsz arcp contract afn double %i.df, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.ai, double noundef %i.dg) #22
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 336 ; 2 uses
  %.neg369 = fmul reassoc nsz arcp contract afn float %i.bf, -5.000000e-01
  %.neg371 = fadd reassoc nsz arcp contract afn float %i.bh, %.neg369
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 332
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @cairo_restore(ptr noundef %i.ai) #22
  call void @cairo_save(ptr noundef %i.ai) #22
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 680
  %.sroa.0333.0.copyload = load double, ptr %i.dl, align 8
  %.sroa.4334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 688
  %.sroa.4334.0.copyload = load double, ptr %.sroa.4334.0..sroa_idx, align 8
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 696
  %.sroa.5335.0.copyload = load double, ptr %.sroa.5335.0..sroa_idx, align 8
  %.sroa.6336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 704
  %.sroa.6336.0.copyload = load double, ptr %.sroa.6336.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0333.0.copyload, double noundef %.sroa.4334.0.copyload, double noundef %.sroa.5335.0.copyload, double noundef %.sroa.6336.0.copyload) #22
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 680
  %i.do = load double, ptr %i.dn, align 8, !tbaa !241
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 688
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !242
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 696
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !243
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %i.do, double noundef %i.dq, double noundef %i.ds, double noundef 4.000000e-01) #22
  call void @cairo_set_dash(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 2, double noundef 0.000000e+00) #22
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1432
  %i.dv = load double, ptr %i.du, align 8, !tbaa !223
  %i.dw = fmul reassoc nsz arcp contract afn double %i.dv, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.ai, double noundef %i.dw) #22
  %i.dx = load float, ptr %3, align 4, !tbaa !96  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !95 ; 2 uses
  %i.ea = fcmp reassoc nsz arcp contract afn ogt float %i.dz, f0x358637BD
  br i1 %i.ea, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @__const._agx_draw_curve.linear_y_guides, i64 %indvars.iv
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12 ; 2 uses
  %i.ed = load float, ptr %i.dh, align 4, !tbaa !116
  %i.ee = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ed
  %i.ef = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ec, float %i.ee)
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.bs ; 2 uses
  %i.eh = fpext reassoc nsz arcp contract afn float %i.eg to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.eh) #22
  call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.by, double noundef %i.eh) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  call void @cairo_save(ptr noundef %i.ai) #22
  call void @cairo_identity_matrix(ptr noundef %i.ai) #22
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 680
  %.sroa.0337.0.copyload = load double, ptr %i.ej, align 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 688
  %.sroa.4338.0.copyload = load double, ptr %.sroa.4338.0..sroa_idx, align 8
  %.sroa.5339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 696
  %.sroa.5339.0.copyload = load double, ptr %.sroa.5339.0..sroa_idx, align 8
  %.sroa.6340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 704
  %.sroa.6340.0.copyload = load double, ptr %.sroa.6340.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0337.0.copyload, double noundef %.sroa.4338.0.copyload, double noundef %.sroa.5339.0.copyload, double noundef %.sroa.6340.0.copyload) #22
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ec, 1.000000e+02
  %i.el = fpext reassoc nsz arcp contract afn float %i.ek to double
  %i.em = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.101, double noundef %i.el) #22 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aj, ptr noundef nonnull %i.av, ptr noundef null) #22
  %i.en = load <2 x i32>, ptr %i.di, align 8, !tbaa !20
  %i.eo = sitofp reassoc nsz arcp contract afn <2 x i32> %i.en to <2 x float> ; 2 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0
  %i.eq = fsub reassoc nsz arcp contract afn float %.neg371, %i.ep
  %i.er = extractelement <2 x float> %i.eo, i64 1
  %i.es = fmul reassoc nsz arcp contract afn float %i.er, 5.000000e-01 ; 2 uses
  %i.et = load i32, ptr %i.dj, align 4, !tbaa !245
  %i.eu = sitofp reassoc nsz arcp contract afn i32 %i.et to float ; 2 uses
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eg, %i.es
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.eu
  %i.ex = fsub reassoc nsz arcp contract afn float %i.br, %i.ew ; 3 uses
  %i.ey = fadd reassoc nsz arcp contract afn float %i.es, %i.eu ; 2 uses
  %i.ez = fsub reassoc nsz arcp contract afn float %i.bj, %i.ey ; 2 uses
  %i.fa = fcmp reassoc nsz arcp contract afn ult float %i.ex, %i.ez
  %i.fb = fsub reassoc nsz arcp contract afn float %i.br, %i.ey ; 2 uses
  %.inv365 = fcmp reassoc nsz arcp contract afn ole float %i.ex, %i.fb
  %. = select reassoc nsz arcp contract afn i1 %.inv365, float %i.ex, float %i.fb
  %i.fc = select reassoc nsz arcp contract afn i1 %i.fa, float %i.ez, float %.
  %i.fd = fpext reassoc nsz arcp contract afn float %i.eq to double
  %i.fe = fpext reassoc nsz arcp contract afn float %i.fc to double
  call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.fd, double noundef %i.fe) #22
  call void @pango_cairo_show_layout(ptr noundef %i.ai, ptr noundef %i.aj) #22
  call void @cairo_restore(ptr noundef %i.ai) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !246
  %i.fh = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.dx) ; 2 uses
  %i.fi = fptosi float %i.fh to i32               ; 2 uses
  %i.fj = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.fg) ; 3 uses
  %i.fk = sitofp reassoc nsz arcp contract afn i32 %i.fi to float ; 2 uses
  %i.fl = fcmp reassoc nsz arcp contract afn ult float %i.fj, %i.fk
  br i1 %i.fl, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.fm = fmul reassoc nsz arcp contract afn float %i.bf, 5.000000e-01
  %i.fn = fadd reassoc nsz arcp contract afn float %i.br, %i.fm
  %i.fo = fpext reassoc nsz arcp contract afn float %i.fn to double
  %i.fp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dz
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.fq = phi float [ %i.fk, %.lr.ph ], [ %i.gu, %bb.g ] ; 3 uses
  %.0275378 = phi i32 [ %i.fi, %.lr.ph ], [ %i.gt, %bb.g ] ; 3 uses
  %i.fr = fsub reassoc nsz arcp contract afn float %i.fq, %i.dx
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.fp ; 3 uses
  %i.ft = fcmp reassoc nsz arcp contract afn oge float %i.fs, 0.000000e+00
  %i.fu = fcmp reassoc nsz arcp contract afn ole float %i.fs, 1.000000e+00
  %i.fv = select reassoc nsz arcp contract afn i1 %i.fu, float %i.fs, float 1.000000e+00
  %i.fw = select reassoc nsz arcp contract afn i1 %i.ft, float %i.fv, float 0.000000e+00
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, %i.bn ; 2 uses
  %i.fy = fpext reassoc nsz arcp contract afn float %i.fx to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.fy, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.fy, double noundef %i.bz) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  %i.fz = srem i32 %.0275378, 5
  %i.ga = icmp eq i32 %i.fz, 0
  %i.gb = fcmp reassoc nsz arcp contract afn oeq float %i.fh, %i.fq
  %or.cond = or i1 %i.ga, %i.gb
  %i.gc = fcmp reassoc nsz arcp contract afn oeq float %i.fj, %i.fq
  %or.cond288 = or i1 %i.gc, %or.cond
  br i1 %or.cond288, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @cairo_save(ptr noundef %i.ai) #22
  call void @cairo_identity_matrix(ptr noundef %i.ai) #22
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 680
  %.sroa.0341.0.copyload = load double, ptr %i.ge, align 8
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 688
  %.sroa.4342.0.copyload = load double, ptr %.sroa.4342.0..sroa_idx, align 8
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 696
  %.sroa.5343.0.copyload = load double, ptr %.sroa.5343.0..sroa_idx, align 8
  %.sroa.6344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 704
  %.sroa.6344.0.copyload = load double, ptr %.sroa.6344.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0341.0.copyload, double noundef %.sroa.4342.0.copyload, double noundef %.sroa.5343.0.copyload, double noundef %.sroa.6344.0.copyload) #22
  %i.gf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.102, i32 noundef %.0275378) #22 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aj, ptr noundef nonnull %i.av, ptr noundef null) #22
  %i.gg = fadd reassoc nsz arcp contract afn float %i.fx, %i.bh
  %i.gh = load i32, ptr %i.di, align 8, !tbaa !247
  %i.gi = sitofp reassoc nsz arcp contract afn i32 %i.gh to float
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gi, 5.000000e-01
  %i.gk = load i32, ptr %i.av, align 8, !tbaa !248
  %i.gl = sitofp reassoc nsz arcp contract afn i32 %i.gk to float
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gj, %i.gl ; 3 uses
  %i.gn = fsub reassoc nsz arcp contract afn float %i.gg, %i.gm ; 3 uses
  %i.go = fsub reassoc nsz arcp contract afn float %i.bh, %i.gm ; 2 uses
  %i.gp = fcmp reassoc nsz arcp contract afn ult float %i.gn, %i.go
  %i.gq = fsub reassoc nsz arcp contract afn float %i.bm, %i.gm ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.gn, %i.gq
  %.289 = select reassoc nsz arcp contract afn i1 %.inv, float %i.gn, float %i.gq
  %i.gr = select reassoc nsz arcp contract afn i1 %i.gp, float %i.go, float %.289
  %i.gs = fpext reassoc nsz arcp contract afn float %i.gr to double
  call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.gs, double noundef %i.fo) #22
  call void @pango_cairo_show_layout(ptr noundef %i.ai, ptr noundef %i.aj) #22
  call void @cairo_restore(ptr noundef %i.ai) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.gt = add nsw i32 %.0275378, 1                ; 2 uses
  %i.gu = sitofp reassoc nsz arcp contract afn i32 %i.gt to float ; 2 uses
  %i.gv = fcmp reassoc nsz arcp contract afn ult float %i.fj, %i.gu
  br i1 %i.gv, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.b
  call void @cairo_restore(ptr noundef %i.ai) #22
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1432
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !223
  %i.gz = fmul reassoc nsz arcp contract afn double %i.gy, 2.000000e+00
  %i.ha = fptrunc reassoc nsz arcp contract afn double %i.gz to float
  %i.hb = fpext reassoc nsz arcp contract afn float %i.ha to double ; 2 uses
  call void @cairo_set_line_width(ptr noundef %i.ai, double noundef %i.hb) #22
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 680
  %.sroa.0345.0.copyload = load double, ptr %i.hd, align 8
  %.sroa.4346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 688
  %.sroa.4346.0.copyload = load double, ptr %.sroa.4346.0..sroa_idx, align 8
  %.sroa.5347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 696
  %.sroa.5347.0.copyload = load double, ptr %.sroa.5347.0..sroa_idx, align 8
  %.sroa.6348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 704
  %.sroa.6348.0.copyload = load double, ptr %.sroa.6348.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0345.0.copyload, double noundef %.sroa.4346.0.copyload, double noundef %.sroa.5347.0.copyload, double noundef %.sroa.6348.0.copyload) #22
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !97 ; 2 uses
  %i.hg = fcmp reassoc nsz arcp contract afn ogt float %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.loopexit
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !99
  %.not37.i = icmp eq i32 %i.hi, 0
  br i1 %.not37.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !98
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !100
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !101
  %i.hp = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 0.000000e+00, float %i.ho)
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, %i.hm
  %i.hr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hq, float 0.000000e+00)
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hr, %i.hk
  br label %_fallback_toe.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !102 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !103
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !104 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !105
  %i.ib = fneg reassoc nsz arcp contract afn float %i.hf
  %i.ic = fmul reassoc nsz arcp contract afn float %i.hw, %i.ib
  %i.id = fdiv reassoc nsz arcp contract afn float %i.ic, %i.hu ; 2 uses
  %i.ie = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.id, float %i.hy)
  %i.if = fadd reassoc nsz arcp contract afn float %i.ie, 1.000000e+00
  %i.ig = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.hy
  %i.ih = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.if, float %i.ig)
  %i.ii = fmul reassoc nsz arcp contract afn float %i.id, %i.hu
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, %i.ih
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ij, %i.ia
  br label %_fallback_toe.exit.i

bb.k:                                             ; preds = %.loopexit
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.im = load float, ptr %i.il, align 4, !tbaa !106 ; 2 uses
  %i.in = fcmp reassoc nsz arcp contract afn ult float %i.im, 0.000000e+00
  br i1 %i.in, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ip = load float, ptr %i.io, align 4, !tbaa !103
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !107
  %i.is = fmul reassoc nsz arcp contract afn float %i.ip, 0.000000e+00
  %i.it = fadd reassoc nsz arcp contract afn float %i.is, %i.ir
  br label %_fallback_toe.exit.i

bb.m:                                             ; preds = %bb.k
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !108
  %.not.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !109
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !110
  %i.ja = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.iz, float 0.000000e+00)
  %i.jb = fsub reassoc nsz arcp contract afn float %i.ix, %i.ja
  br label %_fallback_toe.exit.i

bb.o:                                             ; preds = %bb.m
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !112 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.jf = load float, ptr %i.je, align 4, !tbaa !103
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !113 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !114
  %i.jk = fneg reassoc nsz arcp contract afn float %i.im
  %i.jl = fmul reassoc nsz arcp contract afn float %i.jf, %i.jk
  %i.jm = fdiv reassoc nsz arcp contract afn float %i.jl, %i.jd ; 2 uses
  %i.jn = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jm, float %i.jh)
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jn, 1.000000e+00
  %i.jp = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.jh
  %i.jq = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jo, float %i.jp)
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jm, %i.jd
  %i.js = fmul reassoc nsz arcp contract afn float %i.jr, %i.jq
  %i.jt = fadd reassoc nsz arcp contract afn float %i.js, %i.jj
  br label %_fallback_toe.exit.i

_fallback_toe.exit.i:                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i
  %.0.i = phi nsz float [ %i.ik, %bb.j ], [ %i.it, %bb.l ], [ %i.jt, %bb.o ], [ %i.jb, %bb.n ], [ %i.hs, %bb.i ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 11 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !98 ; 2 uses
  %i.jw = fcmp reassoc nsz arcp contract afn ult float %.0.i, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 11 uses
  %i.jy = load float, ptr %i.jx, align 4          ; 2 uses
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %.0.i, %i.jy
  %..0.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %.0.i, float %i.jy
  %i.jz = select reassoc nsz arcp contract afn i1 %i.jw, float %i.jv, float %..0.i
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.bs
  %i.kb = fpext reassoc nsz arcp contract afn float %i.ka to double
  call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.kb) #22
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 15 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 76 ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 6 uses
  br label %bb.q

bb.p:                                             ; preds = %_fallback_toe.exit.i290
  call void @cairo_stroke(ptr noundef %i.ai) #22
  %i.kr = load i32, ptr %i.kl, align 4, !tbaa !99
  %.not = icmp eq i32 %i.kr, 0
  br i1 %.not, label %bb.as, label %bb.aa

bb.q:                                             ; preds = %_fallback_toe.exit.i, %_fallback_toe.exit.i290
  %.0274379 = phi i32 [ 1, %_fallback_toe.exit.i ], [ %i.nd, %_fallback_toe.exit.i290 ] ; 2 uses
  %i.ks = uitofp nsz nneg i32 %.0274379 to float
  %i.kt = fmul reassoc nsz arcp contract afn float %i.ks, 5.000000e-03 ; 10 uses
  %i.ku = load float, ptr %i.he, align 4, !tbaa !97 ; 2 uses
  %i.kv = fcmp reassoc nsz arcp contract afn olt float %i.kt, %i.ku
  br i1 %i.kv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.kw = load i32, ptr %i.kl, align 4, !tbaa !99
  %.not37.i295 = icmp eq i32 %i.kw, 0
  br i1 %.not37.i295, label %bb.t, label %4

4:                                                ; preds = %bb.r
  %5 = fcmp reassoc nsz arcp contract afn olt float %i.kt, 0.000000e+00
  %6 = load float, ptr %i.ju, align 4, !tbaa !98  ; 2 uses
  br i1 %5, label %_fallback_toe.exit.i290, label %bb.s

bb.s:                                             ; preds = %4
  %i.kx = load float, ptr %i.km, align 4, !tbaa !100
  %i.ky = load float, ptr %i.kn, align 4, !tbaa !101
  %i.kz = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.kt, float %i.ky)
  %i.la = fmul reassoc nsz arcp contract afn float %i.kz, %i.kx
  %i.lb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.la, float 0.000000e+00)
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %6
  br label %_fallback_toe.exit.i290

bb.t:                                             ; preds = %bb.r
  %i.ld = load float, ptr %i.ko, align 4, !tbaa !102 ; 2 uses
  %i.le = load float, ptr %i.kd, align 4, !tbaa !103
  %i.lf = load float, ptr %i.kp, align 4, !tbaa !104 ; 2 uses
  %i.lg = load float, ptr %i.kq, align 4, !tbaa !105
  %i.lh = fsub reassoc nsz arcp contract afn float %i.kt, %i.ku
  %i.li = fmul reassoc nsz arcp contract afn float %i.le, %i.lh
  %i.lj = fdiv reassoc nsz arcp contract afn float %i.li, %i.ld ; 2 uses
  %i.lk = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.lj, float %i.lf)
  %i.ll = fadd reassoc nsz arcp contract afn float %i.lk, 1.000000e+00
  %i.lm = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.lf
  %i.ln = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ll, float %i.lm)
  %i.lo = fmul reassoc nsz arcp contract afn float %i.lj, %i.ld
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lo, %i.ln
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, %i.lg
  br label %_fallback_toe.exit.i290

bb.u:                                             ; preds = %bb.q
  %i.lr = load float, ptr %i.kc, align 4, !tbaa !106 ; 2 uses
  %i.ls = fcmp reassoc nsz arcp contract afn ugt float %i.kt, %i.lr
  br i1 %i.ls, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lt = load float, ptr %i.kd, align 4, !tbaa !103
  %i.lu = load float, ptr %i.ke, align 4, !tbaa !107
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lt, %i.kt
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lv, %i.lu
  br label %_fallback_toe.exit.i290

bb.w:                                             ; preds = %bb.u
  %i.lx = load i32, ptr %i.kf, align 4, !tbaa !108
  %.not.i294 = icmp eq i32 %i.lx, 0
  br i1 %.not.i294, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ly = fcmp reassoc nsz arcp contract afn ult float %i.kt, 1.000000e+00
  %i.lz = load float, ptr %i.jx, align 4, !tbaa !109 ; 2 uses
  br i1 %i.ly, label %bb.y, label %_fallback_toe.exit.i290

bb.y:                                             ; preds = %bb.x
  %i.ma = load float, ptr %i.kg, align 4, !tbaa !110
  %i.mb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.kt
  %i.mc = load float, ptr %i.kh, align 4, !tbaa !111
  %i.md = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mb, float %i.mc)
  %i.me = fmul reassoc nsz arcp contract afn float %i.md, %i.ma
  %i.mf = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.me, float 0.000000e+00)
  %i.mg = fsub reassoc nsz arcp contract afn float %i.lz, %i.mf
  br label %_fallback_toe.exit.i290

bb.z:                                             ; preds = %bb.w
  %i.mh = load float, ptr %i.ki, align 4, !tbaa !112 ; 2 uses
  %i.mi = load float, ptr %i.kd, align 4, !tbaa !103
  %i.mj = load float, ptr %i.kj, align 4, !tbaa !113 ; 2 uses
  %i.mk = load float, ptr %i.kk, align 4, !tbaa !114
  %i.ml = fsub reassoc nsz arcp contract afn float %i.kt, %i.lr
  %i.mm = fmul reassoc nsz arcp contract afn float %i.mi, %i.ml
  %i.mn = fdiv reassoc nsz arcp contract afn float %i.mm, %i.mh ; 2 uses
  %i.mo = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mn, float %i.mj)
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mo, 1.000000e+00
  %i.mq = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.mj
  %i.mr = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mp, float %i.mq)
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mn, %i.mh
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.mr
  %i.mu = fadd reassoc nsz arcp contract afn float %i.mt, %i.mk
  br label %_fallback_toe.exit.i290

_fallback_toe.exit.i290:                          ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %4
  %.0.i291 = phi nsz float [ %i.lq, %bb.t ], [ %i.lw, %bb.v ], [ %i.mu, %bb.z ], [ %6, %4 ], [ %i.lc, %bb.s ], [ %i.mg, %bb.y ], [ %i.lz, %bb.x ] ; 3 uses
  %i.mv = load float, ptr %i.ju, align 4, !tbaa !98 ; 2 uses
  %i.mw = fcmp reassoc nsz arcp contract afn ult float %.0.i291, %i.mv
  %i.mx = load float, ptr %i.jx, align 4          ; 2 uses
  %.inv.i292 = fcmp reassoc nsz arcp contract afn ole float %.0.i291, %i.mx
  %..0.i293 = select reassoc nsz arcp contract afn i1 %.inv.i292, float %.0.i291, float %i.mx
  %i.my = select reassoc nsz arcp contract afn i1 %i.mw, float %i.mv, float %..0.i293
  %i.mz = fmul reassoc nsz arcp contract afn float %i.kt, %i.bn
  %i.na = fpext reassoc nsz arcp contract afn float %i.mz to double
  %i.nb = fmul reassoc nsz arcp contract afn float %i.my, %i.bs
  %i.nc = fpext reassoc nsz arcp contract afn float %i.nb to double
  call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.na, double noundef %i.nc) #22
  %i.nd = add nuw nsw i32 %.0274379, 1            ; 2 uses
  %exitcond387.not = icmp eq i32 %i.nd, 201
  br i1 %exitcond387.not, label %bb.p, label %bb.q

bb.aa:                                            ; preds = %bb.p
  call void @cairo_set_source_rgb(ptr noundef %i.ai, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #22
  %i.ne = load float, ptr %i.he, align 4, !tbaa !97 ; 3 uses
  %i.nf = fmul reassoc nsz arcp contract afn float %i.ne, 2.000000e+02
  %i.ng = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.nf)
  %i.nh = fptosi float %i.ng to i32               ; 2 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ogt float %i.ne, 0.000000e+00
  br i1 %i.ni, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.nj = load i32, ptr %i.kl, align 4, !tbaa !99
  %.not37.i302 = icmp eq i32 %i.nj, 0
  br i1 %.not37.i302, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.nk = load float, ptr %i.ju, align 4, !tbaa !98
  %i.nl = load float, ptr %i.km, align 4, !tbaa !100
  %i.nm = load float, ptr %i.kn, align 4, !tbaa !101
  %i.nn = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 0.000000e+00, float %i.nm)
  %i.no = fmul reassoc nsz arcp contract afn float %i.nn, %i.nl
  %i.np = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.no, float 0.000000e+00)
  %i.nq = fadd reassoc nsz arcp contract afn float %i.np, %i.nk
  br label %_fallback_toe.exit.i297

bb.ad:                                            ; preds = %bb.ab
  %i.nr = load float, ptr %i.ko, align 4, !tbaa !102 ; 2 uses
  %i.ns = load float, ptr %i.kd, align 4, !tbaa !103
  %i.nt = load float, ptr %i.kp, align 4, !tbaa !104 ; 2 uses
  %i.nu = load float, ptr %i.kq, align 4, !tbaa !105
  %i.nv = fneg reassoc nsz arcp contract afn float %i.ne
  %i.nw = fmul reassoc nsz arcp contract afn float %i.ns, %i.nv
  %i.nx = fdiv reassoc nsz arcp contract afn float %i.nw, %i.nr ; 2 uses
  %i.ny = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.nx, float %i.nt)
  %i.nz = fadd reassoc nsz arcp contract afn float %i.ny, 1.000000e+00
  %i.oa = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.nt
  %i.ob = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.nz, float %i.oa)
  %i.oc = fmul reassoc nsz arcp contract afn float %i.nx, %i.nr
  %i.od = fmul reassoc nsz arcp contract afn float %i.oc, %i.ob
  %i.oe = fadd reassoc nsz arcp contract afn float %i.od, %i.nu
  br label %_fallback_toe.exit.i297

bb.ae:                                            ; preds = %bb.aa
  %i.of = load float, ptr %i.kc, align 4, !tbaa !106 ; 2 uses
  %i.og = fcmp reassoc nsz arcp contract afn ult float %i.of, 0.000000e+00
  br i1 %i.og, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.oh = load float, ptr %i.kd, align 4, !tbaa !103
  %i.oi = load float, ptr %i.ke, align 4, !tbaa !107
  %i.oj = fmul reassoc nsz arcp contract afn float %i.oh, 0.000000e+00
  %i.ok = fadd reassoc nsz arcp contract afn float %i.oj, %i.oi
  br label %_fallback_toe.exit.i297

bb.ag:                                            ; preds = %bb.ae
  %i.ol = load i32, ptr %i.kf, align 4, !tbaa !108
  %.not.i301 = icmp eq i32 %i.ol, 0
  br i1 %.not.i301, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.om = load float, ptr %i.jx, align 4, !tbaa !109
  %i.on = load float, ptr %i.kg, align 4, !tbaa !110
  %i.oo = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.on, float 0.000000e+00)
  %i.op = fsub reassoc nsz arcp contract afn float %i.om, %i.oo
  br label %_fallback_toe.exit.i297

bb.ai:                                            ; preds = %bb.ag
  %i.oq = load float, ptr %i.ki, align 4, !tbaa !112 ; 2 uses
  %i.or = load float, ptr %i.kd, align 4, !tbaa !103
  %i.os = load float, ptr %i.kj, align 4, !tbaa !113 ; 2 uses
  %i.ot = load float, ptr %i.kk, align 4, !tbaa !114
  %i.ou = fneg reassoc nsz arcp contract afn float %i.of
  %i.ov = fmul reassoc nsz arcp contract afn float %i.or, %i.ou
  %i.ow = fdiv reassoc nsz arcp contract afn float %i.ov, %i.oq ; 2 uses
  %i.ox = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ow, float %i.os)
  %i.oy = fadd reassoc nsz arcp contract afn float %i.ox, 1.000000e+00
  %i.oz = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.os
  %i.pa = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.oy, float %i.oz)
  %i.pb = fmul reassoc nsz arcp contract afn float %i.ow, %i.oq
  %i.pc = fmul reassoc nsz arcp contract afn float %i.pb, %i.pa
  %i.pd = fadd reassoc nsz arcp contract afn float %i.pc, %i.ot
  br label %_fallback_toe.exit.i297

_fallback_toe.exit.i297:                          ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ac
  %.0.i298 = phi nsz float [ %i.oe, %bb.ad ], [ %i.ok, %bb.af ], [ %i.pd, %bb.ai ], [ %i.op, %bb.ah ], [ %i.nq, %bb.ac ] ; 3 uses
  %i.pe = load float, ptr %i.ju, align 4, !tbaa !98 ; 2 uses
  %i.pf = fcmp reassoc nsz arcp contract afn ult float %.0.i298, %i.pe
  %i.pg = load float, ptr %i.jx, align 4          ; 2 uses
  %.inv.i299 = fcmp reassoc nsz arcp contract afn ole float %.0.i298, %i.pg
  %..0.i300 = select reassoc nsz arcp contract afn i1 %.inv.i299, float %.0.i298, float %i.pg
  %i.ph = select reassoc nsz arcp contract afn i1 %i.pf, float %i.pe, float %..0.i300
  %i.pi = fmul reassoc nsz arcp contract afn float %i.ph, %i.bs
  %i.pj = fpext reassoc nsz arcp contract afn float %i.pi to double
  call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.pj) #22
  %.not286380 = icmp slt i32 %i.nh, 1
  br i1 %.not286380, label %._crit_edge, label %.lr.ph382

._crit_edge:                                      ; preds = %_fallback_toe.exit.i304, %_fallback_toe.exit.i297
  call void @cairo_stroke(ptr noundef %i.ai) #22
  br label %bb.as

.lr.ph382:                                        ; preds = %_fallback_toe.exit.i297, %_fallback_toe.exit.i304
  %.0273381 = phi i32 [ %i.rv, %_fallback_toe.exit.i304 ], [ 1, %_fallback_toe.exit.i297 ] ; 3 uses
  %i.pk = uitofp nsz nneg i32 %.0273381 to float
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, 5.000000e-03 ; 10 uses
  %i.pm = load float, ptr %i.he, align 4, !tbaa !97 ; 2 uses
  %i.pn = fcmp reassoc nsz arcp contract afn olt float %i.pl, %i.pm
  br i1 %i.pn, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %.lr.ph382
  %i.po = load i32, ptr %i.kl, align 4, !tbaa !99
  %.not37.i309 = icmp eq i32 %i.po, 0
  br i1 %.not37.i309, label %bb.al, label %7

7:                                                ; preds = %bb.aj
  %8 = fcmp reassoc nsz arcp contract afn olt float %i.pl, 0.000000e+00
  %9 = load float, ptr %i.ju, align 4, !tbaa !98  ; 2 uses
  br i1 %8, label %_fallback_toe.exit.i304, label %bb.ak

bb.ak:                                            ; preds = %7
  %i.pp = load float, ptr %i.km, align 4, !tbaa !100
  %i.pq = load float, ptr %i.kn, align 4, !tbaa !101
  %i.pr = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.pl, float %i.pq)
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pr, %i.pp
  %i.pt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ps, float 0.000000e+00)
  %i.pu = fadd reassoc nsz arcp contract afn float %i.pt, %9
  br label %_fallback_toe.exit.i304

bb.al:                                            ; preds = %bb.aj
  %i.pv = load float, ptr %i.ko, align 4, !tbaa !102 ; 2 uses
  %i.pw = load float, ptr %i.kd, align 4, !tbaa !103
  %i.px = load float, ptr %i.kp, align 4, !tbaa !104 ; 2 uses
  %i.py = load float, ptr %i.kq, align 4, !tbaa !105
  %i.pz = fsub reassoc nsz arcp contract afn float %i.pl, %i.pm
  %i.qa = fmul reassoc nsz arcp contract afn float %i.pw, %i.pz
  %i.qb = fdiv reassoc nsz arcp contract afn float %i.qa, %i.pv ; 2 uses
  %i.qc = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qb, float %i.px)
  %i.qd = fadd reassoc nsz arcp contract afn float %i.qc, 1.000000e+00
  %i.qe = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.px
  %i.qf = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qd, float %i.qe)
  %i.qg = fmul reassoc nsz arcp contract afn float %i.qb, %i.pv
  %i.qh = fmul reassoc nsz arcp contract afn float %i.qg, %i.qf
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qh, %i.py
  br label %_fallback_toe.exit.i304

bb.am:                                            ; preds = %.lr.ph382
  %i.qj = load float, ptr %i.kc, align 4, !tbaa !106 ; 2 uses
  %i.qk = fcmp reassoc nsz arcp contract afn ugt float %i.pl, %i.qj
  br i1 %i.qk, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ql = load float, ptr %i.kd, align 4, !tbaa !103
  %i.qm = load float, ptr %i.ke, align 4, !tbaa !107
  %i.qn = fmul reassoc nsz arcp contract afn float %i.ql, %i.pl
  %i.qo = fadd reassoc nsz arcp contract afn float %i.qn, %i.qm
  br label %_fallback_toe.exit.i304

bb.ao:                                            ; preds = %bb.am
  %i.qp = load i32, ptr %i.kf, align 4, !tbaa !108
  %.not.i308 = icmp eq i32 %i.qp, 0
  br i1 %.not.i308, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.qq = fcmp reassoc nsz arcp contract afn ult float %i.pl, 1.000000e+00
  %i.qr = load float, ptr %i.jx, align 4, !tbaa !109 ; 2 uses
  br i1 %i.qq, label %bb.aq, label %_fallback_toe.exit.i304

bb.aq:                                            ; preds = %bb.ap
  %i.qs = load float, ptr %i.kg, align 4, !tbaa !110
  %i.qt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.pl
  %i.qu = load float, ptr %i.kh, align 4, !tbaa !111
  %i.qv = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.qt, float %i.qu)
  %i.qw = fmul reassoc nsz arcp contract afn float %i.qv, %i.qs
  %i.qx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qw, float 0.000000e+00)
  %i.qy = fsub reassoc nsz arcp contract afn float %i.qr, %i.qx
  br label %_fallback_toe.exit.i304

bb.ar:                                            ; preds = %bb.ao
  %i.qz = load float, ptr %i.ki, align 4, !tbaa !112 ; 2 uses
  %i.ra = load float, ptr %i.kd, align 4, !tbaa !103
  %i.rb = load float, ptr %i.kj, align 4, !tbaa !113 ; 2 uses
  %i.rc = load float, ptr %i.kk, align 4, !tbaa !114
  %i.rd = fsub reassoc nsz arcp contract afn float %i.pl, %i.qj
  %i.re = fmul reassoc nsz arcp contract afn float %i.ra, %i.rd
  %i.rf = fdiv reassoc nsz arcp contract afn float %i.re, %i.qz ; 2 uses
  %i.rg = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rf, float %i.rb)
  %i.rh = fadd reassoc nsz arcp contract afn float %i.rg, 1.000000e+00
  %i.ri = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.rb
  %i.rj = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rh, float %i.ri)
  %i.rk = fmul reassoc nsz arcp contract afn float %i.rf, %i.qz
  %i.rl = fmul reassoc nsz arcp contract afn float %i.rk, %i.rj
  %i.rm = fadd reassoc nsz arcp contract afn float %i.rl, %i.rc
  br label %_fallback_toe.exit.i304

_fallback_toe.exit.i304:                          ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.al, %bb.ak, %7
  %.0.i305 = phi nsz float [ %i.qi, %bb.al ], [ %i.qo, %bb.an ], [ %i.rm, %bb.ar ], [ %9, %7 ], [ %i.pu, %bb.ak ], [ %i.qy, %bb.aq ], [ %i.qr, %bb.ap ] ; 3 uses
  %i.rn = load float, ptr %i.ju, align 4, !tbaa !98 ; 2 uses
  %i.ro = fcmp reassoc nsz arcp contract afn ult float %.0.i305, %i.rn
  %i.rp = load float, ptr %i.jx, align 4          ; 2 uses
  %.inv.i306 = fcmp reassoc nsz arcp contract afn ole float %.0.i305, %i.rp
  %..0.i307 = select reassoc nsz arcp contract afn i1 %.inv.i306, float %.0.i305, float %i.rp
  %i.rq = select reassoc nsz arcp contract afn i1 %i.ro, float %i.rn, float %..0.i307
  %i.rr = fmul reassoc nsz arcp contract afn float %i.pl, %i.bn
  %i.rs = fpext reassoc nsz arcp contract afn float %i.rr to double
  %i.rt = fmul reassoc nsz arcp contract afn float %i.rq, %i.bs
  %i.ru = fpext reassoc nsz arcp contract afn float %i.rt to double
  call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.rs, double noundef %i.ru) #22
  %i.rv = add nuw i32 %.0273381, 1
  %exitcond388.not = icmp eq i32 %.0273381, %i.nh
  br i1 %exitcond388.not, label %._crit_edge, label %.lr.ph382

bb.as:                                            ; preds = %._crit_edge, %bb.p
  %i.rw = load i32, ptr %i.kf, align 4, !tbaa !108
  %.not287 = icmp eq i32 %i.rw, 0
  br i1 %.not287, label %bb.bo, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @cairo_set_source_rgb(ptr noundef %i.ai, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #22
  %i.rx = load float, ptr %i.kc, align 4, !tbaa !106 ; 3 uses
  %i.ry = fmul reassoc nsz arcp contract afn float %i.rx, 2.000000e+02
  %i.rz = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ry)
  %i.sa = fptosi float %i.rz to i32               ; 3 uses
  %i.sb = sitofp reassoc nsz arcp contract afn i32 %i.sa to float
  %i.sc = fmul reassoc nsz arcp contract afn float %i.sb, 5.000000e-03 ; 10 uses
  %i.sd = load float, ptr %i.he, align 4, !tbaa !97 ; 2 uses
  %i.se = fcmp reassoc nsz arcp contract afn olt float %i.sc, %i.sd
  br i1 %i.se, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.sf = load i32, ptr %i.kl, align 4, !tbaa !99
  %.not37.i316 = icmp eq i32 %i.sf, 0
  br i1 %.not37.i316, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.sg = fcmp reassoc nsz arcp contract afn olt float %i.sc, 0.000000e+00
  %i.sh = load float, ptr %i.ju, align 4, !tbaa !98 ; 2 uses
  br i1 %i.sg, label %_fallback_toe.exit.i311, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.si = load float, ptr %i.km, align 4, !tbaa !100
  %i.sj = load float, ptr %i.kn, align 4, !tbaa !101
  %i.sk = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sc, float %i.sj)
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sk, %i.si
  %i.sm = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sl, float 0.000000e+00)
  %i.sn = fadd reassoc nsz arcp contract afn float %i.sm, %i.sh
  br label %_fallback_toe.exit.i311

bb.ax:                                            ; preds = %bb.au
  %i.so = load float, ptr %i.ko, align 4, !tbaa !102 ; 2 uses
  %i.sp = load float, ptr %i.kd, align 4, !tbaa !103
  %i.sq = load float, ptr %i.kp, align 4, !tbaa !104 ; 2 uses
  %i.sr = load float, ptr %i.kq, align 4, !tbaa !105
  %i.ss = fsub reassoc nsz arcp contract afn float %i.sc, %i.sd
  %i.st = fmul reassoc nsz arcp contract afn float %i.sp, %i.ss
  %i.su = fdiv reassoc nsz arcp contract afn float %i.st, %i.so ; 2 uses
  %i.sv = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.su, float %i.sq)
  %i.sw = fadd reassoc nsz arcp contract afn float %i.sv, 1.000000e+00
  %i.sx = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.sq
  %i.sy = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sw, float %i.sx)
  %i.sz = fmul reassoc nsz arcp contract afn float %i.su, %i.so
  %i.ta = fmul reassoc nsz arcp contract afn float %i.sz, %i.sy
  %i.tb = fadd reassoc nsz arcp contract afn float %i.ta, %i.sr
  br label %_fallback_toe.exit.i311

bb.ay:                                            ; preds = %bb.at
  %i.tc = fcmp reassoc nsz arcp contract afn ugt float %i.sc, %i.rx
  br i1 %i.tc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.td = load float, ptr %i.kd, align 4, !tbaa !103
  %i.te = load float, ptr %i.ke, align 4, !tbaa !107
  %i.tf = fmul reassoc nsz arcp contract afn float %i.td, %i.sc
  %i.tg = fadd reassoc nsz arcp contract afn float %i.tf, %i.te
  br label %_fallback_toe.exit.i311

bb.ba:                                            ; preds = %bb.ay
  %i.th = load i32, ptr %i.kf, align 4, !tbaa !108
  %.not.i315 = icmp eq i32 %i.th, 0
  br i1 %.not.i315, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ti = fcmp reassoc nsz arcp contract afn ult float %i.sc, 1.000000e+00
  %i.tj = load float, ptr %i.jx, align 4, !tbaa !109 ; 2 uses
  br i1 %i.ti, label %bb.bc, label %_fallback_toe.exit.i311

bb.bc:                                            ; preds = %bb.bb
  %i.tk = load float, ptr %i.kg, align 4, !tbaa !110
  %i.tl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.sc
  %i.tm = load float, ptr %i.kh, align 4, !tbaa !111
  %i.tn = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tl, float %i.tm)
  %i.to = fmul reassoc nsz arcp contract afn float %i.tn, %i.tk
  %i.tp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.to, float 0.000000e+00)
  %i.tq = fsub reassoc nsz arcp contract afn float %i.tj, %i.tp
  br label %_fallback_toe.exit.i311

bb.bd:                                            ; preds = %bb.ba
  %i.tr = load float, ptr %i.ki, align 4, !tbaa !112 ; 2 uses
  %i.ts = load float, ptr %i.kd, align 4, !tbaa !103
  %i.tt = load float, ptr %i.kj, align 4, !tbaa !113 ; 2 uses
  %i.tu = load float, ptr %i.kk, align 4, !tbaa !114
  %i.tv = fsub reassoc nsz arcp contract afn float %i.sc, %i.rx
  %i.tw = fmul reassoc nsz arcp contract afn float %i.ts, %i.tv
  %i.tx = fdiv reassoc nsz arcp contract afn float %i.tw, %i.tr ; 2 uses
  %i.ty = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tx, float %i.tt)
  %i.tz = fadd reassoc nsz arcp contract afn float %i.ty, 1.000000e+00
  %i.ua = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.tt
  %i.ub = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tz, float %i.ua)
  %i.uc = fmul reassoc nsz arcp contract afn float %i.tx, %i.tr
  %i.ud = fmul reassoc nsz arcp contract afn float %i.uc, %i.ub
  %i.ue = fadd reassoc nsz arcp contract afn float %i.ud, %i.tu
  br label %_fallback_toe.exit.i311

_fallback_toe.exit.i311:                          ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ax, %bb.aw, %bb.av
  %.0.i312 = phi nsz float [ %i.tb, %bb.ax ], [ %i.tg, %bb.az ], [ %i.ue, %bb.bd ], [ %i.sh, %bb.av ], [ %i.sn, %bb.aw ], [ %i.tq, %bb.bc ], [ %i.tj, %bb.bb ] ; 3 uses
  %i.uf = load float, ptr %i.ju, align 4, !tbaa !98 ; 2 uses
  %i.ug = fcmp reassoc nsz arcp contract afn ult float %.0.i312, %i.uf
  %i.uh = load float, ptr %i.jx, align 4          ; 2 uses
  %.inv.i313 = fcmp reassoc nsz arcp contract afn ole float %.0.i312, %i.uh
  %..0.i314 = select reassoc nsz arcp contract afn i1 %.inv.i313, float %.0.i312, float %i.uh
  %i.ui = select reassoc nsz arcp contract afn i1 %i.ug, float %i.uf, float %..0.i314
  %i.uj = fmul reassoc nsz arcp contract afn float %i.sc, %i.bn
  %i.uk = fpext reassoc nsz arcp contract afn float %i.uj to double
  %i.ul = fmul reassoc nsz arcp contract afn float %i.ui, %i.bs
  %i.um = fpext reassoc nsz arcp contract afn float %i.ul to double
  call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.uk, double noundef %i.um) #22
  %i.un = icmp slt i32 %i.sa, 200
  br i1 %i.un, label %.lr.ph384, label %._crit_edge385

._crit_edge385:                                   ; preds = %_fallback_toe.exit.i318, %_fallback_toe.exit.i311
  call void @cairo_stroke(ptr noundef %i.ai) #22
  br label %bb.bo

.lr.ph384:                                        ; preds = %_fallback_toe.exit.i311, %_fallback_toe.exit.i318
  %.0.in383 = phi i32 [ %.0, %_fallback_toe.exit.i318 ], [ %i.sa, %_fallback_toe.exit.i311 ]
  %.0 = add nsw i32 %.0.in383, 1                  ; 3 uses
  %i.uo = sitofp reassoc nsz arcp contract afn i32 %.0 to float
  %i.up = fmul reassoc nsz arcp contract afn float %i.uo, 5.000000e-03 ; 10 uses
  %i.uq = load float, ptr %i.he, align 4, !tbaa !97 ; 2 uses
  %i.ur = fcmp reassoc nsz arcp contract afn olt float %i.up, %i.uq
  br i1 %i.ur, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %.lr.ph384
  %i.us = load i32, ptr %i.kl, align 4, !tbaa !99
  %.not37.i323 = icmp eq i32 %i.us, 0
  br i1 %.not37.i323, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ut = fcmp reassoc nsz arcp contract afn olt float %i.up, 0.000000e+00
  %i.uu = load float, ptr %i.ju, align 4, !tbaa !98 ; 2 uses
  br i1 %i.ut, label %_fallback_toe.exit.i318, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.uv = load float, ptr %i.km, align 4, !tbaa !100
  %i.uw = load float, ptr %i.kn, align 4, !tbaa !101
  %i.ux = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.up, float %i.uw)
  %i.uy = fmul reassoc nsz arcp contract afn float %i.ux, %i.uv
  %i.uz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uy, float 0.000000e+00)
  %i.va = fadd reassoc nsz arcp contract afn float %i.uz, %i.uu
  br label %_fallback_toe.exit.i318

bb.bh:                                            ; preds = %bb.be
  %i.vb = load float, ptr %i.ko, align 4, !tbaa !102 ; 2 uses
  %i.vc = load float, ptr %i.kd, align 4, !tbaa !103
  %i.vd = load float, ptr %i.kp, align 4, !tbaa !104 ; 2 uses
  %i.ve = load float, ptr %i.kq, align 4, !tbaa !105
  %i.vf = fsub reassoc nsz arcp contract afn float %i.up, %i.uq
  %i.vg = fmul reassoc nsz arcp contract afn float %i.vc, %i.vf
  %i.vh = fdiv reassoc nsz arcp contract afn float %i.vg, %i.vb ; 2 uses
  %i.vi = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vh, float %i.vd)
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vi, 1.000000e+00
  %i.vk = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.vd
  %i.vl = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vj, float %i.vk)
  %i.vm = fmul reassoc nsz arcp contract afn float %i.vh, %i.vb
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, %i.vl
  %i.vo = fadd reassoc nsz arcp contract afn float %i.vn, %i.ve
  br label %_fallback_toe.exit.i318

bb.bi:                                            ; preds = %.lr.ph384
  %i.vp = load float, ptr %i.kc, align 4, !tbaa !106 ; 2 uses
  %i.vq = fcmp reassoc nsz arcp contract afn ugt float %i.up, %i.vp
  br i1 %i.vq, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.vr = load float, ptr %i.kd, align 4, !tbaa !103
  %i.vs = load float, ptr %i.ke, align 4, !tbaa !107
  %i.vt = fmul reassoc nsz arcp contract afn float %i.vr, %i.up
  %i.vu = fadd reassoc nsz arcp contract afn float %i.vt, %i.vs
  br label %_fallback_toe.exit.i318

bb.bk:                                            ; preds = %bb.bi
  %i.vv = load i32, ptr %i.kf, align 4, !tbaa !108
  %.not.i322 = icmp eq i32 %i.vv, 0
  br i1 %.not.i322, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.vw = fcmp reassoc nsz arcp contract afn ult float %i.up, 1.000000e+00
  %i.vx = load float, ptr %i.jx, align 4, !tbaa !109 ; 2 uses
  br i1 %i.vw, label %bb.bm, label %_fallback_toe.exit.i318

bb.bm:                                            ; preds = %bb.bl
  %i.vy = load float, ptr %i.kg, align 4, !tbaa !110
  %i.vz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.up
  %i.wa = load float, ptr %i.kh, align 4, !tbaa !111
  %i.wb = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vz, float %i.wa)
  %i.wc = fmul reassoc nsz arcp contract afn float %i.wb, %i.vy
  %i.wd = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wc, float 0.000000e+00)
  %i.we = fsub reassoc nsz arcp contract afn float %i.vx, %i.wd
  br label %_fallback_toe.exit.i318

bb.bn:                                            ; preds = %bb.bk
  %i.wf = load float, ptr %i.ki, align 4, !tbaa !112 ; 2 uses
  %i.wg = load float, ptr %i.kd, align 4, !tbaa !103
  %i.wh = load float, ptr %i.kj, align 4, !tbaa !113 ; 2 uses
  %i.wi = load float, ptr %i.kk, align 4, !tbaa !114
  %i.wj = fsub reassoc nsz arcp contract afn float %i.up, %i.vp
  %i.wk = fmul reassoc nsz arcp contract afn float %i.wg, %i.wj
  %i.wl = fdiv reassoc nsz arcp contract afn float %i.wk, %i.wf ; 2 uses
  %i.wm = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.wl, float %i.wh)
  %i.wn = fadd reassoc nsz arcp contract afn float %i.wm, 1.000000e+00
  %i.wo = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.wh
  %i.wp = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.wn, float %i.wo)
  %i.wq = fmul reassoc nsz arcp contract afn float %i.wl, %i.wf
  %i.wr = fmul reassoc nsz arcp contract afn float %i.wq, %i.wp
  %i.ws = fadd reassoc nsz arcp contract afn float %i.wr, %i.wi
  br label %_fallback_toe.exit.i318

_fallback_toe.exit.i318:                          ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bh, %bb.bg, %bb.bf
  %.0.i319 = phi nsz float [ %i.vo, %bb.bh ], [ %i.vu, %bb.bj ], [ %i.ws, %bb.bn ], [ %i.uu, %bb.bf ], [ %i.va, %bb.bg ], [ %i.we, %bb.bm ], [ %i.vx, %bb.bl ] ; 3 uses
  %i.wt = load float, ptr %i.ju, align 4, !tbaa !98 ; 2 uses
  %i.wu = fcmp reassoc nsz arcp contract afn ult float %.0.i319, %i.wt
  %i.wv = load float, ptr %i.jx, align 4          ; 2 uses
  %.inv.i320 = fcmp reassoc nsz arcp contract afn ole float %.0.i319, %i.wv
  %..0.i321 = select reassoc nsz arcp contract afn i1 %.inv.i320, float %.0.i319, float %i.wv
  %i.ww = select reassoc nsz arcp contract afn i1 %i.wu, float %i.wt, float %..0.i321
  %i.wx = fmul reassoc nsz arcp contract afn float %i.up, %i.bn
  %i.wy = fpext reassoc nsz arcp contract afn float %i.wx to double
  %i.wz = fmul reassoc nsz arcp contract afn float %i.ww, %i.bs
  %i.xa = fpext reassoc nsz arcp contract afn float %i.wz to double
  call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.wy, double noundef %i.xa) #22
  %exitcond389.not = icmp eq i32 %.0, 200
  br i1 %exitcond389.not, label %._crit_edge385, label %.lr.ph384

bb.bo:                                            ; preds = %._crit_edge385, %bb.as
  call void @cairo_save(ptr noundef %i.ai) #22
  call void @cairo_set_line_width(ptr noundef %i.ai, double noundef %i.hb) #22
  %i.xb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 680
  %.sroa.0349.0.copyload = load double, ptr %i.xc, align 8
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xb, i64 688
  %.sroa.4350.0.copyload = load double, ptr %.sroa.4350.0..sroa_idx, align 8
  %.sroa.5351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xb, i64 696
  %.sroa.5351.0.copyload = load double, ptr %.sroa.5351.0..sroa_idx, align 8
  %.sroa.6352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xb, i64 704
  %.sroa.6352.0.copyload = load double, ptr %.sroa.6352.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0349.0.copyload, double noundef %.sroa.4350.0.copyload, double noundef %.sroa.5351.0.copyload, double noundef %.sroa.6352.0.copyload) #22
  %i.xd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 1432
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !223 ; 2 uses
  %i.xg = fmul reassoc nsz arcp contract afn double %i.xf, -4.000000e+00 ; 2 uses
  %i.xh = fmul reassoc nsz arcp contract afn double %i.xf, 8.000000e+00 ; 2 uses
  %i.xi = fadd reassoc nsz arcp contract afn double %i.xh, %i.by
  %i.xj = fadd reassoc nsz arcp contract afn double %i.xh, %i.bz
  call void @cairo_rectangle(ptr noundef %i.ai, double noundef %i.xg, double noundef %i.xg, double noundef %i.xi, double noundef %i.xj) #22
  call void @cairo_clip(ptr noundef %i.ai) #22
  %i.xk = load float, ptr %i.he, align 4, !tbaa !97
  %i.xl = fmul reassoc nsz arcp contract afn float %i.xk, %i.bn
  %i.xm = load float, ptr %i.kq, align 4, !tbaa !105
  %i.xn = fmul reassoc nsz arcp contract afn float %i.xm, %i.bs
  %i.xo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 744
  %.sroa.0353.0.copyload = load double, ptr %i.xp, align 8
  %.sroa.4354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xo, i64 752
  %.sroa.4354.0.copyload = load double, ptr %.sroa.4354.0..sroa_idx, align 8
  %.sroa.5355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xo, i64 760
  %.sroa.5355.0.copyload = load double, ptr %.sroa.5355.0..sroa_idx, align 8
  %.sroa.6356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xo, i64 768
  %.sroa.6356.0.copyload = load double, ptr %.sroa.6356.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0353.0.copyload, double noundef %.sroa.4354.0.copyload, double noundef %.sroa.5355.0.copyload, double noundef %.sroa.6356.0.copyload) #22
  %i.xq = fpext reassoc nsz arcp contract afn float %i.xl to double
  %i.xr = fpext reassoc nsz arcp contract afn float %i.xn to double
  %i.xs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 1432
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !223
  %i.xv = fmul reassoc nsz arcp contract afn double %i.xu, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.ai, double noundef %i.xq, double noundef %i.xr, double noundef %i.xv, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #22
  call void @cairo_fill(ptr noundef %i.ai) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  %i.xw = load float, ptr %i.kc, align 4, !tbaa !106
  %i.xx = fmul reassoc nsz arcp contract afn float %i.xw, %i.bn
  %i.xy = load float, ptr %i.kk, align 4, !tbaa !114
  %i.xz = fmul reassoc nsz arcp contract afn float %i.xy, %i.bs
  %i.ya = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 744
  %.sroa.0357.0.copyload = load double, ptr %i.yb, align 8
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ya, i64 752
  %.sroa.4358.0.copyload = load double, ptr %.sroa.4358.0..sroa_idx, align 8
  %.sroa.5359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ya, i64 760
  %.sroa.5359.0.copyload = load double, ptr %.sroa.5359.0..sroa_idx, align 8
  %.sroa.6360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ya, i64 768
  %.sroa.6360.0.copyload = load double, ptr %.sroa.6360.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0357.0.copyload, double noundef %.sroa.4358.0.copyload, double noundef %.sroa.5359.0.copyload, double noundef %.sroa.6360.0.copyload) #22
  %i.yc = fpext reassoc nsz arcp contract afn float %i.xx to double
  %i.yd = fpext reassoc nsz arcp contract afn float %i.xz to double
  %i.ye = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 1432
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !223
  %i.yh = fmul reassoc nsz arcp contract afn double %i.yg, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.ai, double noundef %i.yc, double noundef %i.yd, double noundef %i.yh, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #22
  call void @cairo_fill(ptr noundef %i.ai) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  %i.yi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !158
  %i.yk = fmul reassoc nsz arcp contract afn float %i.yj, %i.bn
  %i.yl = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !159
  %i.yn = fmul reassoc nsz arcp contract afn float %i.ym, %i.bs
  %i.yo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !227 ; 4 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 744
  %.sroa.0361.0.copyload = load double, ptr %i.yp, align 8
  %.sroa.4362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yo, i64 752
  %.sroa.4362.0.copyload = load double, ptr %.sroa.4362.0..sroa_idx, align 8
  %.sroa.5363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yo, i64 760
  %.sroa.5363.0.copyload = load double, ptr %.sroa.5363.0..sroa_idx, align 8
  %.sroa.6364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yo, i64 768
  %.sroa.6364.0.copyload = load double, ptr %.sroa.6364.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ai, double noundef %.sroa.0361.0.copyload, double noundef %.sroa.4362.0.copyload, double noundef %.sroa.5363.0.copyload, double noundef %.sroa.6364.0.copyload) #22
  %i.yq = fpext reassoc nsz arcp contract afn float %i.yk to double
  %i.yr = fpext reassoc nsz arcp contract afn float %i.yn to double
  %i.ys = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 1432
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !223
  %i.yv = fmul reassoc nsz arcp contract afn double %i.yu, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.ai, double noundef %i.yq, double noundef %i.yr, double noundef %i.yv, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #22
  call void @cairo_fill(ptr noundef %i.ai) #22
  call void @cairo_stroke(ptr noundef %i.ai) #22
  call void @cairo_restore(ptr noundef %i.ai) #22
  call void @cairo_destroy(ptr noundef %i.ai) #22
end_hunk_2
begin_hunk_3_@cairo_set_dash
declare void @cairo_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #3

declare void @cairo_identity_matrix(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #16

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_clip(ptr noundef) local_unnamed_addr #3

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #3

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_toggle_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_soft_max(ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @dtgtk_button_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dtgtk_cairo_paint_camera(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @_read_exposure_params_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !117
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 5 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !132 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = tail call reassoc nsz arcp contract afn float @dt_dev_exposure_get_effective_exposure(ptr noundef %i.j) #22 ; 2 uses
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, 5.000000e-01
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, -8.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !136
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, 1.000000e+00 ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %i.m, %i.p ; 3 uses
  %i.r = fcmp reassoc nsz arcp contract afn ult float %i.q, -2.000000e+01
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.q, -1.000000e-01
  %spec.select.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.q, float -1.000000e-01
  %i.s = select reassoc nsz arcp contract afn i1 %i.r, float -2.000000e+01, float %spec.select.i ; 5 uses
  store float %i.s, ptr %i.e, align 4, !tbaa !132
  %i.t = fpext reassoc nsz arcp contract afn float %i.k to double
  %i.u = fmul reassoc nsz arcp contract afn double %i.t, 8.000000e-01
  %i.v = fadd reassoc nsz arcp contract afn double %i.u, 4.000000e+00
  %i.w = fpext reassoc nsz arcp contract afn float %i.p to double
  %i.x = fmul reassoc nsz arcp contract afn double %i.v, %i.w ; 3 uses
  %i.y = fcmp reassoc nsz arcp contract afn ult double %i.x, f0x3FB99999A0000000
  %i.z = fcmp reassoc nsz arcp contract afn olt double %i.x, 2.000000e+01
  %spec.select2324.i = select i1 %i.z, double %i.x, double 2.000000e+01
  %spec.select23.i = fptrunc double %spec.select2324.i to float
  %i.aa = select i1 %i.y, float 1.000000e-01, float %spec.select23.i ; 4 uses
  store float %i.aa, ptr %i.g, align 4, !tbaa !130
  %.val.i = load ptr, ptr %i.a, align 16, !tbaa !117
  %i.ab = getelementptr i8, ptr %.val.i, i64 272
  %.val.val.i = load ptr, ptr %i.ab, align 8, !tbaa !131 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !133
  %i.ae = fsub reassoc nsz arcp contract afn float %i.h, %i.f
  %i.af = fmul reassoc nsz arcp contract afn float %i.ad, %i.ae
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.f ; 3 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ult float %i.ag, %i.s
  %i.ai = fcmp reassoc nsz arcp contract afn ole float %i.ag, %i.aa
  %i.aj = select reassoc nsz arcp contract afn i1 %i.ai, float %i.ag, float %i.aa
  %i.ak = select reassoc nsz arcp contract afn i1 %i.ah, float %i.s, float %i.aj
  %i.al = fsub reassoc nsz arcp contract afn float %i.aa, %i.s
  %i.am = fsub reassoc nsz arcp contract afn float %i.ak, %i.s
  %i.an = fdiv reassoc nsz arcp contract afn float %i.am, %i.al
  store float %i.an, ptr %i.ac, align 4, !tbaa !133
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = atomicrmw add ptr %i.ap, i32 1 seq_cst, align 4 ; 0 uses
  %i.ar = load float, ptr %i.g, align 4, !tbaa !130
  %i.as = load float, ptr %i.e, align 4, !tbaa !132
  %i.at = fsub reassoc nsz arcp contract afn float %i.ar, %i.as ; 2 uses
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %.val.val.i, float noundef %i.at) #22
  %i.au = load float, ptr %i.e, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set_offset(ptr noundef %.val.val.i, float noundef %i.au) #22
  %i.av = load float, ptr %i.e, align 4, !tbaa !132
  %i.aw = fneg reassoc nsz arcp contract afn float %i.av
  %i.ax = fdiv reassoc nsz arcp contract afn float %i.aw, %i.at
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %.val.val.i, float noundef %i.ax) #22
  %i.ay = load float, ptr %i.ac, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %.val.val.i, float noundef %i.ay) #22
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bb = atomicrmw add ptr %i.ba, i32 -1 seq_cst, align 4 ; 0 uses
  tail call void @dt_iop_gui_update(ptr noundef nonnull %1) #22
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !157
  tail call void @dt_dev_add_history_item(ptr noundef %i.bc, ptr noundef nonnull %1, i32 noundef 1) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_gui_update(ptr noundef) local_unnamed_addr #3

declare float @dt_dev_exposure_get_effective_exposure(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_widget_get_parent(ptr noundef) local_unnamed_addr #3

declare ptr @g_object_ref(ptr noundef) local_unnamed_addr #3

declare void @gtk_container_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_container_child_get(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @gtk_box_reorder_child(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dtgtk_cairo_paint_styles(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @_primaries_popupmenu_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call ptr @gtk_menu_new() #22        ; 5 uses
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.161, i32 noundef 5) #22
  %i.c = tail call ptr @gtk_menu_item_new_with_mnemonic(ptr noundef %i.b) #22 ; 3 uses
  tail call void @gtk_widget_set_name(ptr noundef %i.c, ptr noundef nonnull @.str.162) #22
  %i.d = tail call i64 @g_signal_connect_data(ptr noundef %i.c, ptr noundef nonnull @.str.163, ptr noundef nonnull @_apply_primaries_from_menu_callback, ptr noundef %1, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  tail call void @gtk_menu_shell_append(ptr noundef %i.a, ptr noundef %i.c) #22
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #22
  %i.f = tail call ptr @gtk_menu_item_new_with_mnemonic(ptr noundef %i.e) #22 ; 3 uses
  tail call void @gtk_widget_set_name(ptr noundef %i.f, ptr noundef nonnull @.str.25) #22
  %i.g = tail call i64 @g_signal_connect_data(ptr noundef %i.f, ptr noundef nonnull @.str.163, ptr noundef nonnull @_apply_primaries_from_menu_callback, ptr noundef %1, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  tail call void @gtk_menu_shell_append(ptr noundef %i.a, ptr noundef %i.f) #22
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef 5) #22
  %i.i = tail call ptr @gtk_menu_item_new_with_mnemonic(ptr noundef %i.h) #22 ; 3 uses
  tail call void @gtk_widget_set_name(ptr noundef %i.i, ptr noundef nonnull @.str.164) #22
  %i.j = tail call i64 @g_signal_connect_data(ptr noundef %i.i, ptr noundef nonnull @.str.163, ptr noundef nonnull @_apply_primaries_from_menu_callback, ptr noundef %1, ptr noundef null, i32 noundef 0) #22 ; 0 uses
  tail call void @gtk_menu_shell_append(ptr noundef %i.a, ptr noundef %i.i) #22
  tail call void @gtk_widget_show_all(ptr noundef %i.a) #22
  tail call void @dt_gui_menu_popup(ptr noundef %i.a, ptr noundef %0, i32 noundef 7, i32 noundef 1) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_setup_purity_slider(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 3) %3, float noundef nofpclass(nan inf nzero sub nnorm) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef %1) #22 ; 14 uses
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.a, i32 noundef 0) #22
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.a, ptr noundef nonnull @.str.84) #22
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.a, i32 noundef 2) #22
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %i.a, float noundef 1.000000e+02) #22
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %i.a, float noundef 0.000000e+00) #22
  %i.b = icmp eq i32 %3, 0
  %i.c = select reassoc nsz arcp contract afn i1 %i.b, float 8.000000e-01, float 2.000000e-01
  %i.d = icmp eq i32 %3, 1
  %i.e = select reassoc nsz arcp contract afn i1 %i.d, float 8.000000e-01, float 2.000000e-01
  %i.f = icmp eq i32 %3, 2
  %i.g = select reassoc nsz arcp contract afn i1 %i.f, float 8.000000e-01, float 2.000000e-01
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.a, float noundef 0.000000e+00, float noundef %i.c, float noundef %i.e, float noundef %i.g) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.a, ptr noundef %2) #22
  %i.h = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_soft_min(ptr noundef %i.a) #22 ; 2 uses
  %i.i = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_soft_max(ptr noundef %i.a) #22
  %i.j = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_min(ptr noundef %i.a) #22 ; 2 uses
  %i.k = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.a) #22
  %i.l = fsub reassoc nsz arcp contract afn float %i.i, %i.h
  %invariant.op.i = fmul reassoc nsz arcp contract afn float %i.l, f0x3D579436 ; 2 uses
  %i.m = fsub reassoc nsz arcp contract afn float %i.h, %i.j ; 2 uses
  %i.n = fsub reassoc nsz arcp contract afn float %i.k, %i.j
  %i.o = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n ; 2 uses
  %.not.i = icmp eq i32 %5, 0
  %i.p = fmul reassoc nsz arcp contract afn float %4, f0x3C888889 ; 2 uses
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.p) ; 2 uses
  %i.r = fsub reassoc nsz arcp contract afn float %i.p, %i.q ; 2 uses
  %i.s = fptoui float %i.q to i64                 ; 2 uses
  br i1 %.not.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.r, f0x3D579436
  br label %bb.b

bb.b:                                             ; preds = %dt_HSV_2_RGB.exit.i.us, %.split.us
  %.021.i.us = phi i32 [ 0, %.split.us ], [ %i.aa, %dt_HSV_2_RGB.exit.i.us ] ; 2 uses
  %i.t = uitofp nsz nneg i32 %.021.i.us to float  ; 3 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, f0x3D579436
  %.reass.i.us = fmul reassoc nsz arcp contract afn float %invariant.op.i, %i.t
  %i.v = fadd reassoc nsz arcp contract afn float %i.m, %.reass.i.us
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, %i.o
  %i.x = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.u ; 7 uses
  %.reass = fmul reassoc nsz arcp contract afn float %invariant.op, %i.t ; 2 uses
  %i.y = fadd reassoc nsz arcp contract afn float %.reass, %i.x ; 3 uses
  %i.z = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.reass ; 3 uses
  switch i64 %i.s, label %bb.g [
    i64 0, label %dt_HSV_2_RGB.exit.i.us
    i64 1, label %bb.f
    i64 2, label %bb.e
    i64 3, label %bb.d
    i64 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

bb.d:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

bb.e:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

bb.f:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

bb.g:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

dt_HSV_2_RGB.exit.i.us:                           ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink54.i.i.i.us = phi float [ %i.z, %bb.f ], [ %i.x, %bb.d ], [ 1.000000e+00, %bb.g ], [ %i.y, %bb.c ], [ %i.x, %bb.e ], [ 1.000000e+00, %bb.b ]
  %.sink53.i.i.i.us = phi float [ 1.000000e+00, %bb.f ], [ %i.z, %bb.d ], [ %i.x, %bb.g ], [ %i.x, %bb.c ], [ 1.000000e+00, %bb.e ], [ %i.y, %bb.b ]
  %.sink.i.i.i.us = phi float [ %i.x, %bb.f ], [ 1.000000e+00, %bb.d ], [ %i.z, %bb.g ], [ 1.000000e+00, %bb.c ], [ %i.y, %bb.e ], [ %i.x, %bb.b ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.a, float noundef %i.w, float noundef %.sink54.i.i.i.us, float noundef %.sink53.i.i.i.us, float noundef %.sink.i.i.i.us) #22
  %i.aa = add nuw nsw i32 %.021.i.us, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.aa, 20
  br i1 %exitcond.not.i.us, label %_paint_slider_gradient.exit, label %bb.b

.split:                                           ; preds = %bb.a, %dt_HSV_2_RGB.exit.i
  %.021.i = phi i32 [ %i.aj, %dt_HSV_2_RGB.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.ab = uitofp nsz nneg i32 %.021.i to float    ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, f0x3D579436 ; 8 uses
  %.reass.i = fmul reassoc nsz arcp contract afn float %invariant.op.i, %i.ab
  %i.ad = fadd reassoc nsz arcp contract afn float %i.m, %.reass.i
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.o
  %i.af = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ac
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.r ; 2 uses
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %i.ac ; 3 uses
  %i.ai = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ag ; 3 uses
  switch i64 %i.s, label %bb.l [
    i64 0, label %dt_HSV_2_RGB.exit.i
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

bb.h:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

bb.i:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

bb.j:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

bb.k:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

bb.l:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

dt_HSV_2_RGB.exit.i:                              ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.split
  %.sink54.i.i.i = phi float [ %i.ai, %bb.h ], [ %i.ac, %bb.j ], [ 1.000000e+00, %bb.l ], [ %i.ah, %bb.k ], [ %i.ac, %bb.i ], [ 1.000000e+00, %.split ]
  %.sink53.i.i.i = phi float [ 1.000000e+00, %bb.h ], [ %i.ai, %bb.j ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ], [ 1.000000e+00, %bb.i ], [ %i.ah, %.split ]
  %.sink.i.i.i = phi float [ %i.ac, %bb.h ], [ 1.000000e+00, %bb.j ], [ %i.ai, %bb.l ], [ 1.000000e+00, %bb.k ], [ %i.ah, %bb.i ], [ %i.ac, %.split ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.a, float noundef %i.ae, float noundef %.sink54.i.i.i, float noundef %.sink53.i.i.i, float noundef %.sink.i.i.i) #22
  %i.aj = add nuw nsw i32 %.021.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aj, 20
  br i1 %exitcond.not.i, label %_paint_slider_gradient.exit, label %.split

_paint_slider_gradient.exit:                      ; preds = %dt_HSV_2_RGB.exit.i, %dt_HSV_2_RGB.exit.i.us
  tail call void @gtk_widget_queue_draw(ptr noundef %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_setup_hue_slider(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, float noundef nofpclass(nan inf nzero sub nnorm) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef nonnull %0, ptr noundef %1) #22 ; 13 uses
  tail call void @dt_bauhaus_slider_set_feedback(ptr noundef %i.a, i32 noundef 0) #22
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.a, ptr noundef nonnull @.str.165) #22
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.a, i32 noundef 1) #22
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %i.a, float noundef f0x42652EE1) #22
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.a, ptr noundef %2) #22
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %i.a, float noundef 0.000000e+00) #22
  %i.b = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_soft_min(ptr noundef %i.a) #22 ; 2 uses
  %i.c = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_soft_max(ptr noundef %i.a) #22
  %i.d = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_min(ptr noundef %i.a) #22 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_hard_max(ptr noundef %i.a) #22
  %i.f = fsub reassoc nsz arcp contract afn float %i.c, %i.b
  %invariant.op.i = fmul reassoc nsz arcp contract afn float %i.f, f0x3D579436 ; 2 uses
  %i.g = fsub reassoc nsz arcp contract afn float %i.b, %i.d ; 2 uses
  %i.h = fsub reassoc nsz arcp contract afn float %i.e, %i.d
  %i.i = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.h ; 2 uses
  %.not.i = icmp eq i32 %4, 0
  br i1 %.not.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.j = fadd reassoc nsz arcp contract afn float %3, 4.200000e+02
  br label %.split

.split.us:                                        ; preds = %bb.a
  %invariant.op = fadd reassoc nsz arcp contract afn float %3, 3.000000e+02
  br label %bb.b

bb.b:                                             ; preds = %dt_HSV_2_RGB.exit.i.us, %.split.us
  %.021.i.us = phi i32 [ 0, %.split.us ], [ %i.w, %dt_HSV_2_RGB.exit.i.us ] ; 2 uses
  %i.k = uitofp nsz nneg i32 %.021.i.us to float  ; 2 uses
  %.reass.i.us = fmul reassoc nsz arcp contract afn float %invariant.op.i, %i.k
  %i.l = fadd reassoc nsz arcp contract afn float %i.g, %.reass.i.us
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.i
  %i.n = fmul reassoc nsz arcp contract afn float %i.k, f0x40CA1AF3
  %.reass = fadd reassoc nsz arcp contract afn float %i.n, %invariant.op
  %i.o = frem reassoc nsz arcp contract afn float %.reass, 3.600000e+02
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, f0x3C888889 ; 2 uses
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.p) ; 2 uses
  %i.r = fsub reassoc nsz arcp contract afn float %i.p, %i.q
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, f0x3F333333 ; 2 uses
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, 3.000000e-01 ; 3 uses
  %i.u = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.s ; 3 uses
  %i.v = fptoui float %i.q to i64
  switch i64 %i.v, label %bb.g [
    i64 0, label %dt_HSV_2_RGB.exit.i.us
    i64 1, label %bb.f
    i64 2, label %bb.e
    i64 3, label %bb.d
    i64 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

bb.d:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

bb.e:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

bb.f:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

bb.g:                                             ; preds = %bb.b
  br label %dt_HSV_2_RGB.exit.i.us

dt_HSV_2_RGB.exit.i.us:                           ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink54.i.i.i.us = phi float [ %i.u, %bb.f ], [ 3.000000e-01, %bb.d ], [ 1.000000e+00, %bb.g ], [ %i.t, %bb.c ], [ 3.000000e-01, %bb.e ], [ 1.000000e+00, %bb.b ]
  %.sink53.i.i.i.us = phi float [ 1.000000e+00, %bb.f ], [ %i.u, %bb.d ], [ 3.000000e-01, %bb.g ], [ 3.000000e-01, %bb.c ], [ 1.000000e+00, %bb.e ], [ %i.t, %bb.b ]
  %.sink.i.i.i.us = phi float [ 3.000000e-01, %bb.f ], [ 1.000000e+00, %bb.d ], [ %i.u, %bb.g ], [ 1.000000e+00, %bb.c ], [ %i.t, %bb.e ], [ 3.000000e-01, %bb.b ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.a, float noundef %i.m, float noundef %.sink54.i.i.i.us, float noundef %.sink53.i.i.i.us, float noundef %.sink.i.i.i.us) #22
  %i.w = add nuw nsw i32 %.021.i.us, 1            ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.w, 20
  br i1 %exitcond.not.i.us, label %_paint_slider_gradient.exit, label %bb.b

.split:                                           ; preds = %.split.preheader, %dt_HSV_2_RGB.exit.i
  %.021.i = phi i32 [ %i.ak, %dt_HSV_2_RGB.exit.i ], [ 0, %.split.preheader ] ; 2 uses
  %i.x = uitofp nsz nneg i32 %.021.i to float     ; 2 uses
  %.reass.i = fmul reassoc nsz arcp contract afn float %invariant.op.i, %i.x
  %i.y = fadd reassoc nsz arcp contract afn float %i.g, %.reass.i
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.i
  %i.aa = fmul reassoc nsz arcp contract afn float %i.x, f0x40CA1AF3
  %i.ab = fsub reassoc nsz arcp contract afn float %i.j, %i.aa
  %i.ac = frem reassoc nsz arcp contract afn float %i.ab, 3.600000e+02
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, f0x3C888889 ; 2 uses
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ad) ; 2 uses
  %i.af = fsub reassoc nsz arcp contract afn float %i.ad, %i.ae
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, f0x3F333333 ; 2 uses
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, 3.000000e-01 ; 3 uses
  %i.ai = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ag ; 3 uses
  %i.aj = fptoui float %i.ae to i64
  switch i64 %i.aj, label %bb.l [
    i64 0, label %dt_HSV_2_RGB.exit.i
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

bb.h:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

bb.i:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

bb.j:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

bb.k:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

bb.l:                                             ; preds = %.split
  br label %dt_HSV_2_RGB.exit.i

dt_HSV_2_RGB.exit.i:                              ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.split
  %.sink54.i.i.i = phi float [ %i.ai, %bb.h ], [ 3.000000e-01, %bb.j ], [ 1.000000e+00, %bb.l ], [ %i.ah, %bb.k ], [ 3.000000e-01, %bb.i ], [ 1.000000e+00, %.split ]
  %.sink53.i.i.i = phi float [ 1.000000e+00, %bb.h ], [ %i.ai, %bb.j ], [ 3.000000e-01, %bb.l ], [ 3.000000e-01, %bb.k ], [ 1.000000e+00, %bb.i ], [ %i.ah, %.split ]
  %.sink.i.i.i = phi float [ 3.000000e-01, %bb.h ], [ 1.000000e+00, %bb.j ], [ %i.ai, %bb.l ], [ 1.000000e+00, %bb.k ], [ %i.ah, %bb.i ], [ 3.000000e-01, %.split ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.a, float noundef %i.z, float noundef %.sink54.i.i.i, float noundef %.sink53.i.i.i, float noundef %.sink.i.i.i) #22
  %i.ak = add nuw nsw i32 %.021.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ak, 20
  br i1 %exitcond.not.i, label %_paint_slider_gradient.exit, label %.split

_paint_slider_gradient.exit:                      ; preds = %dt_HSV_2_RGB.exit.i, %dt_HSV_2_RGB.exit.i.us
  tail call void @gtk_widget_queue_draw(ptr noundef %i.a) #22
  ret void
}

declare ptr @gtk_button_new_with_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_set_post_curve_primaries_from_pre_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store <2 x float> splat (float 1.000000e+00), ptr %i.c, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.h = load <4 x float>, ptr %i.d, align 4, !tbaa !12
  store <4 x float> %i.h, ptr %i.e, align 4, !tbaa !12
  %i.i = load <2 x float>, ptr %i.f, align 4, !tbaa !12
  store <2 x float> %i.i, ptr %i.g, align 4, !tbaa !12
  tail call void @dt_iop_gui_update(ptr noundef %1) #22
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !157
  tail call void @dt_dev_add_history_item(ptr noundef %i.j, ptr noundef %1, i32 noundef 1) #22
  ret void
}

declare ptr @gtk_menu_new() local_unnamed_addr #3

declare ptr @gtk_menu_item_new_with_mnemonic(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_apply_primaries_from_menu_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call ptr @gtk_widget_get_name(ptr noundef %0) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 18 uses
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(8) @.str.162) #25
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 0, ptr %i.f, align 4, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  store i32 0, ptr %i.g, align 4, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 2, ptr %i.h, align 4, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  store <8 x float> <float f0x3E96D906, float f0x3D11030A, float f0x3E8469BE, float f0xBCACBC41, float f0x3E15ED7A, float f0xBD812427, float 1.000000e+00, float 0.000000e+00>, ptr %i.i, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store <4 x float> <float f0x3E94E0A5, float f0x3D11030A, float f0x3E86BC4E, float f0xBCACBC41>, ptr %i.j, align 4, !tbaa !12
  store <2 x float> <float f0x3D3BA406, float f0xBD812427>, ptr %i.k, align 4, !tbaa !12
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(7) @.str.25) #25
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 0, ptr %i.n, align 4, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  store i32 0, ptr %i.o, align 4, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 1, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store <8 x float> <float 1.000000e-01, float f0x3D0EFA36, float 1.000000e-01, float f0xBC8EFA36, float 1.500000e-01, float f0xBD567751, float 0.000000e+00, float 1.000000e+00>, ptr %i.q, align 4, !tbaa !12
  store <4 x float> <float 1.000000e-01, float f0x3D0EFA36, float 1.000000e-01, float f0xBC8EFA36>, ptr %i.r, align 4, !tbaa !12
  store <2 x float> <float 1.500000e-01, float f0xBD567751>, ptr %i.s, align 4, !tbaa !12
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(11) @.str.164) #25
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 0, ptr %i.v, align 4, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  store i32 0, ptr %i.w, align 4, !tbaa !142
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 2, ptr %i.x, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.z, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  tail call void @dt_iop_gui_update(ptr noundef nonnull %1) #22
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !157
  tail call void @dt_dev_add_history_item(ptr noundef %i.ab, ptr noundef nonnull %1, i32 noundef 1) #22
  ret void
}

declare void @gtk_menu_shell_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #3

declare void @dt_gui_menu_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_widget_get_name(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_feedback(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_soft_min(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_soft_max(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_hard_min(ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get_hard_max(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @_luminance_from_profile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 852
  %i.c = load i32, ptr %i.b, align 4, !tbaa !250
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.f = load i32, ptr %i.e, align 64, !tbaa !251 ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  %i.h = sitofp reassoc nsz arcp contract afn i32 %i.g to float ; 9 uses
  %i.i = add nsw i32 %i.f, -2
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to float ; 6 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !252  ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fcmp reassoc nsz arcp contract afn ult float %i.l, 0.000000e+00
  %i.n = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.n, 1.000000e+00
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = fmul reassoc nsz arcp contract afn float %i.n, %i.h ; 3 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, 0.000000e+00
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.p, %i.h
  %..i.i.i = select reassoc nsz arcp contract afn i1 %i.r, float %i.p, float %i.h
  %i.s = select reassoc nsz arcp contract afn i1 %i.q, float %..i.i.i, float 0.000000e+00 ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, %i.j
  %i.u = select reassoc nsz arcp contract afn i1 %i.t, float %i.s, float %i.j
  %i.v = fptosi float %i.u to i32                 ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fsub reassoc nsz arcp contract afn float %i.s, %i.w
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !12
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.aa
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.x
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, %i.aa
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 772
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = load float, ptr %i.a, align 64, !tbaa !12
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.n
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.al = load float, ptr %i.ak, align 8, !tbaa !12
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aj, float %i.al)
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ao = phi reassoc nsz arcp contract afn float [ %i.an, %bb.e ], [ %i.af, %bb.d ], [ %i.n, %bb.b ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !252 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = fcmp reassoc nsz arcp contract afn ult float %i.ar, 0.000000e+00
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !12 ; 4 uses
  br i1 %i.as, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = fcmp reassoc nsz arcp contract afn olt float %i.au, 1.000000e+00
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 780
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !12
  %i.az = load float, ptr %i.aw, align 4, !tbaa !12
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 788
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ba, float %i.bc)
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.ay
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bf = fmul reassoc nsz arcp contract afn float %i.au, %i.h ; 3 uses
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, 0.000000e+00
  %i.bh = fcmp reassoc nsz arcp contract afn olt float %i.bf, %i.h
  %..i.1.i.i = select reassoc nsz arcp contract afn i1 %i.bh, float %i.bf, float %i.h
  %i.bi = select reassoc nsz arcp contract afn i1 %i.bg, float %..i.1.i.i, float 0.000000e+00 ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bi, %i.j
  %i.bk = select reassoc nsz arcp contract afn i1 %i.bj, float %i.bi, float %i.j
  %i.bl = fptosi float %i.bk to i32               ; 2 uses
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bl to float
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bi, %i.bm
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bo ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !12 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.br, align 4, !tbaa !12
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bn
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, %i.bq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bw = phi reassoc nsz arcp contract afn float [ %i.be, %bb.h ], [ %i.bv, %bb.i ], [ %i.au, %bb.f ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !252 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !12
  %i.ca = fcmp reassoc nsz arcp contract afn ult float %i.bz, 0.000000e+00
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !12 ; 4 uses
  br i1 %i.ca, label %dt_ioppr_apply_trc.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.cc, 1.000000e+00
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 796
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !12
  %i.ch = load float, ptr %i.ce, align 8, !tbaa !12
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.cc
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.ck = load float, ptr %i.cj, align 32, !tbaa !12
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ci, float %i.ck)
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.cg
  br label %dt_ioppr_apply_trc.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cc, %i.h ; 3 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt float %i.cn, 0.000000e+00
  %i.cp = fcmp reassoc nsz arcp contract afn olt float %i.cn, %i.h
  %..i.2.i.i = select reassoc nsz arcp contract afn i1 %i.cp, float %i.cn, float %i.h
  %i.cq = select reassoc nsz arcp contract afn i1 %i.co, float %..i.2.i.i, float 0.000000e+00 ; 3 uses
  %i.cr = fcmp reassoc nsz arcp contract afn olt float %i.cq, %i.j
  %i.cs = select reassoc nsz arcp contract afn i1 %i.cr, float %i.cq, float %i.j
  %i.ct = fptosi float %i.cs to i32               ; 2 uses
  %i.cu = sitofp reassoc nsz arcp contract afn i32 %i.ct to float
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cq, %i.cu
  %i.cw = sext i32 %i.ct to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cw ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !12
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.cy
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.cv
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, %i.cy
  br label %dt_ioppr_apply_trc.exit.i

dt_ioppr_apply_trc.exit.i:                        ; preds = %bb.m, %bb.l, %bb.j
  %i.de = phi reassoc nsz arcp contract afn float [ %i.cm, %bb.l ], [ %i.dd, %bb.m ], [ %i.cc, %bb.j ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.dg = load float, ptr %i.df, align 16, !tbaa !12
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.ao
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.dj = load float, ptr %i.di, align 4, !tbaa !12
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.bw
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !12
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.de
  %i.dp = fadd reassoc nsz arcp contract afn float %i.dl, %i.do
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

bb.n:                                             ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !12
  %i.ds = load float, ptr %0, align 4, !tbaa !12
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.dv = load float, ptr %i.du, align 4, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !12
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.dv
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dt
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !12
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.eb
  %i.ef = fadd reassoc nsz arcp contract afn float %i.dz, %i.ee
  br label %dt_ioppr_get_rgb_matrix_luminance.exit

dt_ioppr_get_rgb_matrix_luminance.exit:           ; preds = %dt_ioppr_apply_trc.exit.i, %bb.n
  %.0.i = phi nsz float [ %i.dp, %dt_ioppr_apply_trc.exit.i ], [ %i.ef, %bb.n ]
  ret float %.0.i
}

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dtgtk_cairo_paint_warning(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"dt_iop_agx_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !8, i64 76, !8, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !8, i64 140}
!14 = !{!13, !11, i64 72}
!15 = !{!13, !11, i64 60}
!16 = !{!13, !8, i64 76}
!17 = !{!13, !11, i64 108}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"p1 _ZTS8_GModule", !18, i64 0}
!22 = !{!"p1 int", !18, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !23, i64 8, !8, i64 16, !8, i64 20}
!25 = !{!"p1 _ZTS12dt_develop_t", !18, i64 0}
!26 = !{!"dt_pthread_mutex_t", !7, i64 0}
!27 = !{!"p1 _ZTS25dt_develop_blend_params_t", !18, i64 0}
!28 = !{!"p1 _ZTS11_GHashTable", !18, i64 0}
!29 = !{!"", !28, i64 0, !28, i64 8}
!30 = !{!"p1 _ZTS15dt_iop_module_t", !18, i64 0}
!31 = !{!"", !30, i64 0, !8, i64 8}
!32 = !{!"", !29, i64 0, !31, i64 16}
!33 = !{!"p1 _ZTS10_GtkWidget", !18, i64 0}
!34 = !{!"p1 _ZTS7_GSList", !18, i64 0}
!35 = !{!"p1 _ZTS18dt_iop_module_so_t", !18, i64 0}
!36 = !{!"dt_iop_module_t", !8, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !21, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !22, i64 608, !24, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !25, i64 664, !8, i64 672, !8, i64 676, !18, i64 680, !18, i64 688, !8, i64 696, !18, i64 704, !26, i64 712, !18, i64 752, !18, i64 760, !27, i64 768, !27, i64 776, !18, i64 784, !32, i64 792, !33, i64 824, !33, i64 832, !33, i64 840, !33, i64 848, !33, i64 856, !33, i64 864, !33, i64 872, !8, i64 880, !33, i64 888, !33, i64 896, !33, i64 904, !34, i64 912, !34, i64 920, !33, i64 928, !33, i64 936, !8, i64 944, !35, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !33, i64 1096, !18, i64 1104, !8, i64 1112}
!37 = !{!"p1 omnipotent char", !18, i64 0}
!38 = !{!"p1 _ZTS11dt_action_t", !18, i64 0}
!39 = !{!"dt_action_t", !8, i64 0, !37, i64 8, !37, i64 16, !18, i64 24, !38, i64 32, !38, i64 40}
!40 = !{!"dt_iop_module_so_t", !39, i64 0, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !21, i64 488, !7, i64 496, !18, i64 520, !8, i64 528, !18, i64 536, !8, i64 544, !8, i64 548}
!41 = !{!40, !18, i64 48}
!42 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !18, i64 0}
!43 = !{!"p1 _ZTS18dt_histogram_roi_t", !18, i64 0}
!44 = !{!"dt_dev_histogram_collection_params_t", !43, i64 0, !8, i64 8}
!45 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!46 = !{!"short", !7, i64 0}
!47 = !{!"", !46, i64 0, !46, i64 2}
!48 = !{!"", !8, i64 0, !7, i64 16}
!49 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !47, i64 48, !48, i64 64, !7, i64 96, !8, i64 112}
!50 = !{!"p1 float", !18, i64 0}
!51 = !{!"dt_dev_distorted_mask_cache_t", !50, i64 0, !45, i64 8, !23, i64 32, !23, i64 40}
!52 = !{!"dt_dev_pixelpipe_iop_t", !30, i64 0, !42, i64 8, !18, i64 16, !18, i64 24, !8, i64 32, !8, i64 36, !44, i64 40, !22, i64 56, !24, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !23, i64 120, !8, i64 128, !8, i64 132, !45, i64 136, !45, i64 156, !45, i64 176, !45, i64 196, !8, i64 216, !8, i64 220, !49, i64 224, !49, i64 352, !7, i64 480, !8, i64 516, !28, i64 520, !51, i64 528, !51, i64 576}
!53 = !{!52, !18, i64 16}
!54 = !{!36, !25, i64 664}
!55 = !{!"tone_mapping_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !8, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !8, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !8, i64 116, !8, i64 120}
!56 = !{!"dt_codepath_t", !8, i64 0}
!57 = !{!"p1 _ZTS6_GList", !18, i64 0}
!58 = !{!"p1 _ZTS11_JsonParser", !18, i64 0}
!59 = !{!"p1 _ZTS9dt_conf_t", !18, i64 0}
!60 = !{!"p1 _ZTS8dt_lib_t", !18, i64 0}
!61 = !{!"p1 _ZTS17dt_view_manager_t", !18, i64 0}
!62 = !{!"p1 _ZTS12dt_control_t", !18, i64 0}
!63 = !{!"p1 _ZTS19dt_control_signal_t", !18, i64 0}
!64 = !{!"p1 _ZTS12dt_gui_gtk_t", !18, i64 0}
!65 = !{!"p1 _ZTS17dt_mipmap_cache_t", !18, i64 0}
!66 = !{!"p1 _ZTS16dt_image_cache_t", !18, i64 0}
!67 = !{!"p1 _ZTS12dt_bauhaus_t", !18, i64 0}
!68 = !{!"p1 _ZTS13dt_database_t", !18, i64 0}
!69 = !{!"p1 _ZTS14dt_pwstorage_t", !18, i64 0}
!70 = !{!"p1 _ZTS11dt_camctl_t", !18, i64 0}
!71 = !{!"p1 _ZTS15dt_collection_t", !18, i64 0}
!72 = !{!"p1 _ZTS14dt_selection_t", !18, i64 0}
!73 = !{!"p1 _ZTS11dt_points_t", !18, i64 0}
!74 = !{!"p1 _ZTS12dt_imageio_t", !18, i64 0}
!75 = !{!"p1 _ZTS11dt_opencl_t", !18, i64 0}
!76 = !{!"p1 _ZTS9dt_dbus_t", !18, i64 0}
!77 = !{!"p1 _ZTS9dt_undo_t", !18, i64 0}
!78 = !{!"p1 _ZTS16dt_colorspaces_t", !18, i64 0}
!79 = !{!"p1 _ZTS9dt_l10n_t", !18, i64 0}
!80 = !{!"p1 _ZTS9lua_State", !18, i64 0}
!81 = !{!"_Bool", !7, i64 0}
!82 = !{!"p1 _ZTS10_GMainLoop", !18, i64 0}
!83 = !{!"p1 _ZTS13_GMainContext", !18, i64 0}
!84 = !{!"p1 _ZTS12_GThreadPool", !18, i64 0}
!85 = !{!"p1 _ZTS12_GAsyncQueue", !18, i64 0}
!86 = !{!"", !80, i64 0, !26, i64 8, !7, i64 48, !81, i64 96, !81, i64 97, !82, i64 104, !83, i64 112, !84, i64 120, !85, i64 128, !85, i64 136, !85, i64 144}
!87 = !{!"double", !7, i64 0}
!88 = !{!"p1 _ZTS10_GTimeZone", !18, i64 0}
!89 = !{!"p1 _ZTS10_GDateTime", !18, i64 0}
!90 = !{!"dt_sys_resources_t", !23, i64 0, !23, i64 8, !22, i64 16, !22, i64 24, !8, i64 32}
!91 = !{!"dt_backthumb_t", !87, i64 0, !87, i64 8, !8, i64 16, !8, i64 20}
!92 = !{!"dt_gimp_t", !8, i64 0, !37, i64 8, !37, i64 16, !8, i64 24, !8, i64 28}
!93 = !{!"dt_splash_t", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !8, i64 32}
!94 = !{!"darktable_t", !56, i64 0, !8, i64 4, !8, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !58, i64 48, !59, i64 56, !25, i64 64, !60, i64 72, !61, i64 80, !62, i64 88, !63, i64 96, !64, i64 104, !65, i64 112, !66, i64 120, !67, i64 128, !68, i64 136, !69, i64 144, !70, i64 152, !71, i64 160, !72, i64 168, !73, i64 176, !74, i64 184, !75, i64 192, !76, i64 200, !77, i64 208, !78, i64 216, !79, i64 224, !7, i64 232, !26, i64 2792, !26, i64 2832, !26, i64 2872, !26, i64 2912, !26, i64 2952, !26, i64 2992, !37, i64 3032, !37, i64 3040, !37, i64 3048, !37, i64 3056, !37, i64 3064, !37, i64 3072, !37, i64 3080, !37, i64 3088, !37, i64 3096, !37, i64 3104, !37, i64 3112, !37, i64 3120, !37, i64 3128, !86, i64 3136, !57, i64 3288, !87, i64 3296, !57, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !88, i64 3520, !89, i64 3528, !90, i64 3536, !91, i64 3576, !92, i64 3600, !93, i64 3632, !8, i64 3672}
!95 = !{!55, !11, i64 8}
!96 = !{!55, !11, i64 0}
!97 = !{!55, !11, i64 32}
!98 = !{!55, !11, i64 24}
!99 = !{!55, !8, i64 44}
!100 = !{!55, !11, i64 48}
!101 = !{!55, !11, i64 52}
!102 = !{!55, !11, i64 40}
!103 = !{!55, !11, i64 56}
!104 = !{!55, !11, i64 28}
!105 = !{!55, !11, i64 36}
!106 = !{!55, !11, i64 72}
!107 = !{!55, !11, i64 60}
!108 = !{!55, !8, i64 84}
!109 = !{!55, !11, i64 64}
end_hunk_3
