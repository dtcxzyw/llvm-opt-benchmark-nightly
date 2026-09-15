Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/adi?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumUnrolled: 3
begin_hunk_0_@polybench_flush_cache:bb.a
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !9
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !9
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #11
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 8000000) #11
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !11   ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp ne i32 %i.e, 0
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 8000000) #11
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !11   ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i13 = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i13, label %bb.c, label %polybench_alloc_data.exit15

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i14 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit15:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.o = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 8000000) #11
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !11   ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp ne i32 %i.o, 0
  %or.cond.i.i16 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i.i16, label %bb.d, label %polybench_alloc_data.exit18

bb.d:                                             ; preds = %polybench_alloc_data.exit15
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i17 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.s) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.t = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 8000000) #11
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = icmp ne i32 %i.t, 0
  %or.cond.i.i19 = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i19, label %bb.e, label %polybench_alloc_data.exit21

bb.e:                                             ; preds = %polybench_alloc_data.exit18
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i20 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.x) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit21:                      ; preds = %polybench_alloc_data.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %polybench_alloc_data.exit21
  %indvars.iv17.i = phi i64 [ 0, %polybench_alloc_data.exit21 ], [ %indvars.iv.next18.i, %middle.block ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8000 x i8], ptr %i.f, i64 %indvars.iv17.i ; 2 uses
  %i.z = add nuw nsw i64 %indvars.iv17.i, 1000
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.i ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.aa = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ab = trunc nuw nsw <2 x i64> %i.aa to <2 x i32>
  %i.ac = uitofp nneg <2 x i32> %i.ab to <2 x double>
  %i.ad = fdiv <2 x double> %i.ac, splat (double 1.000000e+03)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  store <2 x double> %i.ad, ptr %i.ae, align 8, !tbaa !9
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.af = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind.next
  %i.ag = trunc nuw nsw <2 x i64> %i.af to <2 x i32>
  %i.ah = uitofp nneg <2 x i32> %i.ag to <2 x double>
  %i.ai = fdiv <2 x double> %i.ah, splat (double 1.000000e+03)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x double> %i.ai, ptr %i.ak, align 8, !tbaa !9
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.al = icmp eq i64 %index.next.1, 1000
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next18.i, 1000
  br i1 %exitcond20.not.i, label %init_array.exit, label %.preheader.i, !llvm.loop !15

init_array.exit:                                  ; preds = %middle.block
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 7992000
  br label %.preheader154.i

.preheader154.i:                                  ; preds = %bb.l, %init_array.exit
  %.0151161.i = phi i32 [ 1, %init_array.exit ], [ %i.fu, %bb.l ]
  br label %.lver.check

.lver.check:                                      ; preds = %bb.h, %.preheader154.i
  %indvars.iv166.i = phi i64 [ 1, %.preheader154.i ], [ %indvars.iv.next167.i, %bb.h ] ; 11 uses
  %i.an = mul nuw nsw i64 %indvars.iv166.i, 8000
  %i.ao = add nuw nsw i64 %i.an, 7992             ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.ao
  %scevgep34 = getelementptr i8, ptr %i.u, i64 %i.ao
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv166.i ; 2 uses
  store double 1.000000e+00, ptr %i.ap, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw [8000 x i8], ptr %i.p, i64 %indvars.iv166.i ; 8 uses
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !9
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw [8000 x i8], ptr %i.u, i64 %indvars.iv166.i ; 8 uses
  store double %i.ar, ptr %i.as, align 8, !tbaa !9
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv166.i ; 2 uses
  %bound0 = icmp ult ptr %i.aq, %scevgep34
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.ph.lver.orig, label %.ph

.ph.lver.orig:                                    ; preds = %.lver.check, %.ph.lver.orig
  %indvars.iv.i22.lver.orig = phi i64 [ %indvars.iv.next.i23.lver.orig, %.ph.lver.orig ], [ 1, %.lver.check ] ; 5 uses
  %i.at = add nsw i64 %indvars.iv.i22.lver.orig, -1 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !9
  %i.aw = fmul double %i.av, f0x409F400000000001
  %i.ax = fsub double f0x40AF420000000001, %i.aw  ; 2 uses
  %i.ay = fdiv double f0x409F400000000001, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i22.lver.orig
  store double %i.ay, ptr %i.az, align 8, !tbaa !9
  %gep.i.lver.orig = getelementptr [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i22.lver.orig ; 2 uses
  %i.ba = getelementptr i8, ptr %gep.i.lver.orig, i64 -8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !9
  %i.bc = fmul double %i.bb, f0x408F400000000001
  %i.bd = load <2 x double>, ptr %gep.i.lver.orig, align 8, !tbaa !9
  %i.be = fmul <2 x double> %i.bd, <double f0x409F3C0000000001, double f0x408F400000000001> ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0
  %i.bg = fsub double %i.bc, %i.bf
  %i.bh = extractelement <2 x double> %i.be, i64 1
  %i.bi = fadd double %i.bg, %i.bh
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !9
  %i.bl = fmul double %i.bk, f0x409F400000000001
  %i.bm = fadd double %i.bi, %i.bl
  %i.bn = fdiv double %i.bm, %i.ax
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i22.lver.orig
  store double %i.bn, ptr %i.bo, align 8, !tbaa !9
  %indvars.iv.next.i23.lver.orig = add nuw nsw i64 %indvars.iv.i22.lver.orig, 1 ; 2 uses
  %exitcond.not.i24.lver.orig = icmp eq i64 %indvars.iv.next.i23.lver.orig, 999
  br i1 %exitcond.not.i24.lver.orig, label %.loopexit, label %.ph.lver.orig, !llvm.loop !16

.ph:                                              ; preds = %.lver.check
  %load_initial = load double, ptr %i.aq, align 8
  %load_initial36 = load double, ptr %i.as, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.ph
  %store_forwarded37 = phi double [ %load_initial36, %.ph ], [ %i.ce, %bb.f ]
  %store_forwarded = phi double [ %load_initial, %.ph ], [ %i.br, %bb.f ]
  %indvars.iv.i22 = phi i64 [ 1, %.ph ], [ %indvars.iv.next.i23, %bb.f ] ; 4 uses
  %i.bp = fmul double %store_forwarded, f0x409F400000000001
  %i.bq = fsub double f0x40AF420000000001, %i.bp  ; 2 uses
  %i.br = fdiv double f0x409F400000000001, %i.bq  ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i22
  store double %i.br, ptr %i.bs, align 8, !tbaa !9
  %gep.i = getelementptr [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i22 ; 2 uses
  %i.bt = getelementptr i8, ptr %gep.i, i64 -8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !9
  %i.bv = fmul double %i.bu, f0x408F400000000001
  %i.bw = load <2 x double>, ptr %gep.i, align 8, !tbaa !9
  %i.bx = fmul <2 x double> %i.bw, <double f0x409F3C0000000001, double f0x408F400000000001> ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  %i.bz = fsub double %i.bv, %i.by
  %i.ca = extractelement <2 x double> %i.bx, i64 1
  %i.cb = fadd double %i.bz, %i.ca
  %i.cc = fmul double %store_forwarded37, f0x409F400000000001
  %i.cd = fadd double %i.cb, %i.cc
  %i.ce = fdiv double %i.cd, %i.bq                ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i22
  store double %i.ce, ptr %i.cf, align 8, !tbaa !9
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, 999
  br i1 %exitcond.not.i24, label %.loopexit, label %bb.f, !llvm.loop !16

.loopexit:                                        ; preds = %bb.f, %.ph.lver.orig
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv166.i
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.loopexit
  %indvars.iv163.i = phi i64 [ 998, %.loopexit ], [ %indvars.iv.next164.i.1, %bb.g ] ; 5 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv163.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw [8000 x i8], ptr %i.k, i64 %indvars.iv163.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8000
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv166.i
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !9
  %i.cn = fmul double %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv163.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !9
  %i.cq = fadd double %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv166.i
  store double %i.cq, ptr %i.cr, align 8, !tbaa !9
  %indvars.iv.next164.i = add nsw i64 %indvars.iv163.i, -1 ; 4 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next164.i
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw [8000 x i8], ptr %i.k, i64 %indvars.iv.next164.i ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8000
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv166.i
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !9
  %i.cy = fmul double %i.ct, %i.cx
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next164.i
  %i.da = load double, ptr %i.cz, align 8, !tbaa !9
  %i.db = fadd double %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv166.i
  store double %i.db, ptr %i.dc, align 8, !tbaa !9
  %indvars.iv.next164.i.1 = add nsw i64 %indvars.iv163.i, -2
  %.not = icmp eq i64 %indvars.iv.next164.i, 1
  br i1 %.not, label %bb.h, label %bb.g, !llvm.loop !17

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next167.i, 999
  br i1 %exitcond169.not.i, label %.lver.check45, label %.lver.check, !llvm.loop !18

.lver.check45:                                    ; preds = %bb.h, %bb.k
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %bb.k ], [ 1, %bb.h ] ; 7 uses
  %i.dd = mul nuw nsw i64 %indvars.iv177.i, 8000
  %i.de = getelementptr i8, ptr %i.f, i64 %i.dd
  %scevgep53 = getelementptr i8, ptr %i.de, i64 7992
  %i.df = mul nuw nsw i64 %indvars.iv177.i, 8000
  %i.dg = add nuw nsw i64 %i.df, 7992             ; 2 uses
  %scevgep40 = getelementptr i8, ptr %i.p, i64 %i.dg
  %scevgep41 = getelementptr i8, ptr %i.u, i64 %i.dg
  %i.dh = getelementptr inbounds nuw [8000 x i8], ptr %i.f, i64 %indvars.iv177.i ; 5 uses
  store double 1.000000e+00, ptr %i.dh, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw [8000 x i8], ptr %i.p, i64 %indvars.iv177.i ; 8 uses
  store double 0.000000e+00, ptr %i.di, align 8, !tbaa !9
  %i.dj = load double, ptr %i.dh, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw [8000 x i8], ptr %i.u, i64 %indvars.iv177.i ; 8 uses
  store double %i.dj, ptr %i.dk, align 8, !tbaa !9
  %i.dl = getelementptr [8000 x i8], ptr %i.k, i64 %indvars.iv177.i ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8000  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8000 ; 2 uses
  %bound042 = icmp ult ptr %i.di, %scevgep41
  %bound143 = icmp ult ptr %i.dk, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.ph46.lver.orig, label %.ph46

.ph46.lver.orig:                                  ; preds = %.lver.check45, %.ph46.lver.orig
  %indvars.iv170.i.lver.orig = phi i64 [ %indvars.iv.next171.i.lver.orig, %.ph46.lver.orig ], [ 1, %.lver.check45 ] ; 7 uses
  %i.do = add nsw i64 %indvars.iv170.i.lver.orig, -1 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !9
  %i.dr = fmul double %i.dq, f0x408F400000000001
  %i.ds = fsub double f0x409F440000000001, %i.dr  ; 2 uses
  %i.dt = fdiv double f0x408F400000000001, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv170.i.lver.orig
  store double %i.dt, ptr %i.du, align 8, !tbaa !9
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv170.i.lver.orig
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !9
  %i.dx = fmul double %i.dw, f0x409F400000000001
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv170.i.lver.orig
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !9
  %i.ea = fmul double %i.dz, f0x40AF3E0000000001
  %i.eb = fsub double %i.dx, %i.ea
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv170.i.lver.orig
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !9
  %i.ee = fmul double %i.ed, f0x409F400000000001
  %i.ef = fadd double %i.eb, %i.ee
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.do
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !9
  %i.ei = fmul double %i.eh, f0x408F400000000001
  %i.ej = fadd double %i.ef, %i.ei
  %i.ek = fdiv double %i.ej, %i.ds
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv170.i.lver.orig
  store double %i.ek, ptr %i.el, align 8, !tbaa !9
  %indvars.iv.next171.i.lver.orig = add nuw nsw i64 %indvars.iv170.i.lver.orig, 1 ; 2 uses
  %exitcond173.not.i.lver.orig = icmp eq i64 %indvars.iv.next171.i.lver.orig, 999
  br i1 %exitcond173.not.i.lver.orig, label %.loopexit47, label %.ph46.lver.orig, !llvm.loop !19

.ph46:                                            ; preds = %.lver.check45
  %load_initial49.a = load double, ptr %i.di, align 8
  %load_initial51 = load double, ptr %i.dk, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.ph46
  %store_forwarded52 = phi double [ %load_initial51, %.ph46 ], [ %i.fd, %bb.i ]
  %store_forwarded50 = phi double [ %load_initial49.a, %.ph46 ], [ %i.eo, %bb.i ]
  %indvars.iv170.i = phi i64 [ 1, %.ph46 ], [ %indvars.iv.next171.i, %bb.i ] ; 6 uses
  %i.em = fmul double %store_forwarded50, f0x408F400000000001
  %i.en = fsub double f0x409F440000000001, %i.em  ; 2 uses
  %i.eo = fdiv double f0x408F400000000001, %i.en  ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv170.i
  store double %i.eo, ptr %i.ep, align 8, !tbaa !9
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv170.i
  %i.er = load double, ptr %i.eq, align 8, !tbaa !9
  %i.es = fmul double %i.er, f0x409F400000000001
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv170.i
  %i.eu = load double, ptr %i.et, align 8, !tbaa !9
  %i.ev = fmul double %i.eu, f0x40AF3E0000000001
  %i.ew = fsub double %i.es, %i.ev
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv170.i
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !9
  %i.ez = fmul double %i.ey, f0x409F400000000001
  %i.fa = fadd double %i.ew, %i.ez
  %i.fb = fmul double %store_forwarded52, f0x408F400000000001
  %i.fc = fadd double %i.fa, %i.fb
  %i.fd = fdiv double %i.fc, %i.en                ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv170.i
  store double %i.fd, ptr %i.fe, align 8, !tbaa !9
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next171.i, 999
  br i1 %exitcond173.not.i, label %.loopexit47, label %bb.i, !llvm.loop !19

.loopexit47:                                      ; preds = %bb.i, %.ph46.lver.orig
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dh, i64 7992
  store double 1.000000e+00, ptr %i.ff, align 8, !tbaa !9
  %load_initial54 = load double, ptr %scevgep53, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.loopexit47
  %store_forwarded55 = phi double [ %load_initial54, %.loopexit47 ], [ %i.ft, %bb.j ]
  %indvars.iv174.i = phi i64 [ 998, %.loopexit47 ], [ %indvars.iv.next175.i.1, %bb.j ] ; 5 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv174.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !9
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv174.i
  %i.fj = fmul double %i.fh, %store_forwarded55
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv174.i
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !9
  %i.fm = fadd double %i.fj, %i.fl                ; 2 uses
  store double %i.fm, ptr %i.fi, align 8, !tbaa !9
  %indvars.iv.next175.i = add nsw i64 %indvars.iv174.i, -1 ; 4 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.next175.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !9
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next175.i
  %i.fq = fmul double %i.fo, %i.fm
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next175.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !9
  %i.ft = fadd double %i.fq, %i.fs                ; 2 uses
  store double %i.ft, ptr %i.fp, align 8, !tbaa !9
  %indvars.iv.next175.i.1 = add nsw i64 %indvars.iv174.i, -2
  %.not58 = icmp eq i64 %indvars.iv.next175.i, 1
  br i1 %.not58, label %bb.k, label %bb.j, !llvm.loop !20

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond180.not.i = icmp eq i64 %indvars.iv.next178.i, 999
  br i1 %exitcond180.not.i, label %bb.l, label %.lver.check45, !llvm.loop !21

bb.l:                                             ; preds = %bb.k
  %i.fu = add nuw nsw i32 %.0151161.i, 1          ; 2 uses
  %exitcond181.not.i = icmp eq i32 %i.fu, 501
  br i1 %exitcond181.not.i, label %kernel_adi.exit, label %.preheader154.i, !llvm.loop !22

kernel_adi.exit:                                  ; preds = %bb.l
  %i.fv = call noalias dereferenceable_or_null(16001) ptr @malloc(i64 noundef 16001) #14 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16000
  store i8 0, ptr %i.fw, align 1, !tbaa !28
  br label %.preheader.i26

.preheader.i26:                                   ; preds = %bb.n, %kernel_adi.exit
  %indvars.iv20.i = phi i64 [ 0, %kernel_adi.exit ], [ %indvars.iv.next21.i, %bb.n ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [8000 x i8], ptr %i.f, i64 %indvars.iv20.i
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i26
  %indvars.iv.i27 = phi i64 [ 0, %.preheader.i26 ], [ %indvars.iv.next.i28, %bb.m ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.i27
  %i.fz = shl nuw nsw i64 %indvars.iv.i27, 4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fz
  %i.gb = load i64, ptr %i.fy, align 8, !tbaa !9  ; 4 uses
  %i.gc = lshr i64 %i.gb, 56
  %i.gd = trunc nuw i64 %i.gc to i8
  %i.ge = insertelement <2 x i64> poison, i64 %i.gb, i64 0
  %i.gf = shufflevector <2 x i64> %i.ge, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gg = lshr <2 x i64> %i.gf, <i64 40, i64 48>
  %i.gh = trunc <2 x i64> %i.gg to <2 x i8>
  %i.gi = insertelement <4 x i64> poison, i64 %i.gb, i64 0
  %i.gj = shufflevector <4 x i64> %i.gi, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gk = lshr <4 x i64> %i.gj, <i64 8, i64 16, i64 24, i64 32>
  %i.gl = trunc <4 x i64> %i.gk to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.gb to i8
  %i.gm = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.gn = shufflevector <4 x i8> %i.gl, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.go = shufflevector <8 x i8> %i.gm, <8 x i8> %i.gn, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.gp = shufflevector <2 x i8> %i.gh, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <8 x i8> %i.go, <8 x i8> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.gr = insertelement <8 x i8> %i.gq, i8 %i.gd, i64 7
  %i.gs = and <8 x i8> %i.gr, splat (i8 15)
  %i.gt = or disjoint <8 x i8> %i.gs, splat (i8 48)
  %i.gu = shufflevector <8 x i8> %i.gt, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.gu, ptr %i.ga, align 1, !tbaa !28
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.next.i28, 1000
  br i1 %exitcond.not.i29, label %bb.n, label %bb.m, !llvm.loop !23

bb.n:                                             ; preds = %bb.m
  %i.gv = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.gw = call i32 @fputs(ptr noundef nonnull %i.fv, ptr noundef %i.gv) #12 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 1000
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i26, !llvm.loop !24

print_array.exit:                                 ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.fv) #11
  call void @free(ptr noundef nonnull %i.f) #11
  call void @free(ptr noundef %i.k) #11
  call void @free(ptr noundef %i.p) #11
  call void @free(ptr noundef %i.u) #11
  ret i32 0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!12, !12, i64 0}
!14 = distinct !{!14, !25, !26, !27}
!15 = distinct !{!15, !25}
!16 = distinct !{!16, !25}
!17 = distinct !{!17, !25}
!18 = distinct !{!18, !25}
!19 = distinct !{!19, !25}
!20 = distinct !{!20, !25}
!21 = distinct !{!21, !25}
!22 = distinct !{!22, !25}
!23 = distinct !{!23, !25}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!5, !5, i64 0}
end_hunk_0
