Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/util?download=true
inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@diff:bb.a
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr i8, ptr %i.q, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !11
  br label %Balloc.exit.thread

bb.g:                                             ; preds = %bb.a, %bb.d
  %.018.i.ph = phi i32 [ %i.p, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %i.t = icmp slt i32 %.018.i.ph, 0               ; 2 uses
  %. = select i1 %i.t, ptr %1, ptr %0             ; 3 uses
  %i.u = getelementptr i8, ptr %., i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = shl nuw i32 1, %i.v                      ; 2 uses
  %i.x = add i32 %i.w, -1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 32
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #26 ; 7 uses
  %.not.i63 = icmp eq ptr %i.ab, null
  br i1 %.not.i63, label %Balloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.018.i.ph.lobit = lshr i32 %.018.i.ph, 31
  %.60 = select i1 %i.t, ptr %0, ptr %1           ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store i32 %i.v, ptr %i.ac, align 8, !tbaa !23
  %i.ad = getelementptr i8, ptr %i.ab, i64 12
  store i32 %i.w, ptr %i.ad, align 4, !tbaa !24
  %i.ae = getelementptr i8, ptr %i.ab, i64 20     ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !26
  %i.af = getelementptr i8, ptr %i.ab, i64 16
  store i32 %.018.i.ph.lobit, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr i8, ptr %., i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !26 ; 2 uses
  %i.ai = getelementptr i8, ptr %., i64 24        ; 2 uses
  %i.aj = getelementptr i8, ptr %.60, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  %i.al = getelementptr i8, ptr %.60, i64 24      ; 2 uses
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ab, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.047 = phi ptr [ %i.ai, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  %.046 = phi ptr [ %i.al, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %.044 = phi ptr [ %i.ao, %bb.h ], [ %i.ba, %bb.i ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.h ], [ %i.ay, %bb.i ]
  %i.ap = getelementptr i8, ptr %.047, i64 4      ; 3 uses
  %i.aq = load i32, ptr %.047, align 4, !tbaa !11
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %.046, i64 4      ; 2 uses
  %i.at = load i32, ptr %.046, align 4, !tbaa !11
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %.0, %i.au
  %i.aw = sub nsw i64 %i.ar, %i.av                ; 2 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = and i64 %i.ax, 1                        ; 2 uses
  %i.az = trunc i64 %i.aw to i32
  %i.ba = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  store i32 %i.az, ptr %.044, align 4, !tbaa !11
  %i.bb = icmp ult ptr %i.as, %i.an
  br i1 %i.bb, label %bb.i, label %.preheader69, !llvm.loop !62

.preheader69:                                     ; preds = %bb.i
  %i.bc = sext i32 %i.ah to i64
  %i.bd = getelementptr [4 x i8], ptr %i.ai, i64 %i.bc ; 2 uses
  %i.be = icmp ult ptr %i.ap, %i.bd
  br i1 %i.be, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.preheader69, %.lr.ph
  %.178 = phi i64 [ %i.bk, %.lr.ph ], [ %i.ay, %.preheader69 ]
  %.14577 = phi ptr [ %i.bm, %.lr.ph ], [ %i.ba, %.preheader69 ] ; 2 uses
  %.14876 = phi ptr [ %i.bf, %.lr.ph ], [ %i.ap, %.preheader69 ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.14876, i64 4    ; 2 uses
  %i.bg = load i32, ptr %.14876, align 4, !tbaa !11
  %i.bh = zext i32 %i.bg to i64
  %i.bi = sub nsw i64 %i.bh, %.178                ; 2 uses
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = and i64 %i.bj, 1
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = getelementptr i8, ptr %.14577, i64 4    ; 2 uses
  store i32 %i.bl, ptr %.14577, align 4, !tbaa !11
  %i.bn = icmp ult ptr %i.bf, %i.bd
  br i1 %i.bn, label %.lr.ph, label %.preheader.preheader, !llvm.loop !63

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader69
  %.2.ph = phi ptr [ %i.ba, %.preheader69 ], [ %i.bm, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.049 = phi i32 [ %i.bq, %.preheader ], [ %i.ah, %.preheader.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.bo, %.preheader ], [ %.2.ph, %.preheader.preheader ]
  %i.bo = getelementptr i8, ptr %.2, i64 -4       ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !11
  %.not59 = icmp eq i32 %i.bp, 0
  %i.bq = add i32 %.049, -1
  br i1 %.not59, label %.preheader, label %bb.j, !llvm.loop !64

bb.j:                                             ; preds = %.preheader
  store i32 %.049, ptr %i.ae, align 4, !tbaa !26
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %bb.g, %cmp.exit, %bb.j, %bb.f
  %.053 = phi ptr [ %i.ab, %bb.j ], [ null, %cmp.exit ], [ %i.q, %bb.f ], [ null, %bb.g ]
  ret ptr %.053
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef ptr @ruby_dtoa(double noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = bitcast double %0 to i64                 ; 3 uses
  %.not = icmp slt i64 %i.c, 0                    ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %.pre = bitcast double %i.d to i64
  %.pre-phi = select i1 %.not, i64 %.pre, i64 %i.c ; 7 uses
  %.lobit = lshr i64 %i.c, 63
  %.sink = trunc nuw nsw i64 %.lobit to i32
  %.sroa.090.0 = select i1 %.not, double %i.d, double %0 ; 10 uses
  store i32 %.sink, ptr %4, align 4, !tbaa !11
  %.sroa.090.4.extract.shift138 = lshr i64 %.pre-phi, 32
  %.sroa.090.4.extract.trunc139 = trunc nuw nsw i64 %.sroa.090.4.extract.shift138 to i32 ; 5 uses
  %i.e = and i32 %.sroa.090.4.extract.trunc139, 2146435072
  %i.f = icmp eq i32 %i.e, 2146435072
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i32 9999, ptr %3, align 4, !tbaa !11
  %i.g = and i64 %.pre-phi, 4294967295
  %.not555 = icmp eq i64 %i.g, 0
  %i.h = and i32 %.sroa.090.4.extract.trunc139, 1048575
  %.not556 = icmp eq i32 %i.h, 0
  %or.cond557 = and i1 %.not555, %.not556
  br i1 %or.cond557, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias dereferenceable_or_null(9) ptr @malloc(i64 noundef 9) #26 ; 6 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %nrv_alloc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  store i8 73, ptr %i.i, align 1, !tbaa !12
  %scevgep1077 = getelementptr nuw i8, ptr %i.i, i64 1
  store i64 34186468354778734, ptr %scevgep1077, align 1, !tbaa !12
  %.not14.i = icmp eq ptr %5, null
  br i1 %.not14.i, label %nrv_alloc.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %scevgep1078 = getelementptr nuw i8, ptr %i.i, i64 8
  store ptr %scevgep1078, ptr %5, align 8, !tbaa !18
  br label %nrv_alloc.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #26 ; 6 uses
  %.not.i576 = icmp eq ptr %i.j, null
  br i1 %.not.i576, label %nrv_alloc.exit, label %.preheader.i577

.preheader.i577:                                  ; preds = %bb.e
  store i8 78, ptr %i.j, align 1, !tbaa !12
  %scevgep1075 = getelementptr nuw i8, ptr %i.j, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep1075, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @NANSTR, i64 1), i64 3, i1 false), !tbaa !12
  %.not14.i583 = icmp eq ptr %5, null
  br i1 %.not14.i583, label %nrv_alloc.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i577
  %scevgep1076 = getelementptr nuw i8, ptr %i.j, i64 3
  store ptr %scevgep1076, ptr %5, align 8, !tbaa !18
  br label %nrv_alloc.exit

bb.g:                                             ; preds = %bb.a
  %i.k = fcmp une double %.sroa.090.0, 0.000000e+00
  br i1 %i.k, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !11
  %i.l = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #26 ; 5 uses
  %.not.i585 = icmp eq ptr %i.l, null
  br i1 %.not.i585, label %nrv_alloc.exit, label %.preheader.i586

.preheader.i586:                                  ; preds = %bb.h
  store i8 48, ptr %i.l, align 1, !tbaa !12
  %i.m = getelementptr i8, ptr %i.l, i64 1        ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !12
  %.not14.i592 = icmp eq ptr %5, null
  br i1 %.not14.i592, label %nrv_alloc.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.i586
  store ptr %i.m, ptr %5, align 8, !tbaa !18
  br label %nrv_alloc.exit

bb.j:                                             ; preds = %bb.g
  %i.n = call fastcc ptr @d2b(double noundef %.sroa.090.0, ptr noundef %i.b, ptr noundef %i.a) ; 20 uses
  %.not491 = icmp eq ptr %i.n, null
  br i1 %.not491, label %nrv_alloc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = lshr i32 %.sroa.090.4.extract.trunc139, 20
  %6 = and i32 %i.o, 2047                         ; 2 uses
  %.not492.not = icmp eq i32 %6, 0                ; 2 uses
  br i1 %.not492.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = and i64 %.pre-phi, 4503599627370495
  %.sroa.072.4.insert.insert81 = or disjoint i64 %i.p, 4607182418800017408
  %i.q = add nsw i32 %6, -1023
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.r = load i32, ptr %i.a, align 4, !tbaa !11
  %i.s = load i32, ptr %i.b, align 4, !tbaa !11
  %i.t = add i32 %i.s, %i.r                       ; 5 uses
  %i.u = add i32 %i.t, 1074
  %i.v = icmp sgt i32 %i.u, 32
  br i1 %i.v, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.w = sub nsw i32 -1010, %i.t
  %i.x = shl i32 %.sroa.090.4.extract.trunc139, %i.w
  %.sroa.090.0.extract.trunc125 = trunc i64 %.pre-phi to i32
  %i.y = add nsw i32 %i.t, 1042
  %i.z = lshr i32 %.sroa.090.0.extract.trunc125, %i.y
  %i.aa = or i32 %i.x, %i.z
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.090.0.extract.trunc127 = trunc i64 %.pre-phi to i32
  %i.ab = sub nuw i32 -1042, %i.t
  %i.ac = shl i32 %.sroa.090.0.extract.trunc127, %i.ab
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ad = phi i32 [ %i.aa, %bb.n ], [ %i.ac, %bb.o ]
  %i.ae = uitofp i32 %i.ad to double
  %i.af = bitcast double %i.ae to i64             ; 2 uses
  %i.ag = and i64 %i.af, 9223372032559808512
  %.sroa.072.4.insert.ext86 = add nsw i64 %i.ag, -139611588448485376
  %.sroa.072.4.insert.mask88 = and i64 %i.af, 4294967295
  %.sroa.072.4.insert.insert89 = or disjoint i64 %.sroa.072.4.insert.ext86, %.sroa.072.4.insert.mask88
  %i.ah = add i32 %i.t, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.0427 = phi i32 [ %i.q, %bb.l ], [ %i.ah, %bb.p ] ; 2 uses
  %.sroa.072.0.in = phi i64 [ %.sroa.072.4.insert.insert81, %bb.l ], [ %.sroa.072.4.insert.insert89, %bb.p ]
  %.sroa.072.0 = bitcast i64 %.sroa.072.0.in to double
  %i.ai = fadd double %.sroa.072.0, -1.500000e+00
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.ak = sitofp i32 %.0427 to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double f0x3FD34413509F79FB, double %i.aj) ; 3 uses
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %i.an = fcmp olt double %i.al, 0.000000e+00
  %i.ao = sitofp i32 %i.am to double
  %i.ap = fcmp une double %i.al, %i.ao
  %or.cond559 = and i1 %i.an, %i.ap
  %i.aq = sext i1 %or.cond559 to i32
  %.0399 = add i32 %i.aq, %i.am                   ; 4 uses
  %or.cond = icmp ugt i32 %.0399, 22              ; 3 uses
  br i1 %or.cond, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = zext nneg i32 %.0399 to i64
  %i.as = getelementptr [8 x i8], ptr @tens, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !20
  %i.au = fcmp olt double %.sroa.090.0, %i.at
  %i.av = sext i1 %i.au to i32
  %spec.select = add nsw i32 %.0399, %i.av
  br label %select.unfold

select.unfold:                                    ; preds = %bb.r, %bb.q
  %.2401 = phi i32 [ %spec.select, %bb.r ], [ %.0399, %bb.q ] ; 28 uses
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !11  ; 2 uses
  %i.ax = xor i32 %.0427, -1
  %i.ay = add i32 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp sgt i32 %i.ay, -1                  ; 2 uses
  %i.ba = sub i32 0, %i.ay
  %.0441 = select i1 %i.az, i32 0, i32 %i.ba      ; 2 uses
  %.0387 = select i1 %i.az, i32 %i.ay, i32 0      ; 2 uses
  %i.bb = icmp sgt i32 %.2401, -1
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %select.unfold
  %i.bc = add nuw i32 %.0387, %.2401
  br label %bb.u

bb.t:                                             ; preds = %select.unfold
  %i.bd = sub i32 %.0441, %.2401
  %i.be = sub i32 0, %.2401
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1442 = phi i32 [ %.0441, %bb.s ], [ %i.bd, %bb.t ] ; 7 uses
  %.0440 = phi i32 [ 0, %bb.s ], [ %i.be, %bb.t ] ; 3 uses
  %.1388 = phi i32 [ %i.bc, %bb.s ], [ %.0387, %bb.t ] ; 3 uses
  %.0386 = phi i32 [ %.2401, %bb.s ], [ 0, %bb.t ] ; 3 uses
  %or.cond3 = icmp ugt i32 %1, 9
  %spec.store.select27 = select i1 %or.cond3, i32 0, i32 %1 ; 3 uses
  %i.bf = icmp samesign ult i32 %spec.store.select27, 6 ; 2 uses
  %i.bg = add nsw i32 %spec.store.select27, -4
  %spec.select560 = select i1 %i.bf, i32 %spec.store.select27, i32 %i.bg ; 4 uses
  switch i32 %spec.select560, label %default.unreachable [
    i32 0, label %bb.aa
    i32 1, label %bb.aa
    i32 2, label %bb.v
    i32 4, label %bb.w
    i32 3, label %bb.x
    i32 5, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0395 = phi i32 [ 0, %bb.v ], [ 1, %bb.u ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 4 uses
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.1396 = phi i32 [ 0, %bb.x ], [ 1, %bb.u ]
  %i.bh = add i32 %.2401, 1
  %i.bi = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %i.bh) ; 2 uses
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  br i1 %i.bj, label %Bclear.exit, label %bb.z

Bclear.exit:                                      ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.n) #24
  br label %nrv_alloc.exit

bb.z:                                             ; preds = %bb.y
  %i.bk = extractvalue { i32, i1 } %i.bi, 0       ; 3 uses
  %i.bl = add i32 %i.bk, -1
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 1)
  br label %bb.aa

default.unreachable:                              ; preds = %bb.u
  unreachable

bb.aa:                                            ; preds = %bb.u, %bb.u, %bb.z, %bb.w
  %.0449 = phi i32 [ %2, %bb.z ], [ %spec.store.select, %bb.w ], [ 0, %bb.u ], [ 0, %bb.u ] ; 2 uses
  %.1428 = phi i32 [ %spec.store.select4, %bb.z ], [ %spec.store.select, %bb.w ], [ 18, %bb.u ], [ 18, %bb.u ]
  %.0414 = phi i32 [ %i.bk, %bb.z ], [ %spec.store.select, %bb.w ], [ -1, %bb.u ], [ -1, %bb.u ] ; 11 uses
  %.0413 = phi i32 [ %i.bl, %bb.z ], [ %spec.store.select, %bb.w ], [ -1, %bb.u ], [ -1, %bb.u ] ; 4 uses
  %.2397 = phi i32 [ %.1396, %bb.z ], [ %.0395, %bb.w ], [ 1, %bb.u ], [ 1, %bb.u ] ; 2 uses
  %i.bm = add nuw i32 %.1428, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bn) #26 ; 17 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 4 uses
  %.not493 = icmp eq ptr %i.bo, null
  br i1 %.not493, label %Bclear.exit596, label %bb.ab

Bclear.exit596:                                   ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.n) #24
  br label %nrv_alloc.exit

bb.ab:                                            ; preds = %bb.aa
  %or.cond6 = icmp ult i32 %.0414, 15
  %or.cond8 = and i1 %i.bf, %or.cond6
  br i1 %or.cond8, label %bb.ac, label %.loopexit831

bb.ac:                                            ; preds = %bb.ab
  %i.bq = icmp sgt i32 %.2401, 0
  br i1 %i.bq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.br = and i32 %.2401, 15
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr @tens, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !20 ; 2 uses
  %i.bv = lshr i32 %.2401, 4                      ; 2 uses
  %i.bw = and i32 %.2401, 256
  %.not497 = icmp eq i32 %i.bw, 0                 ; 3 uses
  %i.bx = and i32 %i.bv, 15
  %i.by = fdiv double %.sroa.090.0, 1.000000e+256
  %.0420 = select i1 %.not497, i32 2, i32 3       ; 2 uses
  %.0410 = select i1 %.not497, i32 %i.bv, i32 %i.bx ; 2 uses
  %.sroa.090.1 = select i1 %.not497, double %.sroa.090.0, double %i.by
  %.not498937 = icmp eq i32 %.0410, 0
  br i1 %.not498937, label %._crit_edge, label %.lr.ph942

.lr.ph942:                                        ; preds = %bb.ad, %bb.af
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %.0379941 = phi double [ %.1380, %bb.af ], [ %i.bu, %bb.ad ] ; 2 uses
  %.1411940 = phi i32 [ %i.ce, %bb.af ], [ %.0410, %bb.ad ] ; 2 uses
  %.1421939 = phi i32 [ %.2422, %bb.af ], [ %.0420, %bb.ad ] ; 2 uses
  %i.bz = and i32 %.1411940, 1
  %.not554 = icmp eq i32 %i.bz, 0
  br i1 %.not554, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph942
  %i.ca = add i32 %.1421939, 1
  %i.cb = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !20
  %i.cd = fmul double %.0379941, %i.cc
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph942, %bb.ae
  %.2422 = phi i32 [ %i.ca, %bb.ae ], [ %.1421939, %.lr.ph942 ] ; 2 uses
  %.1380 = phi double [ %i.cd, %bb.ae ], [ %.0379941, %.lr.ph942 ] ; 2 uses
  %i.ce = lshr i32 %.1411940, 1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not498 = icmp eq i32 %i.ce, 0
  br i1 %.not498, label %._crit_edge, label %.lr.ph942, !llvm.loop !65

end_hunk_0
begin_hunk_1_@quorem:bb.a
  %i.ak = add i32 %.07094, -1                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -4     ; 2 uses
  %i.am = icmp ugt ptr %i.al, %i.j
  br i1 %i.am, label %.lr.ph, label %.critedge, !llvm.loop !75

.critedge:                                        ; preds = %.lr.ph, %bb.e, %.preheader89
  %.070.lcssa = phi i32 [ %i.g, %.preheader89 ], [ %i.ak, %bb.e ], [ %.07094, %.lr.ph ] ; 3 uses
  store i32 %.070.lcssa, ptr %i.c, align 4, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.critedge, %bb.b
  %i.an = phi i32 [ %.pre, %._crit_edge ], [ %.070.lcssa, %.critedge ], [ %i.d, %bb.b ] ; 3 uses
  %.171 = phi i32 [ %i.g, %._crit_edge ], [ %.070.lcssa, %.critedge ], [ %i.g, %bb.b ] ; 3 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !26  ; 2 uses
  %.not.i = icmp eq i32 %i.an, %i.ao
  br i1 %.not.i, label %bb.g, label %cmp.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %i.an to i64                   ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.j, i64 %i.ap
  %i.ar = getelementptr [4 x i8], ptr %i.f, i64 %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.017.i = phi ptr [ %i.aq, %bb.g ], [ %i.as, %bb.j ]
  %.0.i = phi ptr [ %i.ar, %bb.g ], [ %i.au, %bb.j ]
  %i.as = getelementptr i8, ptr %.017.i, i64 -4   ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11 ; 2 uses
  %i.au = getelementptr i8, ptr %.0.i, i64 -4     ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11 ; 2 uses
  %.not23.i = icmp eq i32 %i.at, %i.av
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp ult i32 %i.at, %i.av
  br i1 %i.aw, label %cmp.exit.thread84, label %cmp.exit.thread.preheader

bb.j:                                             ; preds = %bb.h
  %.not24.i = icmp ugt ptr %i.as, %i.j
  br i1 %.not24.i, label %bb.h, label %cmp.exit.thread.preheader

cmp.exit:                                         ; preds = %bb.f
  %i.ax = sub i32 %i.an, %i.ao
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %cmp.exit.thread.preheader, label %cmp.exit.thread84

cmp.exit.thread.preheader:                        ; preds = %bb.j, %bb.i, %cmp.exit
  br label %cmp.exit.thread

cmp.exit.thread:                                  ; preds = %cmp.exit.thread.preheader, %cmp.exit.thread
  %.169 = phi ptr [ %i.bj, %cmp.exit.thread ], [ %i.j, %cmp.exit.thread.preheader ] ; 3 uses
  %.164 = phi ptr [ %i.az, %cmp.exit.thread ], [ %i.f, %cmp.exit.thread.preheader ] ; 2 uses
  %.162 = phi i64 [ %i.bh, %cmp.exit.thread ], [ 0, %cmp.exit.thread.preheader ]
  %i.az = getelementptr i8, ptr %.164, i64 4      ; 2 uses
  %i.ba = load i32, ptr %.164, align 4, !tbaa !11
  %i.bb = zext i32 %i.ba to i64
  %i.bc = load i32, ptr %.169, align 4, !tbaa !11
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %.162, %i.bb
  %i.bf = sub nsw i64 %i.bd, %i.be                ; 2 uses
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = and i64 %i.bg, 1
  %i.bi = trunc i64 %i.bf to i32
  %i.bj = getelementptr i8, ptr %.169, i64 4
  store i32 %i.bi, ptr %.169, align 4, !tbaa !11
  %.not80 = icmp ugt ptr %i.az, %i.i
  br i1 %.not80, label %bb.k, label %cmp.exit.thread, !llvm.loop !76

bb.k:                                             ; preds = %cmp.exit.thread
  %i.bk = add i32 %i.o, 1                         ; 2 uses
  %i.bl = sext i32 %.171 to i64
  %i.bm = getelementptr [4 x i8], ptr %i.j, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11
  %.not81 = icmp eq i32 %i.bn, 0
  br i1 %.not81, label %.preheader, label %cmp.exit.thread84

.preheader:                                       ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.bm, i64 -4     ; 2 uses
  %i.bp = icmp ugt ptr %i.bo, %i.j
  br i1 %i.bp, label %.lr.ph98, label %.critedge2

.lr.ph98:                                         ; preds = %.preheader, %bb.l
  %i.bq = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %.preheader ] ; 2 uses
  %.297 = phi i32 [ %i.bs, %bb.l ], [ %.171, %.preheader ] ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %.not82 = icmp eq i32 %i.br, 0
  br i1 %.not82, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %.lr.ph98
  %i.bs = add i32 %.297, -1                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 -4     ; 2 uses
  %i.bu = icmp ugt ptr %i.bt, %i.j
  br i1 %i.bu, label %.lr.ph98, label %.critedge2, !llvm.loop !77

.critedge2:                                       ; preds = %.lr.ph98, %bb.l, %.preheader
  %.2.lcssa = phi i32 [ %.171, %.preheader ], [ %i.bs, %bb.l ], [ %.297, %.lr.ph98 ]
  store i32 %.2.lcssa, ptr %i.c, align 4, !tbaa !26
  br label %cmp.exit.thread84

cmp.exit.thread84:                                ; preds = %bb.i, %cmp.exit, %.critedge2, %bb.k, %bb.a
  %.072 = phi i32 [ 0, %bb.a ], [ %i.bk, %bb.k ], [ %i.bk, %.critedge2 ], [ %i.o, %cmp.exit ], [ %i.o, %bb.i ]
  ret i32 %.072
}

; Function Attrs: nofree nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @ruby_hdtoa(double noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #20 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %.not = icmp slt i64 %i.a, 0
  %i.b = tail call double @llvm.fabs.f64(double %0)
  %.pre-phi = select i1 %.not, double %i.b, double %0 ; 4 uses
  %.lobit = lshr i64 %i.a, 63
  %.sink = trunc nuw nsw i64 %.lobit to i32
  store i32 %.sink, ptr %4, align 4, !tbaa !11
  %i.c = fcmp oeq double %.pre-phi, +inf
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i32 2147483647, ptr %3, align 4, !tbaa !11
  %i.d = tail call noalias dereferenceable_or_null(9) ptr @malloc(i64 noundef 9) #26 ; 6 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %nrv_alloc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  store i8 73, ptr %i.d, align 1, !tbaa !12
  %scevgep = getelementptr nuw i8, ptr %i.d, i64 1
  store i64 34186468354778734, ptr %scevgep, align 1, !tbaa !12
  %.not14.i = icmp eq ptr %5, null
  br i1 %.not14.i, label %nrv_alloc.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %scevgep106 = getelementptr nuw i8, ptr %i.d, i64 8
  store ptr %scevgep106, ptr %5, align 8, !tbaa !18
  br label %nrv_alloc.exit

bb.d:                                             ; preds = %bb.a
  %i.e = fcmp uno double %0, 0.000000e+00
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2147483647, ptr %3, align 4, !tbaa !11
  %i.f = tail call fastcc ptr @nrv_alloc(ptr noundef nonnull @NANSTR, ptr noundef %5, i64 noundef 4)
  br label %nrv_alloc.exit

bb.f:                                             ; preds = %bb.d
  %i.g = fcmp oeq double %0, 0.000000e+00
  br i1 %i.g, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %3, align 4, !tbaa !11
  %i.h = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #26 ; 5 uses
  %.not.i91 = icmp eq ptr %i.h, null
  br i1 %.not.i91, label %nrv_alloc.exit, label %.preheader.i92

.preheader.i92:                                   ; preds = %bb.g
  store i8 48, ptr %i.h, align 1, !tbaa !12
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 2 uses
  store i8 0, ptr %i.i, align 1, !tbaa !12
  %.not14.i98 = icmp eq ptr %5, null
  br i1 %.not14.i98, label %nrv_alloc.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.i92
  store ptr %i.i, ptr %5, align 8, !tbaa !18
  br label %nrv_alloc.exit

bb.i:                                             ; preds = %bb.f
  %i.j = bitcast double %.pre-phi to i64
  %sum.shift = lshr i64 %i.j, 52                  ; 2 uses
  %.not86 = icmp eq i64 %sum.shift, 0             ; 3 uses
  %i.k = fmul nnan double %.pre-phi, f0x6010000000000000 ; 2 uses
  %i.l = bitcast double %i.k to i64
  %sum.shift87 = lshr i64 %i.l, 52
  %sum.shift.sink = select i1 %.not86, i64 %sum.shift87, i64 %sum.shift
  %.sink118 = select i1 %.not86, i32 -1536, i32 -1022
  %.sroa.0.1 = select i1 %.not86, double %i.k, double %.pre-phi ; 2 uses
  %i.m = trunc nuw nsw i64 %sum.shift.sink to i32
  %i.n = add nsw i32 %.sink118, %i.m
  store i32 %i.n, ptr %3, align 4, !tbaa !11
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %2, i32 1) ; 6 uses
  %i.o = icmp sgt i32 %spec.store.select, 0
  %i.p = select i1 %i.o, i32 %spec.store.select, i32 15 ; 3 uses
  %i.q = add nuw i32 %i.p, 1
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #26 ; 8 uses
  %.not88 = icmp eq ptr %i.s, null
  br i1 %.not88, label %nrv_alloc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %or.cond = icmp ult i32 %2, 15
  br i1 %or.cond, label %bb.k, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.j
  %.pre108 = bitcast double %.sroa.0.1 to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = shl nuw nsw i32 %spec.store.select, 2
  %i.u = bitcast double %.sroa.0.1 to i64         ; 2 uses
  %.sroa.0.4.extract.shift37 = lshr i64 %i.u, 32
  %.sroa.0.4.extract.trunc38 = trunc nuw nsw i64 %.sroa.0.4.extract.shift37 to i32
  %i.v = and i32 %.sroa.0.4.extract.trunc38, -2146435073
  %i.w = shl nuw nsw i32 %spec.store.select, 22
  %i.x = add nuw nsw i32 %i.w, 1013972992
  %i.y = or disjoint i32 %i.v, %i.x
  %.sroa.0.4.insert.ext40 = zext i32 %i.y to i64
  %.sroa.0.4.insert.shift41 = shl nuw i64 %.sroa.0.4.insert.ext40, 32
  %.sroa.0.4.insert.mask42 = and i64 %i.u, 4294967295
  %.sroa.0.4.insert.insert43 = or disjoint i64 %.sroa.0.4.insert.shift41, %.sroa.0.4.insert.mask42
  %i.z = bitcast i64 %.sroa.0.4.insert.insert43 to double
  %i.aa = fadd double %i.z, 1.000000e+00
  %i.ab = fadd double %i.aa, -1.000000e+00
  %i.ac = bitcast double %i.ab to i64             ; 2 uses
  %sum.shift89 = lshr i64 %i.ac, 52
  %i.ad = trunc nuw nsw i64 %sum.shift89 to i32
  %reass.sub = sub nsw i32 %i.ad, %i.t
  %i.ae = add nsw i32 %reass.sub, -967
  %i.af = load i32, ptr %3, align 4, !tbaa !11
  %i.ag = add i32 %i.ae, %i.af
  store i32 %i.ag, ptr %3, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge107, %bb.k
  %.pre-phi109 = phi i64 [ %.pre108, %._crit_edge107 ], [ %i.ac, %bb.k ] ; 2 uses
  store i8 49, ptr %i.s, align 1, !tbaa !12
  %i.ah = zext nneg i32 %i.p to i64               ; 2 uses
  %i.ai = getelementptr i8, ptr %i.s, i64 %i.ah   ; 2 uses
  %.082101 = getelementptr i8, ptr %i.s, i64 1    ; 3 uses
  %i.aj = icmp ult ptr %.082101, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %.sroa.0.0.extract.trunc = trunc i64 %.pre-phi109 to i32 ; 2 uses
  %.sroa.0.4.extract.shift48 = lshr i64 %.pre-phi109, 32
  %.sroa.0.4.extract.trunc49 = trunc nuw i64 %.sroa.0.4.extract.shift48 to i32 ; 2 uses
  %i.ak = add nuw nsw i64 %i.ah, 3
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.082104.prol = phi ptr [ %.082.prol, %.lr.ph.prol ], [ %.082101, %.lr.ph.preheader ] ; 2 uses
  %.080103.prol = phi i32 [ %i.ar, %.lr.ph.prol ], [ %.sroa.0.0.extract.trunc, %.lr.ph.preheader ] ; 2 uses
  %.081102.prol = phi i32 [ %i.aq, %.lr.ph.prol ], [ %.sroa.0.4.extract.trunc49, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.al = lshr i32 %.081102.prol, 16
  %i.am = and i32 %i.al, 15
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !12
  store i8 %i.ap, ptr %.082104.prol, align 1, !tbaa !12
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %.081102.prol, i32 %.080103.prol, i32 4) ; 2 uses
  %i.ar = shl i32 %.080103.prol, 4                ; 2 uses
  %.082.prol = getelementptr i8, ptr %.082104.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !78

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.082104.unr = phi ptr [ %.082101, %.lr.ph.preheader ], [ %.082.prol, %.lr.ph.prol ]
  %.080103.unr = phi i32 [ %.sroa.0.0.extract.trunc, %.lr.ph.preheader ], [ %i.ar, %.lr.ph.prol ]
  %.081102.unr = phi i32 [ %.sroa.0.4.extract.trunc49, %.lr.ph.preheader ], [ %i.aq, %.lr.ph.prol ]
  %i.as = add nsw i32 %i.p, -2
  %i.at = icmp ult i32 %i.as, 3
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.082104 = phi ptr [ %.082.3, %.lr.ph ], [ %.082104.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.080103 = phi i32 [ %i.bv, %.lr.ph ], [ %.080103.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.081102 = phi i32 [ %i.bu, %.lr.ph ], [ %.081102.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.au = lshr i32 %.081102, 16
  %i.av = and i32 %i.au, 15
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  store i8 %i.ay, ptr %.082104, align 1, !tbaa !12
  %i.az = tail call i32 @llvm.fshl.i32(i32 %.081102, i32 %.080103, i32 4) ; 2 uses
  %i.ba = shl i32 %.080103, 4
  %.082 = getelementptr i8, ptr %.082104, i64 1
  %i.bb = lshr i32 %i.az, 16
  %i.bc = and i32 %i.bb, 15
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %1, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12
  store i8 %i.bf, ptr %.082, align 1, !tbaa !12
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.az, i32 %i.ba, i32 4) ; 2 uses
  %i.bh = shl i32 %.080103, 8
  %.082.1 = getelementptr i8, ptr %.082104, i64 2
  %i.bi = lshr i32 %i.bg, 16
  %i.bj = and i32 %i.bi, 15
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !12
  store i8 %i.bm, ptr %.082.1, align 1, !tbaa !12
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bh, i32 4) ; 2 uses
  %i.bo = shl i32 %.080103, 12
  %.082.2 = getelementptr i8, ptr %.082104, i64 3
  %i.bp = lshr i32 %i.bn, 16
  %i.bq = and i32 %i.bp, 15
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !12
  store i8 %i.bt, ptr %.082.2, align 1, !tbaa !12
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bo, i32 4)
  %i.bv = shl i32 %.080103, 16
  %.082.3 = getelementptr i8, ptr %.082104, i64 4 ; 2 uses
  %exitcond.not.3 = icmp eq ptr %.082.3, %i.ai
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.l
  %i.bw = icmp slt i32 %spec.store.select, 0
  br i1 %i.bw, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %.079 = phi i32 [ %i.bx, %.preheader ], [ 15, %._crit_edge ] ; 2 uses
  %i.bx = add i32 %.079, -1                       ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %i.s, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !12
  %i.cb = icmp eq i8 %i.ca, 48
  br i1 %i.cb, label %.preheader, label %.loopexit, !llvm.loop !80

.loopexit:                                        ; preds = %.preheader, %._crit_edge
  %.1 = phi i32 [ %spec.store.select, %._crit_edge ], [ %.079, %.preheader ]
  %i.cc = sext i32 %.1 to i64
  %i.cd = getelementptr i8, ptr %i.s, i64 %i.cc   ; 2 uses
  store i8 0, ptr %i.cd, align 1, !tbaa !12
  %.not90 = icmp eq ptr %5, null
  br i1 %.not90, label %nrv_alloc.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  store ptr %i.cd, ptr %5, align 8, !tbaa !18
  br label %nrv_alloc.exit

nrv_alloc.exit:                                   ; preds = %bb.h, %.preheader.i92, %bb.g, %bb.c, %.preheader.i, %bb.b, %.loopexit, %bb.m, %bb.i, %bb.e
  %.0 = phi ptr [ %i.s, %.loopexit ], [ %i.f, %bb.e ], [ %i.d, %bb.c ], [ null, %bb.i ], [ %i.s, %bb.m ], [ null, %bb.b ], [ %i.d, %.preheader.i ], [ null, %bb.g ], [ %i.h, %.preheader.i92 ], [ %i.h, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind sspstrong willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { noreturn nounwind }

end_hunk_1
