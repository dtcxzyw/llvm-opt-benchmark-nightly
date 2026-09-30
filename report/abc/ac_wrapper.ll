Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ac_wrapper?download=true
inline.NumInlined: 2178
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 61
begin_hunk_0_@acd2_decompose:bb.a
  br label %_ZN3acd10acdXX_impl17get_decompositionEPh.exit

_ZN3acd10acdXX_impl21compute_decompositionEv.exit: ; preds = %bb.c, %bb.b
  %i.n = load i32, ptr %5, align 8, !tbaa !108
  %i.o = icmp eq i32 %i.n, -1
  %.pr.pre = load i32, ptr %i.c, align 8, !tbaa !110 ; 5 uses
  br i1 %i.o, label %_ZN3acd10acdXX_impl11get_profileEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3acd10acdXX_impl21compute_decompositionEv.exit
  switch i32 %.pr.pre, label %.lr.ph.i [
    i32 -1, label %.preheader.i
    i32 0, label %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17
  ]

.lr.ph.i:                                         ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 544 ; 5 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !109  ; 5 uses
  %wide.trip.count.i = zext i32 %.pr.pre to i64   ; 2 uses
  %xtraiter25 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.r = add i32 %.pr.pre, -1
  %i.s = icmp ult i32 %i.r, 3
  br i1 %i.s, label %.epil.preheader24, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter30 = and i64 %wide.trip.count.i, 4294967292
  br label %bb.i

.preheader.i:                                     ; preds = %bb.e
  %i.t = load i32, ptr %i.b, align 4, !tbaa !109  ; 3 uses
  %.not21.i = icmp eq i32 %i.t, 0
  br i1 %.not21.i, label %_ZN3acd10acdXX_impl11get_profileEv.exit.thread, label %.lr.ph19.i

_ZN3acd10acdXX_impl11get_profileEv.exit.thread:   ; preds = %.preheader.i
  store i32 0, ptr %3, align 4, !tbaa !76
  br label %_ZN3acd10acdXX_impl17get_decompositionEPh.exit

.lr.ph19.i:                                       ; preds = %.preheader.i
  %wide.trip.count27.i = zext i32 %i.t to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count27.i, 3     ; 3 uses
  %i.u = icmp ult i32 %i.t, 4
  br i1 %i.u, label %.epil.preheader, label %.lr.ph19.i.new

.lr.ph19.i.new:                                   ; preds = %.lr.ph19.i
  %unroll_iter = and i64 %wide.trip.count27.i, 4294967292
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph19.i.new
  %indvars.iv24.i = phi i64 [ 0, %.lr.ph19.i.new ], [ %indvars.iv.next25.i.3, %bb.f ] ; 5 uses
  %.01217.i = phi i32 [ 0, %.lr.ph19.i.new ], [ %i.an, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph19.i.new ], [ %niter.next.3, %bb.f ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %indvars.iv24.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !76
  %i.x = shl nuw i32 1, %i.w
  %i.y = or i32 %i.x, %.01217.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %indvars.iv24.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !76
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = or i32 %i.ac, %i.y
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %indvars.iv24.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !76
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = or i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %indvars.iv24.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !76
  %i.am = shl nuw i32 1, %i.al
  %i.an = or i32 %i.am, %i.ai                     ; 3 uses
  %indvars.iv.next25.i.3 = add nuw nsw i64 %indvars.iv24.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15.unr-lcssa, label %bb.f, !llvm.loop !2

_ZN3acd10acdXX_impl11get_profileEv.exit.thread15.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15.unr-lcssa, %.lr.ph19.i
  %indvars.iv24.i.epil.init = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next25.i.3, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15.unr-lcssa ]
  %.01217.i.epil.init = phi i32 [ 0, %.lr.ph19.i ], [ %i.an, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv24.i.epil = phi i64 [ %indvars.iv24.i.epil.init, %.epil.preheader ], [ %indvars.iv.next25.i.epil, %bb.g ] ; 2 uses
  %.01217.i.epil = phi i32 [ %.01217.i.epil.init, %.epil.preheader ], [ %i.ar, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %indvars.iv24.i.epil
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !76
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = or i32 %i.aq, %.01217.i.epil            ; 2 uses
  %indvars.iv.next25.i.epil = add nuw nsw i64 %indvars.iv24.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15, label %bb.g, !llvm.loop !190

_ZN3acd10acdXX_impl11get_profileEv.exit.thread15: ; preds = %bb.g, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15.unr-lcssa
  %.lcssa21 = phi i32 [ %i.an, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15.unr-lcssa ], [ %i.ar, %bb.g ]
  store i32 %.lcssa21, ptr %3, align 4, !tbaa !76
  br label %_ZN3acd10acdXX_impl17get_decompositionEPh.exit

_ZN3acd10acdXX_impl11get_profileEv.exit.thread17.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod27.not = icmp eq i64 %xtraiter25, 0
  br i1 %lcmp.mod27.not, label %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17, label %.epil.preheader24

.epil.preheader24:                                ; preds = %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17.loopexit.unr-lcssa ]
  %.115.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.ck, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter25, 0
  call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader24
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader24 ], [ %indvars.iv.next.i.epil, %bb.h ] ; 2 uses
  %.115.i.epil = phi i32 [ %.115.i.epil.init, %.epil.preheader24 ], [ %i.az, %bb.h ]
  %epil.iter26 = phi i64 [ 0, %.epil.preheader24 ], [ %epil.iter26.next, %bb.h ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.epil
  %i.at = load i32, ptr %i.as, align 4, !tbaa !76
  %i.au = add i32 %i.at, %i.q
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !76
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = or i32 %i.ay, %.115.i.epil              ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter26.next = add i64 %epil.iter26, 1     ; 2 uses
  %epil.iter26.cmp.not = icmp eq i64 %epil.iter26.next, %xtraiter25
  br i1 %epil.iter26.cmp.not, label %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17, label %bb.h, !llvm.loop !191

_ZN3acd10acdXX_impl11get_profileEv.exit.thread17: ; preds = %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17.loopexit.unr-lcssa, %bb.h, %bb.e
  %.1.lcssa.i = phi i32 [ %.pr.pre, %bb.e ], [ %i.ck, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17.loopexit.unr-lcssa ], [ %i.az, %bb.h ]
  %i.ba = load i32, ptr %i.e, align 8, !tbaa !111
  %notmask.i = shl nsw i32 -1, %i.ba
  %.demorgan.i = or i32 %notmask.i, %.1.lcssa.i
  %i.bb = xor i32 %.demorgan.i, -1
  store i32 %i.bb, ptr %3, align 4, !tbaa !76
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.i ] ; 5 uses
  %.115.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.ck, %bb.i ]
  %niter31 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter31.next.3, %bb.i ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !76
  %i.be = add i32 %i.bd, %i.q
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !76
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = or i32 %i.bi, %.115.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !76
  %i.bn = add i32 %i.bm, %i.q
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !76
  %i.br = shl nuw i32 1, %i.bq
  %i.bs = or i32 %i.br, %i.bj
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !76
  %i.bw = add i32 %i.bv, %i.q
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !76
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = or i32 %i.ca, %i.bs
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !76
  %i.cf = add i32 %i.ce, %i.q
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.057.i.ptr.i, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !76
  %i.cj = shl nuw i32 1, %i.ci
  %i.ck = or i32 %i.cj, %i.cb                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter31.next.3 = add i64 %niter31, 4           ; 2 uses
  %niter31.ncmp.3 = icmp eq i64 %niter31.next.3, %unroll_iter30
  br i1 %niter31.ncmp.3, label %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17.loopexit.unr-lcssa, label %bb.i, !llvm.loop !3

_ZN3acd10acdXX_impl11get_profileEv.exit:          ; preds = %_ZN3acd10acdXX_impl21compute_decompositionEv.exit
  store i32 -1, ptr %3, align 4, !tbaa !76
  %i.cl = icmp eq i32 %.pr.pre, -1
  br i1 %i.cl, label %_ZN3acd10acdXX_impl17get_decompositionEPh.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3acd10acdXX_impl11get_profileEv.exit.thread17, %_ZN3acd10acdXX_impl11get_profileEv.exit
  call void @_ZN3acd10acdXX_impl21get_decomposition_abcEPh(ptr noundef nonnull align 8 dereferenceable(632) %5, ptr noundef %4)
  br label %_ZN3acd10acdXX_impl17get_decompositionEPh.exit

_ZN3acd10acdXX_impl17get_decompositionEPh.exit:   ; preds = %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15, %bb.j, %_ZN3acd10acdXX_impl11get_profileEv.exit, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread ], [ 0, %_ZN3acd10acdXX_impl11get_profileEv.exit ], [ 0, %bb.j ], [ 0, %_ZN3acd10acdXX_impl11get_profileEv.exit.thread15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @acdXX_evaluate(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.acd::acd66_impl", align 8   ; 15 uses
  %4 = alloca %"class.acd::acdXX_impl", align 8   ; 17 uses
  %i.a = icmp eq i32 %1, 6
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store i32 -1, ptr %3, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.b, align 4, !tbaa !120
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.c, align 8, !tbaa !192
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %i.d, i8 0, i64 516, i1 false)
  store i32 %2, ptr %i.e, align 8, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 572
  store i8 1, ptr %i.f, align 4, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 573
  store i8 0, ptr %i.g, align 1, !tbaa !193
  %.057.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %3, i64 576
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %.057.i.ptr.i.i, align 8, !tbaa !76
  %.057.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %3, i64 592
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.057.i.ptr.4.i.i, align 8, !tbaa !76
  %.057.i.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %3, i64 608
  store i32 8, ptr %.057.i.ptr.8.i.i, align 8, !tbaa !76
  %.057.i.ptr.9.i.i = getelementptr inbounds nuw i8, ptr %3, i64 612
  store i32 9, ptr %.057.i.ptr.9.i.i, align 4, !tbaa !76
  %.057.i.ptr.10.i.i = getelementptr inbounds nuw i8, ptr %3, i64 616
  store i32 10, ptr %.057.i.ptr.10.i.i, align 8, !tbaa !76
  %i.h = call noundef zeroext i1 @_ZN3acd10acd66_impl3runEPm(ptr noundef nonnull align 8 dereferenceable(620) %3, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = add i32 %1, -2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i32 -1, ptr %4, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !109
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %i.k, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %i.l, i8 0, i64 516, i1 false)
  store i32 %2, ptr %i.m, align 8, !tbaa !111
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 572
  store i32 %1, ptr %i.n, align 4, !tbaa !76
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 576
  store i32 %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !76
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 580
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !76
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 584
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !77
  %.057.i.ptr.i = getelementptr inbounds nuw i8, ptr %4, i64 588
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %.057.i.ptr.i, align 4, !tbaa !76
  %.057.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %4, i64 604
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.057.i.ptr.4.i, align 4, !tbaa !76
  %.057.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %4, i64 620
  store i32 8, ptr %.057.i.ptr.8.i, align 4, !tbaa !76
  %.057.i.ptr.9.i = getelementptr inbounds nuw i8, ptr %4, i64 624
  store i32 9, ptr %.057.i.ptr.9.i, align 8, !tbaa !76
  %.057.i.ptr.10.i = getelementptr inbounds nuw i8, ptr %4, i64 628
  store i32 10, ptr %.057.i.ptr.10.i, align 4, !tbaa !76
  %i.o = call noundef zeroext i1 @_ZN3acd10acdXX_impl3runEPm(ptr noundef nonnull align 8 dereferenceable(632) %4, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.in = phi i1 [ %i.h, %bb.b ], [ %i.o, %bb.c ]
  %.1 = zext i1 %.1.in to i32
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3acd10acdXX_impl3runEPm(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %.fr8 = freeze i32 %i.d                         ; 6 uses
  %i.e = icmp ugt i32 %.fr8, 11
  br i1 %i.e, label %_ZN3acd10acdXX_impl18find_decompositionEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !115  ; 4 uses
  %i.h = shl i32 %i.g, 1
  %.not = icmp ult i32 %.fr8, %i.h
  br i1 %.not, label %bb.c, label %_ZN3acd10acdXX_impl18find_decompositionEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.j = add i32 %i.g, -2
  %i.k = load i32, ptr %i.i, align 8, !tbaa !76
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.k)
  store i32 %.sroa.speculated, ptr %i.i, align 8, !tbaa !116
  %i.l = icmp samesign ugt i32 %.fr8, 6
  %i.m = add nsw i32 %.fr8, -6                    ; 3 uses
  %i.n = shl nuw nsw i32 1, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 10 uses
  %i.p = zext nneg i32 %i.n to i64                ; 4 uses
  br i1 %i.l, label %.split.preheader, label %.split7

.split.preheader:                                 ; preds = %bb.c
  %min.iters.check = icmp ult i32 %i.m, 4
  br i1 %min.iters.check, label %.split.preheader25, label %vector.memcheck

.split.preheader25:                               ; preds = %vector.memcheck, %.split.preheader
  %xtraiter = and i64 %i.p, 3                     ; 3 uses
  %i.q = icmp ult i32 %i.m, 2
  br i1 %i.q, label %.split.epil.preheader, label %.split.preheader25.new

.split.preheader25.new:                           ; preds = %.split.preheader25
  %unroll_iter = and i64 %i.p, 2147483644
  br label %.split

vector.memcheck:                                  ; preds = %.split.preheader
  %i.r = sub i64 %i.b, %i.a
  %i.s = add i64 %i.r, 271
  %diff.check = icmp ult i64 %i.s, 31
  br i1 %diff.check, label %.split.preheader25, label %vector.ph19

vector.ph19:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 2147483644
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph19
  %index21 = phi i64 [ 0, %vector.ph19 ], [ %index.next23, %vector.body20 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index21 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !tbaa !84
  %wide.load22 = load <2 x i64>, ptr %i.u, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index21 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i64> %wide.load, ptr %i.v, align 8, !tbaa !84
  store <2 x i64> %wide.load22, ptr %i.w, align 8, !tbaa !84
  %index.next23 = add nuw i64 %index21, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next23, %n.vec
  br i1 %i.x, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader, label %vector.body20, !llvm.loop !194

.split7:                                          ; preds = %bb.c
  %i.y = load i64, ptr %1, align 8, !tbaa !84     ; 6 uses
  store i64 %i.y, ptr %i.o, align 8, !tbaa !84
  %.not18 = icmp eq i32 %.fr8, 6
  br i1 %.not18, label %vector.body, label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %.split7
  %.06.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.z = insertelement <4 x i64> poison, i64 %i.y, i64 0
  %i.aa = shufflevector <4 x i64> %i.z, <4 x i64> poison, <4 x i32> zeroinitializer ; 7 uses
  store <4 x i64> %i.aa, ptr %.06.i.i.i.ptr.1.i.i, align 8, !tbaa !84
  %.06.i.i.i.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <4 x i64> %i.aa, ptr %.06.i.i.i.ptr.5.i.i, align 8, !tbaa !84
  %.06.i.i.i.ptr.9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <4 x i64> %i.aa, ptr %.06.i.i.i.ptr.9.i.i, align 8, !tbaa !84
  %.06.i.i.i.ptr.13.i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <4 x i64> %i.aa, ptr %.06.i.i.i.ptr.13.i.i, align 8, !tbaa !84
  %.06.i.i.i.ptr.17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  store <4 x i64> %i.aa, ptr %.06.i.i.i.ptr.17.i.i, align 8, !tbaa !84
  %.06.i.i.i.ptr.21.i.i = getelementptr inbounds nuw i8, ptr %0, i64 440
  store <4 x i64> %i.aa, ptr %.06.i.i.i.ptr.21.i.i, align 8, !tbaa !84
  %.06.i.i.i.ptr.25.i.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <4 x i64> %i.aa, ptr %.06.i.i.i.ptr.25.i.i, align 8, !tbaa !84
  %.06.i.i.i.ptr.29.i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 %i.y, ptr %.06.i.i.i.ptr.29.i.i, align 8, !tbaa !84
  %.06.i.i.i.ptr.30.i.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %i.y, ptr %.06.i.i.i.ptr.30.i.i, align 8, !tbaa !84
  %.06.i.i.i.ptr.31.i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 %i.y, ptr %.06.i.i.i.ptr.31.i.i, align 8, !tbaa !84
  br label %_ZN3acd10acdXX_impl16init_truth_tableEPm.exit

_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader.loopexit.unr-lcssa: ; preds = %.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader, label %.split.epil.preheader

.split.epil.preheader:                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader.loopexit.unr-lcssa, %.split.preheader25
  %indvars.iv.i.epil.init = phi i64 [ 0, %.split.preheader25 ], [ %indvars.iv.next.i.3, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.split.epil

.split.epil:                                      ; preds = %.split.epil, %.split.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.split.epil ], [ %indvars.iv.i.epil.init, %.split.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.split.epil ], [ 0, %.split.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.epil
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.epil
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !84
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader, label %.split.epil, !llvm.loop !195

_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader:   ; preds = %vector.body20, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader.loopexit.unr-lcssa, %.split.epil
  %.idx.i.i = shl nuw nsw i64 %i.p, 3             ; 2 uses
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i

vector.body:                                      ; preds = %.split7
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x i64> %broadcast.splat, ptr %i.o, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.ae, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <2 x i64> %broadcast.splat, ptr %i.af, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.ag, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <2 x i64> %broadcast.splat, ptr %i.ah, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.ai, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.ak, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 416
  store <2 x i64> %broadcast.splat, ptr %i.al, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.am, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <2 x i64> %broadcast.splat, ptr %i.an, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 8, !tbaa !84
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <2 x i64> %broadcast.splat, ptr %i.ap, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 8, !tbaa !84
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 8, !tbaa !84
  store <2 x i64> %broadcast.splat, ptr %i.as, align 8, !tbaa !84
  br label %_ZN3acd10acdXX_impl16init_truth_tableEPm.exit

_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i:             ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i
  %.0.idx22.i.i = phi i64 [ %.0.add.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i ], [ 0, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader ] ; 2 uses
  %.0.ptr23.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx22.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.0.ptr23.i.i, ptr noundef nonnull align 8 dereferenceable(256) %i.o, i64 %.idx.i.i, i1 false)
  %.0.add.i.i = add nuw nsw i64 %.0.idx22.i.i, %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %.0.add.i.i, 256
  br i1 %.not.i.i, label %_ZN3acd10acdXX_impl16init_truth_tableEPm.exit.loopexit9, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i, !llvm.loop !4

.split:                                           ; preds = %.split, %.split.preheader25.new
  %indvars.iv.i = phi i64 [ 0, %.split.preheader25.new ], [ %indvars.iv.next.i.3, %.split ] ; 6 uses
  %niter = phi i64 [ 0, %.split.preheader25.new ], [ %niter.next.3, %.split ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !84
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  store i64 %i.au, ptr %i.av, align 8, !tbaa !84
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !84
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !84
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.1
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !84
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !84
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.2
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !84
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i.preheader.loopexit.unr-lcssa, label %.split, !llvm.loop !196

_ZN3acd10acdXX_impl16init_truth_tableEPm.exit.loopexit9: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit.i.i
  %.pre = load i32, ptr %i.c, align 8, !tbaa !111
  %.pre10 = load i32, ptr %i.f, align 4, !tbaa !115
  br label %_ZN3acd10acdXX_impl16init_truth_tableEPm.exit

_ZN3acd10acdXX_impl16init_truth_tableEPm.exit:    ; preds = %vector.body, %_ZN3acd10acdXX_impl16init_truth_tableEPm.exit.loopexit9, %.lr.ph.i.i.i.preheader.i.i
  %i.bf = phi i32 [ %.pre10, %_ZN3acd10acdXX_impl16init_truth_tableEPm.exit.loopexit9 ], [ %i.g, %.lr.ph.i.i.i.preheader.i.i ], [ %i.g, %vector.body ] ; 4 uses
  %i.bg = phi i32 [ %.pre, %_ZN3acd10acdXX_impl16init_truth_tableEPm.exit.loopexit9 ], [ %.fr8, %.lr.ph.i.i.i.preheader.i.i ], [ 6, %vector.body ] ; 3 uses
  store i32 -1, ptr %0, align 8, !tbaa !108
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.bh, align 4, !tbaa !109
  %i.bi = load i32, ptr %i.i, align 8, !tbaa !116 ; 2 uses
  %i.bj = icmp ugt i32 %i.bi, 1
  br i1 %i.bj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3acd10acdXX_impl16init_truth_tableEPm.exit
  %i.bk = sub i32 %i.bg, %i.bf
  %i.bl = tail call noundef zeroext i1 @_ZN3acd10acdXX_impl30find_decomposition_bs_multi_ssEj(ptr noundef nonnull align 8 dereferenceable(632) %0, i32 noundef %i.bk)
  br label %_ZN3acd10acdXX_impl18find_decompositionEv.exit

bb.e:                                             ; preds = %_ZN3acd10acdXX_impl16init_truth_tableEPm.exit
  %i.bm = shl i32 %i.bf, 1
  %i.bn = add i32 %i.bm, -1
  %i.bo = icmp eq i32 %i.bg, %i.bn
  %i.bp = xor i32 %i.bi, -1
  %.v.i = select i1 %i.bo, i32 -1, i32 %i.bp
  %i.bq = add i32 %.v.i, %i.bf                    ; 2 uses
  %i.br = sub i32 %i.bg, %i.bf                    ; 2 uses
  %.not.not9.i = icmp ugt i32 %i.br, %i.bq
  br i1 %.not.not9.i, label %.critedge.i, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.bs = add i32 %.0610.i, 1                     ; 2 uses
  %.not.not.i = icmp ugt i32 %i.bs, %i.bq
  br i1 %.not.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !197

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.0610.i = phi i32 [ %i.bs, %bb.f ], [ %i.br, %bb.e ] ; 2 uses
  %i.bt = tail call noundef zeroext i1 @_ZN3acd10acdXX_impl21find_decomposition_bsEj(ptr noundef nonnull align 8 dereferenceable(632) %0, i32 noundef %.0610.i)
  br i1 %i.bt, label %_ZN3acd10acdXX_impl18find_decompositionEv.exit, label %bb.f

.critedge.i:                                      ; preds = %bb.f, %bb.e
  store i32 -1, ptr %0, align 8, !tbaa !108
  br label %_ZN3acd10acdXX_impl18find_decompositionEv.exit

_ZN3acd10acdXX_impl18find_decompositionEv.exit:   ; preds = %.lr.ph.i, %.critedge.i, %bb.d, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.bl, %bb.d ], [ false, %.critedge.i ], [ true, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 2) i32 @acdXX_decompose(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.acd::acdXX_impl", align 8   ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 568
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 572
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 576
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 580
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 584 ; 2 uses
  %.057.i.ptr.i = getelementptr inbounds nuw i8, ptr %4, i64 588
  %.057.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %4, i64 604
  %.057.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %4, i64 620
  %.057.i.ptr.9.i = getelementptr inbounds nuw i8, ptr %4, i64 624
  %.057.i.ptr.10.i = getelementptr inbounds nuw i8, ptr %4, i64 628
  %i.f = add i32 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %.01217 = phi i32 [ 0, %bb.a ], [ %i.o, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i32 -1, ptr %4, align 8, !tbaa !108
  store i32 -1, ptr %i.a, align 4, !tbaa !109
  store i32 -1, ptr %i.b, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %i.c, i8 0, i64 516, i1 false)
  store i32 %2, ptr %i.d, align 8, !tbaa !111
  store i32 %1, ptr %i.e, align 4, !tbaa !76
  store i32 %.01217, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !76
  store i32 %.01217, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !76
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !77
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %.057.i.ptr.i, align 4, !tbaa !76
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.057.i.ptr.4.i, align 4, !tbaa !76
  store i32 8, ptr %.057.i.ptr.8.i, align 4, !tbaa !76
  store i32 9, ptr %.057.i.ptr.9.i, align 8, !tbaa !76
  store i32 10, ptr %.057.i.ptr.10.i, align 4, !tbaa !76
  %i.g = call noundef zeroext i1 @_ZN3acd10acdXX_impl3runEPm(ptr noundef nonnull align 8 dereferenceable(632) %4, ptr noundef %0) ; 2 uses
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %4, align 8, !tbaa !108
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %_ZN3acd10acdXX_impl21compute_decompositionEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN3acd10acdXX_impl26compute_decomposition_implEb(ptr noundef nonnull align 8 dereferenceable(632) %4, i1 noundef zeroext false)
  %i.j = load i8, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !112, !range !113, !noundef !114
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZN3acd10acdXX_impl21compute_decompositionEv.exit

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef zeroext i1 @_ZN3acd10acdXX_impl11verify_implEv(ptr noundef nonnull align 8 dereferenceable(632) %4) ; 0 uses
  br label %_ZN3acd10acdXX_impl21compute_decompositionEv.exit

_ZN3acd10acdXX_impl21compute_decompositionEv.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i32, ptr %i.b, align 8, !tbaa !110
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %_ZN3acd10acdXX_impl17get_decompositionEPh.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3acd10acdXX_impl21compute_decompositionEv.exit
  call void @_ZN3acd10acdXX_impl21get_decomposition_abcEPh(ptr noundef nonnull align 8 dereferenceable(632) %4, ptr noundef %3)
  br label %_ZN3acd10acdXX_impl17get_decompositionEPh.exit

_ZN3acd10acdXX_impl17get_decompositionEPh.exit:   ; preds = %_ZN3acd10acdXX_impl21compute_decompositionEv.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.loopexit

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.o = add nuw i32 %.01217, 1
  %exitcond.not = icmp eq i32 %.01217, %i.f
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !198

.loopexit:                                        ; preds = %.critedge, %_ZN3acd10acdXX_impl17get_decompositionEPh.exit
  %.not16 = xor i1 %i.g, true
  %spec.select = zext i1 %.not16 to i32
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3acd21ac_decomposition_impl18find_decompositionERjj(ptr noundef nonnull align 8 dereferenceable(500) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [5 x %"class.std::function"], align 16 ; 31 uses
  %4 = alloca %"class.std::tuple", align 8        ; 7 uses
  %5 = alloca %"class.std::tuple", align 8        ; 7 uses
  store i32 -1, ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !74
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %2, i32 1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !202, !range !113, !noundef !114
  %i.e = trunc nuw i8 %i.d to i1
  %.pre = load i32, ptr %i.b, align 4, !tbaa !82  ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.g = load i32, ptr %i.f, align 8, !tbaa !75
  %i.h = sub i32 %i.g, %.pre
  %.sroa.speculated82 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated86, i32 %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.096 = phi i32 [ %.sroa.speculated82, %bb.b ], [ %.sroa.speculated86, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  %i.k = ptrtoint ptr %0 to i64                   ; 5 uses
  store i64 %i.k, ptr %3, align 16, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E_E9_M_invokeERKSt9_Any_dataS4_, ptr %i.j, align 8, !tbaa !127
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.i, align 16, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, i8 0, i64 16, i1 false)
  store i64 %i.k, ptr %i.l, align 16, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E0_E9_M_invokeERKSt9_Any_dataS4_, ptr %i.n, align 8, !tbaa !127
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.m, align 16, !tbaa !128
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.o, i8 0, i64 16, i1 false)
  store i64 %i.k, ptr %i.o, align 16, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E1_E9_M_invokeERKSt9_Any_dataS4_, ptr %i.q, align 8, !tbaa !127
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E1_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.p, align 16, !tbaa !128
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, i8 0, i64 16, i1 false)
  store i64 %i.k, ptr %i.r, align 16, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E2_E9_M_invokeERKSt9_Any_dataS4_, ptr %i.t, align 8, !tbaa !127
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E2_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.s, align 16, !tbaa !128
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.u, i8 0, i64 16, i1 false)
  store i64 %i.k, ptr %i.u, align 16, !tbaa !124
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E3_E9_M_invokeERKSt9_Any_dataS4_, ptr %i.w, align 8, !tbaa !127
  store ptr @_ZNSt17_Function_handlerIFjRKN5kitty18static_truth_tableILj11ELb0EEEEZN3acd21ac_decomposition_impl18find_decompositionERjjEUlS4_E3_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.v, align 16, !tbaa !128
  %i.x = add i32 %.pre, -1
  %.not64101 = icmp ugt i32 %.096, %i.x
  br i1 %.not64101, label %.critedge.thread130, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 445
  %i.af = load i32, ptr %i.y, align 8, !tbaa !81
  %.not65147 = icmp ugt i32 %.096, %i.af
  br i1 %.not65147, label %.critedge, label %.lr.ph150

bb.d:                                             ; preds = %bb.g
  %i.ag = add i32 %.055103148, 1                  ; 3 uses
  %i.ah = add i32 %i.an, -1
  %.not64 = icmp ugt i32 %i.ag, %i.ah
  br i1 %.not64, label %.critedge9.thread, label %bb.e, !llvm.loop !199

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !81
  %.not65 = icmp ugt i32 %i.ag, %i.ai
  br i1 %.not65, label %.critedge, label %.lr.ph150, !llvm.loop !199

.lr.ph150:                                        ; preds = %.lr.ph, %bb.e
  %.056102149 = phi i32 [ %i.au, %bb.e ], [ -1, %.lr.ph ] ; 2 uses
  %.055103148 = phi i32 [ %i.ag, %bb.e ], [ %.096, %.lr.ph ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.aj = add i32 %.055103148, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %i.ak
  call void @_ZN3acd21ac_decomposition_impl27enumerate_iset_combinationsIRSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEEESt5tupleIJS5_St5arrayIjLm11EEjEEjjOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %4, ptr noundef nonnull align 8 dereferenceable(500) %0, i32 noundef %.055103148, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %i.am = load i32, ptr %4, align 8, !tbaa !76    ; 8 uses
  %i.an = load i32, ptr %i.b, align 4, !tbaa !82  ; 3 uses
  %i.ao = sub i32 %i.an, %.055103148
  %i.ap = shl nuw i32 1, %i.ao
  %.not66 = icmp ugt i32 %i.am, %i.ap
  br i1 %.not66, label %.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph150
  %i.aq = load i32, ptr %i.z, align 8, !tbaa !75
  %i.ar = sub i32 %i.aq, %.055103148
  %i.as = icmp ugt i32 %i.ar, %i.an
  %i.at = select i1 %i.as, i32 128, i32 0
  %i.au = add nuw i32 %i.at, %i.am                ; 3 uses
  %i.av = icmp ult i32 %i.au, %.056102149
  %i.aw = icmp ult i32 %i.am, 17
  %or.cond = and i1 %i.aw, %i.av
  br i1 %or.cond, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f, %.lr.ph150
end_hunk_0
begin_hunk_1_@_ZN3acd21ac_decomposition_impl22generate_decompositionEv:bb.a
  %i.hx = xor <2 x i64> %i.hw, %wide.load324.9
  %wide.load325.9 = load <2 x i64>, ptr %next.gep323.9, align 16, !tbaa !84 ; 2 uses
  %i.hy = lshr <2 x i64> %wide.load325.9, %broadcast.splat318
  %i.hz = and <2 x i64> %i.hx, %i.hy
  %i.ia = and <2 x i64> %i.hz, %broadcast.splat320
  %i.ib = and <2 x i64> %i.ia, %wide.load325.9
  %.fr.9 = freeze <2 x i64> %i.ib
  %i.ic = icmp ne <2 x i64> %.fr.9, zeroinitializer
  %i.id = bitcast <2 x i1> %i.ic to i2
  %.not328.9 = icmp eq i2 %i.id, 0
  br i1 %.not328.9, label %vector.body.interim.9, label %.loopexit

vector.body.interim.9:                            ; preds = %vector.body.interim.8
  %wide.load324.10 = load <2 x i64>, ptr %i.ap, align 16, !tbaa !84 ; 2 uses
  %i.ie = lshr <2 x i64> %wide.load324.10, %broadcast.splat318
  %i.if = xor <2 x i64> %i.ie, %wide.load324.10
  %wide.load325.10 = load <2 x i64>, ptr %next.gep323.10, align 16, !tbaa !84 ; 2 uses
  %i.ig = lshr <2 x i64> %wide.load325.10, %broadcast.splat318
  %i.ih = and <2 x i64> %i.if, %i.ig
  %i.ii = and <2 x i64> %i.ih, %broadcast.splat320
  %i.ij = and <2 x i64> %i.ii, %wide.load325.10
  %.fr.10 = freeze <2 x i64> %i.ij
  %i.ik = icmp ne <2 x i64> %.fr.10, zeroinitializer
  %i.il = bitcast <2 x i1> %i.ik to i2
  %.not328.10 = icmp eq i2 %i.il, 0
  br i1 %.not328.10, label %vector.body.interim.10, label %.loopexit

vector.body.interim.10:                           ; preds = %vector.body.interim.9
  %wide.load324.11 = load <2 x i64>, ptr %i.aq, align 16, !tbaa !84 ; 2 uses
  %i.im = lshr <2 x i64> %wide.load324.11, %broadcast.splat318
  %i.in = xor <2 x i64> %i.im, %wide.load324.11
  %wide.load325.11 = load <2 x i64>, ptr %next.gep323.11, align 16, !tbaa !84 ; 2 uses
  %i.io = lshr <2 x i64> %wide.load325.11, %broadcast.splat318
  %i.ip = and <2 x i64> %i.in, %i.io
  %i.iq = and <2 x i64> %i.ip, %broadcast.splat320
  %i.ir = and <2 x i64> %i.iq, %wide.load325.11
  %.fr.11 = freeze <2 x i64> %i.ir
  %i.is = icmp ne <2 x i64> %.fr.11, zeroinitializer
  %i.it = bitcast <2 x i1> %i.is to i2
  %.not328.11 = icmp eq i2 %i.it, 0
  br i1 %.not328.11, label %vector.body.interim.11, label %.loopexit

vector.body.interim.11:                           ; preds = %vector.body.interim.10
  %wide.load324.12 = load <2 x i64>, ptr %i.ar, align 16, !tbaa !84 ; 2 uses
  %i.iu = lshr <2 x i64> %wide.load324.12, %broadcast.splat318
  %i.iv = xor <2 x i64> %i.iu, %wide.load324.12
  %wide.load325.12 = load <2 x i64>, ptr %next.gep323.12, align 16, !tbaa !84 ; 2 uses
  %i.iw = lshr <2 x i64> %wide.load325.12, %broadcast.splat318
  %i.ix = and <2 x i64> %i.iv, %i.iw
  %i.iy = and <2 x i64> %i.ix, %broadcast.splat320
  %i.iz = and <2 x i64> %i.iy, %wide.load325.12
  %.fr.12 = freeze <2 x i64> %i.iz
  %i.ja = icmp ne <2 x i64> %.fr.12, zeroinitializer
  %i.jb = bitcast <2 x i1> %i.ja to i2
  %.not328.12 = icmp eq i2 %i.jb, 0
  br i1 %.not328.12, label %vector.body.interim.12, label %.loopexit

vector.body.interim.12:                           ; preds = %vector.body.interim.11
  %wide.load324.13 = load <2 x i64>, ptr %i.as, align 16, !tbaa !84 ; 2 uses
  %i.jc = lshr <2 x i64> %wide.load324.13, %broadcast.splat318
  %i.jd = xor <2 x i64> %i.jc, %wide.load324.13
  %wide.load325.13 = load <2 x i64>, ptr %next.gep323.13, align 16, !tbaa !84 ; 2 uses
  %i.je = lshr <2 x i64> %wide.load325.13, %broadcast.splat318
  %i.jf = and <2 x i64> %i.jd, %i.je
  %i.jg = and <2 x i64> %i.jf, %broadcast.splat320
  %i.jh = and <2 x i64> %i.jg, %wide.load325.13
  %.fr.13 = freeze <2 x i64> %i.jh
  %i.ji = icmp ne <2 x i64> %.fr.13, zeroinitializer
  %i.jj = bitcast <2 x i1> %i.ji to i2
  %.not328.13 = icmp eq i2 %i.jj, 0
  br i1 %.not328.13, label %vector.body.interim.13, label %.loopexit

vector.body.interim.13:                           ; preds = %vector.body.interim.12
  %wide.load324.14 = load <2 x i64>, ptr %i.at, align 16, !tbaa !84 ; 2 uses
  %i.jk = lshr <2 x i64> %wide.load324.14, %broadcast.splat318
  %i.jl = xor <2 x i64> %i.jk, %wide.load324.14
  %wide.load325.14 = load <2 x i64>, ptr %next.gep323.14, align 16, !tbaa !84 ; 2 uses
  %i.jm = lshr <2 x i64> %wide.load325.14, %broadcast.splat318
  %i.jn = and <2 x i64> %i.jl, %i.jm
  %i.jo = and <2 x i64> %i.jn, %broadcast.splat320
  %i.jp = and <2 x i64> %i.jo, %wide.load325.14
  %.fr.14 = freeze <2 x i64> %i.jp
  %i.jq = icmp ne <2 x i64> %.fr.14, zeroinitializer
  %i.jr = bitcast <2 x i1> %i.jq to i2
  %.not328.14 = icmp eq i2 %i.jr, 0
  br i1 %.not328.14, label %vector.body.interim.14, label %.loopexit

vector.body.interim.14:                           ; preds = %vector.body.interim.13
  %wide.load324.15 = load <2 x i64>, ptr %i.au, align 16, !tbaa !84 ; 2 uses
  %i.js = lshr <2 x i64> %wide.load324.15, %broadcast.splat318
  %i.jt = xor <2 x i64> %i.js, %wide.load324.15
  %wide.load325.15 = load <2 x i64>, ptr %next.gep323.15, align 16, !tbaa !84 ; 2 uses
  %i.ju = lshr <2 x i64> %wide.load325.15, %broadcast.splat318
  %i.jv = and <2 x i64> %i.jt, %i.ju
  %i.jw = and <2 x i64> %i.jv, %broadcast.splat320
  %i.jx = and <2 x i64> %i.jw, %wide.load325.15
  %.fr.15 = freeze <2 x i64> %i.jx
  %i.jy = icmp ne <2 x i64> %.fr.15, zeroinitializer
  %i.jz = bitcast <2 x i1> %i.jy to i2
  %.not328.15 = icmp eq i2 %i.jz, 0
  br i1 %.not328.15, label %_ZN5kitty7has_varINS_18static_truth_tableILj11ELb0EEEEEbRKT_S5_h.exit, label %.loopexit

.preheader56.us.preheader.i:                      ; preds = %.lr.ph
  %i.ka = and i32 %i.ew, 255
  %i.kb = add nsw i32 %i.ka, -6                   ; 3 uses
  %i.kc = shl nuw i32 1, %i.kb                    ; 2 uses
  %.not5059.not.i = icmp ne i32 %i.kb, 31
  call void @llvm.assume(i1 %.not5059.not.i)
  %i.kd = shl i32 2, %i.kb
  %smax.i = call i32 @llvm.smax.i32(i32 %i.kc, i32 1)
  %i.ke = zext i32 %i.kd to i64
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader56.us.i

.preheader56.us.i:                                ; preds = %..critedge_crit_edge.us.i, %.preheader56.us.preheader.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader56.us.preheader.i ], [ %indvars.iv.next69.i, %..critedge_crit_edge.us.i ] ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %..critedge_crit_edge.us.i, label %bb.j, !llvm.loop !385

bb.j:                                             ; preds = %bb.i, %.preheader56.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader56.us.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.kf = add nuw i64 %indvars.iv.i, %indvars.iv68.i ; 3 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !84
  %i.ki = trunc nuw i64 %i.kf to i32
  %i.kj = add i32 %i.kc, %i.ki
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !84
  %i.kn = xor i64 %i.km, %i.kh
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kf
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !84
  %i.kq = and i64 %i.kn, %i.kp
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kk
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !84
  %i.kt = and i64 %i.kq, %i.ks
  %.not.us.i = icmp eq i64 %i.kt, 0
  br i1 %.not.us.i, label %bb.i, label %.loopexit

..critedge_crit_edge.us.i:                        ; preds = %bb.i
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, %i.ke ; 2 uses
  %.not51.us.i = icmp samesign ult i64 %indvars.iv.next69.i, 32
  br i1 %.not51.us.i, label %.preheader56.us.i, label %_ZN5kitty7has_varINS_18static_truth_tableILj11ELb0EEEEEbRKT_S5_h.exit, !llvm.loop !386

_ZN5kitty7has_varINS_18static_truth_tableILj11ELb0EEEEEbRKT_S5_h.exit: ; preds = %..critedge_crit_edge.us.i, %vector.body.interim.14
  %i.ku = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.ku, label %vector.ph, label %bb.k

vector.ph:                                        ; preds = %_ZN5kitty7has_varINS_18static_truth_tableILj11ELb0EEEEEbRKT_S5_h.exit
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %indvars.iv
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !84
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL15projections_negE, i64 %indvars.iv
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !84
  %i.kz = shl nuw nsw i64 1, %indvars.iv
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.kz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert153 = insertelement <2 x i64> poison, i64 %i.ky, i64 0
  %broadcast.splat154 = shufflevector <2 x i64> %broadcast.splatinsert153, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert155 = insertelement <2 x i64> poison, i64 %i.kw, i64 0
  %broadcast.splat156 = shufflevector <2 x i64> %broadcast.splatinsert155, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.la = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.la ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 %i.la ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.lb, align 16, !tbaa !84
  %wide.load157 = load <2 x i64>, ptr %next.gep, align 16, !tbaa !84 ; 3 uses
  %i.lc = and <2 x i64> %wide.load157, %wide.load ; 4 uses
  %i.ld = lshr <2 x i64> %i.lc, %broadcast.splat
  %i.le = or <2 x i64> %i.ld, %i.lc
  %i.lf = and <2 x i64> %i.le, %broadcast.splat154
  %i.lg = shl <2 x i64> %i.lc, %broadcast.splat
  %i.lh = or <2 x i64> %i.lg, %i.lc
  %i.li = and <2 x i64> %i.lh, %broadcast.splat156
  %i.lj = or <2 x i64> %i.lf, %i.li
  store <2 x i64> %i.lj, ptr %i.lb, align 16, !tbaa !84
  %i.lk = lshr <2 x i64> %wide.load157, %broadcast.splat
  %i.ll = or <2 x i64> %i.lk, %wide.load157
  %i.lm = and <2 x i64> %i.ll, %broadcast.splat154 ; 2 uses
  %i.ln = shl <2 x i64> %i.lm, %broadcast.splat
  %i.lo = or <2 x i64> %i.ln, %i.lm
  store <2 x i64> %i.lo, ptr %next.gep, align 16, !tbaa !84
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lp = icmp eq i64 %index.next, 32
  br i1 %i.lp, label %_ZN3acd21ac_decomposition_impl24adjust_truth_table_on_dcERN5kitty18static_truth_tableILj11ELb0EEES4_jj.exit, label %vector.body, !llvm.loop !387

bb.k:                                             ; preds = %_ZN5kitty7has_varINS_18static_truth_tableILj11ELb0EEEEEbRKT_S5_h.exit
  %i.lq = add i32 %i.ew, -6                       ; 3 uses
  %i.lr = shl nuw i32 1, %i.lq                    ; 6 uses
  %.not92.i = icmp eq i32 %i.lq, 31
  %i.ls = shl i32 2, %i.lq
  br i1 %.not92.i, label %_ZN3acd21ac_decomposition_impl24adjust_truth_table_on_dcERN5kitty18static_truth_tableILj11ELb0EEES4_jj.exit, label %.preheader85.us.preheader.i

.preheader85.us.preheader.i:                      ; preds = %bb.k
  %smax.i23 = call i32 @llvm.smax.i32(i32 %i.lr, i32 1) ; 2 uses
  %wide.trip.count.i24 = zext nneg i32 %smax.i23 to i64 ; 3 uses
  %4 = add nsw i32 %smax.i23, -1                  ; 2 uses
  %i.lt = shl nuw nsw i64 %wide.trip.count.i24, 3 ; 4 uses
  %scevgep158 = getelementptr i8, ptr %2, i64 %i.lt
  %scevgep161 = getelementptr i8, ptr %2, i64 %i.lt
  %scevgep164 = getelementptr i8, ptr %3, i64 %i.lt
  %scevgep167 = getelementptr i8, ptr %3, i64 %i.lt
  %min.iters.check = icmp slt i32 %i.lr, 8
  %n.vec = and i64 %wide.trip.count.i24, 2147483646
  br label %.preheader85.us.i

.preheader85.us.i:                                ; preds = %._crit_edge.us.i, %.preheader85.us.preheader.i
  %.08088.us.i = phi i32 [ %i.ni, %._crit_edge.us.i ], [ 0, %.preheader85.us.preheader.i ] ; 7 uses
  %i.lu = zext i32 %.08088.us.i to i64
  %i.lv = shl nuw nsw i64 %i.lu, 3                ; 4 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.lv
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.lv
  %i.lw = add i32 %i.lr, %.08088.us.i
  %i.lx = zext i32 %i.lw to i64
  %i.ly = shl nuw nsw i64 %i.lx, 3                ; 4 uses
  %scevgep160 = getelementptr i8, ptr %2, i64 %i.ly
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.ly
  %scevgep163 = getelementptr i8, ptr %3, i64 %i.lv
  %scevgep165 = getelementptr i8, ptr %scevgep164, i64 %i.lv
  %scevgep166 = getelementptr i8, ptr %3, i64 %i.ly
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.ly
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader85.us.i
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.preheader85.us.i
  %i.lz = add i32 %i.lr, %.08088.us.i
  %i.ma = xor i32 %.08088.us.i, -1
  %5 = icmp ugt i32 %4, %i.ma
  %i.mb = xor i32 %i.lz, -1
  %6 = icmp ugt i32 %4, %i.mb
  %i.mc = or i1 %5, %6
  br i1 %i.mc, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep162
  %bound1 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict = and i1 %bound0, %bound1
  %bound0169 = icmp ult ptr %scevgep163, %scevgep168
  %bound1170 = icmp ult ptr %scevgep166, %scevgep165
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx = or i1 %found.conflict, %found.conflict171
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.body173

vector.body173:                                   ; preds = %vector.memcheck, %vector.body173
  %index174 = phi i64 [ %index.next179, %vector.body173 ], [ 0, %vector.memcheck ] ; 2 uses
  %i.md = trunc nuw nsw i64 %index174 to i32
  %i.me = add i32 %.08088.us.i, %i.md             ; 2 uses
  %i.mf = zext i32 %i.me to i64                   ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mf ; 2 uses
  %wide.load175 = load <2 x i64>, ptr %i.mg, align 16, !tbaa !84, !alias.scope !423, !noalias !424
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.mf ; 2 uses
  %wide.load176 = load <2 x i64>, ptr %i.mh, align 16, !tbaa !84, !alias.scope !425, !noalias !426 ; 2 uses
  %i.mi = and <2 x i64> %wide.load176, %wide.load175
  %i.mj = add i32 %i.me, %i.lr
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mk ; 2 uses
  %wide.load177 = load <2 x i64>, ptr %i.ml, align 8, !tbaa !84, !alias.scope !424
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.mk ; 2 uses
  %wide.load178 = load <2 x i64>, ptr %i.mm, align 8, !tbaa !84, !alias.scope !426 ; 2 uses
  %i.mn = and <2 x i64> %wide.load178, %wide.load177
  %i.mo = or <2 x i64> %i.mn, %i.mi               ; 2 uses
  store <2 x i64> %i.mo, ptr %i.mg, align 16, !tbaa !84, !alias.scope !423, !noalias !424
  store <2 x i64> %i.mo, ptr %i.ml, align 8, !tbaa !84, !alias.scope !424
  %i.mp = or <2 x i64> %wide.load178, %wide.load176 ; 2 uses
  store <2 x i64> %i.mp, ptr %i.mh, align 16, !tbaa !84, !alias.scope !425, !noalias !426
  store <2 x i64> %i.mp, ptr %i.mm, align 8, !tbaa !84, !alias.scope !426
  %index.next179 = add nuw i64 %index174, 2       ; 2 uses
  %i.mq = icmp eq i64 %index.next179, %n.vec
  br i1 %i.mq, label %._crit_edge.us.i, label %vector.body173, !llvm.loop !393

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i25 = phi i64 [ %indvars.iv.next.i26, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 2 uses
  %i.mr = trunc nuw nsw i64 %indvars.iv.i25 to i32
  %i.ms = add i32 %.08088.us.i, %i.mr             ; 2 uses
  %i.mt = zext i32 %i.ms to i64                   ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mt ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !84
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.mt ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !84 ; 2 uses
  %i.my = and i64 %i.mx, %i.mv
  %i.mz = add i32 %i.ms, %i.lr
  %i.na = zext i32 %i.mz to i64                   ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.na ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !84
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.na ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !84 ; 2 uses
  %i.nf = and i64 %i.ne, %i.nc
  %i.ng = or i64 %i.nf, %i.my                     ; 2 uses
  store i64 %i.ng, ptr %i.mu, align 8, !tbaa !84
  store i64 %i.ng, ptr %i.nb, align 8, !tbaa !84
  %i.nh = or i64 %i.ne, %i.mx                     ; 2 uses
  store i64 %i.nh, ptr %i.mw, align 8, !tbaa !84
  store i64 %i.nh, ptr %i.nd, align 8, !tbaa !84
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, %wide.trip.count.i24
  br i1 %exitcond.not.i27, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !394

._crit_edge.us.i:                                 ; preds = %vector.body173, %scalar.ph
  %i.ni = add i32 %.08088.us.i, %i.ls             ; 2 uses
  %i.nj = icmp ult i32 %i.ni, 32
  br i1 %i.nj, label %.preheader85.us.i, label %_ZN3acd21ac_decomposition_impl24adjust_truth_table_on_dcERN5kitty18static_truth_tableILj11ELb0EEES4_jj.exit, !llvm.loop !395

.loopexit:                                        ; preds = %vector.ph316, %vector.body.interim, %vector.body.interim.1, %vector.body.interim.2, %vector.body.interim.3, %vector.body.interim.4, %vector.body.interim.5, %vector.body.interim.6, %vector.body.interim.7, %vector.body.interim.8, %vector.body.interim.9, %vector.body.interim.10, %vector.body.interim.11, %vector.body.interim.12, %vector.body.interim.13, %vector.body.interim.14, %bb.j
  %i.nk = zext i32 %.01893 to i64
  %i.nl = icmp samesign ugt i64 %indvars.iv, %i.nk
  br i1 %i.nl, label %bb.l, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78

bb.l:                                             ; preds = %.loopexit
  %i.nm = trunc i32 %.01893 to i8                 ; 3 uses
  %i.nn = icmp eq i8 %i.nm, %i.ex
  br i1 %i.nn, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.select.i = call i8 @llvm.umin.i8(i8 %i.nm, i8 %i.ex) ; 12 uses
  %spec.select88.i = call i8 @llvm.umax.i8(i8 %i.nm, i8 %i.ex) ; 4 uses
  %i.no = zext i8 %spec.select88.i to i32         ; 6 uses
  %i.np = icmp ult i8 %spec.select88.i, 6
  br i1 %i.np, label %vector.body208, label %bb.n

vector.body208:                                   ; preds = %bb.m
  %i.nq = zext i8 %spec.select.i to i64
  %i.nr = getelementptr inbounds nuw [144 x i8], ptr @_ZN5kitty6detailL18ppermutation_masksE, i64 %i.nq
  %i.ns = zext nneg i8 %spec.select88.i to i64
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %i.ns ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !84
  %broadcast.splatinsert206 = insertelement <2 x i64> poison, i64 %i.nv, i64 0
  %broadcast.splat207 = shufflevector <2 x i64> %broadcast.splatinsert206, <2 x i64> poison, <2 x i32> zeroinitializer ; 16 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !84
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %i.nx, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer ; 16 uses
  %i.ny = load i64, ptr %i.nt, align 8, !tbaa !84
  %broadcast.splatinsert202 = insertelement <2 x i64> poison, i64 %i.ny, i64 0
  %broadcast.splat203 = shufflevector <2 x i64> %broadcast.splatinsert202, <2 x i64> poison, <2 x i32> zeroinitializer ; 16 uses
  %i.nz = zext nneg i8 %spec.select.i to i32
  %.neg.i = shl nsw i32 -1, %i.nz
  %i.oa = shl nuw nsw i32 1, %i.no
  %i.ob = add nsw i32 %.neg.i, %i.oa
  %i.oc = zext i32 %i.ob to i64
  %broadcast.splatinsert200 = insertelement <2 x i64> poison, i64 %i.oc, i64 0
  %broadcast.splat201 = shufflevector <2 x i64> %broadcast.splatinsert200, <2 x i64> poison, <2 x i32> zeroinitializer ; 32 uses
  %wide.load211 = load <2 x i64>, ptr %2, align 16, !tbaa !84 ; 3 uses
  %wide.load212 = load <2 x i64>, ptr %i.av, align 16, !tbaa !84 ; 3 uses
  %i.od = and <2 x i64> %wide.load211, %broadcast.splat203
  %i.oe = and <2 x i64> %wide.load212, %broadcast.splat203
  %i.of = and <2 x i64> %wide.load211, %broadcast.splat205
  %i.og = and <2 x i64> %wide.load212, %broadcast.splat205
  %i.oh = shl <2 x i64> %i.of, %broadcast.splat201
  %i.oi = shl <2 x i64> %i.og, %broadcast.splat201
  %i.oj = or <2 x i64> %i.oh, %i.od
  %i.ok = or <2 x i64> %i.oi, %i.oe
  %i.ol = and <2 x i64> %wide.load211, %broadcast.splat207
  %i.om = and <2 x i64> %wide.load212, %broadcast.splat207
  %i.on = lshr <2 x i64> %i.ol, %broadcast.splat201
  %i.oo = lshr <2 x i64> %i.om, %broadcast.splat201
  %i.op = or <2 x i64> %i.oj, %i.on
  %i.oq = or <2 x i64> %i.ok, %i.oo
  store <2 x i64> %i.op, ptr %2, align 16, !tbaa !84
  store <2 x i64> %i.oq, ptr %i.aw, align 16, !tbaa !84
  %wide.load211.1 = load <2 x i64>, ptr %i.ax, align 16, !tbaa !84 ; 3 uses
  %wide.load212.1 = load <2 x i64>, ptr %i.ay, align 16, !tbaa !84 ; 3 uses
  %i.or = and <2 x i64> %wide.load211.1, %broadcast.splat203
  %i.os = and <2 x i64> %wide.load212.1, %broadcast.splat203
  %i.ot = and <2 x i64> %wide.load211.1, %broadcast.splat205
  %i.ou = and <2 x i64> %wide.load212.1, %broadcast.splat205
  %i.ov = shl <2 x i64> %i.ot, %broadcast.splat201
  %i.ow = shl <2 x i64> %i.ou, %broadcast.splat201
  %i.ox = or <2 x i64> %i.ov, %i.or
  %i.oy = or <2 x i64> %i.ow, %i.os
  %i.oz = and <2 x i64> %wide.load211.1, %broadcast.splat207
  %i.pa = and <2 x i64> %wide.load212.1, %broadcast.splat207
  %i.pb = lshr <2 x i64> %i.oz, %broadcast.splat201
  %i.pc = lshr <2 x i64> %i.pa, %broadcast.splat201
  %i.pd = or <2 x i64> %i.ox, %i.pb
  %i.pe = or <2 x i64> %i.oy, %i.pc
  store <2 x i64> %i.pd, ptr %next.gep210.1, align 16, !tbaa !84
  store <2 x i64> %i.pe, ptr %i.az, align 16, !tbaa !84
  %wide.load211.2 = load <2 x i64>, ptr %i.ba, align 16, !tbaa !84 ; 3 uses
  %wide.load212.2 = load <2 x i64>, ptr %i.bb, align 16, !tbaa !84 ; 3 uses
  %i.pf = and <2 x i64> %wide.load211.2, %broadcast.splat203
  %i.pg = and <2 x i64> %wide.load212.2, %broadcast.splat203
  %i.ph = and <2 x i64> %wide.load211.2, %broadcast.splat205
  %i.pi = and <2 x i64> %wide.load212.2, %broadcast.splat205
  %i.pj = shl <2 x i64> %i.ph, %broadcast.splat201
  %i.pk = shl <2 x i64> %i.pi, %broadcast.splat201
  %i.pl = or <2 x i64> %i.pj, %i.pf
  %i.pm = or <2 x i64> %i.pk, %i.pg
  %i.pn = and <2 x i64> %wide.load211.2, %broadcast.splat207
  %i.po = and <2 x i64> %wide.load212.2, %broadcast.splat207
  %i.pp = lshr <2 x i64> %i.pn, %broadcast.splat201
  %i.pq = lshr <2 x i64> %i.po, %broadcast.splat201
  %i.pr = or <2 x i64> %i.pl, %i.pp
  %i.ps = or <2 x i64> %i.pm, %i.pq
  store <2 x i64> %i.pr, ptr %next.gep210.2, align 16, !tbaa !84
  store <2 x i64> %i.ps, ptr %i.bc, align 16, !tbaa !84
  %wide.load211.3 = load <2 x i64>, ptr %i.bd, align 16, !tbaa !84 ; 3 uses
  %wide.load212.3 = load <2 x i64>, ptr %i.be, align 16, !tbaa !84 ; 3 uses
  %i.pt = and <2 x i64> %wide.load211.3, %broadcast.splat203
  %i.pu = and <2 x i64> %wide.load212.3, %broadcast.splat203
  %i.pv = and <2 x i64> %wide.load211.3, %broadcast.splat205
  %i.pw = and <2 x i64> %wide.load212.3, %broadcast.splat205
  %i.px = shl <2 x i64> %i.pv, %broadcast.splat201
  %i.py = shl <2 x i64> %i.pw, %broadcast.splat201
  %i.pz = or <2 x i64> %i.px, %i.pt
  %i.qa = or <2 x i64> %i.py, %i.pu
  %i.qb = and <2 x i64> %wide.load211.3, %broadcast.splat207
  %i.qc = and <2 x i64> %wide.load212.3, %broadcast.splat207
  %i.qd = lshr <2 x i64> %i.qb, %broadcast.splat201
  %i.qe = lshr <2 x i64> %i.qc, %broadcast.splat201
  %i.qf = or <2 x i64> %i.pz, %i.qd
  %i.qg = or <2 x i64> %i.qa, %i.qe
  store <2 x i64> %i.qf, ptr %next.gep210.3, align 16, !tbaa !84
  store <2 x i64> %i.qg, ptr %i.bf, align 16, !tbaa !84
  %wide.load211.4 = load <2 x i64>, ptr %i.bg, align 16, !tbaa !84 ; 3 uses
  %wide.load212.4 = load <2 x i64>, ptr %i.bh, align 16, !tbaa !84 ; 3 uses
  %i.qh = and <2 x i64> %wide.load211.4, %broadcast.splat203
  %i.qi = and <2 x i64> %wide.load212.4, %broadcast.splat203
  %i.qj = and <2 x i64> %wide.load211.4, %broadcast.splat205
  %i.qk = and <2 x i64> %wide.load212.4, %broadcast.splat205
  %i.ql = shl <2 x i64> %i.qj, %broadcast.splat201
  %i.qm = shl <2 x i64> %i.qk, %broadcast.splat201
  %i.qn = or <2 x i64> %i.ql, %i.qh
  %i.qo = or <2 x i64> %i.qm, %i.qi
  %i.qp = and <2 x i64> %wide.load211.4, %broadcast.splat207
  %i.qq = and <2 x i64> %wide.load212.4, %broadcast.splat207
  %i.qr = lshr <2 x i64> %i.qp, %broadcast.splat201
  %i.qs = lshr <2 x i64> %i.qq, %broadcast.splat201
  %i.qt = or <2 x i64> %i.qn, %i.qr
  %i.qu = or <2 x i64> %i.qo, %i.qs
  store <2 x i64> %i.qt, ptr %next.gep210.4, align 16, !tbaa !84
end_hunk_1
