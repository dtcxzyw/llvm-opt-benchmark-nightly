Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_toneequal?download=true
inline.NumInlined: 273
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 53
begin_hunk_0_@auto_adjust_exposure_boost:bb.a
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = load float, ptr %i.o, align 4, !tbaa !22
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.n, float noundef %i.p) #28
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = atomicrmw sub ptr %i.r, i32 1 seq_cst, align 4 ; 0 uses
  %i.t = load ptr, ptr %i.c, align 16, !tbaa !60  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.v = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.u) #28 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2480
  store i32 1, ptr %i.w, align 16, !tbaa !190
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 3020
  store i32 0, ptr %i.x, align 4, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 3024
  store i32 0, ptr %i.y, align 16, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #28 ; 0 uses
  tail call void @dt_iop_refresh_all(ptr noundef nonnull %1) #28
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !202
  tail call void @dt_dev_add_history_item(ptr noundef %i.ab, ptr noundef nonnull %1, i32 noundef 1) #28
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 3020
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !99
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2760
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !198
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 608
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !199
  %.not40 = icmp eq i32 %i.aj, 0
  br i1 %.not40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 3024 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 16, !tbaa !100
  %.not41 = icmp eq i32 %i.al, 0
  br i1 %.not41, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.am = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.145, i32 noundef 5) #28
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.am) #28
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 4 uses
  %i.ao = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.an) #28 ; 0 uses
  store i32 0, ptr %i.ak, align 16, !tbaa !100
  %i.ap = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #28 ; 0 uses
  tail call fastcc void @update_histogram(ptr noundef nonnull %1)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 2564
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !244
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 2568
  %i.au = load float, ptr %i.at, align 8, !tbaa !243
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ay = fmul reassoc nsz arcp contract afn float %i.as, 4.375000e-01
  %i.az = fmul reassoc nsz arcp contract afn float %i.av, 5.468750e-02
  %i.ba = fadd reassoc nsz arcp contract afn float %i.ay, f0xBCFC0000
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.az
  %i.bc = load <2 x float>, ptr %i.ax, align 4, !tbaa !13
  %i.bd = fneg reassoc nsz arcp contract afn <2 x float> %i.bc ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.be)
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bb, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, f0x3CFC0000
  %i.bi = extractelement <2 x float> %i.bd, i64 1
  %i.bj = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bi)
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bh, %i.bj
  %i.bl = fdiv reassoc nsz arcp contract afn float f0x3CFC0000, %i.bk
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.bl)
  store float %i.bm, ptr %i.aw, align 4, !tbaa !22
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = atomicrmw add ptr %i.bo, i32 1 seq_cst, align 4 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 2736
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !194
  %i.bs = load float, ptr %i.aw, align 4, !tbaa !22
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.br, float noundef %i.bs) #28
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bv = atomicrmw sub ptr %i.bu, i32 1 seq_cst, align 4 ; 0 uses
  %i.bw = load ptr, ptr %i.c, align 16, !tbaa !60 ; 4 uses
  %i.bx = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.an) #28 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 2480
  store i32 1, ptr %i.by, align 16, !tbaa !190
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 3020
  store i32 0, ptr %i.bz, align 4, !tbaa !99
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 3024
  store i32 0, ptr %i.ca, align 16, !tbaa !100
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 2504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  %i.cc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #28 ; 0 uses
  tail call void @dt_iop_refresh_all(ptr noundef nonnull %1) #28
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !202
  tail call void @dt_dev_add_history_item(ptr noundef %i.cd, ptr noundef nonnull %1, i32 noundef 1) #28
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %bb.g, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @auto_adjust_contrast_boost(ptr nofree readnone captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !60  ; 5 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load atomic i32, ptr %i.f seq_cst, align 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_request_focus(ptr noundef nonnull %1) #28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.i = load i32, ptr %i.h, align 16, !tbaa !215
  %.not60 = icmp eq i32 %i.i, 0
  br i1 %.not60, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = atomicrmw add ptr %i.k, i32 1 seq_cst, align 4 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2720
  %i.n = load ptr, ptr %i.m, align 32, !tbaa !188
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.p = load float, ptr %i.o, align 4, !tbaa !20
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.n, float noundef %i.p) #28
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = atomicrmw sub ptr %i.r, i32 1 seq_cst, align 4 ; 0 uses
  %i.t = load ptr, ptr %i.c, align 16, !tbaa !60  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.v = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.u) #28 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2480
  store i32 1, ptr %i.w, align 16, !tbaa !190
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 3020
  store i32 0, ptr %i.x, align 4, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 3024
  store i32 0, ptr %i.y, align 16, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #28 ; 0 uses
  tail call void @dt_iop_refresh_all(ptr noundef nonnull %1) #28
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !202
  tail call void @dt_dev_add_history_item(ptr noundef %i.ab, ptr noundef nonnull %1, i32 noundef 1) #28
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 3020
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !99
  %.not61 = icmp eq i32 %i.ad, 0
  br i1 %.not61, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2760
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !198
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 608
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !199
  %.not62 = icmp eq i32 %i.aj, 0
  br i1 %.not62, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 3024 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 16, !tbaa !100
  %.not63 = icmp eq i32 %i.al, 0
  br i1 %.not63, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.am = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.145, i32 noundef 5) #28
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.am) #28
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 4 uses
  %i.ao = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.an) #28 ; 0 uses
  store i32 0, ptr %i.ak, align 16, !tbaa !100
  %i.ap = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #28 ; 0 uses
  tail call fastcc void @update_histogram(ptr noundef nonnull %1)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 2564
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 3 uses
  %i.at = load <2 x float>, ptr %i.aq, align 4, !tbaa !13
  %i.au = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp2.v2f32(<2 x float> %i.at)
  %i.av = load float, ptr %i.ar, align 4, !tbaa !22
  %2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.av)
  %i.aw = load float, ptr %i.as, align 4, !tbaa !20 ; 2 uses
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.aw) ; 2 uses
  %i.ay = fadd reassoc nsz arcp contract afn <2 x float> %i.au, splat (float -6.250000e-02)
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv reassoc nsz arcp contract afn <2 x float> %i.ay, %i.ba
  %i.bc = fadd reassoc nsz arcp contract afn <2 x float> %i.bb, splat (float 6.250000e-02)
  %i.bd = insertelement <2 x float> poison, float %2, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %3 = fdiv reassoc nsz arcp contract afn <2 x float> %i.bc, %i.be ; 2 uses
  %i.bf = extractelement <2 x float> %3, i64 0    ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, 4.375000e-01
  %i.bh = extractelement <2 x float> %3, i64 1    ; 2 uses
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, 5.468750e-02
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bg, %i.bi
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bh, %i.bf
  %i.bl = fmul reassoc nsz arcp contract afn float %i.ax, 6.250000e-02
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %i.bk
  %i.bn = fdiv reassoc nsz arcp contract afn float %i.bj, %i.bm
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.bn) ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !21 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 4
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.bo, 0.000000e+00 ; 2 uses
  %or.cond = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !23 ; 4 uses
  %i.bv = fpext reassoc nsz arcp contract afn float %i.bu to double
  %i.bw = fmul reassoc nsz arcp contract afn double %i.bv, 1.823000e-02
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bo, f0xBE793DD8
  %i.by = fpext reassoc nsz arcp contract afn float %i.bx to double
  %i.bz = fadd reassoc nsz arcp contract afn double %i.by, f0xBF9C432CA0000000
  %i.ca = fadd reassoc nsz arcp contract afn double %i.bz, %i.bw
  %i.cb = fptrunc reassoc nsz arcp contract afn double %i.ca to float ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.bu, 5.000000e+00
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bo, %i.cb
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %i.bu, 1.000000e+01
  br i1 %i.ce, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cf = fmul reassoc nnan nsz arcp contract afn float %i.bu, 2.000000e-01
  %i.cg = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.cf
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.cb
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %i.bo
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.cj = icmp eq i32 %i.bq, 2
  %or.cond3 = select i1 %i.cj, i1 %i.bs, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ck = fmul reassoc nnan nsz arcp contract afn float %i.bo, 1.122500e+00
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, 2.350000e-02
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.l, %bb.k, %bb.m, %bb.n
  %.1 = phi nsz float [ %i.bo, %bb.m ], [ %i.cl, %bb.n ], [ %i.cd, %bb.j ], [ %i.ci, %bb.l ], [ %i.bo, %bb.k ]
  %i.cm = fadd reassoc nsz arcp contract afn float %.1, %i.aw
  store float %i.cm, ptr %i.as, align 4, !tbaa !20
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  %i.cp = atomicrmw add ptr %i.co, i32 1 seq_cst, align 4 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 2720
  %i.cr = load ptr, ptr %i.cq, align 32, !tbaa !188
  %i.cs = load float, ptr %i.as, align 4, !tbaa !20
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cr, float noundef %i.cs) #28
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  %i.cv = atomicrmw sub ptr %i.cu, i32 1 seq_cst, align 4 ; 0 uses
  %i.cw = load ptr, ptr %i.c, align 16, !tbaa !60 ; 4 uses
  %i.cx = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.an) #28 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2480
  store i32 1, ptr %i.cy, align 16, !tbaa !190
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 3020
  store i32 0, ptr %i.cz, align 4, !tbaa !99
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 3024
  store i32 0, ptr %i.da, align 16, !tbaa !100
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 2504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  %i.dc = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.an) #28 ; 0 uses
  tail call void @dt_iop_refresh_all(ptr noundef nonnull %1) #28
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !202
  tail call void @dt_dev_add_history_item(ptr noundef %i.dd, ptr noundef nonnull %1, i32 noundef 1) #28
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %1, i32 noundef 1) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.g, %bb.c
  ret void
}

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_bauhaus_slider_set_soft_max(ptr noundef, float noundef) local_unnamed_addr #6

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #6

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #6

declare ptr @gtk_notebook_get_nth_page(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @gtk_notebook_set_current_page(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @notebook_button_press(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_request_focus(ptr noundef %2) #28
  tail call void @dt_iop_color_picker_reset(ptr noundef %2, i32 noundef 1) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare ptr @dt_iop_togglebutton_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @show_luminance_mask_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_request_focus(ptr noundef %2) #28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !216
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.e, i32 noundef 1) #28
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !60  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 500
  %i.i = load i32, ptr %i.h, align 4, !tbaa !446
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.146, i32 noundef 5) #28
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.j) #28
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2752
  %i.l = load ptr, ptr %i.k, align 64, !tbaa !191
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.l, i32 noundef 0) #28
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 2476
  store i32 0, ptr %i.m, align 4, !tbaa !112
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2476 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !112
  %.not13 = icmp eq i32 %i.o, 0
  %i.p = zext i1 %.not13 to i32                   ; 2 uses
  store i32 %i.p, ptr %i.n, align 4, !tbaa !112
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 2752
  %i.r = load ptr, ptr %i.q, align 64, !tbaa !191
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.r, i32 noundef %i.p) #28
  tail call void @dt_iop_refresh_center(ptr noundef nonnull %2) #28
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

declare void @dtgtk_cairo_paint_showmask(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dtgtk_togglebutton_set_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #6

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_develop_preview_pipe_finished_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.e = load i32, ptr %i.d, align 16, !tbaa !215
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_set_distort_signal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 3044 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !238
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %bb.d, label %_set_distort_signal.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !239
end_hunk_0
