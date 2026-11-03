Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pcfrac?download=true
inline.NumInlined: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@log
; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @cfracA(double noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = uitofp i32 %1 to double
  %i.b = fadd double %i.a, 1.000000e+00
  %i.c = fdiv double 2.000000e+00, %i.b
  %i.d = fadd double %i.c, 6.000000e+00
  %sqrt = tail call double @llvm.sqrt.f64(double %i.d)
  %i.e = fdiv double 1.000000e+00, %sqrt
  ret double %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @pfactorbase(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !11
  %i.b = load i32, ptr @primesize, align 4, !tbaa !11
  %i.c = add i32 %i.b, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @primes, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !15
  %i.g = zext i16 %i.f to i32
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %0, align 2, !tbaa !15
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %0, align 2, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call ptr @utop(i32 noundef %1) #18
  %i.k = tail call ptr @pmul(ptr noundef %0, ptr noundef %i.j) #18
  %i.l = tail call ptr @pnew(ptr noundef %i.k) #18 ; 6 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !11
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = tail call double @ptod(ptr noundef %i.l) #18
  %i.p = uitofp i32 %3 to double
  %i.q = fadd double %i.p, 1.000000e+00
  %i.r = fdiv double 2.000000e+00, %i.q
  %i.s = fadd double %i.r, 6.000000e+00
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.s)
  %i.t = fdiv double 1.000000e+00, %sqrt.i
  %i.u = tail call double @log(double noundef %i.o) #18, !tbaa !11 ; 2 uses
  %i.v = tail call double @log(double noundef %i.u) #18, !tbaa !11
  %i.w = fmul double %i.u, %i.v
  %i.x = tail call double @sqrt(double noundef %i.w) #18, !tbaa !11
  %i.y = fmul double %i.t, %i.x
  %i.z = tail call double @exp(double noundef %i.y) #18, !tbaa !11
  %i.aa = fadd double %i.z, 5.000000e-01
  %i.ab = fptoui double %i.aa to i32              ; 2 uses
  %.pre = load i16, ptr @primes, align 2, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ac = phi i16 [ %.pre, %bb.d ], [ %i.af, %bb.f ]
  %.045 = phi ptr [ @primes, %bb.d ], [ %i.ad, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.045, i64 2 ; 3 uses
  %i.ae = zext i16 %i.ac to i32
  %.not54 = icmp ult i32 %i.ae, %i.ab
  br i1 %.not54, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load i16, ptr %i.ad, align 2, !tbaa !15 ; 2 uses
  %.not55 = icmp eq i16 %i.af, 1
  br i1 %.not55, label %bb.g, label %bb.e, !llvm.loop !39

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.ag, ptrtoint (ptr @primes to i64)
  %i.ai = lshr exact i64 %i.ah, 1
  %i.aj = trunc i64 %i.ai to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.043 = phi i32 [ %i.aj, %bb.g ], [ %i.a, %bb.c ]
  %.042 = phi i32 [ %i.ab, %bb.g ], [ %i.g, %bb.c ]
  %i.ak = zext i32 %.043 to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #19 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i16, ptr @primes, align 2, !tbaa !15
  %i.ap = zext i16 %i.ao to i32
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !11
  %i.aq = load i32, ptr %2, align 4, !tbaa !11
  %.not56 = icmp eq i32 %i.aq, 1
  br i1 %.not56, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.pre60 = load i16, ptr getelementptr inbounds nuw (i8, ptr @primes, i64 2), align 2, !tbaa !15
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %i.as = phi i16 [ %i.bl, %bb.k ], [ %.pre60, %.preheader.preheader ]
  %.247 = phi ptr [ %i.bk, %bb.k ], [ getelementptr inbounds nuw (i8, ptr @primes, i64 2), %.preheader.preheader ] ; 3 uses
  %.144 = phi i32 [ %.2, %bb.k ], [ 1, %.preheader.preheader ] ; 2 uses
  %.0 = phi ptr [ %.1, %bb.k ], [ %i.ar, %.preheader.preheader ] ; 3 uses
  %i.at = zext i16 %i.as to i32
  %i.au = tail call ptr @utop(i32 noundef %i.at) #18
  %i.av = load ptr, ptr @pone, align 8, !tbaa !22
  %i.aw = tail call ptr @psub(ptr noundef %i.au, ptr noundef %i.av) #18
  %i.ax = tail call ptr @phalf(ptr noundef %i.aw) #18
  %i.ay = load i16, ptr %.247, align 2, !tbaa !15
  %i.az = zext i16 %i.ay to i32
  %i.ba = tail call ptr @utop(i32 noundef %i.az) #18
  %i.bb = tail call ptr @ppowmod(ptr noundef %i.l, ptr noundef %i.ax, ptr noundef %i.ba) #18
  %i.bc = tail call i32 @picmp(ptr noundef %i.bb, i32 noundef 1) #18
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader
  %i.be = load i16, ptr %.247, align 2, !tbaa !15
  %i.bf = zext i16 %i.be to i32                   ; 2 uses
  store i32 %i.bf, ptr %.0, align 4, !tbaa !11
  %i.bg = add i32 %.144, 1                        ; 3 uses
  %i.bh = load i32, ptr %2, align 4, !tbaa !11
  %i.bi = icmp ne i32 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %.not57 = icmp ugt i32 %.042, %i.bf
  %or.cond = select i1 %i.bi, i1 %.not57, i1 false
  br i1 %or.cond, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.preheader
  %.2 = phi i32 [ %i.bg, %bb.j ], [ %.144, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.bj, %bb.j ], [ %.0, %.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.247, i64 2 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !15 ; 2 uses
  %.not58 = icmp eq i16 %i.bl, 1
  br i1 %.not58, label %.loopexit, label %.preheader, !llvm.loop !40

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.i
  %.3 = phi i32 [ 1, %bb.i ], [ %.2, %bb.k ], [ %i.bg, %bb.j ]
  store i32 %.3, ptr %2, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %.loopexit
  %.not59 = icmp eq ptr %i.l, null
  br i1 %.not59, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load i16, ptr %i.l, align 2, !tbaa !15
  %i.bn = add i16 %i.bm, -1                       ; 2 uses
  store i16 %i.bn, ptr %i.l, align 2, !tbaa !15
  %i.bo = icmp eq i16 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = tail call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.l) #18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load i16, ptr %0, align 2, !tbaa !15
  %i.br = add i16 %i.bq, -1                       ; 2 uses
  store i16 %i.br, ptr %0, align 2, !tbaa !15
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bt = tail call i32 (ptr, ...) @pfree(ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  ret ptr %i.am
}

declare double @ptod(ptr noundef) local_unnamed_addr #8

declare i32 @picmp(ptr noundef, i32 noundef) local_unnamed_addr #8

declare ptr @phalf(ptr noundef) local_unnamed_addr #8

declare ptr @psub(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @getEas(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = uitofp i32 %4 to double
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fdiv double 1.000000e+00, %i.c           ; 2 uses
  %i.e = tail call double @llvm.fmuladd.f64(double %i.d, double 2.000000e+00, double 6.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.e)
  %i.f = fdiv double 1.000000e+00, %sqrt
  %i.g = fmul double %i.d, %i.f                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.h = icmp eq i32 %4, 0
  br i1 %i.h, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %4, 1
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #19 ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @utop(i32 noundef %1) #18
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i16, ptr %0, align 2, !tbaa !15
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %0, align 2, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call ptr @pmul(ptr noundef %i.n, ptr noundef %0) #18
  %i.r = tail call double @ptod(ptr noundef %i.q) #18 ; 4 uses
  %.not82 = icmp eq i32 %3, 0
  br i1 %.not82, label %.split, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.e
  %wide.trip.count = zext i32 %3 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.j
  %.05680.us = phi i32 [ %i.bd, %bb.j ], [ 1, %.lr.ph.us.preheader ] ; 6 uses
  %.05779.us = phi double [ %i.w, %bb.j ], [ 0.000000e+00, %.lr.ph.us.preheader ]
  %.05878.us = phi double [ %i.ab, %bb.j ], [ 1.000000e+00, %.lr.ph.us.preheader ]
  %i.s = add i32 %.05680.us, -1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = fadd double %i.g, %.05779.us             ; 4 uses
  %i.x = fmul double %i.w, 4.000000e+00
  %i.y = fmul double %i.w, %i.x
  %i.z = uitofp i32 %.05680.us to double
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = fsub double %.05878.us, %i.aa           ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ac = call double @log(double noundef %i.r) #18, !tbaa !11 ; 2 uses
  %i.ad = call double @log(double noundef %i.ac) #18, !tbaa !11
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = call double @sqrt(double noundef %i.ae) #18, !tbaa !11
  %i.ag = fmul double %i.w, %i.af
  %i.ah = call double @exp(double noundef %i.ag) #18, !tbaa !11
  %i.ai = fmul double %i.ab, 5.000000e-01
  %i.aj = call double @pow(double noundef %i.r, double noundef %i.ai) #18, !tbaa !11
  %i.ak = fadd double %i.ah, 5.000000e-01
  %i.al = fptoui double %i.ak to i32              ; 2 uses
  %i.am = call ptr @dtop(double noundef %i.aj) #18
  %i.an = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.am) #18 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.g, !llvm.loop !41

bb.g:                                             ; preds = %.lr.ph.us, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !11 ; 2 uses
  %.not69.us = icmp ult i32 %i.ap, %i.al
  br i1 %.not69.us, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ar = load i32, ptr @verbose, align 4, !tbaa !11
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.05680.us, i32 noundef %i.ap, i32 noundef %i.al) ; 0 uses
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !32
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.aw = call i32 @fputp(ptr noundef %i.au, ptr noundef %i.av) #18 ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !32
  %i.ay = call i32 @putc(i32 noundef 10, ptr noundef %i.ax) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !32
  %i.ba = call i32 @fflush(ptr noundef %i.az)     ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.aq, ptr %i.u, align 8, !tbaa !29
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bc = call ptr @psetq(ptr noundef nonnull %i.v, ptr noundef %i.bb) #18 ; 0 uses
  %i.bd = add i32 %.05680.us, 1                   ; 2 uses
  %.not67.us = icmp ugt i32 %i.bd, %4
  br i1 %.not67.us, label %.loopexit, label %.lr.ph.us, !llvm.loop !42

.split:                                           ; preds = %bb.e
  %i.be = fmul double %i.g, 4.000000e+00
  %i.bf = fmul double %i.g, %i.be
  %i.bg = fsub double 1.000000e+00, %i.bf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.bh = tail call double @log(double noundef %i.r) #18, !tbaa !11 ; 2 uses
  %i.bi = tail call double @log(double noundef %i.bh) #18, !tbaa !11
  %i.bj = fmul double %i.bh, %i.bi
  %i.bk = tail call double @sqrt(double noundef %i.bj) #18, !tbaa !11
  %i.bl = fmul double %i.g, %i.bk
  %i.bm = tail call double @exp(double noundef %i.bl) #18, !tbaa !11 ; 0 uses
  %i.bn = fmul double %i.bg, 5.000000e-01
  %i.bo = tail call double @pow(double noundef %i.r, double noundef %i.bn) #18, !tbaa !11
  %i.bp = tail call ptr @dtop(double noundef %i.bo) #18
  %i.bq = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.bp) #18 ; 0 uses
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.f
  %i.br = add i32 %.05680.us, -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.loopexit, %.split
  %.05673 = phi i32 [ %i.br, %.loopexit.loopexit ], [ 0, %.split ], [ %.05680.us, %bb.j ]
  %i.bs = zext i32 %.05673 to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !22  ; 4 uses
  %.not68 = icmp eq ptr %i.bu, null
  br i1 %.not68, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !15
  %i.bw = add i16 %i.bv, -1                       ; 2 uses
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !15
  %i.bx = icmp eq i16 %i.bw, 0
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.bu) #18 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.loopexit
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load i16, ptr %0, align 2, !tbaa !15
  %i.ca = add i16 %i.bz, -1                       ; 2 uses
  store i16 %i.ca, ptr %0, align 2, !tbaa !15
  %i.cb = icmp eq i16 %i.ca, 0
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = call i32 (ptr, ...) @pfree(ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.b, %bb.a
  %.059 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.l, %bb.o ], [ %i.l, %bb.n ], [ %i.l, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.059
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

declare ptr @dtop(double noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 2) i32 @pfactorQ(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !22
  %i.c = add i32 %4, -1                           ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %1, align 2, !tbaa !15
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %1, align 2, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not34 = icmp eq ptr %5, null
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %5, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = call ptr @psetq(ptr noundef nonnull %i.b, ptr noundef %i.k) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ]
  %i.m = zext i32 %4 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.m, i1 false)
  %i.n = call i32 @podd(ptr noundef %1) #18
  %.not3540 = icmp eq i32 %i.n, 0
  br i1 %.not3540, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.p = call ptr @phalf(ptr noundef %i.o) #18
  %i.q = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.p) #18 ; 0 uses
  %i.r = load i8, ptr %3, align 1, !tbaa !12
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %3, align 1, !tbaa !12
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.u = call i32 @podd(ptr noundef %i.t) #18
  %.not35 = icmp eq i32 %i.u, 0
  br i1 %.not35, label %.lr.ph, label %.preheader.preheader, !llvm.loop !43

.preheader.preheader:                             ; preds = %.lr.ph, %bb.e
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.028 = phi ptr [ %i.w, %._crit_edge ], [ %2, %.preheader.preheader ]
  %.027 = phi ptr [ %i.v, %._crit_edge ], [ %3, %.preheader.preheader ]
  %.026 = phi i32 [ %i.au, %._crit_edge ], [ %i.c, %.preheader.preheader ]
  %.024 = phi ptr [ %.125, %._crit_edge ], [ %5, %.preheader.preheader ] ; 3 uses
  %.1 = phi ptr [ %.2, %._crit_edge ], [ %.0, %.preheader.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.027, i64 1 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.028, i64 4 ; 6 uses
  %i.x = icmp eq ptr %i.w, %.1
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.z = call i32 @pcmp(ptr noundef %.pre43, ptr noundef %i.y) #18
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.024, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %.024, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.af = call ptr @psetq(ptr noundef nonnull %i.b, ptr noundef %i.ae) #18 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader
  %i.ag = phi ptr [ %.pre, %bb.g ], [ %.pre43, %.preheader ]
  %.125 = phi ptr [ %i.ab, %bb.g ], [ %.024, %.preheader ]
  %.2 = phi ptr [ %i.ac, %bb.g ], [ %.1, %.preheader ]
  %i.ah = load i32, ptr %i.w, align 4, !tbaa !11
  %i.ai = call i32 @pimod(ptr noundef %i.ag, i32 noundef %i.ah) #18
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %bb.h, %.lr.ph41
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.al = load i32, ptr %i.w, align 4, !tbaa !11
  %i.am = call ptr @pidiv(ptr noundef %i.ak, i32 noundef %i.al) #18
  %i.an = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.am) #18 ; 0 uses
  %i.ao = load i8, ptr %i.v, align 1, !tbaa !12
  %i.ap = add i8 %i.ao, 1
  store i8 %i.ap, ptr %i.v, align 1, !tbaa !12
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.ar = load i32, ptr %i.w, align 4, !tbaa !11
  %i.as = call i32 @pimod(ptr noundef %i.aq, i32 noundef %i.ar) #18
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.lr.ph41, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph41, %bb.h
  %i.au = add i32 %.026, -1                       ; 2 uses
  %.not36 = icmp eq i32 %i.au, 0
  br i1 %.not36, label %bb.i, label %.preheader, !llvm.loop !45

bb.i:                                             ; preds = %._crit_edge
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.aw = call i32 @picmp(ptr noundef %i.av, i32 noundef 1) #18
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.az = load i32, ptr %i.w, align 4, !tbaa !11
  %i.ba = call ptr @pidiv(ptr noundef %i.ay, i32 noundef %i.az) #18
  %i.bb = call i32 @picmp(ptr noundef %i.ba, i32 noundef %i.f) #18
  %i.bc = icmp sgt i32 %i.bb, 0
  %spec.select = sext i1 %i.bc to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.j, %bb.i
  %.023 = phi i32 [ %spec.select, %bb.j ], [ 1, %bb.i ], [ -2, %bb.f ]
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.be = call ptr @psetq(ptr noundef %0, ptr noundef %i.bd) #18 ; 0 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !22  ; 4 uses
  %.not37 = icmp eq ptr %i.bf, null
  br i1 %.not37, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !15
  %i.bh = add i16 %i.bg, -1                       ; 2 uses
  store i16 %i.bh, ptr %i.bf, align 2, !tbaa !15
  %i.bi = icmp eq i16 %i.bh, 0
end_hunk_0
