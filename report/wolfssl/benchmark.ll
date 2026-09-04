Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/benchmark?download=true
inline.NumInlined: 291
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@bench_eccMakeKey:bb.a
  %.02542 = phi i32 [ 0, %bb.c ], [ %i.ag, %bench_async_handle.exit ]
  %i.ab = call i32 @wc_ecc_free(ptr noundef nonnull %4) #16 ; 0 uses
  %i.ac = call i32 @wc_ecc_init_ex(ptr noundef nonnull %4, ptr noundef null, i32 noundef -2) #16 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bench_async_handle.exit.thread, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ae = call i32 @wc_ecc_make_key_ex(ptr noundef nonnull %i.z, i32 noundef %i.c, ptr noundef nonnull %4, i32 noundef %1) #16 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bench_async_handle.exit, label %bench_async_handle.exit.thread

bench_async_handle.exit:                          ; preds = %bb.d
  %i.ag = add nuw nsw i32 %.02542, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, 100
  br i1 %exitcond.not, label %bb.e, label %.preheader, !llvm.loop !147

bb.e:                                             ; preds = %bench_async_handle.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ah = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %2) #16
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bench_stats_check.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @__errno_location() #17
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.86, i32 noundef 16902, i32 noundef %i.ak, ptr noundef nonnull @.str.87) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.an = call i32 @fflush(ptr noundef %i.am)     ; 0 uses
  call void @_exit(i32 noundef 1) #18
  unreachable

bench_stats_check.exit:                           ; preds = %bb.e
  %i.ao = add nuw nsw i32 %.0, 100                ; 2 uses
  %i.ap = load i64, ptr %2, align 8, !tbaa !18
  %i.aq = sitofp i64 %i.ap to double
  %i.ar = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.as = sitofp i64 %i.ar to double
  %i.at = fdiv double %i.as, 1.000000e+09
  %i.au = fadd double %i.at, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.av = fsub double %i.au, %i.q
  %i.aw = fcmp uge double %i.av, 1.000000e+00
  br i1 %i.aw, label %bench_async_handle.exit.thread, label %bb.c, !llvm.loop !148

bench_async_handle.exit.thread:                   ; preds = %bench_stats_check.exit, %bb.d, %.preheader
  %.3 = phi i32 [ %i.ac, %.preheader ], [ %i.ae, %bb.d ], [ %i.ae, %bench_stats_check.exit ]
  %.1 = phi i32 [ %.0, %bb.d ], [ %.0, %.preheader ], [ %i.ao, %bench_stats_check.exit ]
  %i.ax = sext i32 %i.b to i64
  %i.ay = getelementptr inbounds [120 x i8], ptr @bench_desc_words, i64 %i.ax
  %i.az = call ptr @wc_ecc_get_name(i32 noundef %1) #16
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 24, ptr noundef nonnull @.str.82, ptr noundef %i.az) #16 ; 0 uses
  %i.bb = shl nsw i32 %i.c, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !12
  call fastcc void @bench_stats_asym_finish(ptr noundef nonnull %i.a, i32 noundef %i.bb, ptr noundef %i.bd, i32 noundef %.1, double noundef %i.q, i32 noundef %.3)
  %i.be = call i32 @wc_ecc_free(ptr noundef nonnull %4) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bench_ecc(i32 %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [24 x i8], align 16               ; 8 uses
  %5 = alloca [1 x [1 x %struct.ecc_key]], align 16 ; 11 uses
  %6 = alloca [1 x [1 x %struct.ecc_key]], align 16 ; 7 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  %i.c = alloca [1 x i32], align 4                ; 7 uses
  %i.d = alloca [1 x [66 x i8]], align 16         ; 4 uses
  %i.e = alloca [1 x [141 x i8]], align 16        ; 5 uses
  %i.f = alloca [1 x [64 x i8]], align 16         ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.g = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [120 x i8], ptr @bench_desc_words, i64 %i.h ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(141) %i.e, i8 0, i64 141, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(66) %i.d, i8 0, i64 66, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4208) %5, i8 0, i64 4208, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4208) %6, i8 0, i64 4208, i1 false)
  %i.j = tail call i32 @wc_ecc_get_curve_size_from_id(i32 noundef %1) #16 ; 8 uses
  %i.k = icmp slt i32 %i.j, 28
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i32 %i.j, 32
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ult i32 %i.j, 48
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i32 %i.j, 64
  %. = select i1 %i.n, i32 48, i32 64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 32, %bb.c ], [ 20, %bb.a ], [ 28, %bb.b ], [ %., %bb.d ] ; 4 uses
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gRng) ; 4 uses
  %i.p = call i32 @wc_ecc_init_ex(ptr noundef nonnull %5, ptr noundef null, i32 noundef -2) #16
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.loopexit155, label %bb.f

.preheader154:                                    ; preds = %bb.h
  %i.r = call i32 @wc_ecc_set_rng(ptr noundef nonnull %5, ptr noundef nonnull %i.o) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.s = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %4) #16
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bench_stats_start.exit

bb.f:                                             ; preds = %bb.e
  %i.u = call i32 @wc_ecc_make_key_ex(ptr noundef nonnull %i.o, i32 noundef %i.j, ptr noundef nonnull %5, i32 noundef %1) #16
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.loopexit155, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call i32 @wc_ecc_init_ex(ptr noundef nonnull %6, ptr noundef null, i32 noundef -2) #16
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.loopexit155, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call i32 @wc_ecc_make_key_ex(ptr noundef nonnull %i.o, i32 noundef %i.j, ptr noundef nonnull %6, i32 noundef %1) #16
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.loopexit155, label %.preheader154, !llvm.loop !149

bb.i:                                             ; preds = %.preheader154
  %i.aa = tail call ptr @__errno_location() #17
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !9
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.86, i32 noundef 16902, i32 noundef %i.ab, ptr noundef nonnull @.str.87) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ae = call i32 @fflush(ptr noundef %i.ad)     ; 0 uses
  call void @_exit(i32 noundef 1) #18
  unreachable

bench_stats_start.exit:                           ; preds = %.preheader154
  %i.af = load i64, ptr %4, align 8, !tbaa !18
  %i.ag = sitofp i64 %i.af to double
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !19
  %i.aj = sitofp i64 %i.ai to double
  %i.ak = fdiv double %i.aj, 1.000000e+09
  %i.al = fadd double %i.ak, %i.ag                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.am = call { i32, i32 } asm sideeffect "cpuid\0A\09rdtsc", "={ax},={dx},{ax},~{ebx},~{ecx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !20 ; 2 uses
  %i.an = extractvalue { i32, i32 } %i.am, 0
  %i.ao = extractvalue { i32, i32 } %i.am, 1
  %i.ap = zext i32 %i.an to i64
  %i.aq = zext i32 %i.ao to i64
  %i.ar = shl nuw i64 %i.aq, 32
  %i.as = or disjoint i64 %i.ar, %i.ap
  %i.at = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @total_cycles) ; 3 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bench_stats_start.exit
  %.0118 = phi i32 [ 0, %bench_stats_start.exit ], [ %i.ax, %bb.k ] ; 2 uses
  br label %.preheader151

.preheader151:                                    ; preds = %bb.j, %bench_async_handle.exit
  %.0119178 = phi i32 [ 0, %bb.j ], [ %i.aw, %bench_async_handle.exit ]
  store i32 %i.j, ptr %i.c, align 4, !tbaa !9
  %i.au = call i32 @wc_ecc_shared_secret(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #16 ; 3 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bench_async_handle.exit, label %bench_async_handle.exit.thread

bench_async_handle.exit:                          ; preds = %.preheader151
  %i.aw = add nuw nsw i32 %.0119178, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, 100
  br i1 %exitcond.not, label %bb.k, label %.preheader151, !llvm.loop !150

bb.k:                                             ; preds = %bench_async_handle.exit
  %i.ax = add nuw nsw i32 %.0118, 100             ; 2 uses
  %i.ay = call fastcc i32 @bench_stats_check(double noundef %i.al)
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bench_async_handle.exit.thread, label %bb.j, !llvm.loop !151

bench_async_handle.exit.thread:                   ; preds = %bb.k, %.preheader151
  %.1 = phi i32 [ %.0118, %.preheader151 ], [ %i.ax, %bb.k ]
  %i.az = call ptr @wc_ecc_get_name(i32 noundef %1) #16
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 24, ptr noundef nonnull @.str.83, ptr noundef %i.az) #16 ; 0 uses
  %i.bb = shl nsw i32 %i.j, 3                     ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !12
  call fastcc void @bench_stats_asym_finish(ptr noundef nonnull %i.a, i32 noundef %i.bb, ptr noundef %i.bd, i32 noundef %.1, double noundef %i.al, i32 noundef %i.au)
  %i.be = icmp slt i32 %i.au, 0
  br i1 %i.be, label %.loopexit155, label %iter.check

iter.check:                                       ; preds = %bench_async_handle.exit.thread
  %wide.trip.count = zext nneg i32 %.0 to i64     ; 5 uses
  %min.iters.check237 = icmp samesign ult i32 %.0, 32
  br i1 %min.iters.check237, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %i.bf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 96           ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.f, align 16, !tbaa !158
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.bg, align 16, !tbaa !158
  %i.bh = icmp eq i64 %n.vec, 32
  br i1 %i.bh, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.bi, align 16, !tbaa !158
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.bj, align 16, !tbaa !158
  %i.bk = icmp eq i64 %n.vec, 64
  br i1 %i.bk, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.bl, align 16, !tbaa !158
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.bm, align 16, !tbaa !158
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit149, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.preheader148, label %vec.epilog.ph, !prof !159

vec.epilog.ph:                                    ; preds = %iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ] ; 2 uses
  %i.bn = trunc nuw nsw i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index239 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next241, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind240 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next242, %vec.epilog.vector.body ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 %index239
  store <4 x i8> %vec.ind240, ptr %i.bo, align 4, !tbaa !158
  %index.next241 = add nuw i64 %index239, 4       ; 2 uses
  %vec.ind.next242 = add <4 x i8> %vec.ind240, splat (i8 4)
  %i.bp = icmp eq i64 %index.next241, %wide.trip.count
  br i1 %i.bp, label %.loopexit149, label %vec.epilog.vector.body, !llvm.loop !152

.loopexit149:                                     ; preds = %.preheader148, %vec.epilog.vector.body, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.bq = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %3) #16
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.l, label %bench_stats_start.exit84

.preheader148:                                    ; preds = %vec.epilog.iter.check, %.preheader148
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader148 ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  %i.bs = trunc i64 %indvars.iv to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond202.not, label %.loopexit149, label %.preheader148, !llvm.loop !153

bb.l:                                             ; preds = %.loopexit149
  %i.bu = tail call ptr @__errno_location() #17
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !9
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.86, i32 noundef 16902, i32 noundef %i.bv, ptr noundef nonnull @.str.87) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.by = call i32 @fflush(ptr noundef %i.bx)     ; 0 uses
  call void @_exit(i32 noundef 1) #18
  unreachable

bench_stats_start.exit84:                         ; preds = %.loopexit149
  %i.bz = load i64, ptr %3, align 8, !tbaa !18
  %i.ca = sitofp i64 %i.bz to double
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !19
  %i.cd = sitofp i64 %i.cc to double
  %i.ce = fdiv double %i.cd, 1.000000e+09
  %i.cf = fadd double %i.ce, %i.ca                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.cg = call { i32, i32 } asm sideeffect "cpuid\0A\09rdtsc", "={ax},={dx},{ax},~{ebx},~{ecx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !20 ; 2 uses
  %i.ch = extractvalue { i32, i32 } %i.cg, 0
  %i.ci = extractvalue { i32, i32 } %i.cg, 1
  %i.cj = zext i32 %i.ch to i64
  %i.ck = zext i32 %i.ci to i64
  %i.cl = shl nuw i64 %i.ck, 32
  %i.cm = or disjoint i64 %i.cl, %i.cj
  store i64 %i.cm, ptr %i.at, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bench_stats_start.exit84
  %.2 = phi i32 [ 0, %bench_stats_start.exit84 ], [ %i.ct, %bb.p ] ; 2 uses
  br label %.preheader145

.preheader145:                                    ; preds = %bb.m, %bench_async_handle.exit86
  %.2121181 = phi i32 [ 0, %bb.m ], [ %i.cs, %bench_async_handle.exit86 ]
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !166
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader145
  store i32 141, ptr %i.c, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader145
  %i.cq = call i32 @wc_ecc_sign_hash(ptr noundef nonnull %i.f, i32 noundef %.0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.o, ptr noundef nonnull %5) #16 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, -1
  br i1 %i.cr, label %bench_async_handle.exit86, label %bench_async_handle.exit86.thread

bench_async_handle.exit86:                        ; preds = %bb.o
  %i.cs = add nuw nsw i32 %.2121181, 1            ; 2 uses
  %exitcond203.not = icmp eq i32 %i.cs, 100
  br i1 %exitcond203.not, label %bb.p, label %.preheader145, !llvm.loop !154

bb.p:                                             ; preds = %bench_async_handle.exit86
  %i.ct = add nuw nsw i32 %.2, 100                ; 2 uses
  %i.cu = call fastcc i32 @bench_stats_check(double noundef %i.cf)
  %.not78 = icmp eq i32 %i.cu, 0
  br i1 %.not78, label %bench_async_handle.exit86.thread, label %bb.m, !llvm.loop !155

bench_async_handle.exit86.thread:                 ; preds = %bb.p, %bb.o
  %.3 = phi i32 [ %.2, %bb.o ], [ %i.ct, %bb.p ]
  %i.cv = call ptr @wc_ecc_get_name(i32 noundef %1) #16
  %i.cw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 24, ptr noundef nonnull @.str.84, ptr noundef %i.cv) #16 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !12
  call fastcc void @bench_stats_asym_finish(ptr noundef nonnull %i.a, i32 noundef %i.bb, ptr noundef %i.cy, i32 noundef %.3, double noundef %i.cf, i32 noundef %i.cq)
  %i.cz = icmp slt i32 %i.cq, 0
  br i1 %i.cz, label %.loopexit155, label %bb.q

bb.q:                                             ; preds = %bench_async_handle.exit86.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.da = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %2) #16
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.r, label %bench_stats_start.exit87

bb.r:                                             ; preds = %bb.q
  %i.dc = tail call ptr @__errno_location() #17
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !9
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.86, i32 noundef 16902, i32 noundef %i.dd, ptr noundef nonnull @.str.87) ; 0 uses
  %i.df = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.dg = call i32 @fflush(ptr noundef %i.df)     ; 0 uses
  call void @_exit(i32 noundef 1) #18
  unreachable

bench_stats_start.exit87:                         ; preds = %bb.q
  %i.dh = load i64, ptr %2, align 8, !tbaa !18
  %i.di = sitofp i64 %i.dh to double
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !19
  %i.dl = sitofp i64 %i.dk to double
  %i.dm = fdiv double %i.dl, 1.000000e+09
  %i.dn = fadd double %i.dm, %i.di                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.do = call { i32, i32 } asm sideeffect "cpuid\0A\09rdtsc", "={ax},={dx},{ax},~{ebx},~{ecx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !20 ; 2 uses
  %i.dp = extractvalue { i32, i32 } %i.do, 0
  %i.dq = extractvalue { i32, i32 } %i.do, 1
  %i.dr = zext i32 %i.dp to i64
  %i.ds = zext i32 %i.dq to i64
  %i.dt = shl nuw i64 %i.ds, 32
  %i.du = or disjoint i64 %i.dt, %i.dr
  store i64 %i.du, ptr %i.at, align 8, !tbaa !21
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bench_stats_start.exit87
  %.4 = phi i32 [ 0, %bench_stats_start.exit87 ], [ %i.eb, %bb.v ] ; 2 uses
  br label %.preheader143

.preheader143:                                    ; preds = %bb.s, %bench_async_handle.exit89
  %.4123183 = phi i32 [ 0, %bb.s ], [ %i.ea, %bench_async_handle.exit89 ]
  %i.dv = load i32, ptr %i.cn, align 8, !tbaa !166
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader143
  store i32 0, ptr %i.b, align 4, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader143
  %i.dx = load i32, ptr %i.c, align 4, !tbaa !9
  %i.dy = call i32 @wc_ecc_verify_hash(ptr noundef nonnull %i.e, i32 noundef %i.dx, ptr noundef nonnull %i.f, i32 noundef %.0, ptr noundef nonnull %i.b, ptr noundef nonnull %5) #16 ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, -1
  br i1 %i.dz, label %bench_async_handle.exit89, label %bench_async_handle.exit89.thread

bench_async_handle.exit89:                        ; preds = %bb.u
  %i.ea = add nuw nsw i32 %.4123183, 1            ; 2 uses
  %exitcond204.not = icmp eq i32 %i.ea, 100
  br i1 %exitcond204.not, label %bb.v, label %.preheader143, !llvm.loop !156

bb.v:                                             ; preds = %bench_async_handle.exit89
  %i.eb = add nuw nsw i32 %.4, 100                ; 2 uses
  %i.ec = call fastcc i32 @bench_stats_check(double noundef %i.dn)
  %.not80 = icmp eq i32 %i.ec, 0
  br i1 %.not80, label %bench_async_handle.exit89.thread, label %bb.s, !llvm.loop !157

bench_async_handle.exit89.thread:                 ; preds = %bb.v, %bb.u
  %.5 = phi i32 [ %.4, %bb.u ], [ %i.eb, %bb.v ]
  %i.ed = call ptr @wc_ecc_get_name(i32 noundef %1) #16
  %i.ee = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 24, ptr noundef nonnull @.str.84, ptr noundef %i.ed) #16 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !12
  call fastcc void @bench_stats_asym_finish(ptr noundef nonnull %i.a, i32 noundef %i.bb, ptr noundef %i.eg, i32 noundef %.5, double noundef %i.dn, i32 noundef %i.dy)
  br label %.loopexit155

.loopexit155:                                     ; preds = %bench_async_handle.exit89.thread, %bench_async_handle.exit.thread, %bench_async_handle.exit86.thread, %bb.e, %bb.f, %bb.g, %bb.h
  %i.eh = call i32 @wc_ecc_free(ptr noundef nonnull %5) #16 ; 0 uses
  %i.ei = call i32 @wc_ecc_free(ptr noundef nonnull %6) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @wc_ecc_get_curve_size_from_id(i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_free(ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_init_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_make_key_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @wc_ecc_get_name(i32 noundef) local_unnamed_addr #2

declare i32 @wc_ecc_set_rng(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_shared_secret(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_sign_hash(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_ecc_verify_hash(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @current_time(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %1) #16
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #17
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  %i.e = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.86, i32 noundef 16902, i32 noundef %i.d, ptr noundef nonnull @.str.87) ; 0 uses
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.g = call i32 @fflush(ptr noundef %i.f)       ; 0 uses
end_hunk_0
begin_hunk_1_@strcmp

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"timespec", !16, i64 0, !16, i64 8}
!18 = !{!17, !16, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{i64 580424, i64 580432}
!21 = !{!16, !16, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = !{!"double", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = !{!"DhParams", !11, i64 0, !6, i64 8, !11, i64 16, !6, i64 24}
!137 = !{!136, !11, i64 0}
!138 = !{!136, !6, i64 8}
!139 = !{!136, !11, i64 16}
!140 = !{!136, !6, i64 24}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13, !160, !161}
!153 = distinct !{!153, !13, !161, !160}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !13}
!157 = distinct !{!157, !13}
!158 = !{!5, !5, i64 0}
!159 = !{!"branch_weights", i32 4, i32 28}
!160 = !{!"llvm.loop.isvectorized", i32 1}
!161 = !{!"llvm.loop.unroll.runtime.disable"}
!162 = !{!"p1 _ZTS12ecc_set_type", !10, i64 0}
!163 = !{!"ecc_point", !5, i64 0, !5, i64 1040, !5, i64 2080, !5, i64 3120}
!164 = !{!"p1 _ZTS6WC_RNG", !10, i64 0}
!165 = !{!"ecc_key", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !162, i64 16, !10, i64 24, !163, i64 32, !5, i64 3160, !164, i64 4200}
!166 = !{!165, !6, i64 8}
!167 = distinct !{null}
!168 = distinct !{!168, !13}
!169 = distinct !{!169, !13}
!170 = !{!"bench_alg", !11, i64 0, !6, i64 8}
!171 = !{!170, !11, i64 0}
end_hunk_1
