Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-gpu-paint?download=true
inline.NumInlined: 457
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL18hb_gpu_paint_colorP16hb_paint_funcs_tPvijS1_:bb.a
  %i.bn = insertelement <2 x i32> poison, i32 %i.bk, i64 0
  %i.bo = insertelement <2 x i32> %i.bn, i32 %i.bm, i64 1
  %i.bp = add nuw nsw <2 x i32> %i.bo, splat (i32 127)
  %i.bq = udiv <2 x i32> %i.bp, splat (i32 255)
  %i.br = trunc nuw nsw <2 x i32> %i.bq to <2 x i16>
  store <2 x i16> %i.br, ptr %i.bg, align 2, !tbaa !80
  %i.bs = lshr i32 %3, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.bu = and i32 %3, 255
  %i.bv = mul nuw nsw i32 %i.bs, 32767
  %i.bw = mul nuw nsw i32 %i.bu, 32767
  %i.bx = insertelement <2 x i32> poison, i32 %i.bv, i64 0
  %i.by = insertelement <2 x i32> %i.bx, i32 %i.bw, i64 1
  %i.bz = add nuw nsw <2 x i32> %i.by, splat (i32 127)
  %i.ca = udiv <2 x i32> %i.bz, splat (i32 255)
  %i.cb = trunc nuw nsw <2 x i32> %i.ca to <2 x i16>
  store <2 x i16> %i.cb, ptr %i.bt, align 2, !tbaa !80
  %i.cc = load i32, ptr %i.h, align 8, !tbaa !72
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.h, align 8, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZL23hb_gpu_paint_emit_solidP14hb_gpu_paint_tij.exit

_ZL23hb_gpu_paint_emit_solidP14hb_gpu_paint_tij.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.k
  ret void
}

declare void @hb_paint_funcs_set_linear_gradient_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28hb_gpu_paint_linear_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %10 = alloca %struct.hb_vector_t.2, align 8     ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = alloca float, align 4                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 357 ; 6 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !69, !range !70, !noundef !71
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZL24hb_gpu_paint_emit_linearP14hb_gpu_paint_tP15hb_color_line_tffffff.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.m = load i32, ptr %i.l, align 8, !tbaa !91
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZL24hb_gpu_paint_emit_linearP14hb_gpu_paint_tP15hb_color_line_tffffff.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !72
  %i.q = icmp ugt i32 %i.p, 32766
  br i1 %i.q, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.i, align 1, !tbaa !69
  br label %_ZL24hb_gpu_paint_emit_linearP14hb_gpu_paint_tP15hb_color_line_tffffff.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.r = tail call i32 @hb_color_line_get_color_stops(ptr noundef %2, i32 noundef 0, ptr noundef null, ptr noundef null) #13 ; 6 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !37
  %or.cond.i.i = icmp slt i32 %i.r, 1
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.f, !prof !113

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.t = tail call noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %i.r, i1 noundef zeroext false)
  br i1 %i.t, label %bb.g, label %.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 388 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !44   ; 3 uses
  %i.w = icmp ugt i32 %i.r, %i.v
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.x = sub nuw nsw i32 %i.r, %i.v
  %i.y = mul i32 %i.x, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45
  %i.ab = zext nneg i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = zext i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 0, i64 %i.ad, i1 false)
  br label %bb.k

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.af = tail call noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.af, label %bb.j, label %_ZN14hb_gpu_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread.i

bb.j:                                             ; preds = %.thread.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 388
  store i32 0, ptr %i.ag, align 4, !tbaa !44
  br label %_ZN14hb_gpu_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread.i

_ZN14hb_gpu_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread.i: ; preds = %bb.j, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZL24hb_gpu_paint_emit_linearP14hb_gpu_paint_tP15hb_color_line_tffffff.exit

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  store i32 %i.r, ptr %i.u, align 4, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.aj = call i32 @hb_color_line_get_color_stops(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef %i.ai) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !114 ; 2 uses
  %i.al = load i32, ptr %i.u, align 4, !tbaa !115 ; 3 uses
  %i.am = call i32 @hb_color_line_get_extend(ptr noundef %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.an = call fastcc noundef zeroext i1 @_ZL23emit_all_clip_sub_blobsP14hb_gpu_paint_tPi(ptr noundef nonnull %1, ptr noundef %i.b)
  br i1 %i.an, label %.preheader.i.i, label %bb.v

.preheader.i.i:                                   ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ao = call ptr @hb_realloc(ptr noundef null, i64 noundef 16) #13 ; 4 uses
  %.not22.i.i = icmp eq ptr %i.ao, null
  br i1 %.not22.i.i, label %.thread.i, label %_ZN11hb_vector_tIsLb0EEixEi.exit83.i, !prof !78

.thread.i:                                        ; preds = %.preheader.i.i
  store i8 1, ptr %i.i, align 1, !tbaa !69
  br label %_ZN11hb_vector_tIsLb0EED2Ev.exit.i

_ZN11hb_vector_tIsLb0EEixEi.exit83.i:             ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !49
  store i32 8, ptr %10, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.aq, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @hb_paint_reduce_linear_anchors(float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @hb_paint_normalize_color_line(ptr noundef %i.ak, i32 noundef %i.al, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #13
  %i.ar = load float, ptr %i.e, align 4, !tbaa !93
  %i.as = load float, ptr %i.c, align 4, !tbaa !93
  %i.at = load float, ptr %i.f, align 4, !tbaa !93
  %i.au = load float, ptr %i.d, align 4, !tbaa !93
  %i.av = load float, ptr %i.g, align 4, !tbaa !93
  %i.aw = load float, ptr %i.h, align 4, !tbaa !93
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load <2 x float>, ptr %i.ay, align 8, !tbaa !93
  %i.bb = load <2 x float>, ptr %i.ax, align 8, !tbaa !93 ; 4 uses
  %i.bc = load <2 x float>, ptr %i.az, align 8, !tbaa !93 ; 5 uses
  %i.bd = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.at, i64 1
  %i.bf = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.au, i64 1 ; 3 uses
  %i.bh = fsub <2 x float> %i.be, %i.bg           ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bh, <2 x float> %i.bg) ; 3 uses
  %i.bl = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bh, <2 x float> %i.bg)
  %i.bo = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bo, <2 x float> %i.ba)
  %i.bq = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bq, <2 x float> %i.bp)
  %i.bs = fsub <2 x float> %i.bn, %i.bk
  %i.bt = extractelement <2 x float> %i.bc, i64 1
  %i.bu = extractelement <2 x float> %i.bb, i64 0
  %i.bv = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 0, i32 3>
  %i.bw = fneg <2 x float> %i.bv                  ; 2 uses
  %shift = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.bc, %shift
  %i.bx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.by = call float @llvm.fmuladd.f32(float %i.bu, float %i.bt, float %i.bx) ; 2 uses
  %i.bz = call float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp ogt float %i.bz, f0x2B8CBCCC
  %i.cb = fdiv float 1.000000e+00, %i.by
  %i.cc = select i1 %i.ca, float %i.cb, float 0.000000e+00
  %i.cd = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <4 x i32> <i32 1, i32 poison, i32 poison, i32 2>
  %i.cg = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cf, <4 x float> %i.cg, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ci = fmul <4 x float> %i.ce, %i.ch
  %i.cj = shufflevector <2 x float> %i.bs, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cl = shufflevector <8 x float> %i.cj, <8 x float> %i.ck, <8 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.cm = shufflevector <2 x float> %i.br, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <8 x float> %i.cm, <8 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.co = fmul <8 x float> %i.cn, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.024000e+03, float 1.024000e+03, float 1.024000e+03, float 1.024000e+03> ; 2 uses
  %i.cp = fcmp ugt <8 x float> %i.co, splat (float -3.276800e+04)
  %11 = shufflevector <8 x float> %i.cn, <8 x float> %i.co, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cq = fcmp oge <8 x float> %11, splat (float 3.276700e+04)
  %i.cr = select <8 x i1> %i.cq, <8 x float> splat (float 3.276700e+04), <8 x float> %11
  %i.cs = fptosi <8 x float> %i.cr to <8 x i16>
  %i.ct = select <8 x i1> %i.cp, <8 x i16> %i.cs, <8 x i16> splat (i16 -32768)
  store <8 x i16> %i.ct, ptr %i.ao, align 2, !tbaa !80
  %i.cu = call fastcc noundef zeroext i1 @_ZL18append_color_stopsR11hb_vector_tIsLb0EEPK15hb_color_stop_tj(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.ak, i32 noundef %i.al)
  br i1 %i.cu, label %bb.m, label %bb.l, !prof !55

bb.l:                                             ; preds = %_ZN11hb_vector_tIsLb0EEixEi.exit83.i
  store i8 1, ptr %i.i, align 1, !tbaa !69
  br label %bb.t

bb.m:                                             ; preds = %_ZN11hb_vector_tIsLb0EEixEi.exit83.i
  %i.cv = load i32, ptr %i.aq, align 4, !tbaa !48
  %i.cw = shl i32 %i.cv, 1
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.cy = call ptr @hb_blob_create(ptr noundef %i.cx, i32 noundef %i.cw, i32 noundef 0, ptr noundef null, ptr noundef null) #13 ; 3 uses
  %.not.i = icmp eq ptr %i.cy, null
  br i1 %.not.i, label %.critedge.i, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40 ; 3 uses
  %i.dc = load i32, ptr %i.cz, align 8, !tbaa !46
  %.not.i.i.i = icmp slt i32 %i.db, %i.dc
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = add i32 %i.db, 1
  %i.de = call noundef zeroext i1 @_ZN11hb_vector_tIP9hb_blob_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i32 noundef %i.dd, i1 noundef zeroext false)
  br i1 %i.de, label %..critedge_crit_edge.i.i.i, label %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.thread.i, !prof !55

_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.thread.i: ; preds = %bb.o
  %i.df = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.df, ptr @_hb_CrapPool, align 16
  br label %.critedge.i

..critedge_crit_edge.i.i.i:                       ; preds = %bb.o
  %.pre.i.i.i = load i32, ptr %i.da, align 4, !tbaa !40
  br label %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i

_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i: ; preds = %..critedge_crit_edge.i.i.i, %bb.n
  %i.dg = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.db, %bb.n ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.dj = add i32 %i.dg, 1
  store i32 %i.dj, ptr %i.da, align 4, !tbaa !40
  %i.dk = zext i32 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dk ; 2 uses
  store ptr %i.cy, ptr %i.dl, align 8, !tbaa !53
  %.not103.i = icmp eq ptr %i.dl, @_hb_CrapPool
  %i.dm = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.dm, ptr @_hb_CrapPool, align 16
  br i1 %.not103.i, label %.critedge.i, label %bb.p, !prof !98

.critedge.i:                                      ; preds = %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i, %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.thread.i, %bb.m
  call void @hb_blob_destroy(ptr noundef %i.cy) #13
  store i8 1, ptr %i.i, align 1, !tbaa !69
  br label %bb.t

bb.p:                                             ; preds = %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !73 ; 2 uses
  %i.dp = add i32 %i.do, 12                       ; 5 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %_ZL23emit_gradient_op_headerP14hb_gpu_paint_tjPKi.exit.thread.i, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ds = call noundef zeroext i1 @_ZN11hb_vector_tIsLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i32 noundef %i.dp, i1 noundef zeroext false)
  br i1 %i.ds, label %bb.r, label %_ZL23emit_gradient_op_headerP14hb_gpu_paint_tjPKi.exit.thread.i, !prof !112

bb.r:                                             ; preds = %bb.q
  %i.dt = load i32, ptr %i.dn, align 4, !tbaa !48 ; 3 uses
  %i.du = icmp ugt i32 %i.dp, %i.dt
  br i1 %i.du, label %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i, label %bb.s

_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i: ; preds = %bb.r
  %i.dv = sub nuw nsw i32 %i.dp, %i.dt
  %i.dw = shl nuw i32 %i.dv, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !49
  %i.dz = zext nneg i32 %i.dt to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = zext i32 %i.dw to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ea, i8 0, i64 %i.eb, i1 false)
  br label %bb.s

_ZL23emit_gradient_op_headerP14hb_gpu_paint_tjPKi.exit.thread.i: ; preds = %bb.q, %bb.p
  store i8 1, ptr %i.i, align 1, !tbaa !69
  br label %bb.t

bb.s:                                             ; preds = %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i.i, %bb.r
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !48
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !81
  %i.ee = zext i32 %i.do to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.ee ; 12 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !37 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, -1                  ; 3 uses
  %.0.i85.i = select i1 %i.ei, i16 256, i16 0     ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !37 ; 3 uses
  %i.el = icmp sgt i32 %i.ek, -1                  ; 3 uses
  %i.em = or disjoint i16 %.0.i85.i, 512
  %.1.i.i = select i1 %i.el, i16 %i.em, i16 %.0.i85.i
  store i16 1, ptr %i.ef, align 2, !tbaa !80
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i16 %.1.i.i, ptr %i.en, align 2, !tbaa !80
  %i.eo = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  %i.ep = lshr i32 %i.eo, 16
  %i.eq = trunc nuw i32 %i.ep to i16
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !80
  %i.es = trunc i32 %i.eo to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 6
  store i16 %i.es, ptr %i.et, align 2, !tbaa !80
  %i.eu = lshr i32 %i.eh, 16
  %i.ev = trunc nuw nsw i32 %i.eu to i16
  %i.ew = select i1 %i.ei, i16 %i.ev, i16 0
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !80
  %i.ey = trunc i32 %i.eh to i16
  %i.ez = select i1 %i.ei, i16 %i.ey, i16 0
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ef, i64 10
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !80
  %i.fb = lshr i32 %i.ek, 16
  %i.fc = trunc nuw nsw i32 %i.fb to i16
  %i.fd = select i1 %i.el, i16 %i.fc, i16 0
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i16 %i.fd, ptr %i.fe, align 2, !tbaa !80
  %i.ff = trunc i32 %i.ek to i16
  %i.fg = select i1 %i.el, i16 %i.ff, i16 0
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ef, i64 14
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !80
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.fj = lshr i32 %i.dg, 16
  %i.fk = trunc nuw i32 %i.fj to i16
  store i16 %i.fk, ptr %i.fi, align 2, !tbaa !80
  %i.fl = trunc i32 %i.dg to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ef, i64 18
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !80
  %i.fn = trunc i32 %i.am to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !80
  %i.fp = trunc i32 %i.al to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ef, i64 22
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !80
  %i.fr = load i32, ptr %i.o, align 8, !tbaa !72
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.o, align 8, !tbaa !72
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZL23emit_gradient_op_headerP14hb_gpu_paint_tjPKi.exit.thread.i, %.critedge.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %.pre.i = load i32, ptr %10, align 8, !tbaa !47
  %i.ft = add i32 %.pre.i, -1
  %i.fu = icmp ult i32 %i.ft, -2
  br i1 %i.fu, label %bb.u, label %_ZN11hb_vector_tIsLb0EED2Ev.exit.i

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.aq, align 4, !tbaa !48
  %i.fv = load ptr, ptr %i.ap, align 8, !tbaa !49
  call void @hb_free(ptr noundef %i.fv) #13
  br label %_ZN11hb_vector_tIsLb0EED2Ev.exit.i

_ZN11hb_vector_tIsLb0EED2Ev.exit.i:               ; preds = %bb.u, %bb.t, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.v

bb.v:                                             ; preds = %_ZN11hb_vector_tIsLb0EED2Ev.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %_ZL24hb_gpu_paint_emit_linearP14hb_gpu_paint_tP15hb_color_line_tffffff.exit

_ZL24hb_gpu_paint_emit_linearP14hb_gpu_paint_tP15hb_color_line_tffffff.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN14hb_gpu_paint_t17fetch_color_stopsEP15hb_color_line_t.exit.thread.i, %bb.v
  ret void
}

declare void @hb_paint_funcs_set_radial_gradient_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28hb_gpu_paint_radial_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %10 = alloca %struct.hb_vector_t.2, align 8     ; 7 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 357 ; 6 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !69, !range !70, !noundef !71
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZL24hb_gpu_paint_emit_radialP14hb_gpu_paint_tP15hb_color_line_tffffff.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328
end_hunk_0
