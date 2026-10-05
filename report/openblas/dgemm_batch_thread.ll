Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemm_batch_thread?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"memory alloc failed!\0A\00", align 1
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dgemm_batch_thread(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @blas_memory_alloc(i32 noundef 0) #7 ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add nsw i64 %i.c, 589824
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !29
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.preheader.preheader, label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.b
  %i.h = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !29 ; 2 uses
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %bb.b, %num_cpu_avail.exit
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %inner_small_matrix_thread.exit
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %inner_small_matrix_thread.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %indvars.iv95 ; 17 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load i32, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %i.m = and i32 %i.l, 65536
  %.not84 = icmp eq i32 %i.m, 0
  br i1 %.not84, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.n = and i32 %i.l, 196608
  %i.o = icmp eq i32 %i.n, 196608
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !22 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.al = tail call i32 %i.q(i64 noundef %i.s, i64 noundef %i.u, i64 noundef %i.w, ptr noundef %i.x, i64 noundef %i.z, double noundef %i.ac, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef %i.ai, i64 noundef %i.ak) #7, !inline_history !30 ; 0 uses
  br label %inner_small_matrix_thread.exit

bb.e:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ao = load double, ptr %i.an, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = tail call i32 %i.q(i64 noundef %i.s, i64 noundef %i.u, i64 noundef %i.w, ptr noundef %i.x, i64 noundef %i.z, double noundef %i.ac, ptr noundef %i.ae, i64 noundef %i.ag, double noundef %i.ao, ptr noundef %i.aq, i64 noundef %i.as) #7, !inline_history !30 ; 0 uses
  br label %inner_small_matrix_thread.exit

bb.f:                                             ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %i.j, ptr noundef null, ptr noundef null, ptr noundef %i.b, ptr noundef %i.e, i64 noundef 0) #7 ; 0 uses
  br label %inner_small_matrix_thread.exit

inner_small_matrix_thread.exit:                   ; preds = %bb.e, %bb.d, %bb.f
  %indvars.iv.next96 = add nuw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %1
  br i1 %exitcond99.not, label %.loopexit, label %.preheader, !llvm.loop !26

bb.g:                                             ; preds = %num_cpu_avail.exit
  %i.ax = mul i64 %1, 168
  %i.ay = add i64 %i.ax, 168
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #8 ; 10 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.h, label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %bb.g
  %xtraiter = and i64 %1, 1
  %i.bb = icmp eq i64 %1, 1
  br i1 %i.bb, label %.preheader87.epil.preheader, label %.preheader87.preheader.new

.preheader87.preheader.new:                       ; preds = %.preheader87.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.preheader87

bb.h:                                             ; preds = %bb.g
  tail call void @openblas_warning(i32 noundef 0, ptr noundef nonnull @.str) #7
  br label %bb.j

.lr.ph.unr-lcssa:                                 ; preds = %.preheader87
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.preheader87.epil.preheader

.preheader87.epil.preheader:                      ; preds = %.lr.ph.unr-lcssa, %.preheader87.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next.1, %.lr.ph.unr-lcssa ] ; 3 uses
  %lcmp.mod103 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.bc = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %indvars.iv.epil.init ; 3 uses
  %i.bd = getelementptr inbounds nuw [168 x i8], ptr %i.az, i64 %indvars.iv.epil.init ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = getelementptr inbounds nuw [168 x i8], ptr %i.az, i64 %indvars.iv.epil.init
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 160
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !12
  %i.bo = and i32 %i.bk, 196608
  %.not.epil = icmp eq i32 %i.bo, 0
  %spec.store.select.epil = select i1 %.not.epil, ptr %i.bn, ptr @inner_small_matrix_thread
  store ptr %spec.store.select.epil, ptr %i.bd, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.unr-lcssa, %.preheader87.epil.preheader
  %i.bp = sext i32 %i.h to i64                    ; 2 uses
  br label %bb.i

.preheader87:                                     ; preds = %.preheader87, %.preheader87.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader87.preheader.new ], [ %indvars.iv.next.1, %.preheader87 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader87.preheader.new ], [ %niter.next.1, %.preheader87 ]
  %i.bq = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.br = getelementptr inbounds nuw [168 x i8], ptr %i.az, i64 %indvars.iv ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.bu = getelementptr inbounds nuw [168 x i8], ptr %i.az, i64 %indvars.iv.next
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i8 0, i64 32, i1 false)
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 128
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !11 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 160
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !12
  %i.cb = and i32 %i.bx, 196608
  %.not = icmp eq i32 %i.cb, 0
  %spec.store.select = select i1 %.not, ptr %i.ca, ptr @inner_small_matrix_thread
  store ptr %spec.store.select, ptr %i.br, align 8
  %i.cc = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %indvars.iv.next ; 3 uses
  %i.cd = getelementptr inbounds nuw [168 x i8], ptr %i.az, i64 %indvars.iv.next ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !34
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cg = getelementptr inbounds nuw [168 x i8], ptr %i.az, i64 %indvars.iv.next.1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i8 0, i64 32, i1 false)
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !11 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 160
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !36
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !12
  %i.cn = and i32 %i.cj, 196608
  %.not.1 = icmp eq i32 %i.cn, 0
  %spec.store.select.1 = select i1 %.not.1, ptr %i.cm, ptr @inner_small_matrix_thread
  store ptr %spec.store.select.1, ptr %i.cd, align 8
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.unr-lcssa, label %.preheader87, !llvm.loop !27

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv92 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next93, %bb.i ] ; 4 uses
  %i.co = sub nsw i64 %1, %indvars.iv92
  %i.cp = tail call i64 @llvm.smin.i64(i64 %i.co, i64 %i.bp) ; 2 uses
  %i.cq = getelementptr inbounds [168 x i8], ptr %i.az, i64 %indvars.iv92 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store ptr %i.b, ptr %i.cr, align 8, !tbaa !37
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store ptr %i.e, ptr %i.cs, align 8, !tbaa !38
  %sext101 = shl i64 %i.cp, 32
  %i.ct = ashr exact i64 %sext101, 32
  %i.cu = getelementptr [168 x i8], ptr %i.az, i64 %indvars.iv92
  %i.cv = getelementptr [168 x i8], ptr %i.cu, i64 %i.ct
  %i.cw = getelementptr i8, ptr %i.cv, i64 -104
  store ptr null, ptr %i.cw, align 8, !tbaa !35
  %sext = shl i64 %i.cp, 32
  %i.cx = ashr exact i64 %sext, 32
  %i.cy = tail call i32 @exec_blas(i64 noundef %i.cx, ptr noundef nonnull %i.cq) #7 ; 0 uses
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, %i.bp ; 2 uses
  %i.cz = icmp sgt i64 %1, %indvars.iv.next93
  br i1 %i.cz, label %bb.i, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.az) #7
  br label %.loopexit

.loopexit:                                        ; preds = %inner_small_matrix_thread.exit, %._crit_edge
  tail call void @blas_memory_free(ptr noundef %i.b) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.loopexit, %bb.h
  %.077 = phi i32 [ 1, %bb.h ], [ 0, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.077
}

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @inner_small_matrix_thread(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, i64 %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i32 %i.b, 196608
  %i.d = icmp eq i32 %i.c, 196608
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15
  %i.m = load ptr, ptr %0, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = load double, ptr %i.q, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load i64, ptr %i.y, align 8, !tbaa !24
  %i.aa = tail call i32 %i.f(i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, ptr noundef %i.m, i64 noundef %i.o, double noundef %i.r, ptr noundef %i.t, i64 noundef %i.v, ptr noundef %i.x, i64 noundef %i.z) #7 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ab = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.ak = load ptr, ptr %0, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = load double, ptr %i.av, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bb = tail call i32 %i.ad(i64 noundef %i.af, i64 noundef %i.ah, i64 noundef %i.aj, ptr noundef %i.ak, i64 noundef %i.am, double noundef %i.ap, ptr noundef %i.ar, i64 noundef %i.at, double noundef %i.aw, ptr noundef %i.ay, i64 noundef %i.ba) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @openblas_warning(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @exec_blas(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !8, i64 104, !9, i64 112, !8, i64 120, !5, i64 128}
!11 = !{!10, !5, i64 128}
!12 = !{!10, !8, i64 120}
!13 = !{!10, !9, i64 48}
!14 = !{!10, !9, i64 56}
!15 = !{!10, !9, i64 64}
!16 = !{!10, !8, i64 0}
!17 = !{!10, !9, i64 72}
!18 = !{!10, !8, i64 32}
!19 = !{!"double", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!10, !8, i64 8}
!22 = !{!10, !9, i64 80}
!23 = !{!10, !8, i64 16}
!24 = !{!10, !9, i64 88}
!25 = !{!10, !8, i64 40}
!26 = distinct !{!26, !31}
!27 = distinct !{!27, !31}
!28 = distinct !{!28, !31}
!29 = !{!4, !4, i64 0}
!30 = !{ptr @inner_small_matrix_thread}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"p1 _ZTS10blas_queue", !8, i64 0}
!33 = !{!"blas_queue", !8, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !32, i64 64, !4, i64 72, !4, i64 112, !5, i64 160, !5, i64 164}
!34 = !{!33, !8, i64 24}
!35 = !{!33, !32, i64 64}
!36 = !{!33, !5, i64 160}
!37 = !{!33, !8, i64 48}
!38 = !{!33, !8, i64 56}
end_hunk_0
