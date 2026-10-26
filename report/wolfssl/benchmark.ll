Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/benchmark?download=true
inline.NumInlined: 291
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@bench_stats_asym_finish:bb.a
  br label %bench_stats_asym_finish_ex.exit

bench_stats_asym_finish_ex.exit:                  ; preds = %bb.g, %bb.h
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bi = call i32 @fflush(ptr noundef %i.bh)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @wc_DhAgree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_FreeDhKey(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bench_mlkem(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca [1568 x i8], align 16             ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [1568 x i8], align 16             ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca [32 x i8], align 16               ; 4 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.i = alloca [64 x i8], align 16               ; 4 uses
  %3 = alloca [1 x %struct.MlKemKey], align 16    ; 9 uses
  %4 = alloca [1 x %struct.MlKemKey], align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.j = icmp ult i32 %0, 3
  br i1 %i.j, label %switch.lookup, label %bb.v

switch.lookup:                                    ; preds = %bb.a
  %i.k = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.bench_mlkem, i64 %i.k
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 4 uses
  %switch.idx.mult = shl nuw nsw i32 %0, 6
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 128 ; 4 uses
  %i.l = load i32, ptr @lng_index, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.m = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %2) #16
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %bench_stats_start.exit.i

bb.b:                                             ; preds = %switch.lookup
  %i.o = tail call ptr @__errno_location() #17
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.86, i32 noundef 16902, i32 noundef %i.p, ptr noundef nonnull @.str.87) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.s = call i32 @fflush(ptr noundef %i.r)       ; 0 uses
  call void @_exit(i32 noundef 1) #18
  unreachable

bench_stats_start.exit.i:                         ; preds = %switch.lookup
  %i.t = load i64, ptr %2, align 8, !tbaa !18
  %i.u = sitofp i64 %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19
  %i.x = sitofp i64 %i.w to double
  %i.y = fdiv double %i.x, 1.000000e+09
  %i.z = fadd double %i.y, %i.u                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.aa = call { i32, i32 } asm sideeffect "cpuid\0A\09rdtsc", "={ax},={dx},{ax},~{ebx},~{ecx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !20 ; 2 uses
  %i.ab = extractvalue { i32, i32 } %i.aa, 0
  %i.ac = extractvalue { i32, i32 } %i.aa, 1
  %i.ad = zext i32 %i.ab to i64
  %i.ae = zext i32 %i.ac to i64
  %i.af = shl nuw i64 %i.ae, 32
  %i.ag = or disjoint i64 %i.af, %i.ad
  %i.ah = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @total_cycles)
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bench_stats_check.exit.i, %bench_stats_start.exit.i
  %.021.i = phi i32 [ 0, %bench_stats_start.exit.i ], [ %i.au, %bench_stats_check.exit.i ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.026.i = phi i32 [ 0, %bb.c ], [ %i.am, %bb.f ]
  %i.aj = call i32 @wc_MlKemKey_Free(ptr noundef nonnull %3) #16 ; 0 uses
  %i.ak = call i32 @wc_MlKemKey_Init(ptr noundef nonnull %3, i32 noundef %0, ptr noundef null, i32 noundef -2) #16 ; 2 uses
  %.not17.i = icmp eq i32 %i.ak, 0
  br i1 %.not17.i, label %bb.e, label %bench_mlkem_keygen.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  %i.al = call i32 @wc_MlKemKey_MakeKeyWithRandom(ptr noundef nonnull %3, ptr noundef nonnull %i.i, i32 noundef 64) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  %.not18.i = icmp eq i32 %i.al, 0
  br i1 %.not18.i, label %bb.f, label %bench_mlkem_keygen.exit

bb.f:                                             ; preds = %bb.e
  %i.am = add nuw nsw i32 %.026.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.am, 100
  br i1 %exitcond.not.i, label %bb.g, label %bb.d, !llvm.loop !141

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.an = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %1) #16
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bench_stats_check.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call ptr @__errno_location() #17
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.86, i32 noundef 16902, i32 noundef %i.aq, ptr noundef nonnull @.str.87) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.at = call i32 @fflush(ptr noundef %i.as)     ; 0 uses
  call void @_exit(i32 noundef 1) #18
  unreachable

bench_stats_check.exit.i:                         ; preds = %bb.g
  %i.au = add nuw nsw i32 %.021.i, 100            ; 2 uses
  %i.av = load i64, ptr %1, align 8, !tbaa !18
  %i.aw = sitofp i64 %i.av to double
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !19
  %i.ay = sitofp i64 %i.ax to double
  %i.az = fdiv double %i.ay, 1.000000e+09
  %i.ba = fadd double %i.az, %i.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.bb = fsub double %i.ba, %i.z
  %i.bc = fcmp uge double %i.bb, 1.000000e+00
  br i1 %i.bc, label %bench_mlkem_keygen.exit, label %bb.c, !llvm.loop !142

bench_mlkem_keygen.exit:                          ; preds = %bench_stats_check.exit.i, %bb.d, %bb.e
  %.1.i = phi i32 [ %.021.i, %bb.d ], [ %.021.i, %bb.e ], [ %i.au, %bench_stats_check.exit.i ]
  %.2.i = phi i32 [ %i.ak, %bb.d ], [ %i.al, %bb.e ], [ 0, %bench_stats_check.exit.i ]
  %i.bd = sext i32 %i.l to i64
  %i.be = getelementptr inbounds [120 x i8], ptr @bench_desc_words, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !12
  call fastcc void @bench_stats_asym_finish(ptr noundef nonnull %switch.load, i32 noundef range(i32 128, 257) %switch.offset, ptr noundef %i.bg, i32 noundef %.1.i, double noundef %i.z, i32 noundef %.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.bh = call i32 @wc_MlKemKey_PublicKeySize(ptr noundef nonnull %3, ptr noundef nonnull %i.f) #16 ; 2 uses
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bench_mlkem_keygen.exit
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !9
  %i.bj = call i32 @wc_MlKemKey_EncodePublicKey(ptr noundef nonnull %3, ptr noundef nonnull %i.e, i32 noundef %i.bi) #16 ; 2 uses
  %.not44.i = icmp eq i32 %i.bj, 0
  br i1 %.not44.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.bk = call i32 @wc_MlKemKey_Init(ptr noundef nonnull %4, i32 noundef %0, ptr noundef null, i32 noundef -2) #16 ; 2 uses
  %.not45.i = icmp eq i32 %i.bk, 0
  br i1 %.not45.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bl = load i32, ptr %i.f, align 4, !tbaa !9
  %i.bm = call i32 @wc_MlKemKey_DecodePublicKey(ptr noundef nonnull %4, ptr noundef nonnull %i.e, i32 noundef %i.bl) #16 ; 2 uses
  %.not46.i = icmp eq i32 %i.bm, 0
  br i1 %.not46.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.bn = call i32 @wc_MlKemKey_CipherTextSize(ptr noundef nonnull %4, ptr noundef nonnull %i.g) #16 ; 2 uses
  %.not47.i = icmp eq i32 %i.bn, 0
  br i1 %.not47.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  call fastcc void @bench_stats_start(ptr noundef %i.a, ptr noundef %i.b)
  %.promoted.i = load i32, ptr %i.a, align 4
  %i.bo = load double, ptr %i.b, align 8          ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %i.bp = phi i32 [ %i.bs, %bb.q ], [ %.promoted.i, %bb.m ] ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.03363.i = phi i32 [ 0, %bb.n ], [ %i.br, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.bq = call i32 @wc_MlKemKey_EncapsulateWithRandom(ptr noundef nonnull %4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, i32 noundef 32) #16 ; 2 uses
  %.not49.i = icmp eq i32 %i.bq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br i1 %.not49.i, label %bb.p, label %.loopexit57.i

bb.p:                                             ; preds = %bb.o
  %i.br = add nuw nsw i32 %.03363.i, 1            ; 2 uses
  %exitcond.not.i7 = icmp eq i32 %i.br, 100
  br i1 %exitcond.not.i7, label %bb.q, label %bb.o, !llvm.loop !143

bb.q:                                             ; preds = %bb.p
  %i.bs = add nsw i32 %i.bp, 100                  ; 2 uses
  %i.bt = call fastcc i32 @bench_stats_check(double noundef %i.bo)
  %.not48.i = icmp eq i32 %i.bt, 0
  br i1 %.not48.i, label %.loopexit57.i, label %bb.n, !llvm.loop !144

.loopexit57.i:                                    ; preds = %bb.q, %bb.o
  %5 = phi i32 [ %i.bq, %bb.o ], [ 0, %bb.q ]
  %storemerge.i = phi i32 [ %i.bp, %bb.o ], [ %i.bs, %bb.q ]
  call fastcc void @bench_stats_asym_finish(ptr noundef nonnull %switch.load, i32 noundef range(i32 128, 257) %switch.offset, ptr noundef nonnull @.str.168, i32 noundef %storemerge.i, double noundef %i.bo, i32 noundef %5)
  call fastcc void @bench_stats_start(ptr noundef %i.a, ptr noundef %i.b)
  %.promoted67.i = load i32, ptr %i.a, align 4
  %i.bu = load double, ptr %i.b, align 8          ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.loopexit57.i
  %i.bv = phi i32 [ %i.bz, %bb.u ], [ %.promoted67.i, %.loopexit57.i ] ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.166.i = phi i32 [ 0, %bb.r ], [ %i.by, %bb.t ]
  %i.bw = load i32, ptr %i.g, align 4, !tbaa !9
  %i.bx = call i32 @wc_MlKemKey_Decapsulate(ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef %i.bw) #16 ; 3 uses
  %.not51.i = icmp eq i32 %i.bx, 0
  br i1 %.not51.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s
  %i.by = add nuw nsw i32 %.166.i, 1              ; 2 uses
  %exitcond82.not.i = icmp eq i32 %i.by, 100
  br i1 %exitcond82.not.i, label %bb.u, label %bb.s, !llvm.loop !145

bb.u:                                             ; preds = %bb.t
  %i.bz = add nsw i32 %i.bv, 100                  ; 2 uses
  %i.ca = call fastcc i32 @bench_stats_check(double noundef %i.bu)
  %.not50.i = icmp eq i32 %i.ca, 0
  br i1 %.not50.i, label %.loopexit.thread.i, label %bb.r, !llvm.loop !146

.loopexit.thread.i:                               ; preds = %bb.u
  call fastcc void @bench_stats_asym_finish(ptr noundef nonnull %switch.load, i32 noundef range(i32 128, 257) %switch.offset, ptr noundef nonnull @.str.172, i32 noundef %i.bz, double noundef %i.bu, i32 noundef 0)
  br label %bench_mlkem_encap.exit

.loopexit.i:                                      ; preds = %bb.s
  call fastcc void @bench_stats_asym_finish(ptr noundef nonnull %switch.load, i32 noundef range(i32 128, 257) %switch.offset, ptr noundef nonnull @.str.172, i32 noundef %i.bv, double noundef %i.bu, i32 noundef %i.bx)
  br label %.thread.i

.thread.i:                                        ; preds = %.loopexit.i, %bb.l, %bb.k, %bb.j, %bb.i, %bench_mlkem_keygen.exit
  %.655.i = phi i32 [ %i.bx, %.loopexit.i ], [ %i.bn, %bb.l ], [ %i.bm, %bb.k ], [ %i.bk, %bb.j ], [ %i.bj, %bb.i ], [ %i.bh, %bench_mlkem_keygen.exit ]
  %i.cb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.185, i32 noundef %.655.i) ; 0 uses
  br label %bench_mlkem_encap.exit

bench_mlkem_encap.exit:                           ; preds = %.loopexit.thread.i, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.cc = call i32 @wc_MlKemKey_Free(ptr noundef nonnull %4) #16 ; 0 uses
  %i.cd = call i32 @wc_MlKemKey_Free(ptr noundef nonnull %3) #16 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bench_mlkem_encap.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

declare i32 @wc_MlKemKey_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bench_ecc_curve(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.b2 = load i1, ptr @bench_all, align 4
  br i1 %.b2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @bench_asym_algs, align 4, !tbaa !9 ; 2 uses
  %i.b = and i32 %i.a, 4096
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @bench_eccMakeKey(i32 poison, i32 noundef %0)
  %.b.pr = load i1, ptr @bench_all, align 4
  br i1 %.b.pr, label %..thread_crit_edge, label %bb.d

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i32, ptr @bench_asym_algs, align 4, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.c = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.a, %bb.b ]
  %i.d = and i32 %i.c, 8192
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  tail call void @bench_ecc(i32 poison, i32 noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bench_eccMakeKey(i32 %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca [1 x [1 x %struct.ecc_key]], align 16 ; 7 uses
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i32, ptr @lng_index, align 4, !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4208) %4, i8 0, i64 4208, i1 false)
  %i.c = tail call i32 @wc_ecc_get_curve_size_from_id(i32 noundef %1) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.d = call i32 @clock_gettime(i32 noundef 0, ptr noundef nonnull %3) #16
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bench_stats_start.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #17
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.86, i32 noundef 16902, i32 noundef %i.g, ptr noundef nonnull @.str.87) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.j = call i32 @fflush(ptr noundef %i.i)       ; 0 uses
  call void @_exit(i32 noundef 1) #18
  unreachable

bench_stats_start.exit:                           ; preds = %bb.a
  %i.k = load i64, ptr %3, align 8, !tbaa !18
  %i.l = sitofp i64 %i.k to double
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = sitofp i64 %i.n to double
  %i.p = fdiv double %i.o, 1.000000e+09
  %i.q = fadd double %i.p, %i.l                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.r = call { i32, i32 } asm sideeffect "cpuid\0A\09rdtsc", "={ax},={dx},{ax},~{ebx},~{ecx},~{dirflag},~{fpsr},~{flags}"(i32 0) #16, !srcloc !20 ; 2 uses
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = extractvalue { i32, i32 } %i.r, 1
  %i.u = zext i32 %i.s to i64
  %i.v = zext i32 %i.t to i64
  %i.w = shl nuw i64 %i.v, 32
  %i.x = or disjoint i64 %i.w, %i.u
  %i.y = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @total_cycles)
  store i64 %i.x, ptr %i.y, align 8, !tbaa !21
  %i.z = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gRng)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bench_stats_check.exit, %bench_stats_start.exit
  %.0 = phi i32 [ 0, %bench_stats_start.exit ], [ %i.ao, %bench_stats_check.exit ] ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bench_async_handle.exit
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
end_hunk_0
begin_hunk_1_@wolfcrypt_benchmark_main:bb.a
  %i.du = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(4) @.str.272) #19
  %.not200.not.2 = icmp eq i32 %i.du, 0
  br i1 %.not200.not.2, label %.thread340, label %.lr.ph232.3

.thread340:                                       ; preds = %.lr.ph232.2
  %i.dv = or i32 %bench_asym_algs.promoted, 16
  store i32 %i.dv, ptr @bench_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph232.3:                                      ; preds = %.lr.ph232.2
  %i.dw = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(8) @.str.273) #19
  %.not200.not.3 = icmp eq i32 %i.dw, 0
  br i1 %.not200.not.3, label %.thread342, label %.lr.ph232.4

.thread342:                                       ; preds = %.lr.ph232.3
  %i.dx = or i32 %bench_asym_algs.promoted, 4096
  store i32 %i.dx, ptr @bench_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph232.4:                                      ; preds = %.lr.ph232.3
  %i.dy = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(5) @.str.274) #19
  %.not200.not.4 = icmp eq i32 %i.dy, 0
  br i1 %.not200.not.4, label %.thread344, label %.lr.ph232.5

.thread344:                                       ; preds = %.lr.ph232.4
  %i.dz = or i32 %bench_asym_algs.promoted, 8192
  store i32 %i.dz, ptr @bench_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph232.5:                                      ; preds = %.lr.ph232.4
  %i.ea = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(9) @.str.275) #19
  %.not200.not.5 = icmp eq i32 %i.ea, 0
  br i1 %.not200.not.5, label %.thread346, label %.lr.ph239.preheader

.thread346:                                       ; preds = %.lr.ph232.5
  %i.eb = or i32 %bench_asym_algs.promoted, 32768
  store i32 %i.eb, ptr @bench_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph239.preheader:                              ; preds = %.lr.ph232.5
  %bench_pq_asym_algs.promoted = load i32, ptr @bench_pq_asym_algs, align 4 ; 8 uses
  %i.ec = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(4) @.str.277) #19
  %.not201.not = icmp eq i32 %i.ec, 0
  br i1 %.not201.not, label %.thread351, label %.lr.ph239.1

.thread351:                                       ; preds = %.lr.ph239.preheader
  store i32 -1, ptr @bench_pq_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph239.1:                                      ; preds = %.lr.ph239.preheader
  %i.ed = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(7) @.str.278) #19
  %.not201.not.1 = icmp eq i32 %i.ed, 0
  br i1 %.not201.not.1, label %.thread353, label %.lr.ph239.2

.thread353:                                       ; preds = %.lr.ph239.1
  %i.ee = or i32 %bench_pq_asym_algs.promoted, 224
  store i32 %i.ee, ptr @bench_pq_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph239.2:                                      ; preds = %.lr.ph239.1
  %i.ef = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(10) @.str.279) #19
  %.not201.not.2 = icmp eq i32 %i.ef, 0
  br i1 %.not201.not.2, label %.thread355, label %.lr.ph239.3

.thread355:                                       ; preds = %.lr.ph239.2
  %i.eg = or i32 %bench_pq_asym_algs.promoted, 32
  store i32 %i.eg, ptr @bench_pq_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph239.3:                                      ; preds = %.lr.ph239.2
  %i.eh = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(10) @.str.280) #19
  %.not201.not.3 = icmp eq i32 %i.eh, 0
  br i1 %.not201.not.3, label %.thread357, label %.lr.ph239.4

.thread357:                                       ; preds = %.lr.ph239.3
  %i.ei = or i32 %bench_pq_asym_algs.promoted, 64
  store i32 %i.ei, ptr @bench_pq_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph239.4:                                      ; preds = %.lr.ph239.3
  %i.ej = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(11) @.str.281) #19
  %.not201.not.4 = icmp eq i32 %i.ej, 0
  br i1 %.not201.not.4, label %.thread359, label %.lr.ph239.5

.thread359:                                       ; preds = %.lr.ph239.4
  %i.ek = or i32 %bench_pq_asym_algs.promoted, 128
  store i32 %i.ek, ptr @bench_pq_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph239.5:                                      ; preds = %.lr.ph239.4
  %i.el = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(8) @.str.282) #19
  %.not201.not.5 = icmp eq i32 %i.el, 0
  br i1 %.not201.not.5, label %.thread361, label %.lr.ph239.6

.thread361:                                       ; preds = %.lr.ph239.5
  %i.em = or i32 %bench_pq_asym_algs.promoted, 224
  store i32 %i.em, ptr @bench_pq_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph239.6:                                      ; preds = %.lr.ph239.5
  %i.en = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(12) @.str.283) #19
  %.not201.not.6 = icmp eq i32 %i.en, 0
  br i1 %.not201.not.6, label %.thread363, label %.lr.ph239.7

.thread363:                                       ; preds = %.lr.ph239.6
  %i.eo = or i32 %bench_pq_asym_algs.promoted, 32
  store i32 %i.eo, ptr @bench_pq_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph239.7:                                      ; preds = %.lr.ph239.6
  %i.ep = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(12) @.str.284) #19
  %.not201.not.7 = icmp eq i32 %i.ep, 0
  br i1 %.not201.not.7, label %.thread365, label %.lr.ph239.8

.thread365:                                       ; preds = %.lr.ph239.7
  %i.eq = or i32 %bench_pq_asym_algs.promoted, 64
  store i32 %i.eq, ptr @bench_pq_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph239.8:                                      ; preds = %.lr.ph239.7
  %i.er = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(13) @.str.285) #19
  %.not201.not.8 = icmp eq i32 %i.er, 0
  br i1 %.not201.not.8, label %.thread367, label %.lr.ph245.preheader

.thread367:                                       ; preds = %.lr.ph239.8
  %i.es = or i32 %bench_pq_asym_algs.promoted, 128
  store i32 %i.es, ptr @bench_pq_asym_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph245.preheader:                              ; preds = %.lr.ph239.8
  %bench_other_algs.promoted = load i32, ptr @bench_other_algs, align 4 ; 2 uses
  %i.et = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(7) @.str.287) #19
  %.not202.not = icmp eq i32 %i.et, 0
  br i1 %.not202.not, label %.thread373, label %.lr.ph245.1

.thread373:                                       ; preds = %.lr.ph245.preheader
  store i32 -1, ptr @bench_other_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph245.1:                                      ; preds = %.lr.ph245.preheader
  %i.eu = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(5) @.str.288) #19
  %.not202.not.1 = icmp eq i32 %i.eu, 0
  br i1 %.not202.not.1, label %.thread374, label %.lr.ph245.2

.thread374:                                       ; preds = %.lr.ph245.1
  %i.ev = or i32 %bench_other_algs.promoted, 1
  store i32 %i.ev, ptr @bench_other_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.lr.ph245.2:                                      ; preds = %.lr.ph245.1
  %i.ew = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(10) @.str.289) #19
  %.not202.not.2 = icmp eq i32 %i.ew, 0
  br i1 %.not202.not.2, label %.thread375, label %.critedge15

.thread375:                                       ; preds = %.lr.ph245.2
  %i.ex = or i32 %bench_other_algs.promoted, 8
  store i32 %i.ex, ptr @bench_other_algs, align 4, !tbaa !9
  store i1 true, ptr @bench_all, align 4
  br label %.critedge178

.critedge15:                                      ; preds = %.lr.ph245.2
  %i.ey = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.h) ; 0 uses
  tail call fastcc void @Usage()
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ar
  %i.ez = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.h, ptr noundef null, i32 noundef 10) #16, !inline_history !167
  %i.fa = trunc i64 %i.ez to i32                  ; 3 uses
  %.not.i = icmp eq i32 %i.fa, 0
  br i1 %.not.i, label %.critedge178, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = load i32, ptr @numBlocks, align 4, !tbaa !9
  %i.fc = load i32, ptr @bench_size, align 4, !tbaa !9
  %i.fd = mul i32 %i.fc, %i.fb
  %i.fe = udiv i32 %i.fd, %i.fa
  store i32 %i.fe, ptr @numBlocks, align 4, !tbaa !9
  store i32 %i.fa, ptr @bench_size, align 4, !tbaa !9
  br label %.critedge178

.critedge178:                                     ; preds = %.thread365, %.thread357, %.thread361, %.thread355, %.thread367, %.thread353, %.thread359, %.thread351, %.thread363, %.thread340, %.thread346, %.thread338, %.thread344, %.thread336, %.thread342, %bb.ax, %.thread269, %.thread275, %.thread267, %.thread273, %.thread271, %.thread, %.thread295, %.thread279, %.thread303, %.thread281, %.thread309, %.thread283, %.thread299, %.thread285, %.thread307, %.thread287, %.thread297, %.thread289, %.thread305, %.thread291, %.thread301, %.thread293, %.thread322, %.thread314, %.thread326, %.thread316, %.thread328, %.thread318, %.thread324, %.thread320, %.thread373, %.thread374, %.thread375, %bb.az, %bb.ay, %bb.g, %bb.f, %bb.k, %bb.o, %bb.t, %bb.x, %bb.ab, %bb.af, %bb.ak, %bb.aq, %bb.an, %bb.ah, %bb.ad, %bb.z, %bb.v, %bb.r, %bb.m, %bb.i
  %.1115 = phi i32 [ %i.t, %bb.g ], [ %i.t, %bb.f ], [ %.0114246, %.thread340 ], [ %.0114246, %bb.i ], [ %.0114246, %bb.k ], [ %.0114246, %bb.m ], [ %.0114246, %bb.o ], [ %i.ag, %bb.r ], [ %.0114246, %bb.ay ], [ %.0114246, %bb.t ], [ %.0114246, %bb.v ], [ %.0114246, %bb.x ], [ %.0114246, %bb.z ], [ %.0114246, %bb.ab ], [ %.0114246, %bb.ad ], [ %.0114246, %bb.af ], [ %.0114246, %bb.ah ], [ %i.ay, %bb.ak ], [ %.0114246, %.thread375 ], [ %i.be, %bb.an ], [ %.0114246, %.thread374 ], [ %i.bi, %bb.aq ], [ %.0114246, %.thread373 ], [ %.0114246, %bb.az ], [ %.0114246, %.thread320 ], [ %.0114246, %.thread324 ], [ %.0114246, %.thread318 ], [ %.0114246, %.thread328 ], [ %.0114246, %.thread316 ], [ %.0114246, %.thread326 ], [ %.0114246, %.thread314 ], [ %.0114246, %.thread322 ], [ %.0114246, %.thread293 ], [ %.0114246, %.thread301 ], [ %.0114246, %.thread291 ], [ %.0114246, %.thread305 ], [ %.0114246, %.thread289 ], [ %.0114246, %.thread297 ], [ %.0114246, %.thread287 ], [ %.0114246, %.thread307 ], [ %.0114246, %.thread285 ], [ %.0114246, %.thread299 ], [ %.0114246, %.thread283 ], [ %.0114246, %.thread309 ], [ %.0114246, %.thread281 ], [ %.0114246, %.thread303 ], [ %.0114246, %.thread279 ], [ %.0114246, %.thread295 ], [ %.0114246, %.thread ], [ %.0114246, %.thread271 ], [ %.0114246, %.thread273 ], [ %.0114246, %.thread267 ], [ %.0114246, %.thread275 ], [ %.0114246, %.thread269 ], [ %.0114246, %bb.ax ], [ %.0114246, %.thread342 ], [ %.0114246, %.thread336 ], [ %.0114246, %.thread344 ], [ %.0114246, %.thread338 ], [ %.0114246, %.thread346 ], [ %.0114246, %.thread363 ], [ %.0114246, %.thread351 ], [ %.0114246, %.thread359 ], [ %.0114246, %.thread353 ], [ %.0114246, %.thread367 ], [ %.0114246, %.thread355 ], [ %.0114246, %.thread361 ], [ %.0114246, %.thread357 ], [ %.0114246, %.thread365 ] ; 2 uses
  %.1113 = phi ptr [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %.0112247, %.thread340 ], [ %.0112247, %bb.i ], [ %.0112247, %bb.k ], [ %.0112247, %bb.m ], [ %.0112247, %bb.o ], [ %i.g, %bb.r ], [ %.0112247, %bb.ay ], [ %.0112247, %bb.t ], [ %.0112247, %bb.v ], [ %.0112247, %bb.x ], [ %.0112247, %bb.z ], [ %.0112247, %bb.ab ], [ %.0112247, %bb.ad ], [ %.0112247, %bb.af ], [ %.0112247, %bb.ah ], [ %i.g, %bb.ak ], [ %.0112247, %.thread375 ], [ %i.g, %bb.an ], [ %.0112247, %.thread374 ], [ %i.g, %bb.aq ], [ %.0112247, %.thread373 ], [ %.0112247, %bb.az ], [ %.0112247, %.thread320 ], [ %.0112247, %.thread324 ], [ %.0112247, %.thread318 ], [ %.0112247, %.thread328 ], [ %.0112247, %.thread316 ], [ %.0112247, %.thread326 ], [ %.0112247, %.thread314 ], [ %.0112247, %.thread322 ], [ %.0112247, %.thread293 ], [ %.0112247, %.thread301 ], [ %.0112247, %.thread291 ], [ %.0112247, %.thread305 ], [ %.0112247, %.thread289 ], [ %.0112247, %.thread297 ], [ %.0112247, %.thread287 ], [ %.0112247, %.thread307 ], [ %.0112247, %.thread285 ], [ %.0112247, %.thread299 ], [ %.0112247, %.thread283 ], [ %.0112247, %.thread309 ], [ %.0112247, %.thread281 ], [ %.0112247, %.thread303 ], [ %.0112247, %.thread279 ], [ %.0112247, %.thread295 ], [ %.0112247, %.thread ], [ %.0112247, %.thread271 ], [ %.0112247, %.thread273 ], [ %.0112247, %.thread267 ], [ %.0112247, %.thread275 ], [ %.0112247, %.thread269 ], [ %.0112247, %bb.ax ], [ %.0112247, %.thread342 ], [ %.0112247, %.thread336 ], [ %.0112247, %.thread344 ], [ %.0112247, %.thread338 ], [ %.0112247, %.thread346 ], [ %.0112247, %.thread363 ], [ %.0112247, %.thread351 ], [ %.0112247, %.thread359 ], [ %.0112247, %.thread353 ], [ %.0112247, %.thread367 ], [ %.0112247, %.thread355 ], [ %.0112247, %.thread361 ], [ %.0112247, %.thread357 ], [ %.0112247, %.thread365 ]
  %i.ff = add nsw i32 %.1115, -1
  %i.fg = getelementptr inbounds nuw i8, ptr %.1113, i64 8
  %2 = icmp samesign ugt i32 %.1115, 2
  br i1 %2, label %sub_0, label %._crit_edge, !llvm.loop !168

._crit_edge:                                      ; preds = %bb.ap, %bb.am, %bb.aj, %bb.q, %bb.e, %.critedge178, %bb.a
  %i.fh = tail call i32 @benchmark_test(ptr poison)
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge, %.critedge15, %bb.d
  %.0116 = phi i32 [ 0, %bb.d ], [ 1, %.critedge15 ], [ %i.fh, %._crit_edge ]
  ret i32 %.0116
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Usage() unnamed_addr #12 {
print_alg.exit.5:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.a = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.d) ; 0 uses
  %i.f = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.j) ; 0 uses
  %i.l = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.p) ; 0 uses
  %i.r = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.v) ; 0 uses
  %i.x = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.ab) ; 0 uses
  %i.ad = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.ah) ; 0 uses
  %i.aj = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.an) ; 0 uses
  %i.ap = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !12
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.at) ; 0 uses
  %i.av = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !12
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.az) ; 0 uses
  %puts119 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts120 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  %i.bb = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.bf) ; 0 uses
  %puts121 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  %puts122 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  %puts123 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %i.bh = load i32, ptr @lng_index, align 4, !tbaa !9
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [232 x i8], ptr @bench_Usage_msg1, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !12
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef %i.bl) ; 0 uses
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef nonnull @.str.233) ; 0 uses
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.235) ; 0 uses
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.236) ; 0 uses
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.237) ; 0 uses
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.238) ; 0 uses
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.239) ; 0 uses
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.240) ; 0 uses
  br label %.preheader104

.preheader104:                                    ; preds = %.preheader104.backedge, %print_alg.exit.5
  %indvars.iv = phi i64 [ 0, %print_alg.exit.5 ], [ %indvars.iv.be, %.preheader104.backedge ] ; 3 uses
  %.194107 = phi i32 [ 78, %print_alg.exit.5 ], [ %.194107.be, %.preheader104.backedge ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr @bench_digest_opt, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !171 ; 2 uses
  %i.bw = icmp eq i32 %.194107, 0
  br i1 %i.bw, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader104
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef nonnull @.str.233) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader104
  %.9 = phi i32 [ 13, %bb.a ], [ %.194107, %.preheader104 ]
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull %i.bv) ; 0 uses
  %i.bz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #19
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = add nsw i32 %.9, 1
  %i.cc = add i32 %i.cb, %i.ca                    ; 7 uses
  %i.cd = icmp sgt i32 %i.cc, 80
  br i1 %i.cd, label %print_alg.exit69.thread, label %print_alg.exit69

print_alg.exit69:                                 ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not62 = icmp eq i64 %indvars.iv.next, 16
  br i1 %.not62, label %.preheader103.preheader, label %.preheader104.backedge

.preheader104.backedge:                           ; preds = %print_alg.exit69, %print_alg.exit69.thread
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %print_alg.exit69 ], [ %indvars.iv.next176, %print_alg.exit69.thread ]
  %.194107.be = phi i32 [ %i.cc, %print_alg.exit69 ], [ 0, %print_alg.exit69.thread ]
  br label %.preheader104, !llvm.loop !169

print_alg.exit69.thread:                          ; preds = %bb.b
  %putchar.i68 = tail call i32 @putchar(i32 10)   ; 0 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not62177 = icmp eq i64 %indvars.iv.next176, 16
  br i1 %.not62177, label %print_alg.exit71.thread182, label %.preheader104.backedge

.preheader103.preheader:                          ; preds = %print_alg.exit69
  %i.ce = icmp eq i32 %i.cc, 0
  br i1 %i.ce, label %print_alg.exit71.thread182, label %bb.c

print_alg.exit71.thread182:                       ; preds = %print_alg.exit69.thread, %.preheader103.preheader
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef nonnull @.str.233) ; 0 uses
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.259) ; 0 uses
  br label %print_alg.exit71.1.thread187

bb.c:                                             ; preds = %.preheader103.preheader
  %i.ch = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.259) ; 0 uses
  %i.ci = icmp sgt i32 %i.cc, 75
  br i1 %i.ci, label %print_alg.exit71.thread, label %print_alg.exit71

print_alg.exit71.thread:                          ; preds = %bb.c
  %putchar.i70 = tail call i32 @putchar(i32 10)   ; 0 uses
  br label %bb.d

print_alg.exit71:                                 ; preds = %bb.c
  %i.cj = icmp eq i32 %i.cc, -5
  br i1 %i.cj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %print_alg.exit71.thread, %print_alg.exit71
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef nonnull @.str.233) ; 0 uses
  br label %print_alg.exit71.1.thread187

print_alg.exit71.1.thread187:                     ; preds = %print_alg.exit71.thread182, %bb.d
  %.11.1.ph = phi i32 [ 24, %print_alg.exit71.thread182 ], [ 19, %bb.d ]
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.260) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %print_alg.exit71
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.260) ; 0 uses
  %i.cn = icmp sgt i32 %i.cc, 69
  br i1 %i.cn, label %print_alg.exit71.1.thread, label %print_alg.exit71.1

print_alg.exit71.1.thread:                        ; preds = %bb.e
  %putchar.i70.1 = tail call i32 @putchar(i32 10) ; 0 uses
  br label %print_alg.exit71.2.thread192

print_alg.exit71.1:                               ; preds = %bb.e
  %i.co = add nsw i32 %i.cc, 11                   ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %print_alg.exit71.2.thread192, label %bb.f

print_alg.exit71.2.thread192:                     ; preds = %print_alg.exit71.1.thread, %print_alg.exit71.1
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef nonnull @.str.233) ; 0 uses
  %i.cr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.261) ; 0 uses
  br label %print_alg.exit71.3.thread198

bb.f:                                             ; preds = %print_alg.exit71.1.thread187, %print_alg.exit71.1
  %.11.2 = phi i32 [ %.11.1.ph, %print_alg.exit71.1.thread187 ], [ %i.co, %print_alg.exit71.1 ] ; 4 uses
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.261) ; 0 uses
  %i.ct = icmp sgt i32 %.11.2, 70
  br i1 %i.ct, label %print_alg.exit71.2.thread, label %print_alg.exit71.2

print_alg.exit71.2.thread:                        ; preds = %bb.f
  %putchar.i70.2 = tail call i32 @putchar(i32 10) ; 0 uses
  br label %bb.g

print_alg.exit71.2:                               ; preds = %bb.f
  %i.cu = icmp eq i32 %.11.2, -10
  br i1 %i.cu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %print_alg.exit71.2.thread, %print_alg.exit71.2
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef nonnull @.str.233) ; 0 uses
  br label %print_alg.exit71.3.thread198

end_hunk_1
