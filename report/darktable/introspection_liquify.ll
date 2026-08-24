Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@button_released:bb.a
  %i.rv = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.be) #30 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %.critedge328
  %.8403 = phi i32 [ %.8, %.critedge328 ], [ %.8403.ph, %.sink.split ]
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.bi, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %.critedge328.thread406, %bb.bw, %.critedge328
  %.8402 = phi i32 [ %.8403, %bb.bw ], [ %.8, %.critedge328 ], [ %.8.ph405, %.critedge328.thread406 ] ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rw, i8 0, i64 16, i1 false)
  %.not317 = icmp eq i32 %.8402, 0
  br i1 %.not317, label %sync_pipe.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.val334 = load ptr, ptr %i.h, align 8, !tbaa !181 ; 5 uses
  %.val335 = load ptr, ptr %i.f, align 16, !tbaa !180
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ce, %bb.by
  %indvars.iv.i363 = phi i64 [ 0, %bb.by ], [ %indvars.iv.next.i364.4, %bb.ce ] ; 7 uses
  %.0141.i = phi i32 [ 0, %bb.by ], [ %spec.select.i.4, %bb.ce ] ; 2 uses
  %i.rx = getelementptr inbounds nuw [76 x i8], ptr %.val334, i64 %indvars.iv.i363
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !174 ; 2 uses
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %.split.loop.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %indvars.iv.next.i364 = add nuw nsw i64 %indvars.iv.i363, 1 ; 2 uses
  %i.sa = icmp eq i32 %i.ry, 1
  %i.sb = zext i1 %i.sa to i32
  %spec.select.i = add i32 %.0141.i, %i.sb        ; 2 uses
  %i.sc = getelementptr inbounds nuw [76 x i8], ptr %.val334, i64 %indvars.iv.next.i364
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !174 ; 2 uses
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %.split.loop.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %indvars.iv.next.i364.1 = add nuw nsw i64 %indvars.iv.i363, 2 ; 2 uses
  %i.sf = icmp eq i32 %i.sd, 1
  %i.sg = zext i1 %i.sf to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.sg ; 2 uses
  %i.sh = getelementptr inbounds nuw [76 x i8], ptr %.val334, i64 %indvars.iv.next.i364.1
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !174 ; 2 uses
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %.split.loop.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %indvars.iv.next.i364.2 = add nuw nsw i64 %indvars.iv.i363, 3 ; 2 uses
  %i.sk = icmp eq i32 %i.si, 1
  %i.sl = zext i1 %i.sk to i32
  %spec.select.i.2 = add i32 %spec.select.i.1, %i.sl ; 2 uses
  %i.sm = getelementptr inbounds nuw [76 x i8], ptr %.val334, i64 %indvars.iv.next.i364.2
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !174 ; 2 uses
  %i.so = icmp eq i32 %i.sn, 0
  br i1 %i.so, label %.split.loop.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %indvars.iv.next.i364.3 = add nuw nsw i64 %indvars.iv.i363, 4 ; 2 uses
  %i.sp = icmp eq i32 %i.sn, 1
  %i.sq = zext i1 %i.sp to i32
  %spec.select.i.3 = add i32 %spec.select.i.2, %i.sq ; 2 uses
  %i.sr = getelementptr inbounds nuw [76 x i8], ptr %.val334, i64 %indvars.iv.next.i364.3
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !174 ; 2 uses
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %.split.loop.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %indvars.iv.next.i364.4 = add nuw nsw i64 %indvars.iv.i363, 5 ; 2 uses
  %i.su = icmp eq i32 %i.ss, 1
  %i.sv = zext i1 %i.su to i32
  %spec.select.i.4 = add i32 %spec.select.i.3, %i.sv ; 2 uses
  %exitcond.not.i365.4 = icmp eq i64 %indvars.iv.next.i364.4, 100
  br i1 %exitcond.not.i365.4, label %.split.loop.exit7.i, label %bb.bz

.split.loop.exit.i:                               ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %indvars.iv.i363.lcssa = phi i64 [ %indvars.iv.i363, %bb.bz ], [ %indvars.iv.next.i364, %bb.ca ], [ %indvars.iv.next.i364.1, %bb.cb ], [ %indvars.iv.next.i364.2, %bb.cc ], [ %indvars.iv.next.i364.3, %bb.cd ]
  %.0141.i.lcssa = phi i32 [ %.0141.i, %bb.bz ], [ %spec.select.i, %bb.ca ], [ %spec.select.i.1, %bb.cb ], [ %spec.select.i.2, %bb.cc ], [ %spec.select.i.3, %bb.cd ]
  %indvars6.le.i = trunc i64 %indvars.iv.i363.lcssa to i32
  br label %.split.loop.exit7.i

.split.loop.exit7.i:                              ; preds = %bb.ce, %.split.loop.exit.i
  %.014.lcssa.i = phi i32 [ %.0141.i.lcssa, %.split.loop.exit.i ], [ %spec.select.i.4, %bb.ce ]
  %.013.lcssa.i = phi i32 [ %indvars6.le.i, %.split.loop.exit.i ], [ 100, %bb.ce ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.sw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10, ptr noundef nonnull @.str.61, i32 noundef %.014.lcssa.i, i32 noundef %.013.lcssa.i) #30 ; 0 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.val335, i64 72 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !199
  %i.sz = call ptr @gtk_label_get_text(ptr noundef %i.sy) #30
  %i.ta = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.sz) #33
  %.not.i366 = icmp eq i32 %i.ta, 0
  br i1 %.not.i366, label %update_warp_count.exit, label %bb.cf

bb.cf:                                            ; preds = %.split.loop.exit7.i
  %i.tb = load ptr, ptr %i.sx, align 8, !tbaa !199
  call void @gtk_label_set_text(ptr noundef %i.tb, ptr noundef nonnull %i.a) #30
  br label %update_warp_count.exit

update_warp_count.exit:                           ; preds = %.split.loop.exit7.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.not412 = icmp eq i32 %.8402, 2
  br i1 %.not412, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %update_warp_count.exit
  %i.tc = load ptr, ptr %i.h, align 8, !tbaa !181
  call fastcc void @smooth_paths_linsys(ptr noundef %i.tc)
  %i.td = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207
  call void @dt_dev_add_history_item(ptr noundef %i.td, ptr noundef %0, i32 noundef 1) #30
  br label %sync_pipe.exit

bb.ch:                                            ; preds = %update_warp_count.exit
  call void @dt_control_queue_redraw_center() #30
  br label %sync_pipe.exit

sync_pipe.exit:                                   ; preds = %bb.ch, %bb.cg, %bb.bx
  ret i32 %.8402
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_start_new_shape(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca [2 x float], align 8              ; 6 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !180 ; 6 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = load <2 x i32>, ptr %i.j, align 8, !tbaa !12
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.n, splat (float 5.000000e-01)
  %i.p = call i32 @dt_dev_get_preview_size(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.q = load float, ptr %i.a, align 4, !tbaa !13
  %i.r = load float, ptr %i.b, align 4, !tbaa !13
  %i.s = insertelement <2 x float> poison, float %i.q, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.o, %i.t
  store <2 x float> %i.u, ptr %i.c, align 8, !tbaa !13
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !182
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.z = load i32, ptr %i.y, align 16, !tbaa !216
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to double
  %i.ab = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.v, ptr noundef %i.x, double noundef %i.aa, i32 noundef 2, ptr noundef nonnull %i.c, i64 noundef 1) #30 ; 0 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !182
  %i.af = load i32, ptr %i.y, align 16, !tbaa !216
  %i.ag = sitofp reassoc nsz arcp contract afn i32 %i.af to double
  %i.ah = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.ac, ptr noundef %i.ae, double noundef %i.ag, i32 noundef 4, ptr noundef nonnull %i.c, i64 noundef 1) #30 ; 0 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !182 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.am = load i32, ptr %i.al, align 16, !tbaa !228
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 148
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !229
  %i.ap = load <2 x float>, ptr %i.c, align 8, !tbaa !13
  %i.aq = call reassoc nsz arcp contract afn float @dt_dev_get_zoom_scale_full() #30 ; 0 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !207
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2760
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !230
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %i.av = load <2 x i32>, ptr %i.au, align 16, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call fastcc void @get_stamp_params(ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  %i.aw = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.aw, align 8, !tbaa !181 ; 3 uses
  %.val17 = load ptr, ptr %i.g, align 16, !tbaa !180
  %i.ax = load i32, ptr %.val, align 4, !tbaa !174
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %alloc_move_to.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv.i.i22 = phi i64 [ %indvars.iv.next.i.i, %.lr.ph ], [ 0, %bb.a ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i22, 1 ; 4 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, 100
  call void @llvm.assume(i1 %exitcond.not.i.i)
  %i.az = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !174
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %alloc_move_to.exit, label %.lr.ph

alloc_move_to.exit:                               ; preds = %.lr.ph, %bb.a
  %indvars.iv.i.i.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i, %.lr.ph ] ; 2 uses
  %.lcssa = phi ptr [ %.val, %bb.a ], [ %i.az, %.lr.ph ] ; 14 uses
  %i.bc = sitofp <2 x i32> %i.av to <2 x float>
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.ao to float
  %i.be = fmul reassoc nsz arcp contract afn <2 x float> %i.ap, %i.bc ; 2 uses
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.am to float
  %i.bg = extractelement <2 x float> %i.be, i64 0
  %i.bh = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bf
  %i.bi = trunc nuw nsw i64 %indvars.iv.i.i.lcssa to i32
  store i32 %i.bi, ptr %.val17, align 4, !tbaa !12
  %i.bj = trunc i64 %indvars.iv.i.i.lcssa to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !240
  %i.bl = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.bl, align 4, !tbaa !170
  %i.bm = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.bm, align 2, !tbaa !213
  store <4 x i32> <i32 1, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.bo, align 4, !tbaa !93
  %1 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 36
  %3 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %.lcssa, i64 28
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa, i64 44
  store <2 x float> <float 5.000000e-01, float 7.500000e-01>, ptr %i.br, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.bs, align 4, !tbaa !91
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.bu = load float, ptr %i.d, align 4, !tbaa !13
  %i.bv = load float, ptr %i.e, align 4, !tbaa !13
  %i.bw = load float, ptr %i.f, align 4, !tbaa !13
  %i.bx = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.by, <float 0.000000e+00, float 1.000000e+00>
  %i.ca = call reassoc nsz arcp contract afn <2 x float> @cexpf(<2 x float> noundef %i.bz) #31
  %i.cb = extractelement <2 x float> %i.be, i64 1
  %i.cc = fdiv reassoc nsz arcp contract afn float %i.cb, %i.bd ; 5 uses
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, 0.000000e+00
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, %i.bh ; 4 uses
  store float %i.ce, ptr %i.bn, align 4
  store float %i.cc, ptr %1, align 4
  store float %i.ce, ptr %i.bp, align 4
  store float %i.cc, ptr %i.bq, align 4
  store ptr %.lcssa, ptr %i.bt, align 8, !tbaa !218
  %i.cf = fadd reassoc nsz arcp contract afn float %i.bu, %i.ce
  store float %i.cf, ptr %2, align 4
  store float %i.cc, ptr %3, align 4
  %i.cg = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul reassoc nsz arcp contract afn <2 x float> %i.ca, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.cc, i64 1
  %i.cl = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.ck
  %i.cm = load ptr, ptr %i.bt, align 8, !tbaa !218
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  store <2 x float> %i.cl, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !225
  %i.cq = or i32 %i.cp, 5
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !225
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i32 1, ptr %i.cr, align 4, !tbaa !241
  %i.cs = load ptr, ptr %i.bt, align 8, !tbaa !218
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 12, ptr %i.ct, align 8, !tbaa !232
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !208
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @alloc_line_to(ptr nofree captures(ret: address, provenance) %.680.val, ptr nofree writeonly captures(none) %.704.val, <2 x float> noundef %0) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %i.a = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.i ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !174
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.g = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !174
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.j = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !174
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !174
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %node_alloc.exit.thread, label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ], [ %indvars.iv.next.i.2, %bb.e ], [ %indvars.iv.next.i.3, %bb.f ] ; 2 uses
  %.lcssa = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 8 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  store i32 %i.p, ptr %.704.val, align 4, !tbaa !12
  %i.q = trunc i64 %indvars.iv.i.lcssa to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.q, ptr %i.r, align 1, !tbaa !240
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.s, align 4, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.t, align 2, !tbaa !213
  store <4 x i32> <i32 2, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.v, align 4, !tbaa !93
  %i.w = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.x = shufflevector <4 x float> %i.w, <4 x float> <float poison, float poison, float 5.000000e-01, float 7.500000e-01>, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 6, i32 7>
  store <8 x float> %i.x, ptr %i.u, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.y, align 4, !tbaa !91
  br label %node_alloc.exit.thread

node_alloc.exit.thread:                           ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %.lcssa, %bb.h ], [ null, %bb.g ]
  ret ptr %i.z
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @alloc_curve_to(ptr nofree captures(ret: address, provenance) %.680.val, ptr nofree writeonly captures(none) %.704.val, <2 x float> noundef %0) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %i.a = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.i ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !174
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.g = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !174
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.j = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !174
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw [76 x i8], ptr %.680.val, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !174
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %node_alloc.exit.thread, label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ], [ %indvars.iv.next.i.2, %bb.e ], [ %indvars.iv.next.i.3, %bb.f ] ; 2 uses
  %.lcssa = phi ptr [ %i.a, %bb.b ], [ %i.d, %bb.c ], [ %i.g, %bb.d ], [ %i.j, %bb.e ], [ %i.m, %bb.f ] ; 9 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  store i32 %i.p, ptr %.704.val, align 4, !tbaa !12
  %i.q = trunc i64 %indvars.iv.i.lcssa to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa, i64 17
  store i8 %i.q, ptr %i.r, align 1, !tbaa !240
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i8 -1, ptr %i.s, align 4, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %.lcssa, i64 18
  store i8 -1, ptr %i.t, align 2, !tbaa !213
  store <4 x i32> <i32 3, i32 3, i32 0, i32 0>, ptr %.lcssa, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa, i64 60
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  store i32 0, ptr %i.w, align 4, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.x = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> %i.x, <4 x float> <float poison, float poison, float 5.000000e-01, float 7.500000e-01>, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 6, i32 7>
  store <8 x float> %i.y, ptr %i.v, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  store i32 0, ptr %i.z, align 4, !tbaa !91
  br label %node_alloc.exit.thread

node_alloc.exit.thread:                           ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.lcssa, %bb.h ], [ null, %bb.g ]
  ret ptr %i.aa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @node_delete(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i8, ptr %i.a, align 4, !tbaa !170  ; 2 uses
  %i.b = icmp eq i8 %.val, -1                     ; 2 uses
  %i.c = sext i8 %.val to i64
  %i.d = getelementptr inbounds [76 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 18         ; 2 uses
  %.val20 = load i8, ptr %i.e, align 2, !tbaa !213 ; 3 uses
  %i.f = icmp ne i8 %.val20, -1
  %i.g = sext i8 %.val20 to i64
  %i.h = getelementptr inbounds [76 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = icmp ne ptr %0, null
  %i.j = and i1 %i.i, %i.f                        ; 2 uses
  %or.cond = select i1 %i.b, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 -1, ptr %i.k, align 4, !tbaa !170
  store i32 1, ptr %i.h, align 4, !tbaa !174
  br label %bb.f

end_hunk_0
begin_hunk_1_@node_delete:bb.a
.preheader.i:                                     ; preds = %bb.x
  %i.bc = icmp slt i32 %.2.i, 99
  br i1 %i.bc, label %iter.check, label %node_gc.exit

iter.check:                                       ; preds = %.preheader.i, %bb.q
  %.140.lcssa65.i = phi i32 [ %.2.i, %.preheader.i ], [ %.03946.i.lcssa, %bb.q ]
  %i.bd = sext i32 %.140.lcssa65.i to i64         ; 6 uses
  %i.be = sub nsw i64 99, %i.bd                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.be, 4
  br i1 %min.iters.check, label %.lr.ph54.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i64 %i.be, 32
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %i.be, 28
  %n.vec = and i64 %i.be, -32                     ; 4 uses
  %i.bg = add nsw i64 %n.vec, %i.bd               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.bh = add nsw <8 x i64> %vec.ind, splat (i64 1)
  %i.bi = add nsw <8 x i64> %vec.ind, splat (i64 9)
  %i.bj = add nsw <8 x i64> %vec.ind, splat (i64 17)
  %i.bk = add nsw <8 x i64> %vec.ind, splat (i64 25)
  %wide.gep = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bh
  %wide.gep27 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bi
  %wide.gep28 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bj
  %wide.gep29 = getelementptr inbounds [76 x i8], ptr %0, <8 x i64> %i.bk
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !174
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true)), !tbaa !174
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep28, <8 x i1> splat (i1 true)), !tbaa !174
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> zeroinitializer, <8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true)), !tbaa !174
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %node_gc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph54.i.preheader, label %vec.epilog.ph, !prof !243

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.bg, %vec.epilog.iter.check ], [ %i.bd, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.be, -4                    ; 3 uses
  %i.bm = add nsw i64 %n.vec30, %i.bd
  %broadcast.splatinsert31 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat32 = shufflevector <4 x i64> %broadcast.splatinsert31, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction33 = add nsw <4 x i64> %broadcast.splat32, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ]
  %vec.ind35 = phi <4 x i64> [ %induction33, %vec.epilog.ph ], [ %vec.ind.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.bn = add nsw <4 x i64> %vec.ind35, splat (i64 1)
  %wide.gep36 = getelementptr inbounds [76 x i8], ptr %0, <4 x i64> %i.bn
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> zeroinitializer, <4 x ptr> align 4 %wide.gep36, <4 x i1> splat (i1 true)), !tbaa !174
  %index.next37 = add nuw i64 %index34, 4         ; 2 uses
  %vec.ind.next38 = add nsw <4 x i64> %vec.ind35, splat (i64 4)
  %i.bo = icmp eq i64 %index.next37, %n.vec30
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !249

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.be, %n.vec30
  br i1 %cmp.n39, label %node_gc.exit, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph54.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %bb.x
  %.03850.i = phi i32 [ %.1.i, %bb.x ], [ 0, %.lr.ph52.i.preheader ] ; 5 uses
  %.14049.i = phi i32 [ %.2.i, %bb.x ], [ %.14049.i.ph, %.lr.ph52.i.preheader ] ; 4 uses
  %i.bp = sext i32 %.03850.i to i64               ; 2 uses
  %i.bq = getelementptr inbounds [76 x i8], ptr %0, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !174
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.preheader45.i, label %bb.w

.preheader45.i:                                   ; preds = %.lr.ph52.i
  %i.bt = icmp sgt i32 %.14049.i, 0
  br i1 %i.bt, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader45.i
  %wide.trip.count.i = zext nneg i32 %.14049.i to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.v, %.preheader45.i
  %i.bu = add nsw i32 %.14049.i, -1
  br label %bb.x

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.v ] ; 4 uses
  %.not42.i = icmp slt i64 %indvars.iv.i, %i.bp
  br i1 %.not42.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.bv = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.bv, ptr noundef nonnull align 4 dereferenceable(76) %i.bw, i64 76, i1 false), !tbaa.struct !245
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 17 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !240
  %i.bz = add i8 %i.by, -1
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !240
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.r, %.lr.ph.i
  %i.ca = getelementptr inbounds nuw [76 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !170 ; 2 uses
  %i.cd = sext i8 %i.cc to i32
  %.not43.i = icmp sgt i32 %.03850.i, %i.cd
  br i1 %.not43.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %i.ce = add i8 %i.cc, -1
  store i8 %i.ce, ptr %i.cb, align 4, !tbaa !170
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 18 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !213 ; 2 uses
  %i.ch = sext i8 %i.cg to i32
  %.not44.i = icmp sgt i32 %.03850.i, %i.ch
  br i1 %.not44.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = add i8 %i.cg, -1
  store i8 %i.ci, ptr %i.cf, align 2, !tbaa !213
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.w:                                             ; preds = %.lr.ph52.i
  %i.cj = add nsw i32 %.03850.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i
  %.2.i = phi i32 [ %i.bu, %._crit_edge.i ], [ %.14049.i, %bb.w ] ; 4 uses
  %.1.i = phi i32 [ %.03850.i, %._crit_edge.i ], [ %i.cj, %bb.w ] ; 2 uses
  %.not41.i = icmp sgt i32 %.1.i, %.2.i
  br i1 %.not41.i, label %.preheader.i, label %.lr.ph52.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %.lr.ph54.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %.lr.ph54.i ], [ %indvars.iv57.i.ph, %.lr.ph54.i.preheader ]
  %indvars.iv.next58.i = add nsw i64 %indvars.iv57.i, 1 ; 3 uses
  %i.ck = getelementptr inbounds [76 x i8], ptr %0, i64 %indvars.iv.next58.i
  store i32 0, ptr %i.ck, align 4, !tbaa !174
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 99
  br i1 %exitcond60.not.i, label %node_gc.exit, label %.lr.ph54.i, !llvm.loop !250

node_gc.exit:                                     ; preds = %.lr.ph54.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mix_warps(ptr nofree noundef writeonly captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> noundef %3, float noundef %4) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.c, align 4, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x float>, ptr %i.d, align 4, !tbaa !13 ; 2 uses
  %i.h = load <2 x float>, ptr %i.e, align 4, !tbaa !13
  %i.i = fsub reassoc nsz arcp contract afn <2 x float> %i.h, %i.g
  %i.j = insertelement <2 x float> poison, float %4, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul reassoc nsz arcp contract afn <2 x float> %i.i, %i.k
  %i.m = fadd reassoc nsz arcp contract afn <2 x float> %i.l, %i.g
  store <2 x float> %i.m, ptr %i.f, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load <2 x float>, ptr %i.n, align 4
  %i.p = load <2 x float>, ptr %1, align 4
  %i.q = fsub reassoc nsz arcp contract afn <2 x float> %i.o, %i.p
  %i.r = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.q) #31 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load <2 x float>, ptr %i.s, align 4
  %i.u = load <2 x float>, ptr %2, align 4
  %i.v = fsub reassoc nsz arcp contract afn <2 x float> %i.t, %i.u
  %i.w = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.v) #31
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.r
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %4
  %i.z = fadd reassoc nsz arcp contract afn float %i.r, %i.y
  %.sroa.064.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 2 uses
  %.sroa.064.4.vec.extract = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %.sroa.064.0.vec.extract
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.aa, ptr %i.ab, align 4
  store float %.sroa.064.4.vec.extract, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load <2 x float>, ptr %i.ad, align 4
  %i.af = load <2 x float>, ptr %1, align 4
  %i.ag = fsub reassoc nsz arcp contract afn <2 x float> %i.ae, %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load <2 x float>, ptr %i.ah, align 4
  %i.aj = load <2 x float>, ptr %2, align 4
  %i.ak = fsub reassoc nsz arcp contract afn <2 x float> %i.ai, %i.aj ; 2 uses
  %i.al = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.ag) #31 ; 5 uses
  %i.am = tail call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.ak) #31 ; 4 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.al, 0.000000e+00
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.am, f0xBFC90FDB
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.al, f0xBFC90FDB
  %i.aq = fcmp reassoc nsz arcp contract afn ogt float %i.am, 0.000000e+00
  %or.cond3 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink86 = phi float [ f0x40490FDB, %bb.a ], [ f0xC0490FDB, %bb.b ]
  %.sink = phi float [ f0xC0490FDB, %bb.a ], [ f0x40490FDB, %bb.b ]
  %i.ar = fsub reassoc nsz arcp contract afn float %.sink86, %i.al ; 2 uses
  %i.as = fadd reassoc nsz arcp contract afn float %i.am, %i.ar
  %i.at = fsub reassoc nsz arcp contract afn float %.sink, %i.as
  %i.au = fmul reassoc nsz arcp contract afn float %4, %i.at
  %i.av = fadd reassoc nsz arcp contract afn float %i.ar, %i.au
  %i.aw = fsub reassoc nsz arcp contract afn float f0x40490FDB, %i.av
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ax = fsub reassoc nsz arcp contract afn float %i.am, %i.al
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %4
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.al
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = phi reassoc nsz arcp contract afn float [ %i.aw, %bb.c ], [ %i.az, %bb.d ] ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ak) #31
  %i.bc = tail call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.ag) #31 ; 2 uses
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bb, %i.bc
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %4
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.bc
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ba, 0.000000e+00
  %.sroa.04.0.vec.insert = insertelement <2 x float> poison, float %i.bg, i64 0
  %.sroa.04.4.vec.insert = insertelement <2 x float> %.sroa.04.0.vec.insert, float %i.ba, i64 1
  %i.bh = tail call reassoc nsz arcp contract afn <2 x float> @cexpf(<2 x float> noundef %.sroa.04.4.vec.insert) #31
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bh
  %i.bm = fadd reassoc nsz arcp contract afn <2 x float> %i.bl, %3
  store <2 x float> %i.bm, ptr %i.bi, align 4
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %.sroa.064.0.vec.extract, ptr %0, align 4
  store float %.sroa.064.4.vec.extract, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.b, align 8, !tbaa !181 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 704
  %.val1 = load ptr, ptr %i.c, align 16, !tbaa !180
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.4, %bb.g ] ; 7 uses
  %.0141.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.4, %bb.g ] ; 2 uses
  %i.d = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split.loop.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.g = icmp eq i32 %i.e, 1
  %i.h = zext i1 %i.g to i32
  %spec.select.i = add i32 %.0141.i, %i.h         ; 2 uses
  %i.i = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !174  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.split.loop.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.l = icmp eq i32 %i.j, 1
  %i.m = zext i1 %i.l to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.m ; 2 uses
  %i.n = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.1
  %i.o = load i32, ptr %i.n, align 4, !tbaa !174  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.split.loop.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.q = icmp eq i32 %i.o, 1
  %i.r = zext i1 %i.q to i32
  %spec.select.i.2 = add i32 %spec.select.i.1, %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.2
  %i.t = load i32, ptr %i.s, align 4, !tbaa !174  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.split.loop.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.v = icmp eq i32 %i.t, 1
  %i.w = zext i1 %i.v to i32
  %spec.select.i.3 = add i32 %spec.select.i.2, %i.w ; 2 uses
  %i.x = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.3
  %i.y = load i32, ptr %i.x, align 4, !tbaa !174  ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.split.loop.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.aa = icmp eq i32 %i.y, 1
  %i.ab = zext i1 %i.aa to i32
  %spec.select.i.4 = add i32 %spec.select.i.3, %i.ab ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %.split.loop.exit7.i, label %bb.b

.split.loop.exit.i:                               ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.b ], [ %indvars.iv.next.i, %bb.c ], [ %indvars.iv.next.i.1, %bb.d ], [ %indvars.iv.next.i.2, %bb.e ], [ %indvars.iv.next.i.3, %bb.f ]
  %.0141.i.lcssa = phi i32 [ %.0141.i, %bb.b ], [ %spec.select.i, %bb.c ], [ %spec.select.i.1, %bb.d ], [ %spec.select.i.2, %bb.e ], [ %spec.select.i.3, %bb.f ]
  %indvars6.le.i = trunc i64 %indvars.iv.i.lcssa to i32
  br label %.split.loop.exit7.i

.split.loop.exit7.i:                              ; preds = %bb.g, %.split.loop.exit.i
  %.014.lcssa.i = phi i32 [ %.0141.i.lcssa, %.split.loop.exit.i ], [ %spec.select.i.4, %bb.g ]
  %.013.lcssa.i = phi i32 [ %indvars6.le.i, %.split.loop.exit.i ], [ 100, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10, ptr noundef nonnull @.str.61, i32 noundef %.014.lcssa.i, i32 noundef %.013.lcssa.i) #30 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !199
  %i.af = tail call ptr @gtk_label_get_text(ptr noundef %i.ae) #30
  %i.ag = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.af) #33
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %update_warp_count.exit, label %bb.h

bb.h:                                             ; preds = %.split.loop.exit7.i
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !199
  call void @gtk_label_set_text(ptr noundef %i.ah, ptr noundef nonnull %i.a) #30
  br label %update_warp_count.exit

update_warp_count.exit:                           ; preds = %.split.loop.exit7.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x ptr], align 8                ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 2 uses
  %i.c = alloca [3 x ptr], align 8                ; 4 uses
  %i.d = tail call ptr @dt_alloc_aligned(i64 noundef 120) #30 ; 12 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.d, i8 0, i64 120, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.d, ptr %i.e, align 16, !tbaa !180
  %i.f = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef 1, i32 noundef 1) #30
  tail call void @cairo_surface_destroy(ptr noundef %i.f) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 0, ptr %i.d, align 8, !tbaa !239
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #30
  %i.k = tail call ptr @gtk_label_new(ptr noundef %i.j) #30 ; 2 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.k, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef nonnull @.str.66, double noundef 0.000000e+00, ptr noundef nonnull @.str.67, i32 noundef 3, ptr noundef null) #30
  %i.l = tail call ptr @gtk_label_new(ptr noundef nonnull @.str.11) #30 ; 2 uses
  tail call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.l, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef nonnull @.str.66, double noundef 0.000000e+00, ptr noundef nonnull @.str.67, i32 noundef 3, ptr noundef null) #30
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !199
  %i.n = tail call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #30
  store ptr %i.k, ptr %i.a, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !199
  store ptr %i.p, ptr %i.o, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.q, align 8, !tbaa !106
  %i.r = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.12, i32 noundef 3618, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.n, ptr noundef nonnull %i.a) #30 ; 2 uses
  %i.s = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #30
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.r, ptr noundef %i.s) #30
  %i.t = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #30
  store ptr inttoptr (i64 -1 to ptr), ptr %i.b, align 8, !tbaa !106
  %i.u = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.12, i32 noundef 3623, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.t, ptr noundef nonnull %i.b) #30 ; 5 uses
  %i.v = call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #30
  store ptr %i.r, ptr %i.c, align 8, !tbaa !106
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 -1 to ptr), ptr %i.x, align 8, !tbaa !106
  %i.y = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.12, i32 noundef 3624, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.v, ptr noundef nonnull %i.c) #30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.y, ptr %i.z, align 8, !tbaa !251
  %i.aa = call ptr @dt_iop_togglebutton_new(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef nonnull @btn_make_radio_callback, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_liquify_cairo_paint_node_tool, ptr noundef %i.u) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !203
  %i.ac = call ptr @dt_iop_togglebutton_new(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @btn_make_radio_callback, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_liquify_cairo_paint_curve_tool, ptr noundef %i.u) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !206
  %i.ae = call ptr @dt_iop_togglebutton_new(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @btn_make_radio_callback, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_liquify_cairo_paint_line_tool, ptr noundef %i.u) #30
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !205
  %i.ag = call ptr @dt_iop_togglebutton_new(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @btn_make_radio_callback, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_liquify_cairo_paint_point_tool, ptr noundef %i.u) #30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !204
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 48), align 16, !tbaa !226
  %i.ai = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #30
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 328), align 8, !tbaa !226
  %i.aj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #30
  store ptr %i.aj, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 720), align 16, !tbaa !226
  %i.ak = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #30
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 776), align 8, !tbaa !226
  %i.al = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #30
  store ptr %i.al, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 832), align 16, !tbaa !226
  %i.am = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #30
  store ptr %i.am, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 888), align 8, !tbaa !226
  %i.an = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #30
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 944), align 16, !tbaa !226
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #30
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 1000), align 8, !tbaa !226
  %i.ap = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #30
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_layers, i64 1056), align 16, !tbaa !226
  ret void
}

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_iop_togglebutton_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_liquify_cairo_paint_node_tool(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree readnone captures(none) %6) #1 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
end_hunk_1
