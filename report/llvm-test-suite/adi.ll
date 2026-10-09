Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/adi?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
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
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #12
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 8000000) #12
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !11   ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp ne i32 %i.e, 0
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 8000000) #12
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !11   ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i13 = or i1 %i.m, %i.l
  br i1 %or.cond.i.i13, label %bb.c, label %polybench_alloc_data.exit15

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i14 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit15:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.o = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 8000000) #12
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !11   ; 6 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp ne i32 %i.o, 0
  %or.cond.i.i16 = or i1 %i.r, %i.q
  br i1 %or.cond.i.i16, label %bb.d, label %polybench_alloc_data.exit18

bb.d:                                             ; preds = %polybench_alloc_data.exit15
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i17 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.s) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.t = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 8000000) #12
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = icmp ne i32 %i.t, 0
  %or.cond.i.i19 = or i1 %i.w, %i.v
  br i1 %or.cond.i.i19, label %bb.e, label %polybench_alloc_data.exit21

bb.e:                                             ; preds = %polybench_alloc_data.exit18
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i20 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.x) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit21:                      ; preds = %polybench_alloc_data.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
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
  %2 = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind.next
  %3 = trunc nuw nsw <2 x i64> %2 to <2 x i32>
  %i.af = uitofp nneg <2 x i32> %3 to <2 x double>
  %i.ag = fdiv <2 x double> %i.af, splat (double 1.000000e+03)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x double> %i.ag, ptr %i.ai, align 8, !tbaa !9
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.aj = icmp eq i64 %index.next.1, 1000
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next18.i, 1000
  br i1 %exitcond20.not.i, label %init_array.exit, label %.preheader.i, !llvm.loop !15

init_array.exit:                                  ; preds = %middle.block
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 7992000
  br label %.preheader154.i

.preheader154.i:                                  ; preds = %bb.l, %init_array.exit
  %.0151161.i = phi i32 [ 1, %init_array.exit ], [ %i.fs, %bb.l ]
  br label %.lver.check

.lver.check:                                      ; preds = %bb.h, %.preheader154.i
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %.preheader154.i ] ; 2 uses
  %indvars.iv166.i = phi i64 [ %indvars.iv.next167.i, %bb.h ], [ 1, %.preheader154.i ] ; 10 uses
  %i.al = mul nuw nsw i64 %indvar, 8000
  %i.am = add nuw i64 %i.al, 15992                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.am
  %scevgep34 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv166.i ; 2 uses
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw [8000 x i8], ptr %i.p, i64 %indvars.iv166.i ; 8 uses
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !9
  %i.ap = load double, ptr %i.an, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw [8000 x i8], ptr %i.u, i64 %indvars.iv166.i ; 8 uses
  store double %i.ap, ptr %i.aq, align 8, !tbaa !9
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv166.i ; 2 uses
  %bound0 = icmp ult ptr %i.ao, %scevgep34
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.ph.lver.orig, label %.ph

.ph.lver.orig:                                    ; preds = %.lver.check, %.ph.lver.orig
  %indvars.iv.i22.lver.orig = phi i64 [ %indvars.iv.next.i23.lver.orig, %.ph.lver.orig ], [ 1, %.lver.check ] ; 5 uses
  %i.ar = add nsw i64 %indvars.iv.i22.lver.orig, -1 ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !9
  %i.au = fmul double %i.at, f0x409F400000000001
  %i.av = fsub double f0x40AF420000000001, %i.au  ; 2 uses
  %i.aw = fdiv double f0x409F400000000001, %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i22.lver.orig
  store double %i.aw, ptr %i.ax, align 8, !tbaa !9
  %gep.i.lver.orig = getelementptr [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i22.lver.orig ; 2 uses
  %i.ay = getelementptr i8, ptr %gep.i.lver.orig, i64 -8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !9
  %i.ba = fmul double %i.az, f0x408F400000000001
  %i.bb = load <2 x double>, ptr %gep.i.lver.orig, align 8, !tbaa !9
  %i.bc = fmul <2 x double> %i.bb, <double f0x409F3C0000000001, double f0x408F400000000001> ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  %i.be = fsub double %i.ba, %i.bd
  %i.bf = extractelement <2 x double> %i.bc, i64 1
  %i.bg = fadd double %i.be, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !9
  %i.bj = fmul double %i.bi, f0x409F400000000001
  %i.bk = fadd double %i.bg, %i.bj
  %i.bl = fdiv double %i.bk, %i.av
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i22.lver.orig
  store double %i.bl, ptr %i.bm, align 8, !tbaa !9
  %indvars.iv.next.i23.lver.orig = add nuw nsw i64 %indvars.iv.i22.lver.orig, 1 ; 2 uses
  %exitcond.not.i24.lver.orig = icmp eq i64 %indvars.iv.next.i23.lver.orig, 999
  br i1 %exitcond.not.i24.lver.orig, label %.loopexit, label %.ph.lver.orig, !llvm.loop !16

.ph:                                              ; preds = %.lver.check
  %load_initial = load double, ptr %i.ao, align 8
  %load_initial36 = load double, ptr %i.aq, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.ph
  %store_forwarded37 = phi double [ %load_initial36, %.ph ], [ %i.cc, %bb.f ]
  %store_forwarded = phi double [ %load_initial, %.ph ], [ %i.bp, %bb.f ]
  %indvars.iv.i22 = phi i64 [ 1, %.ph ], [ %indvars.iv.next.i23, %bb.f ] ; 4 uses
  %i.bn = fmul double %store_forwarded, f0x409F400000000001
  %i.bo = fsub double f0x40AF420000000001, %i.bn  ; 2 uses
  %i.bp = fdiv double f0x409F400000000001, %i.bo  ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i22
  store double %i.bp, ptr %i.bq, align 8, !tbaa !9
  %gep.i = getelementptr [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i22 ; 2 uses
  %i.br = getelementptr i8, ptr %gep.i, i64 -8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !9
  %i.bt = fmul double %i.bs, f0x408F400000000001
  %i.bu = load <2 x double>, ptr %gep.i, align 8, !tbaa !9
  %i.bv = fmul <2 x double> %i.bu, <double f0x409F3C0000000001, double f0x408F400000000001> ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0
  %i.bx = fsub double %i.bt, %i.bw
  %i.by = extractelement <2 x double> %i.bv, i64 1
  %i.bz = fadd double %i.bx, %i.by
  %i.ca = fmul double %store_forwarded37, f0x409F400000000001
  %i.cb = fadd double %i.bz, %i.ca
  %i.cc = fdiv double %i.cb, %i.bo                ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i22
  store double %i.cc, ptr %i.cd, align 8, !tbaa !9
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, 999
  br i1 %exitcond.not.i24, label %.loopexit, label %bb.f, !llvm.loop !16

.loopexit:                                        ; preds = %bb.f, %.ph.lver.orig
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv166.i
  store double 1.000000e+00, ptr %i.ce, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.loopexit
  %indvars.iv163.i = phi i64 [ 998, %.loopexit ], [ %indvars.iv.next164.i.1, %bb.g ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv163.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !9
  %i.ch = getelementptr inbounds nuw [8000 x i8], ptr %i.k, i64 %indvars.iv163.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8000
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv166.i
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !9
  %i.cl = fmul double %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv163.i
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !9
  %i.co = fadd double %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv166.i
  store double %i.co, ptr %i.cp, align 8, !tbaa !9
  %indvars.iv.next164.i = add nsw i64 %indvars.iv163.i, -1 ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next164.i
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !9
  %i.cs = getelementptr inbounds nuw [8000 x i8], ptr %i.k, i64 %indvars.iv.next164.i ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8000
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv166.i
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !9
  %i.cw = fmul double %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next164.i
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !9
  %i.cz = fadd double %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv166.i
  store double %i.cz, ptr %i.da, align 8, !tbaa !9
  %indvars.iv.next164.i.1 = add nsw i64 %indvars.iv163.i, -2
  %.not = icmp eq i64 %indvars.iv.next164.i, 1
  br i1 %.not, label %bb.h, label %bb.g, !llvm.loop !17

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next167.i, 999
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond169.not.i, label %.lver.check45, label %.lver.check, !llvm.loop !18

.lver.check45:                                    ; preds = %bb.h, %bb.k
  %indvar38 = phi i64 [ %indvar.next39, %bb.k ], [ 0, %bb.h ] ; 3 uses
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %bb.k ], [ 1, %bb.h ] ; 5 uses
  %i.db = mul nuw nsw i64 %indvar38, 8000
  %i.dc = getelementptr i8, ptr %i.f, i64 %i.db
  %scevgep53 = getelementptr i8, ptr %i.dc, i64 15992
  %i.dd = mul nuw nsw i64 %indvar38, 8000
  %i.de = add nuw i64 %i.dd, 15992                ; 2 uses
  %scevgep40 = getelementptr i8, ptr %i.p, i64 %i.de
  %scevgep41 = getelementptr i8, ptr %i.u, i64 %i.de
  %i.df = getelementptr inbounds nuw [8000 x i8], ptr %i.f, i64 %indvars.iv177.i ; 5 uses
  store double 1.000000e+00, ptr %i.df, align 8, !tbaa !9
  %i.dg = getelementptr inbounds nuw [8000 x i8], ptr %i.p, i64 %indvars.iv177.i ; 8 uses
  store double 0.000000e+00, ptr %i.dg, align 8, !tbaa !9
  %i.dh = load double, ptr %i.df, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw [8000 x i8], ptr %i.u, i64 %indvars.iv177.i ; 8 uses
  store double %i.dh, ptr %i.di, align 8, !tbaa !9
  %i.dj = getelementptr [8000 x i8], ptr %i.k, i64 %indvars.iv177.i ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8000  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8000 ; 2 uses
  %bound042 = icmp ult ptr %i.dg, %scevgep41
  %bound143 = icmp ult ptr %i.di, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.ph46.lver.orig, label %.ph46

.ph46.lver.orig:                                  ; preds = %.lver.check45, %.ph46.lver.orig
  %indvars.iv170.i.lver.orig = phi i64 [ %indvars.iv.next171.i.lver.orig, %.ph46.lver.orig ], [ 1, %.lver.check45 ] ; 7 uses
  %i.dm = add nsw i64 %indvars.iv170.i.lver.orig, -1 ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !9
  %i.dp = fmul double %i.do, f0x408F400000000001
  %i.dq = fsub double f0x409F440000000001, %i.dp  ; 2 uses
  %i.dr = fdiv double f0x408F400000000001, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv170.i.lver.orig
  store double %i.dr, ptr %i.ds, align 8, !tbaa !9
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv170.i.lver.orig
  %i.du = load double, ptr %i.dt, align 8, !tbaa !9
  %i.dv = fmul double %i.du, f0x409F400000000001
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv170.i.lver.orig
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !9
  %i.dy = fmul double %i.dx, f0x40AF3E0000000001
  %i.dz = fsub double %i.dv, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv170.i.lver.orig
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !9
  %i.ec = fmul double %i.eb, f0x409F400000000001
  %i.ed = fadd double %i.dz, %i.ec
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dm
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !9
  %i.eg = fmul double %i.ef, f0x408F400000000001
  %i.eh = fadd double %i.ed, %i.eg
  %i.ei = fdiv double %i.eh, %i.dq
end_hunk_0
