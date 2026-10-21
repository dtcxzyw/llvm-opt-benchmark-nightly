Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmicrgb?download=true
inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@color_picker_apply:bb.a
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 472
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !133
  %i.js = tail call ptr %i.jr(ptr noundef nonnull @.str.11) #20, !inline_history !405
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 68
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !109 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !134
  %i.jx = fmul reassoc nsz arcp contract afn float %i.jw, f0x3C23D70A
  %i.jy = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.jx)
  %i.jz = load float, ptr %i.jf, align 4, !tbaa !21 ; 2 uses
  %i.ka = fneg reassoc nsz arcp contract afn float %i.jz
  %i.kb = load float, ptr %i.jg, align 4, !tbaa !20
  %i.kc = fsub reassoc nsz arcp contract afn float %i.kb, %i.jz
  %i.kd = fdiv reassoc nsz arcp contract afn float %i.ka, %i.kc
  %i.ke = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.kd)
  %i.kf = fdiv reassoc nsz arcp contract afn float %i.jy, %i.ke ; 3 uses
  %i.kg = fcmp reassoc nsz arcp contract afn ult float %i.kf, %i.jo
  %.inv.i.i21 = fcmp reassoc nsz arcp contract afn ole float %i.kf, %i.ju
  %..i.i22 = select reassoc nsz arcp contract afn i1 %.inv.i.i21, float %i.kf, float %i.ju
  %i.kh = select reassoc nsz arcp contract afn i1 %i.kg, float %i.jo, float %..i.i22
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hk, i64 48 ; 2 uses
  store float %i.kh, ptr %i.ki, align 4, !tbaa !19
  %i.kj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 104
  %i.kl = atomicrmw add ptr %i.kk, i32 1 seq_cst, align 4 ; 0 uses
  %i.km = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.kn = load float, ptr %i.hk, align 4, !tbaa !128
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.km, float noundef %i.kn) #20
  %i.ko = load ptr, ptr %i.bt, align 16, !tbaa !173
  %i.kp = load float, ptr %i.jf, align 4, !tbaa !21
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ko, float noundef %i.kp) #20
  %i.kq = load ptr, ptr %i.b, align 64, !tbaa !174
  %i.kr = load float, ptr %i.jg, align 4, !tbaa !20
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kq, float noundef %i.kr) #20
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.kt = load ptr, ptr %i.ks, align 16, !tbaa !175
  %i.ku = load float, ptr %i.ki, align 4, !tbaa !19
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kt, float noundef %i.ku) #20
  br label %apply_auto_grey.exit.sink.split

apply_auto_grey.exit.sink.split:                  ; preds = %apply_autotune.exit, %bb.c, %bb.f, %bb.i
  %.sink = phi ptr [ %i.ev, %bb.i ], [ %i.cb, %bb.f ], [ %i.b, %bb.c ], [ %i.b, %apply_autotune.exit ]
  %i.kv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 104
  %i.kx = atomicrmw add ptr %i.kw, i32 -1 seq_cst, align 4 ; 0 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sink, i64 256
  %i.kz = load ptr, ptr %i.ky, align 64, !tbaa !179
  tail call void @gtk_widget_queue_draw(ptr noundef %i.kz) #20
  %i.la = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !408
  tail call void @dt_dev_add_history_item(ptr noundef %i.la, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %apply_auto_grey.exit

apply_auto_grey.exit:                             ; preds = %apply_auto_grey.exit.sink.split, %bb.h, %bb.e, %bb.b, %bb.j
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !45  ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !178
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %1, align 4, !tbaa !128
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, f0x3C23D70A
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load float, ptr %i.g, align 4, !tbaa !134
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, f0x3C23D70A
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load float, ptr %i.j, align 4, !tbaa !19 ; 2 uses
  %i.l = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.k
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.i, float %i.l)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load float, ptr %i.n, align 4, !tbaa !19 ; 2 uses
  %i.p = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.o
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.845000e-01, float %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi float [ %i.k, %bb.b ], [ %i.o, %bb.c ]
  %.071 = phi nsz float [ %i.f, %bb.b ], [ 1.845000e-01, %bb.c ] ; 2 uses
  %.070 = phi nsz float [ %i.m, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !21 ; 3 uses
  %i.w = fsub reassoc nsz arcp contract afn float %i.t, %i.v ; 2 uses
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.v)
  %i.y = fdiv reassoc nsz arcp contract afn float %i.x, %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load float, ptr %i.z, align 4, !tbaa !23 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18 ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 2
  %i.ae = fdiv reassoc nsz arcp contract afn float %.070, %i.y
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.aa, %i.ae
  %or.cond = select i1 %i.ad, i1 %i.af, i1 false
  %i.ag = fmul reassoc nsz arcp contract afn float %.070, 1.000100e+00
  %i.ah = fdiv reassoc nsz arcp contract afn float %i.ag, %i.y
  %.0 = select nsz i1 %or.cond, float %i.ah, float %i.aa
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float %i.w, ptr %i.ai, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.v, ptr %i.aj, align 4, !tbaa !117
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %.071, ptr %i.ak, align 8, !tbaa !116
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store float %i.r, ptr %i.al, align 16, !tbaa !115
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store float %.0, ptr %i.am, align 4, !tbaa !409
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !410
  %i.as = load <2 x i32>, ptr %i.ao, align 4, !tbaa !14
  %i.at = insertelement <4 x i32> poison, i32 %i.ac, i64 2
  %i.au = insertelement <4 x i32> %i.at, i32 %i.ar, i64 3
  %i.av = shufflevector <2 x i32> %i.as, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> %i.au, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.aw, ptr %i.ap, align 4, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !411
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float %i.ay, ptr %i.az, align 64, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !412
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store i32 %i.bb, ptr %i.bc, align 16, !tbaa !114
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.be = tail call fastcc i32 @dt_iop_filmic_rgb_compute_spline(ptr noundef nonnull %1, ptr noundef nonnull %i.bd) ; 0 uses
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !180
  %i.bg = icmp ugt i32 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !181 ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, f0x3C23D70A
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bi, 2.000000e-02
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, 1.000000e+00
  %.sink = select i1 %i.bg, float %i.bj, float %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %.sink, ptr %i.bm, align 4, !tbaa !119
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bp = load <2 x float>, ptr %i.bn, align 16, !tbaa !13 ; 2 uses
  %i.bq = fmul reassoc arcp contract afn <2 x float> %i.bp, <float poison, float f0x3EAAAAAB>
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, <float f0x3EAAAAAB, float poison>
  %i.bs = fsub reassoc nsz arcp contract afn <2 x float> <float poison, float f0x3EAAAAAB>, %i.bq
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, %i.bt
  store <2 x float> %i.bu, ptr %i.bo, align 8, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !413
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.t
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bx)
  %i.by = fmul reassoc nsz arcp contract afn float %exp2, %.071 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.by, ptr %i.bz, align 16, !tbaa !113
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !414
  %i.cc = fdiv reassoc nsz arcp contract afn float 1.200000e+01, %i.cb
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.cc) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.cd, ptr %i.ce, align 4, !tbaa !71
  %i.cf = fdiv reassoc nsz arcp contract afn float %i.cd, %i.by
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float %i.cf, ptr %i.cg, align 4, !tbaa !70
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !415
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, 5.000000e-03
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, 5.000000e-01
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store float %i.ck, ptr %i.cl, align 32, !tbaa !123
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.co = load <2 x float>, ptr %i.cm, align 4, !tbaa !13
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, splat (float 5.000000e-03)
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, splat (float 5.000000e-01)
  store <2 x float> %i.cq, ptr %i.cn, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !182
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !48
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @dt_iop_filmic_rgb_compute_spline(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 12), (16, 28), (32, 44), (48, 60), (72, 76), (80, 136)) %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [25 x double], align 16           ; 18 uses
  %i.b = alloca [5 x double], align 16            ; 8 uses
  %i.c = alloca [16 x double], align 16           ; 14 uses
  %i.d = alloca [4 x double], align 16            ; 7 uses
  %i.e = alloca [16 x double], align 16           ; 13 uses
  %i.f = alloca [4 x double], align 16            ; 7 uses
  %i.g = alloca [25 x double], align 16           ; 17 uses
  %i.h = alloca [5 x double], align 16            ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !178
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load float, ptr %i.k, align 4, !tbaa !134 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load float, ptr %i.m, align 4, !tbaa !183 ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt float %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load float, ptr %i.p, align 4, !tbaa !184 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.l, %i.q
  %. = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi reassoc nsz arcp contract afn float [ %i.n, %bb.b ], [ %., %bb.c ]
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x3C23D70A
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load float, ptr %i.u, align 4, !tbaa !19 ; 2 uses
  %i.w = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.t, float %i.w)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load float, ptr %i.y, align 4, !tbaa !19 ; 2 uses
  %i.aa = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float 1.845000e-01, float %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi float [ %i.v, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %.0 = phi nsz float [ %i.x, %bb.d ], [ %i.ab, %bb.e ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !21 ; 3 uses
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ae, %i.ag ; 7 uses
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ag)
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ah ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !18 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !184 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !134 ; 4 uses
  %i.ar = fcmp reassoc nsz arcp contract afn ogt float %i.ao, %i.aq
  %i.as = fcmp reassoc nsz arcp contract afn olt float %i.ao, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.as, float 0.000000e+00, float %i.ao
  %i.at = select reassoc nsz arcp contract afn i1 %i.ar, float %i.aq, float %spec.select
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, f0x3C23D70A ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = load float, ptr %i.av, align 4, !tbaa !183
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aw, float %i.aq)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, f0x3C23D70A
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ac ; 2 uses
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !183
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bc, float %i.aq)
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, f0x3C23D70A
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float %i.az)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0336 = phi nsz float [ %i.ay, %bb.g ], [ %i.bf, %bb.h ] ; 5 uses
  %.0335 = phi nsz float [ %i.au, %bb.g ], [ %i.ba, %bb.h ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !24 ; 3 uses
  %i.bi = fcmp reassoc nsz arcp contract afn ogt float %i.bh, 5.000000e+01
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bh, -5.000000e+01
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, f0x3C23D70A
  %spec.select358 = select i1 %i.bj, float -5.000000e-01, float %i.bk
  %i.bl = select i1 %i.bi, float 5.000000e-01, float %spec.select358 ; 3 uses
  %i.bm = icmp ult i32 %i.al, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !22 ; 3 uses
  %i.bp = fcmp reassoc nsz arcp contract afn ogt float %i.bo, 1.000000e+02
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bo, 0.000000e+00
  %i.br = fmul reassoc nsz arcp contract afn float %i.bo, f0x3C23D70A
  %spec.select359 = select i1 %i.bq, float 0.000000e+00, float %i.br
  %i.bs = select i1 %i.bp, float 1.000000e+00, float %spec.select359 ; 4 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.ah ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !23 ; 3 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bv, 6.000000e+00
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bv, 1.000010e+00
  %spec.select360 = select reassoc nsz arcp contract afn i1 %i.bx, float 1.000010e+00, float %i.bv
  %i.by = select reassoc nsz arcp contract afn i1 %i.bw, float 6.000000e+00, float %spec.select360 ; 8 uses
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bt, %i.ah ; 2 uses
  %i.ca = fdiv reassoc nsz arcp contract afn float %i.ag, %i.ah
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ca)
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bz, %i.cb
  %i.cd = fsub reassoc nsz arcp contract afn float %i.aj, %i.cc ; 2 uses
  %i.ce = fdiv reassoc nsz arcp contract afn float %i.ae, %i.ah
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.bz, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.aj ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.by, %i.aj
  %i.cj = fsub reassoc nsz arcp contract afn float %.0, %i.ci
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cd, %i.by
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ch, %i.by
  %i.cm = fmul reassoc nsz arcp contract afn float %i.by, %i.by
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, 1.000000e+00
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cn) ; 2 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.bl, -2.000000e+00
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.bt
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.cq, %i.ah ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.by
  %i.ct = fdiv reassoc nsz arcp contract afn float %i.cs, %i.co
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cj ; 2 uses
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %i.ck
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cu, %i.cl
  %i.cx = fdiv reassoc nsz arcp contract afn float %i.cr, %i.co ; 2 uses
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cd ; 2 uses
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cx, %i.ch
  %.pre = fmul reassoc nsz arcp contract afn float %i.cy, %i.by
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load float, ptr %i.da, align 4, !tbaa !23
  %i.dc = fmul reassoc nsz arcp contract afn float %i.ah, 1.250000e-01
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.db
  %i.de = fadd reassoc nsz arcp contract afn float %i.ac, -1.000000e+00
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.0, float %i.de)
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.ac
  %i.dh = fdiv reassoc nsz arcp contract afn float %i.dd, %i.dg ; 4 uses
  %i.di = fcmp reassoc nsz arcp contract afn ogt float %i.dh, 1.000000e+02
  br i1 %i.di, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = fsub reassoc nsz arcp contract afn float %.0336, %.0
  %i.dk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aj
  %i.dl = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dk
  %i.dm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dl, float 1.000000e+00)
  %i.dn = fsub reassoc nsz arcp contract afn float %.0, %.0335
  %i.do = fdiv reassoc nsz arcp contract afn float %i.dn, %i.aj
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dm, float %i.do)
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, f0x3C23D70A ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dh, %i.dq
  %i.ds = select reassoc nsz arcp contract afn i1 %i.dr, float %i.dq, float %i.dh
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.dt = phi reassoc nsz arcp contract afn float [ %i.ds, %bb.l ], [ 1.000000e+02, %bb.k ] ; 7 uses
  %i.du = fcmp reassoc nsz arcp contract afn une float %i.dt, %i.dh
  %i.dv = zext i1 %i.du to i32
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dt, %i.aj
  %i.dx = fsub reassoc nsz arcp contract afn float %.0, %i.dw ; 4 uses
  %i.dy = fsub reassoc nsz arcp contract afn float %.0336, %.0335
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, f0x3C23D70A ; 2 uses
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, %.0335
  %i.eb = fsub reassoc nsz arcp contract afn float %i.ea, %i.dx
  %i.ec = fdiv reassoc nsz arcp contract afn float %i.eb, %i.dt ; 2 uses
  %i.ed = fadd reassoc nsz arcp contract afn float %i.dz, %i.dx
  %i.ee = fsub reassoc nsz arcp contract afn float %.0336, %i.ed
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.ee, %i.dt ; 3 uses
  %i.eg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bs
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.aj ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.ec, %i.bs
  %i.ej = fadd reassoc nsz arcp contract afn float %i.ei, %i.eh ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ef, %i.bs
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.eh ; 2 uses
  %i.em = fcmp reassoc nsz arcp contract afn ogt float %i.bl, 0.000000e+00
  %i.en = fmul reassoc nsz arcp contract afn float %i.bl, 2.000000e+00
  %i.eo = fsub reassoc nsz arcp contract afn float %i.aj, %i.ej
  %i.ep = fsub reassoc nsz arcp contract afn float %i.el, %i.aj
  %.sink = select i1 %i.em, float %i.ep, float %i.eo
  %i.eq = fmul reassoc nsz arcp contract afn float %i.en, %.sink ; 2 uses
  %i.er = fsub reassoc nsz arcp contract afn float %i.ej, %i.eq
  %i.es = fsub reassoc nsz arcp contract afn float %i.el, %i.eq ; 2 uses
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.er, float %i.ec) ; 2 uses
  %i.eu = fcmp reassoc nsz arcp contract afn olt float %i.es, %i.ef
  %i.ev = select reassoc nsz arcp contract afn i1 %i.eu, float %i.es, float %i.ef ; 2 uses
  %i.ew = fmul reassoc nsz arcp contract afn float %i.et, %i.dt ; 2 uses
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, %i.dx
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ev, %i.dt
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %i.dx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pre-phi = phi float [ %i.ew, %bb.m ], [ %.pre, %bb.j ] ; 2 uses
  %.0341 = phi nsz float [ %i.dt, %bb.m ], [ %i.by, %bb.j ] ; 10 uses
  %.0340 = phi nsz float [ %i.ez, %bb.m ], [ %i.cw, %bb.j ] ; 3 uses
  %.0339 = phi nsz float [ %i.ex, %bb.m ], [ %i.cv, %bb.j ] ; 6 uses
  %.0338 = phi nsz float [ %i.ev, %bb.m ], [ %i.cz, %bb.j ] ; 4 uses
  %.0337 = phi nsz float [ %i.et, %bb.m ], [ %i.cy, %bb.j ] ; 7 uses
  %.0334 = phi i32 [ %i.dv, %bb.m ], [ 0, %bb.j ]
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 108
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 112
  store float %.0337, ptr %i.fb, align 4, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.aj, ptr %i.fc, align 4, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 120
  store float %.0338, ptr %i.fd, align 4, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 124
  store float 1.000000e+00, ptr %i.fe, align 4, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %.0335, ptr %i.ff, align 8, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %.0339, ptr %i.fg, align 4, !tbaa !13
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %.0, ptr %i.fh, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 3 uses
  store float %.0340, ptr %i.fi, align 4, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store float %.0336, ptr %i.fj, align 8, !tbaa !13
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %.0337, ptr %i.fk, align 16, !tbaa !124
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %.0338, ptr %i.fl, align 4, !tbaa !125
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !416
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 %i.fn, ptr %i.fo, align 16, !tbaa !14
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !417
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !14
  %i.fs = fpext reassoc nsz arcp contract afn float %.0337 to double ; 10 uses
  %i.ft = fmul reassoc nsz arcp contract afn double %i.fs, %i.fs ; 6 uses
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, %i.fs ; 4 uses
  %i.fv = fpext reassoc nsz arcp contract afn float %.0338 to double ; 10 uses
  %i.fw = fmul reassoc nsz arcp contract afn double %i.fv, %i.fv ; 6 uses
  %i.fx = fmul reassoc nsz arcp contract afn double %i.fw, %i.fv ; 4 uses
  %i.fy = fmul reassoc nsz arcp contract afn double %i.fx, %i.fv
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store float %.0341, ptr %i.ga, align 8, !tbaa !13
  %i.gb = fsub reassoc nsz arcp contract afn float %.0339, %.pre-phi
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.gb, ptr %i.gc, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 0.000000e+00, ptr %i.ge, align 8, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float 0.000000e+00, ptr %i.gg, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 72
  store float 0.000000e+00, ptr %i.gi, align 8, !tbaa !13
  %i.gj = load i32, ptr %i.fm, align 4, !tbaa !416
  switch i32 %i.gj, label %bb.q [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.gk = fmul reassoc nsz arcp contract afn double %i.fu, %i.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %i.gl, align 16, !tbaa !185
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.gn, align 16, !tbaa !185
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.gk, ptr %i.go, align 16, !tbaa !185
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double %i.fu, ptr %i.gp, align 8, !tbaa !185
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store double %i.ft, ptr %i.gq, align 16, !tbaa !185
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double %i.fs, ptr %i.gr, align 8, !tbaa !185
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double 1.000000e+00, ptr %i.gs, align 16, !tbaa !185
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.gu = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.fu, i64 0
  %i.gv = insertelement <4 x double> %i.gu, double %i.ft, i64 1
  %i.gw = insertelement <4 x double> %i.gv, double %i.fs, i64 2
  %i.gx = fmul reassoc nsz arcp contract afn <4 x double> %i.gw, <double 4.000000e+00, double 3.000000e+00, double 2.000000e+00, double 1.000000e+00>
  store <4 x double> %i.gx, ptr %i.gt, align 8, !tbaa !185
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store double 0.000000e+00, ptr %i.gy, align 8, !tbaa !185
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ha = fmul reassoc nsz arcp contract afn double %i.ft, 1.200000e+01
  store double %i.ha, ptr %i.gz, align 16, !tbaa !185
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.hc = fmul reassoc nsz arcp contract afn double %i.fs, 6.000000e+00
  store double %i.hc, ptr %i.hb, align 8, !tbaa !185
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store double 2.000000e+00, ptr %i.hd, align 16, !tbaa !185
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.hf = fpext reassoc nsz arcp contract afn float %.0335 to double
  store double %i.hf, ptr %i.b, align 16, !tbaa !185
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double 0.000000e+00, ptr %i.hg, align 8, !tbaa !185
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hi = insertelement <2 x float> poison, float %.0339, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %.0341, i64 1
  %i.hk = fpext <2 x float> %i.hj to <2 x double>
  store <2 x double> %i.hk, ptr %i.hh, align 16, !tbaa !185
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.hl, align 16, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.a, ptr noundef %i.b, i32 noundef 5)
  %i.hm = load <4 x double>, ptr %i.b, align 16, !tbaa !185
  %i.hn = fptrunc <4 x double> %i.hm to <4 x float> ; 4 uses
  %i.ho = extractelement <4 x float> %i.hn, i64 0
  store float %i.ho, ptr %i.gh, align 16, !tbaa !13
  %i.hp = extractelement <4 x float> %i.hn, i64 1
  store float %i.hp, ptr %i.gf, align 16, !tbaa !13
  %i.hq = extractelement <4 x float> %i.hn, i64 2
  store float %i.hq, ptr %i.gd, align 16, !tbaa !13
  %i.hr = extractelement <4 x float> %i.hn, i64 3
  store float %i.hr, ptr %i.fz, align 16, !tbaa !13
  %i.hs = load double, ptr %i.hl, align 16, !tbaa !185
  %i.ht = fptrunc reassoc nsz arcp contract afn double %i.hs to float
  store float %i.ht, ptr %1, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.hu, align 8, !tbaa !185
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double %i.fu, ptr %i.hv, align 16, !tbaa !185
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %i.ft, ptr %i.hw, align 8, !tbaa !185
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.fs, ptr %i.hx, align 16, !tbaa !185
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double 1.000000e+00, ptr %i.hy, align 8, !tbaa !185
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ia = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.ib = insertelement <2 x double> %i.ia, double %i.fs, i64 1
  %i.ic = fmul reassoc nsz arcp contract afn <2 x double> %i.ib, <double 3.000000e+00, double 2.000000e+00>
  store <2 x double> %i.ic, ptr %i.hz, align 16, !tbaa !185
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %2, align 16, !tbaa !185
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ie = fmul reassoc nsz arcp contract afn double %i.fs, 6.000000e+00
  store double %i.ie, ptr %i.id, align 16, !tbaa !185
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store double 2.000000e+00, ptr %i.if, align 8, !tbaa !185
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ig, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ih = insertelement <2 x float> poison, float %.0335, i64 0
  %i.ii = insertelement <2 x float> %i.ih, float %.0339, i64 1
  %i.ij = fpext <2 x float> %i.ii to <2 x double>
  store <2 x double> %i.ij, ptr %i.d, align 16, !tbaa !185
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.il = fpext reassoc nsz arcp contract afn float %.0341 to double
  store double %i.il, ptr %i.ik, align 16, !tbaa !185
  %i.im = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double 0.000000e+00, ptr %i.im, align 8, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.c, ptr noundef %i.d, i32 noundef 4)
  store float 0.000000e+00, ptr %i.gh, align 16, !tbaa !13
  %i.in = load <4 x double>, ptr %i.d, align 16, !tbaa !185
  %i.io = fptrunc <4 x double> %i.in to <4 x float>
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <13 x i32> <i32 3, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 0>
  tail call void @llvm.masked.store.v13f32.p0(<13 x float> %i.ip, ptr align 16 %1, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.iq = fsub reassoc nsz arcp contract afn float %.0339, %.0335 ; 3 uses
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, 2.000000e+00
  %i.is = fdiv reassoc nsz arcp contract afn float %.0341, %i.ir
  %i.it = fdiv reassoc nsz arcp contract afn float %.pre-phi, %i.iq
  %i.iu = fadd reassoc nsz arcp contract afn float %i.it, 1.000000e+00 ; 2 uses
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, %i.iu
  %i.iw = fadd reassoc nsz arcp contract afn float %i.iv, -4.000000e+00
  %i.ix = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.iw)
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, -1.000000e+00
  %i.iz = fmul reassoc nsz arcp contract afn float %.0337, 2.000000e+00
  %i.ja = fdiv reassoc nsz arcp contract afn float %i.iy, %i.iz
  %i.jb = fadd reassoc nsz arcp contract afn float %i.ja, %i.is ; 2 uses
  %i.jc = fdiv reassoc nsz arcp contract afn float %i.iq, %.0341 ; 2 uses
  %i.jd = fmul reassoc nsz arcp contract afn float %.0337, %.0337
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %i.jb
  %i.jf = fadd reassoc nsz arcp contract afn float %i.je, %.0337 ; 2 uses
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.jc
  %i.jh = fsub reassoc nsz arcp contract afn float %i.jf, %i.jc
  %i.ji = fdiv reassoc nsz arcp contract afn float %i.jg, %i.jh ; 2 uses
  %i.jj = fmul reassoc nsz arcp contract afn float %i.ji, %.0341
  store float %i.jj, ptr %1, align 16, !tbaa !13
  store float %i.jb, ptr %i.fz, align 16, !tbaa !13
  store float %i.ji, ptr %i.gd, align 16, !tbaa !13
  store float %.0339, ptr %i.gf, align 16, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.jk = load i32, ptr %i.fp, align 4, !tbaa !417
  switch i32 %i.jk, label %bb.u [
    i32 1, label %bb.s
    i32 0, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store <4 x double> splat (double 1.000000e+00), ptr %i.e, align 16, !tbaa !185
  %i.jl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store double %i.fx, ptr %i.jl, align 16, !tbaa !185
  %i.jm = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store double %i.fw, ptr %i.jm, align 8, !tbaa !185
  %i.jn = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store double %i.fv, ptr %i.jn, align 16, !tbaa !185
  %i.jo = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store double 1.000000e+00, ptr %i.jo, align 8, !tbaa !185
  %i.jp = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.jq = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.jr = insertelement <2 x double> %i.jq, double %i.fv, i64 1
  %i.js = fmul reassoc nsz arcp contract afn <2 x double> %i.jr, <double 3.000000e+00, double 2.000000e+00>
  store <2 x double> %i.js, ptr %i.jp, align 16, !tbaa !185
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %3, align 16, !tbaa !185
  %i.jt = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.ju = fmul reassoc nsz arcp contract afn double %i.fv, 6.000000e+00
  store double %i.ju, ptr %i.jt, align 16, !tbaa !185
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store double 2.000000e+00, ptr %i.jv, align 8, !tbaa !185
  %i.jw = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jw, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.jx = load <2 x float>, ptr %i.fi, align 4, !tbaa !13
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jz = fpext <2 x float> %i.jy to <2 x double>
  store <2 x double> %i.jz, ptr %i.f, align 16, !tbaa !185
  %i.ka = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.kb = load float, ptr %i.ga, align 8, !tbaa !13
  %i.kc = fpext reassoc nsz arcp contract afn float %i.kb to double
  store double %i.kc, ptr %i.ka, align 16, !tbaa !185
  %i.kd = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store double 0.000000e+00, ptr %i.kd, align 8, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.e, ptr noundef %i.f, i32 noundef 4)
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float 0.000000e+00, ptr %i.ke, align 4, !tbaa !13
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kg = load <4 x double>, ptr %i.f, align 16, !tbaa !185
  %i.kh = fptrunc <4 x double> %i.kg to <4 x float>
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <13 x i32> <i32 3, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 0>
  tail call void @llvm.masked.store.v13f32.p0(<13 x float> %i.ki, ptr align 4 %i.kf, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store <4 x double> splat (double 1.000000e+00), ptr %i.g, align 16, !tbaa !185
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store <4 x double> <double 1.000000e+00, double 4.000000e+00, double 3.000000e+00, double 2.000000e+00>, ptr %i.kj, align 16, !tbaa !185
  %i.kk = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.kk, align 16, !tbaa !185
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store double %i.fy, ptr %i.kl, align 16, !tbaa !185
  %i.km = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store double %i.fx, ptr %i.km, align 8, !tbaa !185
  %i.kn = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store double %i.fw, ptr %i.kn, align 16, !tbaa !185
  %i.ko = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store double %i.fv, ptr %i.ko, align 8, !tbaa !185
  %i.kp = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store double 1.000000e+00, ptr %i.kp, align 16, !tbaa !185
  %i.kq = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.kr = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.fx, i64 0
  %i.ks = insertelement <4 x double> %i.kr, double %i.fw, i64 1
  %i.kt = insertelement <4 x double> %i.ks, double %i.fv, i64 2
  %i.ku = fmul reassoc nsz arcp contract afn <4 x double> %i.kt, <double 4.000000e+00, double 3.000000e+00, double 2.000000e+00, double 1.000000e+00>
  store <4 x double> %i.ku, ptr %i.kq, align 8, !tbaa !185
  %i.kv = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store double 0.000000e+00, ptr %i.kv, align 8, !tbaa !185
  %i.kw = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.kx = fmul reassoc nsz arcp contract afn double %i.fw, 1.200000e+01
  store double %i.kx, ptr %i.kw, align 16, !tbaa !185
  %i.ky = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.kz = fmul reassoc nsz arcp contract afn double %i.fv, 6.000000e+00
  store double %i.kz, ptr %i.ky, align 8, !tbaa !185
  %i.la = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store double 2.000000e+00, ptr %i.la, align 16, !tbaa !185
  %i.lb = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.lc = load float, ptr %i.fj, align 8, !tbaa !13
  %i.ld = fpext reassoc nsz arcp contract afn float %i.lc to double
  store double %i.ld, ptr %i.h, align 16, !tbaa !185
  %i.le = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store double 0.000000e+00, ptr %i.le, align 8, !tbaa !185
  %i.lf = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.lg = load float, ptr %i.fi, align 4, !tbaa !13
  %i.lh = load float, ptr %i.ga, align 8, !tbaa !13
  %i.li = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.lh, i64 1
  %i.lk = fpext <2 x float> %i.lj to <2 x double>
  store <2 x double> %i.lk, ptr %i.lf, align 16, !tbaa !185
  %i.ll = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store double 0.000000e+00, ptr %i.ll, align 16, !tbaa !185
  call fastcc void @gauss_solve(ptr noundef %i.g, ptr noundef %i.h, i32 noundef 5)
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.lp = load <4 x double>, ptr %i.h, align 16, !tbaa !185
  %i.lq = fptrunc <4 x double> %i.lp to <4 x float> ; 4 uses
  %i.lr = extractelement <4 x float> %i.lq, i64 0
  store float %i.lr, ptr %i.lm, align 4, !tbaa !13
  %i.ls = extractelement <4 x float> %i.lq, i64 1
  store float %i.ls, ptr %i.ln, align 4, !tbaa !13
  %i.lt = extractelement <4 x float> %i.lq, i64 2
  store float %i.lt, ptr %i.lo, align 4, !tbaa !13
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.lv = extractelement <4 x float> %i.lq, i64 3
  store float %i.lv, ptr %i.lu, align 4, !tbaa !13
  %i.lw = load double, ptr %i.ll, align 16, !tbaa !185
  %i.lx = fptrunc reassoc nsz arcp contract afn double %i.lw to float
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.lx, ptr %i.ly, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.lz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.0338 ; 5 uses
  %i.ma = fsub reassoc nsz arcp contract afn float %.0336, %.0340 ; 3 uses
  %i.mb = fmul reassoc nsz arcp contract afn float %i.ma, 2.000000e+00
  %i.mc = fdiv reassoc nsz arcp contract afn float %.0341, %i.mb
  %i.md = fmul reassoc nsz arcp contract afn float %i.lz, %.0341
  %i.me = fdiv reassoc nsz arcp contract afn float %i.md, %i.ma
  %i.mf = fadd reassoc nsz arcp contract afn float %i.me, 1.000000e+00 ; 2 uses
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, %i.mf
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, -4.000000e+00
  %i.mi = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.mh)
  %i.mj = fadd reassoc nsz arcp contract afn float %i.mi, -1.000000e+00
  %i.mk = fmul reassoc nsz arcp contract afn float %i.lz, 2.000000e+00
  %i.ml = fdiv reassoc nsz arcp contract afn float %i.mj, %i.mk
  %i.mm = fadd reassoc nsz arcp contract afn float %i.ml, %i.mc ; 2 uses
  %i.mn = fdiv reassoc nsz arcp contract afn float %i.ma, %.0341 ; 2 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.lz, %i.lz
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mo, %i.mm
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mp, %i.lz ; 2 uses
  %i.mr = fmul reassoc nsz arcp contract afn float %i.mq, %i.mn
  %i.ms = fsub reassoc nsz arcp contract afn float %i.mq, %i.mn
  %i.mt = fdiv reassoc nsz arcp contract afn float %i.mr, %i.ms ; 2 uses
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mt, %.0341
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.mu, ptr %i.mv, align 4, !tbaa !13
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.mm, ptr %i.mw, align 4, !tbaa !13
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.mt, ptr %i.mx, align 4, !tbaa !13
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %.0340, ptr %i.my, align 4, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  ret i32 %.0334
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #9

; Function Attrs: nounwind uwtable
define void @gui_focus(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !101 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 2 uses
  %i.d = load i32, ptr %i.c, align 16, !tbaa !108
  store i32 0, ptr %i.c, align 16, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load ptr, ptr %i.e, align 64, !tbaa !186
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.f, i32 noundef 0) #20
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84
  tail call void @dt_dev_reprocess_center(ptr noundef %i.h) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_dev_reprocess_center(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 320) #20 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %dt_calloc_aligned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(320) %i.a, i8 0, i64 320, i1 false)
  br label %dt_calloc_aligned.exit

dt_calloc_aligned.exit:                           ; preds = %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 64) ]
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_0
