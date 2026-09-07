Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rgblevels?download=true
inline.NumInlined: 80
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_select_region_toggled_callback:bb.a
  %spec.select = zext i1 %.not16 to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  store i32 %spec.select, ptr %i.l, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_develop_ui_pipe_finished_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !28  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 5 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !110
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 -1, ptr %i.h, align 8, !tbaa !110
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #19 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.b, ptr noundef nonnull align 8 dereferenceable(44) %i.d, i64 44, i1 false)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !82
  tail call void @dt_dev_add_history_item(ptr noundef %i.l, ptr noundef nonnull %1, i32 noundef 1) #19
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #19 ; 0 uses
  store i32 0, ptr %i.h, align 8, !tbaa !110
  %i.n = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = atomicrmw add ptr %i.p, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @gui_update(ptr noundef nonnull %1)
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = atomicrmw sub ptr %i.s, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.c = load i32, ptr %i.b, align 4, !tbaa !222
  %i.d = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.c, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge151, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !128 ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !28  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.k = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %i.j) #19 ; 2 uses
  %.not132 = icmp eq ptr %i.h, null
  br i1 %.not132, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !223
  %i.m = getelementptr i8, ptr %i.l, i64 644
  %.val = load i32, ptr %i.m, align 4, !tbaa !136
  %i.n = and i32 %.val, 4
  %.not133 = icmp eq i32 %i.n, 0
  br i1 %.not133, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 5 uses
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.o) #19 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !110
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.ac

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load atomic i32, ptr %i.u seq_cst, align 4
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.q, align 8, !tbaa !110
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.o) #19 ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.h, ptr noundef nonnull align 4 dereferenceable(44) %i.f, i64 44, i1 false)
  %.val136 = load ptr, ptr %i.i, align 8, !tbaa !223 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !224  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !225 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.val136, i64 144
  %i.ah = load <4 x float>, ptr %i.ac, align 8, !tbaa !39
  %i.ai = load <2 x i32>, ptr %i.ag, align 16, !tbaa !109
  %i.aj = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ak = sitofp <4 x i32> %i.aj to <4 x float>
  %i.al = fmul reassoc nsz arcp contract afn <4 x float> %i.ah, %i.ak
  store <4 x float> %i.al, ptr %i.a, align 16, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !226
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.ap to double
  %i.ar = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.an, ptr noundef %.val136, double noundef %i.aq, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 2) #19 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load float, ptr %i.as, align 4, !tbaa !227 ; 4 uses
  %i.au = load float, ptr %i.a, align 16, !tbaa !39
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.at
  %i.aw = load float, ptr %i.ad, align 4, !tbaa !39
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.at
  %i.ay = load float, ptr %i.ae, align 8, !tbaa !39
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.at
  %i.ba = load float, ptr %i.af, align 4, !tbaa !39
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.at
  %i.bc = load i32, ptr %4, align 4, !tbaa !228
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.bc to float ; 2 uses
  %i.be = fsub reassoc nsz arcp contract afn float %i.av, %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !229
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to float ; 2 uses
  %i.bi = fsub reassoc nsz arcp contract afn float %i.ax, %i.bh ; 2 uses
  %i.bj = fsub reassoc nsz arcp contract afn float %i.az, %i.bd ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bb, %i.bh ; 2 uses
  %i.bl = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.be, float %i.bj)
  %i.bm = fptosi float %i.bl to i32               ; 2 uses
  %i.bn = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bi, float %i.bk)
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.be, float %i.bj)
  %i.bq = fptosi float %i.bp to i32               ; 2 uses
  %i.br = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bi, float %i.bk)
  %i.bs = fptosi float %i.br to i32               ; 2 uses
  %.not.i = icmp sgt i32 %i.z, %i.bm
  br i1 %.not.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bt = icmp sle i32 %i.ab, %i.bo
  %i.bu = icmp slt i32 %i.bq, 0
  %or.cond.i = select i1 %i.bt, i1 true, i1 %i.bu
  %i.bv = icmp slt i32 %i.bs, 0
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.bv
  br i1 %or.cond5.i, label %bb.i, label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.g
  %i.bw = add nsw i32 %i.z, -1
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.bm, i32 0) ; 2 uses
  %spec.select1.1.i = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bw) ; 2 uses
  %i.bx = add nsw i32 %i.ab, -1                   ; 2 uses
  %spec.select69.i = call i32 @llvm.smax.i32(i32 %i.bo, i32 0) ; 2 uses
  %spec.select2.1.i = call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.bx) ; 2 uses
  %.not64.i = icmp slt i32 %spec.select.i, %spec.select1.1.i
  %.not65.i = icmp slt i32 %spec.select69.i, %spec.select2.1.i
  %or.cond17.i = select i1 %.not64.i, i1 %.not65.i, i1 false
  br i1 %or.cond17.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader3.i
  %spec.select2.i = call i32 @llvm.smin.i32(i32 %spec.select69.i, i32 %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.by = load i32, ptr %i.y, align 4, !tbaa !224
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %.preheader3.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !224 ; 2 uses
  %i.ca = load i32, ptr %i.aa, align 4, !tbaa !225
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = add nsw i32 %i.bz, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cd = phi i32 [ %i.bz, %bb.i ], [ %i.by, %bb.h ]
  %.081.i = phi i32 [ 0, %bb.i ], [ %spec.select2.i, %bb.h ] ; 3 uses
  %.080.i = phi i32 [ %i.cb, %bb.i ], [ %spec.select2.1.i, %bb.h ] ; 3 uses
  %.079.i = phi i32 [ 0, %bb.i ], [ %spec.select.i, %bb.h ] ; 5 uses
  %.078.i = phi i32 [ %i.cc, %bb.i ], [ %spec.select1.1.i, %bb.h ] ; 5 uses
  %.in142 = getelementptr inbounds nuw i8, ptr %i.h, i64 172
  %i.ce = load i32, ptr %.in142, align 4, !tbaa !114 ; 2 uses
  %.in = load i32, ptr %i.h, align 8, !tbaa !116
  %i.cf = icmp eq i32 %.in, 1                     ; 2 uses
  %.not110.i = icmp sgt i32 %.081.i, %.080.i
  br i1 %.not110.i, label %_auto_levels.exit, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.j
  %i.cg = shl nsw i32 %i.cd, 2                    ; 2 uses
  %.not9094.i = icmp sgt i32 %.079.i, %.078.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ci = sext i32 %i.ce to i64
  br i1 %.not9094.i, label %_auto_levels.exit, label %.lr.ph115.split.i

.lr.ph115.split.i:                                ; preds = %.lr.ph115.i
  br i1 %i.cf, label %.lr.ph115.split.split.us.i, label %.lr.ph115.split.split.i

.lr.ph115.split.split.us.i:                       ; preds = %.lr.ph115.split.i
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.ci
  %i.cj = zext nneg i32 %.079.i to i64            ; 2 uses
  %i.ck = add nuw nsw i32 %.078.i, 1
  %i.cl = sext i32 %.081.i to i64
  %i.cm = sext i32 %i.cg to i64
  %i.cn = add nsw i32 %.080.i, 1
  %6 = add i32 %.078.i, 1
  %i.co = sub i32 %6, %.079.i
  %i.cp = sub i32 %.078.i, %.079.i
  %xtraiter = and i32 %i.co, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.cq = icmp ult i32 %i.cp, 3
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.split.us.us.i, %.lr.ph115.split.split.us.i
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %._crit_edge.split.us.us.i ], [ %i.cl, %.lr.ph115.split.split.us.i ] ; 2 uses
  %.071112.us122.i = phi float [ %.5.us.us.i.lcssa, %._crit_edge.split.us.us.i ], [ f0x7F7FFFFF, %.lr.ph115.split.split.us.i ] ; 2 uses
  %.072111.us123.i = phi float [ %.577.us.us.i.lcssa, %._crit_edge.split.us.us.i ], [ f0xFF7FFFFF, %.lr.ph115.split.split.us.i ] ; 2 uses
  %i.cr = mul nsw i64 %indvars.iv165.i, %i.cm
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.cr ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.us.i, %bb.l
  %indvars.iv160.i.prol = phi i64 [ %indvars.iv.next161.i.prol, %bb.l ], [ %i.cj, %.lr.ph.us.i ] ; 2 uses
  %.196.us.us.i.prol = phi float [ %.5.us.us.i.prol, %bb.l ], [ %.071112.us122.i, %.lr.ph.us.i ] ; 2 uses
  %.17395.us.us.i.prol = phi float [ %.577.us.us.i.prol, %bb.l ], [ %.072111.us123.i, %.lr.ph.us.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %bb.l ], [ 0, %.lr.ph.us.i ]
  %gep.us.idx.i.prol = shl nuw nsw i64 %indvars.iv160.i.prol, 4
  %gep.us.i.prol = getelementptr i8, ptr %gep.i, i64 %gep.us.idx.i.prol
  %i.cs = load float, ptr %gep.us.i.prol, align 4, !tbaa !39 ; 3 uses
  %i.ct = fcmp reassoc nsz arcp contract afn ult float %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.prol.preheader
  %i.cu = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.17395.us.us.i.prol, float %i.cs)
  %i.cv = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.196.us.us.i.prol, float %i.cs)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.prol.preheader
  %.577.us.us.i.prol = phi nsz float [ %i.cu, %bb.k ], [ %.17395.us.us.i.prol, %.prol.preheader ] ; 3 uses
  %.5.us.us.i.prol = phi nsz float [ %i.cv, %bb.k ], [ %.196.us.us.i.prol, %.prol.preheader ] ; 3 uses
  %indvars.iv.next161.i.prol = add nuw nsw i64 %indvars.iv160.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !221

.prol.loopexit:                                   ; preds = %bb.l, %.lr.ph.us.i
  %.577.us.us.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i ], [ %.577.us.us.i.prol, %bb.l ]
  %.5.us.us.i.lcssa.unr = phi float [ poison, %.lr.ph.us.i ], [ %.5.us.us.i.prol, %bb.l ]
  %indvars.iv160.i.unr = phi i64 [ %i.cj, %.lr.ph.us.i ], [ %indvars.iv.next161.i.prol, %bb.l ]
  %.196.us.us.i.unr = phi float [ %.071112.us122.i, %.lr.ph.us.i ], [ %.5.us.us.i.prol, %bb.l ]
  %.17395.us.us.i.unr = phi float [ %.072111.us123.i, %.lr.ph.us.i ], [ %.577.us.us.i.prol, %bb.l ]
  br i1 %i.cq, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.prol.loopexit, %bb.t
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i.3, %bb.t ], [ %indvars.iv160.i.unr, %.prol.loopexit ] ; 5 uses
  %.196.us.us.i = phi float [ %.5.us.us.i.3, %bb.t ], [ %.196.us.us.i.unr, %.prol.loopexit ] ; 2 uses
  %.17395.us.us.i = phi float [ %.577.us.us.i.3, %bb.t ], [ %.17395.us.us.i.unr, %.prol.loopexit ] ; 2 uses
  %gep.us.idx.i = shl nuw nsw i64 %indvars.iv160.i, 4
  %gep.us.i = getelementptr i8, ptr %gep.i, i64 %gep.us.idx.i
  %i.cw = load float, ptr %gep.us.i, align 4, !tbaa !39 ; 3 uses
  %i.cx = fcmp reassoc nsz arcp contract afn ult float %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.us.i.new
  %i.cy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.17395.us.us.i, float %i.cw)
  %i.cz = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.196.us.us.i, float %i.cw)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.us.i.new
  %.577.us.us.i = phi nsz float [ %i.cy, %bb.m ], [ %.17395.us.us.i, %.lr.ph.us.i.new ] ; 2 uses
  %.5.us.us.i = phi nsz float [ %i.cz, %bb.m ], [ %.196.us.us.i, %.lr.ph.us.i.new ] ; 2 uses
  %indvars.iv.next161.i = shl i64 %indvars.iv160.i, 4
  %i.da = getelementptr i8, ptr %gep.i, i64 %indvars.iv.next161.i
  %gep.us.i.1 = getelementptr i8, ptr %i.da, i64 16
  %i.db = load float, ptr %gep.us.i.1, align 4, !tbaa !39 ; 3 uses
  %i.dc = fcmp reassoc nsz arcp contract afn ult float %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.577.us.us.i, float %i.db)
  %i.de = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.5.us.us.i, float %i.db)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.577.us.us.i.1 = phi nsz float [ %i.dd, %bb.o ], [ %.577.us.us.i, %bb.n ] ; 2 uses
  %.5.us.us.i.1 = phi nsz float [ %i.de, %bb.o ], [ %.5.us.us.i, %bb.n ] ; 2 uses
  %indvars.iv.next161.i.1 = shl i64 %indvars.iv160.i, 4
  %i.df = getelementptr i8, ptr %gep.i, i64 %indvars.iv.next161.i.1
  %gep.us.i.2 = getelementptr i8, ptr %i.df, i64 32
  %i.dg = load float, ptr %gep.us.i.2, align 4, !tbaa !39 ; 3 uses
  %i.dh = fcmp reassoc nsz arcp contract afn ult float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.di = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.577.us.us.i.1, float %i.dg)
  %i.dj = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.5.us.us.i.1, float %i.dg)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.577.us.us.i.2 = phi nsz float [ %i.di, %bb.q ], [ %.577.us.us.i.1, %bb.p ] ; 2 uses
  %.5.us.us.i.2 = phi nsz float [ %i.dj, %bb.q ], [ %.5.us.us.i.1, %bb.p ] ; 2 uses
  %indvars.iv.next161.i.2 = shl i64 %indvars.iv160.i, 4
  %i.dk = getelementptr i8, ptr %gep.i, i64 %indvars.iv.next161.i.2
  %gep.us.i.3 = getelementptr i8, ptr %i.dk, i64 48
  %i.dl = load float, ptr %gep.us.i.3, align 4, !tbaa !39 ; 3 uses
  %i.dm = fcmp reassoc nsz arcp contract afn ult float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.577.us.us.i.2, float %i.dl)
  %i.do = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.5.us.us.i.2, float %i.dl)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.577.us.us.i.3 = phi nsz float [ %i.dn, %bb.s ], [ %.577.us.us.i.2, %bb.r ] ; 2 uses
  %.5.us.us.i.3 = phi nsz float [ %i.do, %bb.s ], [ %.5.us.us.i.2, %bb.r ] ; 2 uses
  %indvars.iv.next161.i.3 = add nuw nsw i64 %indvars.iv160.i, 4 ; 2 uses
  %lftr.wideiv163.i.3 = trunc i64 %indvars.iv.next161.i.3 to i32
  %exitcond164.not.i.3 = icmp eq i32 %i.ck, %lftr.wideiv163.i.3
  br i1 %exitcond164.not.i.3, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i.new

._crit_edge.split.us.us.i:                        ; preds = %bb.t, %.prol.loopexit
  %.577.us.us.i.lcssa = phi float [ %.577.us.us.i.lcssa.unr, %.prol.loopexit ], [ %.577.us.us.i.3, %bb.t ] ; 2 uses
  %.5.us.us.i.lcssa = phi float [ %.5.us.us.i.lcssa.unr, %.prol.loopexit ], [ %.5.us.us.i.3, %bb.t ] ; 2 uses
  %indvars.iv.next166.i = add nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %lftr.wideiv168.i = trunc i64 %indvars.iv.next166.i to i32
  %exitcond169.not.i = icmp eq i32 %i.cn, %lftr.wideiv168.i
  br i1 %exitcond169.not.i, label %_auto_levels.exit, label %.lr.ph.us.i

.lr.ph115.split.split.i:                          ; preds = %.lr.ph115.split.i
  %i.dp = load i32, ptr %i.ch, align 4, !tbaa !139 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = zext nneg i32 %.079.i to i64            ; 2 uses
  %i.ds = add nuw nsw i32 %.078.i, 1              ; 2 uses
  %i.dt = sext i32 %.081.i to i64                 ; 2 uses
  %i.du = sext i32 %i.cg to i64                   ; 2 uses
  %i.dv = add nsw i32 %.080.i, 1                  ; 2 uses
  br i1 %i.dq, label %.lr.ph.us129.i, label %.lr.ph.i

.lr.ph.us129.i:                                   ; preds = %.lr.ph115.split.split.i, %._crit_edge.split.split.us.us.i
  %indvars.iv155.i = phi i64 [ %indvars.iv.next156.i, %._crit_edge.split.split.us.us.i ], [ %i.dt, %.lr.ph115.split.split.i ] ; 2 uses
  %.071112.us131.i = phi float [ %.3.us.us.2.i, %._crit_edge.split.split.us.us.i ], [ f0x7F7FFFFF, %.lr.ph115.split.split.i ]
  %.072111.us132.i = phi float [ %.375.us.us.2.i, %._crit_edge.split.split.us.us.i ], [ f0xFF7FFFFF, %.lr.ph115.split.split.i ]
  %i.dw = mul nsw i64 %indvars.iv155.i, %i.du
  %i.dx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dw
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.loopexit.us.us.i, %.lr.ph.us129.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %.loopexit.us.us.i ], [ %i.dr, %.lr.ph.us129.i ] ; 2 uses
  %.196.us101.us.i = phi float [ %.3.us.us.2.i, %.loopexit.us.us.i ], [ %.071112.us131.i, %.lr.ph.us129.i ] ; 2 uses
  %.17395.us102.us.i = phi float [ %.375.us.us.2.i, %.loopexit.us.us.i ], [ %.072111.us132.i, %.lr.ph.us129.i ] ; 2 uses
  %.idx179.i = shl nuw nsw i64 %indvars.iv150.i, 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx179.i ; 3 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !39 ; 3 uses
  %i.ea = fcmp reassoc nsz arcp contract afn ult float %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.us.us.i
  %i.eb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.17395.us102.us.i, float %i.dz)
  %i.ec = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.196.us101.us.i, float %i.dz)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader.us.us.i
  %.375.us.us.i = phi nsz float [ %i.eb, %bb.u ], [ %.17395.us102.us.i, %.preheader.us.us.i ] ; 2 uses
  %.3.us.us.i = phi nsz float [ %i.ec, %bb.u ], [ %.196.us101.us.i, %.preheader.us.us.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !39 ; 3 uses
  %i.ef = fcmp reassoc nsz arcp contract afn ult float %i.ee, 0.000000e+00
  br i1 %i.ef, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.375.us.us.i, float %i.ee)
  %i.eh = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.3.us.us.i, float %i.ee)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.375.us.us.1.i = phi nsz float [ %i.eg, %bb.w ], [ %.375.us.us.i, %bb.v ] ; 2 uses
  %.3.us.us.1.i = phi nsz float [ %i.eh, %bb.w ], [ %.3.us.us.i, %bb.v ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !39 ; 3 uses
  %i.ek = fcmp reassoc nsz arcp contract afn ult float %i.ej, 0.000000e+00
  br i1 %i.ek, label %.loopexit.us.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.375.us.us.1.i, float %i.ej)
  %i.em = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.3.us.us.1.i, float %i.ej)
  br label %.loopexit.us.us.i

.loopexit.us.us.i:                                ; preds = %bb.y, %bb.x
  %.375.us.us.2.i = phi nsz float [ %i.el, %bb.y ], [ %.375.us.us.1.i, %bb.x ] ; 3 uses
  %.3.us.us.2.i = phi nsz float [ %i.em, %bb.y ], [ %.3.us.us.1.i, %bb.x ] ; 3 uses
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1 ; 2 uses
  %lftr.wideiv153.i = trunc i64 %indvars.iv.next151.i to i32
  %exitcond154.not.i = icmp eq i32 %i.ds, %lftr.wideiv153.i
  br i1 %exitcond154.not.i, label %._crit_edge.split.split.us.us.i, label %.preheader.us.us.i

._crit_edge.split.split.us.us.i:                  ; preds = %.loopexit.us.us.i
  %indvars.iv.next156.i = add nsw i64 %indvars.iv155.i, 1 ; 2 uses
  %lftr.wideiv158.i = trunc i64 %indvars.iv.next156.i to i32
  %exitcond159.not.i = icmp eq i32 %i.dv, %lftr.wideiv158.i
  br i1 %exitcond159.not.i, label %_auto_levels.exit, label %.lr.ph.us129.i

.lr.ph.i:                                         ; preds = %.lr.ph115.split.split.i, %._crit_edge.split.split.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.split.split.i ], [ %i.dt, %.lr.ph115.split.split.i ] ; 2 uses
  %.071112.i = phi float [ %.5.i, %._crit_edge.split.split.i ], [ f0x7F7FFFFF, %.lr.ph115.split.split.i ]
  %.072111.i = phi float [ %.577.i, %._crit_edge.split.split.i ], [ f0xFF7FFFFF, %.lr.ph115.split.split.i ]
  %i.en = mul nsw i64 %indvars.iv141.i, %i.du
end_hunk_0
