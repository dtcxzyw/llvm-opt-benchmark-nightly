Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/util?download=true
inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@diff:bb.a
  %i.ba = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  store i32 %i.az, ptr %.044, align 4, !tbaa !7
  %i.bb = icmp ult ptr %i.as, %i.an
  br i1 %i.bb, label %bb.i, label %.preheader69, !llvm.loop !61

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
  %i.bg = load i32, ptr %.14876, align 4, !tbaa !7
  %i.bh = zext i32 %i.bg to i64
  %i.bi = sub nsw i64 %i.bh, %.178                ; 2 uses
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = and i64 %i.bj, 1
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = getelementptr i8, ptr %.14577, i64 4    ; 2 uses
  store i32 %i.bl, ptr %.14577, align 4, !tbaa !7
  %i.bn = icmp ult ptr %i.bf, %i.bd
  br i1 %i.bn, label %.lr.ph, label %.preheader.preheader, !llvm.loop !62

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader69
  %.2.ph = phi ptr [ %i.ba, %.preheader69 ], [ %i.bm, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.049 = phi i32 [ %i.bq, %.preheader ], [ %i.ah, %.preheader.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.bo, %.preheader ], [ %.2.ph, %.preheader.preheader ]
  %i.bo = getelementptr i8, ptr %.2, i64 -4       ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %.not59 = icmp eq i32 %i.bp, 0
  %i.bq = add i32 %.049, -1
  br i1 %.not59, label %.preheader, label %bb.j, !llvm.loop !63

bb.j:                                             ; preds = %.preheader
  store i32 %.049, ptr %i.ae, align 4, !tbaa !49
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
  store i32 %.sink, ptr %4, align 4, !tbaa !7
  %.sroa.090.4.extract.shift138 = lshr i64 %.pre-phi, 32
  %.sroa.090.4.extract.trunc139 = trunc nuw nsw i64 %.sroa.090.4.extract.shift138 to i32 ; 5 uses
  %i.e = and i32 %.sroa.090.4.extract.trunc139, 2146435072
  %i.f = icmp eq i32 %i.e, 2146435072
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i32 9999, ptr %3, align 4, !tbaa !7
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
  store i8 73, ptr %i.i, align 1, !tbaa !11
  %scevgep1075.a = getelementptr nuw i8, ptr %i.i, i64 1
  store i64 34186468354778734, ptr %scevgep1075.a, align 1, !tbaa !11
  %.not14.i = icmp eq ptr %5, null
  br i1 %.not14.i, label %nrv_alloc.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %scevgep1076.a = getelementptr nuw i8, ptr %i.i, i64 8
  store ptr %scevgep1076.a, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #26 ; 6 uses
  %.not.i574 = icmp eq ptr %i.j, null
  br i1 %.not.i574, label %nrv_alloc.exit, label %.preheader.i575

.preheader.i575:                                  ; preds = %bb.e
  store i8 78, ptr %i.j, align 1, !tbaa !11
  %scevgep1073.a = getelementptr nuw i8, ptr %i.j, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep1073.a, ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @NANSTR, i64 1), i64 3, i1 false), !tbaa !11
  %.not14.i581 = icmp eq ptr %5, null
  br i1 %.not14.i581, label %nrv_alloc.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i575
  %scevgep1074.a = getelementptr nuw i8, ptr %i.j, i64 3
  store ptr %scevgep1074.a, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.g:                                             ; preds = %bb.a
  %i.k = fcmp une double %.sroa.090.0, 0.000000e+00
  br i1 %i.k, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !7
  %i.l = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #26 ; 5 uses
  %.not.i583 = icmp eq ptr %i.l, null
  br i1 %.not.i583, label %nrv_alloc.exit, label %.preheader.i584

.preheader.i584:                                  ; preds = %bb.h
  store i8 48, ptr %i.l, align 1, !tbaa !11
  %i.m = getelementptr i8, ptr %i.l, i64 1        ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !11
  %.not14.i590 = icmp eq ptr %5, null
  br i1 %.not14.i590, label %nrv_alloc.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.i584
  store ptr %i.m, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.j:                                             ; preds = %bb.g
  %i.n = call fastcc ptr @d2b(double noundef %.sroa.090.0, ptr noundef %i.b, ptr noundef %i.a) ; 20 uses
  %.not491 = icmp eq ptr %i.n, null
  br i1 %.not491, label %nrv_alloc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = lshr i32 %.sroa.090.4.extract.trunc139, 20
  %i.p = and i32 %i.o, 2047                       ; 2 uses
  %.not492.not = icmp eq i32 %i.p, 0              ; 2 uses
  br i1 %.not492.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = and i64 %.pre-phi, 4503599627370495
  %.sroa.072.4.insert.insert81 = or disjoint i64 %i.q, 4607182418800017408
  %i.r = add nsw i32 %i.p, -1023
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.s = load i32, ptr %i.a, align 4, !tbaa !7
  %i.t = load i32, ptr %i.b, align 4, !tbaa !7
  %i.u = add i32 %i.t, %i.s                       ; 5 uses
  %i.v = add i32 %i.u, 1074
  %i.w = icmp sgt i32 %i.v, 32
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = sub nsw i32 -1010, %i.u
  %i.y = shl i32 %.sroa.090.4.extract.trunc139, %i.x
  %.sroa.090.0.extract.trunc125 = trunc i64 %.pre-phi to i32
  %i.z = add nsw i32 %i.u, 1042
  %i.aa = lshr i32 %.sroa.090.0.extract.trunc125, %i.z
  %i.ab = or i32 %i.y, %i.aa
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.090.0.extract.trunc127 = trunc i64 %.pre-phi to i32
  %i.ac = sub nuw i32 -1042, %i.u
  %i.ad = shl i32 %.sroa.090.0.extract.trunc127, %i.ac
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ae = phi i32 [ %i.ab, %bb.n ], [ %i.ad, %bb.o ]
  %i.af = uitofp i32 %i.ae to double
  %i.ag = bitcast double %i.af to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 9223372032559808512
  %.sroa.072.4.insert.ext86 = add nsw i64 %i.ah, -139611588448485376
  %.sroa.072.4.insert.mask88 = and i64 %i.ag, 4294967295
  %.sroa.072.4.insert.insert89 = or disjoint i64 %.sroa.072.4.insert.ext86, %.sroa.072.4.insert.mask88
  %i.ai = add i32 %i.u, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.0427 = phi i32 [ %i.r, %bb.l ], [ %i.ai, %bb.p ] ; 2 uses
  %.sroa.072.0.in = phi i64 [ %.sroa.072.4.insert.insert81, %bb.l ], [ %.sroa.072.4.insert.insert89, %bb.p ]
  %.sroa.072.0 = bitcast i64 %.sroa.072.0.in to double
  %i.aj = fadd double %.sroa.072.0, -1.500000e+00
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.al = sitofp i32 %.0427 to double
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3FD34413509F79FB, double %i.ak) ; 3 uses
  %i.an = fptosi double %i.am to i32              ; 2 uses
  %i.ao = fcmp olt double %i.am, 0.000000e+00
  %i.ap = sitofp i32 %i.an to double
  %i.aq = fcmp une double %i.am, %i.ap
  %or.cond559 = and i1 %i.ao, %i.aq
  %i.ar = sext i1 %or.cond559 to i32
  %.0399 = add i32 %i.ar, %i.an                   ; 4 uses
  %or.cond = icmp ugt i32 %.0399, 22              ; 3 uses
  br i1 %or.cond, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = zext nneg i32 %.0399 to i64
  %i.at = getelementptr [8 x i8], ptr @tens, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !39
  %i.av = fcmp olt double %.sroa.090.0, %i.au
  %6 = sext i1 %i.av to i32
  %spec.select = add nsw i32 %.0399, %6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2401 = phi i32 [ %spec.select, %bb.r ], [ %.0399, %bb.q ] ; 28 uses
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.ax = xor i32 %.0427, -1
  %i.ay = add i32 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp sgt i32 %i.ay, -1                  ; 2 uses
  %i.ba = sub i32 0, %i.ay
  %.0441 = select i1 %i.az, i32 0, i32 %i.ba      ; 2 uses
  %.0387 = select i1 %i.az, i32 %i.ay, i32 0      ; 2 uses
  %i.bb = icmp sgt i32 %.2401, -1
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bc = add nuw i32 %.0387, %.2401
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bd = sub i32 %.0441, %.2401
  %i.be = sub i32 0, %.2401
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1442 = phi i32 [ %.0441, %bb.t ], [ %i.bd, %bb.u ] ; 7 uses
  %.0440 = phi i32 [ 0, %bb.t ], [ %i.be, %bb.u ] ; 3 uses
  %.1388 = phi i32 [ %i.bc, %bb.t ], [ %.0387, %bb.u ] ; 3 uses
  %.0386 = phi i32 [ %.2401, %bb.t ], [ 0, %bb.u ] ; 3 uses
  %or.cond3 = icmp ugt i32 %1, 9
  %spec.store.select27 = select i1 %or.cond3, i32 0, i32 %1 ; 3 uses
  %i.bf = icmp samesign ult i32 %spec.store.select27, 6 ; 2 uses
  %i.bg = add nsw i32 %spec.store.select27, -4
  %spec.select.a = select i1 %i.bf, i32 %spec.store.select27, i32 %i.bg ; 4 uses
  switch i32 %spec.select.a, label %default.unreachable [
    i32 0, label %bb.ab
    i32 1, label %bb.ab
    i32 2, label %bb.w
    i32 4, label %bb.x
    i32 3, label %bb.y
    i32 5, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0395 = phi i32 [ 0, %bb.w ], [ 1, %bb.v ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 4 uses
  br label %bb.ab

bb.y:                                             ; preds = %bb.v
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.1396 = phi i32 [ 0, %bb.y ], [ 1, %bb.v ]
  %i.bh = add i32 %.2401, 1
  %i.bi = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 %i.bh) ; 2 uses
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  br i1 %i.bj, label %Bclear.exit, label %bb.aa

Bclear.exit:                                      ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.n) #24
  br label %nrv_alloc.exit

bb.aa:                                            ; preds = %bb.z
  %i.bk = extractvalue { i32, i1 } %i.bi, 0       ; 3 uses
  %i.bl = add i32 %i.bk, -1
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 1)
  br label %bb.ab

default.unreachable:                              ; preds = %bb.v
  unreachable

bb.ab:                                            ; preds = %bb.v, %bb.v, %bb.aa, %bb.x
  %.0449 = phi i32 [ %2, %bb.aa ], [ %spec.store.select, %bb.x ], [ 0, %bb.v ], [ 0, %bb.v ] ; 2 uses
  %.1428 = phi i32 [ %spec.store.select4, %bb.aa ], [ %spec.store.select, %bb.x ], [ 18, %bb.v ], [ 18, %bb.v ]
  %.0414 = phi i32 [ %i.bk, %bb.aa ], [ %spec.store.select, %bb.x ], [ -1, %bb.v ], [ -1, %bb.v ] ; 11 uses
  %.0413 = phi i32 [ %i.bl, %bb.aa ], [ %spec.store.select, %bb.x ], [ -1, %bb.v ], [ -1, %bb.v ] ; 4 uses
  %.2397 = phi i32 [ %.1396, %bb.aa ], [ %.0395, %bb.x ], [ 1, %bb.v ], [ 1, %bb.v ] ; 2 uses
  %i.bm = add nuw i32 %.1428, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bn) #26 ; 17 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 4 uses
  %.not493 = icmp eq ptr %i.bo, null
  br i1 %.not493, label %Bclear.exit594, label %bb.ac

Bclear.exit594:                                   ; preds = %bb.ab
  tail call void @free(ptr noundef nonnull %i.n) #24
  br label %nrv_alloc.exit

bb.ac:                                            ; preds = %bb.ab
  %or.cond6 = icmp ult i32 %.0414, 15
  %or.cond8 = and i1 %i.bf, %or.cond6
  br i1 %or.cond8, label %bb.ad, label %.loopexit829

bb.ad:                                            ; preds = %bb.ac
  %i.bq = icmp sgt i32 %.2401, 0
  br i1 %i.bq, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.br = and i32 %.2401, 15
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr @tens, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  %i.bv = lshr i32 %.2401, 4                      ; 2 uses
  %i.bw = and i32 %.2401, 256
  %.not497 = icmp eq i32 %i.bw, 0                 ; 3 uses
  %i.bx = and i32 %i.bv, 15
  %i.by = fdiv double %.sroa.090.0, 1.000000e+256
  %.0420 = select i1 %.not497, i32 2, i32 3       ; 2 uses
  %.0410 = select i1 %.not497, i32 %i.bv, i32 %i.bx ; 2 uses
  %.sroa.090.1 = select i1 %.not497, double %.sroa.090.0, double %i.by
  %.not498935 = icmp eq i32 %.0410, 0
  br i1 %.not498935, label %._crit_edge, label %.lr.ph940

.lr.ph940:                                        ; preds = %bb.ae, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 0, %bb.ae ] ; 2 uses
  %.0379939 = phi double [ %.1380, %bb.ag ], [ %i.bu, %bb.ae ] ; 2 uses
  %.1411938 = phi i32 [ %i.ce, %bb.ag ], [ %.0410, %bb.ae ] ; 2 uses
  %.1421937 = phi i32 [ %.2422, %bb.ag ], [ %.0420, %bb.ae ] ; 2 uses
  %i.bz = and i32 %.1411938, 1
  %.not554 = icmp eq i32 %i.bz, 0
  br i1 %.not554, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph940
  %i.ca = add i32 %.1421937, 1
  %i.cb = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !39
  %i.cd = fmul double %.0379939, %i.cc
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph940, %bb.af
  %.2422 = phi i32 [ %i.ca, %bb.af ], [ %.1421937, %.lr.ph940 ] ; 2 uses
  %.1380 = phi double [ %i.cd, %bb.af ], [ %.0379939, %.lr.ph940 ] ; 2 uses
  %i.ce = lshr i32 %.1411938, 1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not498 = icmp eq i32 %i.ce, 0
  br i1 %.not498, label %._crit_edge, label %.lr.ph940, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.ag, %bb.ae
  %.1421.lcssa = phi i32 [ %.0420, %bb.ae ], [ %.2422, %bb.ag ]
  %.0379.lcssa = phi double [ %i.bu, %bb.ae ], [ %.1380, %bb.ag ]
  %i.cf = fdiv double %.sroa.090.1, %.0379.lcssa
  br label %.loopexit830.a

bb.ah:                                            ; preds = %bb.ad
  %.not494 = icmp eq i32 %.2401, 0
  br i1 %.not494, label %.loopexit830.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = sub i32 0, %.2401                       ; 2 uses
  %i.ch = and i32 %i.cg, 15
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr @tens, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !39
  %i.cl = fmul double %.sroa.090.0, %i.ck         ; 2 uses
  %i.cm = ashr i32 %i.cg, 4                       ; 2 uses
  %.not495929 = icmp eq i32 %i.cm, 0
  br i1 %.not495929, label %.loopexit830.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %bb.ak
  %.sroa.090.2933 = phi double [ %.sroa.090.3, %bb.ak ], [ %i.cl, %bb.ai ] ; 2 uses
  %.2412932 = phi i32 [ %i.ct, %bb.ak ], [ %i.cm, %bb.ai ] ; 2 uses
  %.3423931 = phi i32 [ %.4424, %bb.ak ], [ 2, %bb.ai ] ; 2 uses
  %.3430930 = phi i32 [ %i.cu, %bb.ak ], [ 0, %bb.ai ] ; 2 uses
  %i.cn = and i32 %.2412932, 1
  %.not496 = icmp eq i32 %i.cn, 0
  br i1 %.not496, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph
  %i.co = add i32 %.3423931, 1
  %i.cp = sext i32 %.3430930 to i64
  %i.cq = getelementptr [8 x i8], ptr @bigtens, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !39
  %i.cs = fmul double %.sroa.090.2933, %i.cr
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %bb.aj
  %.4424 = phi i32 [ %i.co, %bb.aj ], [ %.3423931, %.lr.ph ] ; 2 uses
  %.sroa.090.3 = phi double [ %i.cs, %bb.aj ], [ %.sroa.090.2933, %.lr.ph ] ; 2 uses
  %i.ct = ashr i32 %.2412932, 1                   ; 2 uses
  %i.cu = add i32 %.3430930, 1
  %.not495 = icmp eq i32 %i.ct, 0
  br i1 %.not495, label %.loopexit830.a, label %.lr.ph, !llvm.loop !65

.loopexit830.a:                                   ; preds = %bb.ak, %bb.ai, %bb.ah, %._crit_edge
  %.5425 = phi i32 [ %.1421.lcssa, %._crit_edge ], [ 2, %bb.ah ], [ 2, %bb.ai ], [ %.4424, %bb.ak ] ; 2 uses
  %.sroa.090.4 = phi double [ %i.cf, %._crit_edge ], [ %.sroa.090.0, %bb.ah ], [ %i.cl, %bb.ai ], [ %.sroa.090.3, %bb.ak ] ; 3 uses
  %i.cv = fcmp olt double %.sroa.090.4, 1.000000e+00
  %or.cond10 = select i1 %or.cond, i1 %i.cv, i1 false
  %i.cw = icmp sgt i32 %.0414, 0
  %or.cond12 = and i1 %i.cw, %or.cond10
  br i1 %or.cond12, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.loopexit830.a
  %i.cx = icmp slt i32 %.0413, 1
  br i1 %i.cx, label %.loopexit829, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cy = add i32 %.2401, -1
  %i.cz = fmul nnan double %.sroa.090.4, 1.000000e+01
  %i.da = add i32 %.5425, 1
  br label %bb.an

end_hunk_0
