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
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !8
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !8
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
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #11
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #12 ; 0 uses
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
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 8000000) #11
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !10   ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp ne i32 %i.e, 0
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.j = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 8000000) #11
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !10   ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp ne i32 %i.k, 0
  %or.cond.i.i13 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i.i13, label %bb.c, label %polybench_alloc_data.exit14

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.p = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit14:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 8000000) #11
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !10   ; 6 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = icmp ne i32 %i.q, 0
  %or.cond.i.i15 = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i15, label %bb.d, label %polybench_alloc_data.exit16

bb.d:                                             ; preds = %polybench_alloc_data.exit14
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.v = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.u) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit16:                      ; preds = %polybench_alloc_data.exit14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.w = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 8000000) #11
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !10   ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = icmp ne i32 %i.w, 0
  %or.cond.i.i17 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i.i17, label %bb.e, label %polybench_alloc_data.exit18

bb.e:                                             ; preds = %polybench_alloc_data.exit16
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ab = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.aa) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %polybench_alloc_data.exit18
  %indvars.iv17.i = phi i64 [ 0, %polybench_alloc_data.exit18 ], [ %indvars.iv.next18.i, %middle.block ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8000 x i8], ptr %i.f, i64 %indvars.iv17.i ; 2 uses
  %i.ad = add nuw nsw i64 %indvars.iv17.i, 1000
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.i ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.ae = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.af = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ag = uitofp nneg <2 x i32> %i.af to <2 x double>
  %i.ah = fdiv <2 x double> %i.ag, splat (double 1.000000e+03)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  store <2 x double> %i.ah, ptr %i.ai, align 8, !tbaa !8
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.aj = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind.next
  %i.ak = trunc nuw nsw <2 x i64> %i.aj to <2 x i32>
  %i.al = uitofp nneg <2 x i32> %i.ak to <2 x double>
  %i.am = fdiv <2 x double> %i.al, splat (double 1.000000e+03)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x double> %i.am, ptr %i.ao, align 8, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.ap = icmp eq i64 %index.next.1, 1000
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next18.i, 1000
  br i1 %exitcond20.not.i, label %init_array.exit, label %.preheader.i, !llvm.loop !18

init_array.exit:                                  ; preds = %middle.block
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 7992000
  br label %.preheader154.i

.preheader154.i:                                  ; preds = %bb.l, %init_array.exit
  %.0151161.i = phi i32 [ 1, %init_array.exit ], [ %i.fy, %bb.l ]
  br label %.lver.check

.lver.check:                                      ; preds = %bb.h, %.preheader154.i
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.preheader154.i ] ; 2 uses
  %indvars.iv166.i = phi i64 [ %indvars.iv.next167.i, %bb.h ], [ 1, %.preheader154.i ] ; 10 uses
  %i.ar = mul nuw nsw i64 %indvar, 8000
  %i.as = add nuw i64 %i.ar, 15992                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.as
  %scevgep31 = getelementptr i8, ptr %i.x, i64 %i.as
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv166.i ; 2 uses
  store double 1.000000e+00, ptr %i.at, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw [8000 x i8], ptr %i.r, i64 %indvars.iv166.i ; 8 uses
  store double 0.000000e+00, ptr %i.au, align 8, !tbaa !8
  %i.av = load double, ptr %i.at, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw [8000 x i8], ptr %i.x, i64 %indvars.iv166.i ; 8 uses
  store double %i.av, ptr %i.aw, align 8, !tbaa !8
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv166.i ; 2 uses
  %bound0 = icmp ult ptr %i.au, %scevgep31
  %bound1 = icmp ult ptr %i.aw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.ph.lver.orig, label %.ph

.ph.lver.orig:                                    ; preds = %.lver.check, %.ph.lver.orig
  %indvars.iv.i19.lver.orig = phi i64 [ %indvars.iv.next.i20.lver.orig, %.ph.lver.orig ], [ 1, %.lver.check ] ; 5 uses
  %i.ax = add nsw i64 %indvars.iv.i19.lver.orig, -1 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !8
  %i.ba = fmul double %i.az, f0x409F400000000001
  %i.bb = fsub double f0x40AF420000000001, %i.ba  ; 2 uses
  %i.bc = fdiv double f0x409F400000000001, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i19.lver.orig
  store double %i.bc, ptr %i.bd, align 8, !tbaa !8
  %gep.i.lver.orig = getelementptr [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i19.lver.orig ; 2 uses
  %i.be = getelementptr i8, ptr %gep.i.lver.orig, i64 -8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !8
  %i.bg = fmul double %i.bf, f0x408F400000000001
  %i.bh = load <2 x double>, ptr %gep.i.lver.orig, align 8, !tbaa !8
  %i.bi = fmul <2 x double> %i.bh, <double f0x409F3C0000000001, double f0x408F400000000001> ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = fsub double %i.bg, %i.bj
  %i.bl = extractelement <2 x double> %i.bi, i64 1
  %i.bm = fadd double %i.bk, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !8
  %i.bp = fmul double %i.bo, f0x409F400000000001
  %i.bq = fadd double %i.bm, %i.bp
  %i.br = fdiv double %i.bq, %i.bb
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i19.lver.orig
  store double %i.br, ptr %i.bs, align 8, !tbaa !8
  %indvars.iv.next.i20.lver.orig = add nuw nsw i64 %indvars.iv.i19.lver.orig, 1 ; 2 uses
  %exitcond.not.i21.lver.orig = icmp eq i64 %indvars.iv.next.i20.lver.orig, 999
  br i1 %exitcond.not.i21.lver.orig, label %.loopexit, label %.ph.lver.orig, !llvm.loop !19

.ph:                                              ; preds = %.lver.check
  %load_initial = load double, ptr %i.au, align 8
  %load_initial33 = load double, ptr %i.aw, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.ph
  %store_forwarded34 = phi double [ %load_initial33, %.ph ], [ %i.ci, %bb.f ]
  %store_forwarded = phi double [ %load_initial, %.ph ], [ %i.bv, %bb.f ]
  %indvars.iv.i19 = phi i64 [ 1, %.ph ], [ %indvars.iv.next.i20, %bb.f ] ; 4 uses
  %i.bt = fmul double %store_forwarded, f0x409F400000000001
  %i.bu = fsub double f0x40AF420000000001, %i.bt  ; 2 uses
  %i.bv = fdiv double f0x409F400000000001, %i.bu  ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i19
  store double %i.bv, ptr %i.bw, align 8, !tbaa !8
  %gep.i = getelementptr [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i19 ; 2 uses
  %i.bx = getelementptr i8, ptr %gep.i, i64 -8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !8
  %i.bz = fmul double %i.by, f0x408F400000000001
  %i.ca = load <2 x double>, ptr %gep.i, align 8, !tbaa !8
  %i.cb = fmul <2 x double> %i.ca, <double f0x409F3C0000000001, double f0x408F400000000001> ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = fsub double %i.bz, %i.cc
  %i.ce = extractelement <2 x double> %i.cb, i64 1
  %i.cf = fadd double %i.cd, %i.ce
  %i.cg = fmul double %store_forwarded34, f0x409F400000000001
  %i.ch = fadd double %i.cf, %i.cg
  %i.ci = fdiv double %i.ch, %i.bu                ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i19
  store double %i.ci, ptr %i.cj, align 8, !tbaa !8
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i20, 999
  br i1 %exitcond.not.i21, label %.loopexit, label %bb.f, !llvm.loop !19

.loopexit:                                        ; preds = %bb.f, %.ph.lver.orig
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv166.i
  store double 1.000000e+00, ptr %i.ck, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.loopexit
  %indvars.iv163.i = phi i64 [ 998, %.loopexit ], [ %indvars.iv.next164.i.1, %bb.g ] ; 5 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv163.i
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw [8000 x i8], ptr %i.l, i64 %indvars.iv163.i ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8000
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv166.i
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !8
  %i.cr = fmul double %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv163.i
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !8
  %i.cu = fadd double %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv166.i
  store double %i.cu, ptr %i.cv, align 8, !tbaa !8
  %indvars.iv.next164.i = add nsw i64 %indvars.iv163.i, -1 ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next164.i
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw [8000 x i8], ptr %i.l, i64 %indvars.iv.next164.i ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8000
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv166.i
  %i.db = load double, ptr %i.da, align 8, !tbaa !8
  %i.dc = fmul double %i.cx, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next164.i
  %i.de = load double, ptr %i.dd, align 8, !tbaa !8
  %i.df = fadd double %i.dc, %i.de
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv166.i
  store double %i.df, ptr %i.dg, align 8, !tbaa !8
  %indvars.iv.next164.i.1 = add nsw i64 %indvars.iv163.i, -2
  %.not = icmp eq i64 %indvars.iv.next164.i, 1
  br i1 %.not, label %bb.h, label %bb.g, !llvm.loop !20

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next167.i, 999
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond169.not.i, label %.lver.check42, label %.lver.check, !llvm.loop !21

.lver.check42:                                    ; preds = %bb.h, %bb.k
  %indvar35 = phi i64 [ %indvar.next36, %bb.k ], [ 0, %bb.h ] ; 3 uses
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %bb.k ], [ 1, %bb.h ] ; 5 uses
  %i.dh = mul nuw nsw i64 %indvar35, 8000
  %i.di = getelementptr i8, ptr %i.f, i64 %i.dh
  %scevgep50 = getelementptr i8, ptr %i.di, i64 15992
  %i.dj = mul nuw nsw i64 %indvar35, 8000
  %i.dk = add nuw i64 %i.dj, 15992                ; 2 uses
  %scevgep37 = getelementptr i8, ptr %i.r, i64 %i.dk
  %scevgep38 = getelementptr i8, ptr %i.x, i64 %i.dk
  %i.dl = getelementptr inbounds nuw [8000 x i8], ptr %i.f, i64 %indvars.iv177.i ; 5 uses
  store double 1.000000e+00, ptr %i.dl, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw [8000 x i8], ptr %i.r, i64 %indvars.iv177.i ; 8 uses
  store double 0.000000e+00, ptr %i.dm, align 8, !tbaa !8
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw [8000 x i8], ptr %i.x, i64 %indvars.iv177.i ; 8 uses
  store double %i.dn, ptr %i.do, align 8, !tbaa !8
  %i.dp = getelementptr [8000 x i8], ptr %i.l, i64 %indvars.iv177.i ; 4 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 -8000  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8000 ; 2 uses
  %bound039 = icmp ult ptr %i.dm, %scevgep38
  %bound140 = icmp ult ptr %i.do, %scevgep37
  %found.conflict41 = and i1 %bound039, %bound140
  br i1 %found.conflict41, label %.ph43.lver.orig, label %.ph43

.ph43.lver.orig:                                  ; preds = %.lver.check42, %.ph43.lver.orig
  %indvars.iv170.i.lver.orig = phi i64 [ %indvars.iv.next171.i.lver.orig, %.ph43.lver.orig ], [ 1, %.lver.check42 ] ; 7 uses
  %i.ds = add nsw i64 %indvars.iv170.i.lver.orig, -1 ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ds
  %i.du = load double, ptr %i.dt, align 8, !tbaa !8
  %i.dv = fmul double %i.du, f0x408F400000000001
  %i.dw = fsub double f0x409F440000000001, %i.dv  ; 2 uses
  %i.dx = fdiv double f0x408F400000000001, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv170.i.lver.orig
  store double %i.dx, ptr %i.dy, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv170.i.lver.orig
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8
  %i.eb = fmul double %i.ea, f0x409F400000000001
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv170.i.lver.orig
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !8
  %i.ee = fmul double %i.ed, f0x40AF3E0000000001
  %i.ef = fsub double %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv170.i.lver.orig
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !8
  %i.ei = fmul double %i.eh, f0x409F400000000001
  %i.ej = fadd double %i.ef, %i.ei
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.el = load double, ptr %i.ek, align 8, !tbaa !8
  %i.em = fmul double %i.el, f0x408F400000000001
  %i.en = fadd double %i.ej, %i.em
  %i.eo = fdiv double %i.en, %i.dw
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv170.i.lver.orig
  store double %i.eo, ptr %i.ep, align 8, !tbaa !8
  %indvars.iv.next171.i.lver.orig = add nuw nsw i64 %indvars.iv170.i.lver.orig, 1 ; 2 uses
  %exitcond173.not.i.lver.orig = icmp eq i64 %indvars.iv.next171.i.lver.orig, 999
  br i1 %exitcond173.not.i.lver.orig, label %.loopexit44, label %.ph43.lver.orig, !llvm.loop !22

.ph43:                                            ; preds = %.lver.check42
  %load_initial46.a = load double, ptr %i.dm, align 8
  %load_initial48 = load double, ptr %i.do, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.ph43
  %store_forwarded49 = phi double [ %load_initial48, %.ph43 ], [ %i.fh, %bb.i ]
  %store_forwarded47 = phi double [ %load_initial46.a, %.ph43 ], [ %i.es, %bb.i ]
  %indvars.iv170.i = phi i64 [ 1, %.ph43 ], [ %indvars.iv.next171.i, %bb.i ] ; 6 uses
  %i.eq = fmul double %store_forwarded47, f0x408F400000000001
  %i.er = fsub double f0x409F440000000001, %i.eq  ; 2 uses
  %i.es = fdiv double f0x408F400000000001, %i.er  ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv170.i
  store double %i.es, ptr %i.et, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv170.i
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !8
  %i.ew = fmul double %i.ev, f0x409F400000000001
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv170.i
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !8
  %i.ez = fmul double %i.ey, f0x40AF3E0000000001
  %i.fa = fsub double %i.ew, %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv170.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !8
  %i.fd = fmul double %i.fc, f0x409F400000000001
  %i.fe = fadd double %i.fa, %i.fd
  %i.ff = fmul double %store_forwarded49, f0x408F400000000001
  %i.fg = fadd double %i.fe, %i.ff
  %i.fh = fdiv double %i.fg, %i.er                ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv170.i
  store double %i.fh, ptr %i.fi, align 8, !tbaa !8
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond173.not.i = icmp eq i64 %indvars.iv.next171.i, 999
  br i1 %exitcond173.not.i, label %.loopexit44, label %bb.i, !llvm.loop !22

.loopexit44:                                      ; preds = %bb.i, %.ph43.lver.orig
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dl, i64 7992
  store double 1.000000e+00, ptr %i.fj, align 8, !tbaa !8
  %load_initial51 = load double, ptr %scevgep50, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.loopexit44
  %store_forwarded52 = phi double [ %load_initial51, %.loopexit44 ], [ %i.fx, %bb.j ]
  %indvars.iv174.i = phi i64 [ 998, %.loopexit44 ], [ %indvars.iv.next175.i.1, %bb.j ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv174.i
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv174.i
  %i.fn = fmul double %i.fl, %store_forwarded52
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv174.i
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !8
  %i.fq = fadd double %i.fn, %i.fp                ; 2 uses
  store double %i.fq, ptr %i.fm, align 8, !tbaa !8
  %indvars.iv.next175.i = add nsw i64 %indvars.iv174.i, -1 ; 4 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.next175.i
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next175.i
  %i.fu = fmul double %i.fs, %i.fq
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next175.i
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !8
  %i.fx = fadd double %i.fu, %i.fw                ; 2 uses
  store double %i.fx, ptr %i.ft, align 8, !tbaa !8
  %indvars.iv.next175.i.1 = add nsw i64 %indvars.iv174.i, -2
  %.not55 = icmp eq i64 %indvars.iv.next175.i, 1
  br i1 %.not55, label %bb.k, label %bb.j, !llvm.loop !23

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond180.not.i = icmp eq i64 %indvars.iv.next178.i, 999
  %indvar.next36 = add i64 %indvar35, 1
  br i1 %exitcond180.not.i, label %bb.l, label %.lver.check42, !llvm.loop !24

bb.l:                                             ; preds = %bb.k
  %i.fy = add nuw nsw i32 %.0151161.i, 1          ; 2 uses
  %exitcond181.not.i = icmp eq i32 %i.fy, 501
  br i1 %exitcond181.not.i, label %kernel_adi.exit, label %.preheader154.i, !llvm.loop !25

kernel_adi.exit:                                  ; preds = %bb.l
  %i.fz = call noalias dereferenceable_or_null(16001) ptr @malloc(i64 noundef 16001) #14 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16000
  store i8 0, ptr %i.ga, align 1, !tbaa !26
  br label %.preheader.i23

.preheader.i23:                                   ; preds = %bb.n, %kernel_adi.exit
  %indvars.iv20.i = phi i64 [ 0, %kernel_adi.exit ], [ %indvars.iv.next21.i, %bb.n ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8000 x i8], ptr %i.f, i64 %indvars.iv20.i
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i23
  %indvars.iv.i24 = phi i64 [ 0, %.preheader.i23 ], [ %indvars.iv.next.i25, %bb.m ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.i24
  %i.gd = shl nuw nsw i64 %indvars.iv.i24, 4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gd
  %i.gf = load i64, ptr %i.gc, align 8, !tbaa !8  ; 4 uses
  %i.gg = lshr i64 %i.gf, 56
  %i.gh = trunc nuw i64 %i.gg to i8
  %i.gi = insertelement <2 x i64> poison, i64 %i.gf, i64 0
  %i.gj = shufflevector <2 x i64> %i.gi, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gk = lshr <2 x i64> %i.gj, <i64 40, i64 48>
  %i.gl = trunc <2 x i64> %i.gk to <2 x i8>
  %i.gm = insertelement <4 x i64> poison, i64 %i.gf, i64 0
  %i.gn = shufflevector <4 x i64> %i.gm, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.go = lshr <4 x i64> %i.gn, <i64 8, i64 16, i64 24, i64 32>
  %i.gp = trunc <4 x i64> %i.go to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.gf to i8
  %i.gq = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.gr = shufflevector <4 x i8> %i.gp, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gs = shufflevector <8 x i8> %i.gq, <8 x i8> %i.gr, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.gt = shufflevector <2 x i8> %i.gl, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gu = shufflevector <8 x i8> %i.gs, <8 x i8> %i.gt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.gv = insertelement <8 x i8> %i.gu, i8 %i.gh, i64 7
  %i.gw = and <8 x i8> %i.gv, splat (i8 15)
  %i.gx = or disjoint <8 x i8> %i.gw, splat (i8 48)
  %i.gy = shufflevector <8 x i8> %i.gx, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.gy, ptr %i.ge, align 1, !tbaa !26
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, 1000
  br i1 %exitcond.not.i26, label %bb.n, label %bb.m, !llvm.loop !27

bb.n:                                             ; preds = %bb.m
  %i.gz = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ha = call i32 @fputs(ptr noundef nonnull %i.fz, ptr noundef %i.gz) #12 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 1000
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i23, !llvm.loop !28

print_array.exit:                                 ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.fz) #11
  call void @free(ptr noundef nonnull %i.f) #11
  call void @free(ptr noundef %i.l) #11
  call void @free(ptr noundef %i.r) #11
  call void @free(ptr noundef %i.x) #11
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = !{!6, !6, i64 0}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
end_hunk_0
