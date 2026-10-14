Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpDenseVector?download=true
inline.NumInlined: 417
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZNK5Ipopt11DenseVector7SumImplEv:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load double, ptr %i.ar, align 8, !tbaa !52
  %i.at = fadd double %i.ap, %i.as                ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !204

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %.loopexit.loopexit.unr-lcssa ]
  %.056.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.at, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %.056.epil = phi double [ %.056.epil.init, %.epil.preheader ], [ %i.aw, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.av = load double, ptr %i.au, align 8, !tbaa !52
  %i.aw = fadd double %.056.epil, %i.av           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !205

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %.preheader, %bb.b
  %.1 = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %.preheader ], [ %i.at, %.loopexit.loopexit.unr-lcssa ], [ %i.aw, %bb.d ]
  ret double %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define noundef double @_ZNK5Ipopt11DenseVector11SumLogsImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39, !range !50, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = icmp sgt i32 %i.d, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sitofp i32 %i.d to double
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load double, ptr %i.m, align 8, !tbaa !40
  %i.o = tail call double @log(double noundef %i.n) #18
  %i.p = fmul double %i.o, %i.l
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.056 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.t, %bb.d ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.r = load double, ptr %i.q, align 8, !tbaa !52
  %i.s = tail call double @log(double noundef %i.r) #18
  %i.t = fadd double %.056, %i.s                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !206

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.a, %bb.c
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.p, %bb.c ], [ 0.000000e+00, %.preheader ], [ %i.t, %bb.d ]
  ret double %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5Ipopt11DenseVector18ElementWiseSgnImplEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.g, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !52 ; 2 uses
  %wide.load15 = load <2 x double>, ptr %i.l, align 8, !tbaa !52 ; 2 uses
  %i.m = fcmp ogt <2 x double> %wide.load, zeroinitializer
  %i.n = fcmp ogt <2 x double> %wide.load15, zeroinitializer
  %i.o = fcmp olt <2 x double> %wide.load, zeroinitializer
  %i.p = fcmp olt <2 x double> %wide.load15, zeroinitializer
  %i.q = select <2 x i1> %i.o, <2 x double> splat (double -1.000000e+00), <2 x double> zeroinitializer
  %i.r = select <2 x i1> %i.p, <2 x double> splat (double -1.000000e+00), <2 x double> zeroinitializer
  %i.s = select <2 x i1> %i.m, <2 x double> splat (double 1.000000e+00), <2 x double> %i.q
  %i.t = select <2 x i1> %i.n, <2 x double> splat (double 1.000000e+00), <2 x double> %i.r
  store <2 x double> %i.s, ptr %i.k, align 8, !tbaa !52
  store <2 x double> %i.t, ptr %i.l, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit.sink.split:                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !40 ; 2 uses
  %i.x = fcmp ogt double %i.w, 0.000000e+00
  %i.y = fcmp olt double %i.w, 0.000000e+00
  %. = select i1 %i.y, double -1.000000e+00, double 0.000000e+00
  %.sink13 = select i1 %i.x, double 1.000000e+00, double %.
  store double %.sink13, ptr %i.v, align 8, !tbaa !40
  br label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !52 ; 2 uses
  %i.ab = fcmp ogt double %i.aa, 0.000000e+00
  %i.ac = fcmp olt double %i.aa, 0.000000e+00
  %.14 = select i1 %i.ac, double -1.000000e+00, double 0.000000e+00
  %.sink = select i1 %i.ab, double 1.000000e+00, double %.14
  store double %.sink, ptr %i.z, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !208

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.loopexit.sink.split, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector17AddTwoVectorsImplEdRKNS_6VectorEdS3_d(ptr noundef nonnull align 8 dereferenceable(248) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(205) %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(205) %4, double noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 15 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37   ; 116 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.cl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %1, 0.000000e+00         ; 5 uses
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 233
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39, !range !50, !noundef !51
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.n = load double, ptr %i.m, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0583 = phi ptr [ null, %bb.b ], [ %i.i, %bb.d ], [ %i.i, %bb.c ] ; 259 uses
  %.0582 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.c ] ; 4 uses
  %.1581 = phi double [ 0.000000e+00, %bb.b ], [ %i.n, %bb.d ], [ 0.000000e+00, %bb.c ]
  %.05831267 = ptrtoaddr ptr %.0583 to i64        ; 11 uses
  %i.o = fcmp oeq double %3, 0.000000e+00         ; 17 uses
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 233
  %i.s = load i8, ptr %i.r, align 1, !tbaa !39, !range !50, !noundef !51
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.v = load double, ptr %i.u, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0579 = phi ptr [ null, %bb.e ], [ %i.q, %bb.g ], [ %i.q, %bb.f ] ; 259 uses
  %.0578 = phi i1 [ false, %bb.e ], [ true, %bb.g ], [ false, %bb.f ] ; 4 uses
  %.1 = phi double [ 0.000000e+00, %bb.e ], [ %i.v, %bb.g ], [ 0.000000e+00, %bb.f ]
  %.05791268 = ptrtoaddr ptr %.0579 to i64        ; 11 uses
  %i.w = fcmp une double %5, 0.000000e+00
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.y = load i8, ptr %i.x, align 1, !tbaa !39, !range !50, !noundef !51
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %or.cond = and i1 %.0582, %i.z
  %brmerge.demorgan = and i1 %.0578, %or.cond
  br i1 %brmerge.demorgan, label %bb.l, label %.thread593

bb.j:                                             ; preds = %bb.h
  %brmerge592.demorgan = and i1 %.0582, %.0578
  br i1 %brmerge592.demorgan, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.aa, align 1, !tbaa !39
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.ab, align 1, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !40
  %i.ae = fmul double %5, %i.ad
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0576 = phi double [ %i.ae, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.af = tail call double @llvm.fmuladd.f64(double %1, double %.1581, double %.0576)
  %i.ag = tail call double @llvm.fmuladd.f64(double %3, double %.1, double %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %i.ag, ptr %i.ah, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.ai, align 8, !tbaa !38
  br label %bb.cl

bb.n:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !37 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #21
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.p, %bb.o
  %.0.i.i = phi ptr [ %i.at, %bb.p ], [ null, %bb.o ] ; 2 uses
  store ptr %.0.i.i, ptr %i.aj, align 8, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i, %bb.n
  %i.au = phi ptr [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ], [ %i.ak, %bb.n ] ; 69 uses
  %6 = ptrtoaddr ptr %i.au to i64                 ; 22 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 0, ptr %i.av, align 1, !tbaa !39
  %or.cond7 = or i1 %.0582, %.0578
  br i1 %or.cond7, label %bb.r, label %bb.s

.thread593:                                       ; preds = %bb.i
  %or.cond4594 = or i1 %.0582, %i.z
  %or.cond7595 = or i1 %.0578, %or.cond4594
  br i1 %or.cond7595, label %bb.r, label %.thread596

bb.r:                                             ; preds = %.thread593, %bb.q
  tail call void @_ZN5Ipopt6Vector17AddTwoVectorsImplEdRKS0_dS2_d(ptr noundef nonnull align 8 dereferenceable(205) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(205) %2, double noundef %3, ptr noundef nonnull align 8 dereferenceable(205) %4, double noundef %5)
  br label %bb.cl

bb.s:                                             ; preds = %bb.q
  %i.aw = fcmp oeq double %1, 1.000000e+00
  br i1 %i.aw, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  br i1 %i.o, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37
  tail call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.az, ptr noundef %.0583, i32 noundef 1, ptr noundef %i.au, i32 noundef 1)
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %i.ba = fcmp oeq double %3, 1.000000e+00
  br i1 %i.ba, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.v
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !37 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph809, label %.loopexit

.lr.ph809:                                        ; preds = %.preheader
  %wide.trip.count1117 = zext nneg i32 %i.bd to i64 ; 5 uses
  %min.iters.check1474 = icmp ult i32 %i.bd, 10
  br i1 %min.iters.check1474, label %scalar.ph1473.preheader, label %vector.memcheck1469

vector.memcheck1469:                              ; preds = %.lr.ph809
  %i.bf = sub i64 %.05831267, %6
  %diff.check1470 = icmp ugt i64 %i.bf, -32
  %i.bg = sub i64 %.05791268, %6
  %diff.check1471 = icmp ugt i64 %i.bg, -32
  %conflict.rdx1472 = or i1 %diff.check1470, %diff.check1471
  br i1 %conflict.rdx1472, label %scalar.ph1473.preheader, label %vector.ph1475

vector.ph1475:                                    ; preds = %vector.memcheck1469
  %n.vec1476 = and i64 %wide.trip.count1117, 2147483644 ; 3 uses
  br label %vector.body1477

vector.body1477:                                  ; preds = %vector.body1477, %vector.ph1475
  %index1478 = phi i64 [ 0, %vector.ph1475 ], [ %index.next1483, %vector.body1477 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1478 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load1479 = load <2 x double>, ptr %i.bh, align 8, !tbaa !52
  %wide.load1480 = load <2 x double>, ptr %i.bi, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1478 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load1481 = load <2 x double>, ptr %i.bj, align 8, !tbaa !52
  %wide.load1482 = load <2 x double>, ptr %i.bk, align 8, !tbaa !52
  %i.bl = fadd <2 x double> %wide.load1479, %wide.load1481
  %i.bm = fadd <2 x double> %wide.load1480, %wide.load1482
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1478 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x double> %i.bl, ptr %i.bn, align 8, !tbaa !52
  store <2 x double> %i.bm, ptr %i.bo, align 8, !tbaa !52
  %index.next1483 = add nuw i64 %index1478, 4     ; 2 uses
  %i.bp = icmp eq i64 %index.next1483, %n.vec1476
  br i1 %i.bp, label %middle.block1484, label %vector.body1477, !llvm.loop !209

middle.block1484:                                 ; preds = %vector.body1477
  %cmp.n1485 = icmp eq i64 %n.vec1476, %wide.trip.count1117
  br i1 %cmp.n1485, label %.loopexit, label %scalar.ph1473.preheader

scalar.ph1473.preheader:                          ; preds = %vector.memcheck1469, %.lr.ph809, %middle.block1484
  %indvars.iv1114.ph = phi i64 [ 0, %vector.memcheck1469 ], [ 0, %.lr.ph809 ], [ %n.vec1476, %middle.block1484 ] ; 3 uses
  %xtraiter2836 = and i64 %wide.trip.count1117, 3 ; 2 uses
  %lcmp.mod2837.not = icmp eq i64 %xtraiter2836, 0
  br i1 %lcmp.mod2837.not, label %scalar.ph1473.prol.loopexit, label %scalar.ph1473.prol

scalar.ph1473.prol:                               ; preds = %scalar.ph1473.preheader, %scalar.ph1473.prol
  %indvars.iv1114.prol = phi i64 [ %indvars.iv.next1115.prol, %scalar.ph1473.prol ], [ %indvars.iv1114.ph, %scalar.ph1473.preheader ] ; 4 uses
  %prol.iter2838 = phi i64 [ %prol.iter2838.next, %scalar.ph1473.prol ], [ 0, %scalar.ph1473.preheader ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1114.prol
  %i.br = load double, ptr %i.bq, align 8, !tbaa !52
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1114.prol
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !52
  %i.bu = fadd double %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1114.prol
  store double %i.bu, ptr %i.bv, align 8, !tbaa !52
  %indvars.iv.next1115.prol = add nuw nsw i64 %indvars.iv1114.prol, 1 ; 2 uses
  %prol.iter2838.next = add i64 %prol.iter2838, 1 ; 2 uses
  %prol.iter2838.cmp.not = icmp eq i64 %prol.iter2838.next, %xtraiter2836
  br i1 %prol.iter2838.cmp.not, label %scalar.ph1473.prol.loopexit, label %scalar.ph1473.prol, !llvm.loop !210

scalar.ph1473.prol.loopexit:                      ; preds = %scalar.ph1473.prol, %scalar.ph1473.preheader
  %indvars.iv1114.unr = phi i64 [ %indvars.iv1114.ph, %scalar.ph1473.preheader ], [ %indvars.iv.next1115.prol, %scalar.ph1473.prol ]
  %i.bw = sub nsw i64 %indvars.iv1114.ph, %wide.trip.count1117
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %.loopexit, label %scalar.ph1473

scalar.ph1473:                                    ; preds = %scalar.ph1473.prol.loopexit, %scalar.ph1473
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115.3, %scalar.ph1473 ], [ %indvars.iv1114.unr, %scalar.ph1473.prol.loopexit ] ; 7 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1114
  %i.bz = load double, ptr %i.by, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1114
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !52
  %i.cc = fadd double %i.bz, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1114
  store double %i.cc, ptr %i.cd, align 8, !tbaa !52
  %indvars.iv.next1115 = add nuw nsw i64 %indvars.iv1114, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1115
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !52
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1115
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !52
  %i.ci = fadd double %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1115
  store double %i.ci, ptr %i.cj, align 8, !tbaa !52
  %indvars.iv.next1115.1 = add nuw nsw i64 %indvars.iv1114, 2 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1115.1
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !52
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1115.1
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !52
  %i.co = fadd double %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1115.1
  store double %i.co, ptr %i.cp, align 8, !tbaa !52
  %indvars.iv.next1115.2 = add nuw nsw i64 %indvars.iv1114, 3 ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1115.2
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !52
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1115.2
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !52
  %i.cu = fadd double %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1115.2
  store double %i.cu, ptr %i.cv, align 8, !tbaa !52
  %indvars.iv.next1115.3 = add nuw nsw i64 %indvars.iv1114, 4 ; 2 uses
  %exitcond1118.not.3 = icmp eq i64 %indvars.iv.next1115.3, %wide.trip.count1117
  br i1 %exitcond1118.not.3, label %.loopexit, label %scalar.ph1473, !llvm.loop !211

bb.w:                                             ; preds = %bb.v
  %i.cw = fcmp oeq double %3, -1.000000e+00
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !37 ; 5 uses
  %i.da = icmp sgt i32 %i.cz, 0                   ; 2 uses
  br i1 %i.cw, label %.preheader597, label %.preheader599

.preheader599:                                    ; preds = %bb.w
  br i1 %i.da, label %.lr.ph805, label %.loopexit

.lr.ph805:                                        ; preds = %.preheader599
  %wide.trip.count1107 = zext nneg i32 %i.cz to i64 ; 5 uses
  %min.iters.check1436 = icmp ult i32 %i.cz, 8
  br i1 %min.iters.check1436, label %scalar.ph1435.preheader, label %vector.memcheck1431

vector.memcheck1431:                              ; preds = %.lr.ph805
  %i.db = sub i64 %.05831267, %6
  %diff.check1432 = icmp ugt i64 %i.db, -32
  %i.dc = sub i64 %.05791268, %6
  %diff.check1433 = icmp ugt i64 %i.dc, -32
  %conflict.rdx1434 = or i1 %diff.check1432, %diff.check1433
  br i1 %conflict.rdx1434, label %scalar.ph1435.preheader, label %vector.ph1437

vector.ph1437:                                    ; preds = %vector.memcheck1431
  %n.vec1438 = and i64 %wide.trip.count1107, 2147483644 ; 3 uses
  %broadcast.splatinsert1439 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1440 = shufflevector <2 x double> %broadcast.splatinsert1439, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1441

vector.body1441:                                  ; preds = %vector.body1441, %vector.ph1437
  %index1442 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1447, %vector.body1441 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1442 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load1443 = load <2 x double>, ptr %i.dd, align 8, !tbaa !52
  %wide.load1444 = load <2 x double>, ptr %i.de, align 8, !tbaa !52
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1442 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load1445 = load <2 x double>, ptr %i.df, align 8, !tbaa !52
  %wide.load1446 = load <2 x double>, ptr %i.dg, align 8, !tbaa !52
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1440, <2 x double> %wide.load1445, <2 x double> %wide.load1443)
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1440, <2 x double> %wide.load1446, <2 x double> %wide.load1444)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1442 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x double> %i.dh, ptr %i.dj, align 8, !tbaa !52
  store <2 x double> %i.di, ptr %i.dk, align 8, !tbaa !52
  %index.next1447 = add nuw i64 %index1442, 4     ; 2 uses
  %i.dl = icmp eq i64 %index.next1447, %n.vec1438
  br i1 %i.dl, label %middle.block1448, label %vector.body1441, !llvm.loop !212

middle.block1448:                                 ; preds = %vector.body1441
  %cmp.n1449 = icmp eq i64 %n.vec1438, %wide.trip.count1107
  br i1 %cmp.n1449, label %.loopexit, label %scalar.ph1435.preheader

scalar.ph1435.preheader:                          ; preds = %vector.memcheck1431, %.lr.ph805, %middle.block1448
  %indvars.iv1104.ph = phi i64 [ 0, %vector.memcheck1431 ], [ 0, %.lr.ph805 ], [ %n.vec1438, %middle.block1448 ] ; 6 uses
  %xtraiter2830 = and i64 %wide.trip.count1107, 1
  %lcmp.mod2831.not = icmp eq i64 %xtraiter2830, 0
  br i1 %lcmp.mod2831.not, label %scalar.ph1435.prol.loopexit, label %scalar.ph1435.prol

scalar.ph1435.prol:                               ; preds = %scalar.ph1435.preheader
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1104.ph
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !52
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1104.ph
  %i.dp = load double, ptr %i.do, align 8, !tbaa !52
  %i.dq = tail call double @llvm.fmuladd.f64(double %3, double %i.dp, double %i.dn)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1104.ph
  store double %i.dq, ptr %i.dr, align 8, !tbaa !52
  %indvars.iv.next1105.prol = or disjoint i64 %indvars.iv1104.ph, 1
  br label %scalar.ph1435.prol.loopexit

scalar.ph1435.prol.loopexit:                      ; preds = %scalar.ph1435.prol, %scalar.ph1435.preheader
  %indvars.iv1104.unr = phi i64 [ %indvars.iv1104.ph, %scalar.ph1435.preheader ], [ %indvars.iv.next1105.prol, %scalar.ph1435.prol ]
  %i.ds = add nsw i64 %wide.trip.count1107, -1
  %i.dt = icmp eq i64 %indvars.iv1104.ph, %i.ds
  br i1 %i.dt, label %.loopexit, label %scalar.ph1435

.preheader597:                                    ; preds = %bb.w
  br i1 %i.da, label %.lr.ph807, label %.loopexit

.lr.ph807:                                        ; preds = %.preheader597
  %wide.trip.count1112 = zext nneg i32 %i.cz to i64 ; 5 uses
  %min.iters.check1456 = icmp ult i32 %i.cz, 10
  br i1 %min.iters.check1456, label %scalar.ph1455.preheader, label %vector.memcheck1451

vector.memcheck1451:                              ; preds = %.lr.ph807
  %i.du = sub i64 %.05831267, %6
  %diff.check1452 = icmp ugt i64 %i.du, -32
  %i.dv = sub i64 %.05791268, %6
  %diff.check1453 = icmp ugt i64 %i.dv, -32
  %conflict.rdx1454 = or i1 %diff.check1452, %diff.check1453
  br i1 %conflict.rdx1454, label %scalar.ph1455.preheader, label %vector.ph1457

vector.ph1457:                                    ; preds = %vector.memcheck1451
  %n.vec1458 = and i64 %wide.trip.count1112, 2147483644 ; 3 uses
  br label %vector.body1459

vector.body1459:                                  ; preds = %vector.body1459, %vector.ph1457
  %index1460 = phi i64 [ 0, %vector.ph1457 ], [ %index.next1465, %vector.body1459 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1460 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load1461 = load <2 x double>, ptr %i.dw, align 8, !tbaa !52
  %wide.load1462 = load <2 x double>, ptr %i.dx, align 8, !tbaa !52
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1460 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load1463 = load <2 x double>, ptr %i.dy, align 8, !tbaa !52
  %wide.load1464 = load <2 x double>, ptr %i.dz, align 8, !tbaa !52
  %i.ea = fsub <2 x double> %wide.load1461, %wide.load1463
  %i.eb = fsub <2 x double> %wide.load1462, %wide.load1464
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1460 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <2 x double> %i.ea, ptr %i.ec, align 8, !tbaa !52
  store <2 x double> %i.eb, ptr %i.ed, align 8, !tbaa !52
  %index.next1465 = add nuw i64 %index1460, 4     ; 2 uses
  %i.ee = icmp eq i64 %index.next1465, %n.vec1458
  br i1 %i.ee, label %middle.block1466, label %vector.body1459, !llvm.loop !213

middle.block1466:                                 ; preds = %vector.body1459
  %cmp.n1467 = icmp eq i64 %n.vec1458, %wide.trip.count1112
  br i1 %cmp.n1467, label %.loopexit, label %scalar.ph1455.preheader

scalar.ph1455.preheader:                          ; preds = %vector.memcheck1451, %.lr.ph807, %middle.block1466
  %indvars.iv1109.ph = phi i64 [ 0, %vector.memcheck1451 ], [ 0, %.lr.ph807 ], [ %n.vec1458, %middle.block1466 ] ; 3 uses
  %xtraiter2833 = and i64 %wide.trip.count1112, 3 ; 2 uses
  %lcmp.mod2834.not = icmp eq i64 %xtraiter2833, 0
  br i1 %lcmp.mod2834.not, label %scalar.ph1455.prol.loopexit, label %scalar.ph1455.prol

scalar.ph1455.prol:                               ; preds = %scalar.ph1455.preheader, %scalar.ph1455.prol
  %indvars.iv1109.prol = phi i64 [ %indvars.iv.next1110.prol, %scalar.ph1455.prol ], [ %indvars.iv1109.ph, %scalar.ph1455.preheader ] ; 4 uses
  %prol.iter2835 = phi i64 [ %prol.iter2835.next, %scalar.ph1455.prol ], [ 0, %scalar.ph1455.preheader ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1109.prol
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !52
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1109.prol
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !52
  %i.ej = fsub double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1109.prol
  store double %i.ej, ptr %i.ek, align 8, !tbaa !52
  %indvars.iv.next1110.prol = add nuw nsw i64 %indvars.iv1109.prol, 1 ; 2 uses
  %prol.iter2835.next = add i64 %prol.iter2835, 1 ; 2 uses
  %prol.iter2835.cmp.not = icmp eq i64 %prol.iter2835.next, %xtraiter2833
  br i1 %prol.iter2835.cmp.not, label %scalar.ph1455.prol.loopexit, label %scalar.ph1455.prol, !llvm.loop !214

scalar.ph1455.prol.loopexit:                      ; preds = %scalar.ph1455.prol, %scalar.ph1455.preheader
  %indvars.iv1109.unr = phi i64 [ %indvars.iv1109.ph, %scalar.ph1455.preheader ], [ %indvars.iv.next1110.prol, %scalar.ph1455.prol ]
  %i.el = sub nsw i64 %indvars.iv1109.ph, %wide.trip.count1112
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %.loopexit, label %scalar.ph1455

scalar.ph1455:                                    ; preds = %scalar.ph1455.prol.loopexit, %scalar.ph1455
  %indvars.iv1109 = phi i64 [ %indvars.iv.next1110.3, %scalar.ph1455 ], [ %indvars.iv1109.unr, %scalar.ph1455.prol.loopexit ] ; 7 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1109
  %i.eo = load double, ptr %i.en, align 8, !tbaa !52
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1109
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !52
  %i.er = fsub double %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1109
  store double %i.er, ptr %i.es, align 8, !tbaa !52
  %indvars.iv.next1110 = add nuw nsw i64 %indvars.iv1109, 1 ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1110
  %i.eu = load double, ptr %i.et, align 8, !tbaa !52
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1110
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !52
  %i.ex = fsub double %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1110
  store double %i.ex, ptr %i.ey, align 8, !tbaa !52
  %indvars.iv.next1110.1 = add nuw nsw i64 %indvars.iv1109, 2 ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1110.1
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !52
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1110.1
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !52
  %i.fd = fsub double %i.fa, %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1110.1
  store double %i.fd, ptr %i.fe, align 8, !tbaa !52
  %indvars.iv.next1110.2 = add nuw nsw i64 %indvars.iv1109, 3 ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1110.2
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !52
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1110.2
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !52
  %i.fj = fsub double %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1110.2
  store double %i.fj, ptr %i.fk, align 8, !tbaa !52
  %indvars.iv.next1110.3 = add nuw nsw i64 %indvars.iv1109, 4 ; 2 uses
  %exitcond1113.not.3 = icmp eq i64 %indvars.iv.next1110.3, %wide.trip.count1112
  br i1 %exitcond1113.not.3, label %.loopexit, label %scalar.ph1455, !llvm.loop !215

scalar.ph1435:                                    ; preds = %scalar.ph1435.prol.loopexit, %scalar.ph1435
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105.1, %scalar.ph1435 ], [ %indvars.iv1104.unr, %scalar.ph1435.prol.loopexit ] ; 5 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1104
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !52
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1104
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !52
  %i.fp = tail call double @llvm.fmuladd.f64(double %3, double %i.fo, double %i.fm)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1104
  store double %i.fp, ptr %i.fq, align 8, !tbaa !52
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 1 ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1105
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !52
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1105
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !52
  %i.fv = tail call double @llvm.fmuladd.f64(double %3, double %i.fu, double %i.fs)
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1105
  store double %i.fv, ptr %i.fw, align 8, !tbaa !52
  %indvars.iv.next1105.1 = add nuw nsw i64 %indvars.iv1104, 2 ; 2 uses
  %exitcond1108.not.1 = icmp eq i64 %indvars.iv.next1105.1, %wide.trip.count1107
  br i1 %exitcond1108.not.1, label %.loopexit, label %scalar.ph1435, !llvm.loop !216

bb.x:                                             ; preds = %bb.s
  %i.fx = fcmp oeq double %1, -1.000000e+00
  br i1 %i.fx, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  br i1 %i.o, label %.preheader601, label %bb.z

.preheader601:                                    ; preds = %bb.y
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !37 ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph803, label %.loopexit

.lr.ph803:                                        ; preds = %.preheader601
  %wide.trip.count1102 = zext nneg i32 %i.ga to i64 ; 5 uses
  %min.iters.check1420 = icmp ult i32 %i.ga, 6
  %i.gc = sub i64 %.05831267, %6
  %diff.check1418.a = icmp ugt i64 %i.gc, -32
  %or.cond2749 = select i1 %min.iters.check1420, i1 true, i1 %diff.check1418.a
  br i1 %or.cond2749, label %scalar.ph1419.preheader, label %vector.ph1421.a

vector.ph1421.a:                                  ; preds = %.lr.ph803
  %n.vec1422.a = and i64 %wide.trip.count1102, 2147483644 ; 3 uses
  br label %vector.body1423.a

vector.body1423.a:                                ; preds = %vector.body1423.a, %vector.ph1421.a
  %index1424.a = phi i64 [ 0, %vector.ph1421.a ], [ %index.next1427, %vector.body1423.a ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1424.a ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load1425.a = load <2 x double>, ptr %i.gd, align 8, !tbaa !52
  %wide.load1426.a = load <2 x double>, ptr %i.ge, align 8, !tbaa !52
  %i.gf = fneg <2 x double> %wide.load1425.a
  %i.gg = fneg <2 x double> %wide.load1426.a
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1424.a ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <2 x double> %i.gf, ptr %i.gh, align 8, !tbaa !52
  store <2 x double> %i.gg, ptr %i.gi, align 8, !tbaa !52
  %index.next1427 = add nuw i64 %index1424.a, 4   ; 2 uses
  %i.gj = icmp eq i64 %index.next1427, %n.vec1422.a
  br i1 %i.gj, label %middle.block1428, label %vector.body1423.a, !llvm.loop !217

middle.block1428:                                 ; preds = %vector.body1423.a
  %cmp.n1429 = icmp eq i64 %n.vec1422.a, %wide.trip.count1102
  br i1 %cmp.n1429, label %.loopexit, label %scalar.ph1419.preheader

scalar.ph1419.preheader:                          ; preds = %.lr.ph803, %middle.block1428
  %indvars.iv1099.ph = phi i64 [ 0, %.lr.ph803 ], [ %n.vec1422.a, %middle.block1428 ] ; 3 uses
  %xtraiter2827 = and i64 %wide.trip.count1102, 3 ; 2 uses
  %lcmp.mod2828.not = icmp eq i64 %xtraiter2827, 0
  br i1 %lcmp.mod2828.not, label %scalar.ph1419.prol.loopexit, label %scalar.ph1419.prol

scalar.ph1419.prol:                               ; preds = %scalar.ph1419.preheader, %scalar.ph1419.prol
  %indvars.iv1099.prol = phi i64 [ %indvars.iv.next1100.prol, %scalar.ph1419.prol ], [ %indvars.iv1099.ph, %scalar.ph1419.preheader ] ; 3 uses
  %prol.iter2829 = phi i64 [ %prol.iter2829.next, %scalar.ph1419.prol ], [ 0, %scalar.ph1419.preheader ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1099.prol
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !52
  %i.gm = fneg double %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1099.prol
  store double %i.gm, ptr %i.gn, align 8, !tbaa !52
  %indvars.iv.next1100.prol = add nuw nsw i64 %indvars.iv1099.prol, 1 ; 2 uses
  %prol.iter2829.next = add i64 %prol.iter2829, 1 ; 2 uses
  %prol.iter2829.cmp.not = icmp eq i64 %prol.iter2829.next, %xtraiter2827
  br i1 %prol.iter2829.cmp.not, label %scalar.ph1419.prol.loopexit, label %scalar.ph1419.prol, !llvm.loop !218

scalar.ph1419.prol.loopexit:                      ; preds = %scalar.ph1419.prol, %scalar.ph1419.preheader
  %indvars.iv1099.unr = phi i64 [ %indvars.iv1099.ph, %scalar.ph1419.preheader ], [ %indvars.iv.next1100.prol, %scalar.ph1419.prol ]
  %i.go = sub nsw i64 %indvars.iv1099.ph, %wide.trip.count1102
  %i.gp = icmp ugt i64 %i.go, -4
  br i1 %i.gp, label %.loopexit, label %scalar.ph1419

scalar.ph1419:                                    ; preds = %scalar.ph1419.prol.loopexit, %scalar.ph1419
  %indvars.iv1099 = phi i64 [ %indvars.iv.next1100.3, %scalar.ph1419 ], [ %indvars.iv1099.unr, %scalar.ph1419.prol.loopexit ] ; 6 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1099
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !52
  %i.gs = fneg double %i.gr
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1099
  store double %i.gs, ptr %i.gt, align 8, !tbaa !52
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1100
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !52
  %i.gw = fneg double %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1100
  store double %i.gw, ptr %i.gx, align 8, !tbaa !52
  %indvars.iv.next1100.1 = add nuw nsw i64 %indvars.iv1099, 2 ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1100.1
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !52
  %i.ha = fneg double %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1100.1
  store double %i.ha, ptr %i.hb, align 8, !tbaa !52
  %indvars.iv.next1100.2 = add nuw nsw i64 %indvars.iv1099, 3 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1100.2
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !52
  %i.he = fneg double %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1100.2
  store double %i.he, ptr %i.hf, align 8, !tbaa !52
  %indvars.iv.next1100.3 = add nuw nsw i64 %indvars.iv1099, 4 ; 2 uses
  %exitcond1103.not.3 = icmp eq i64 %indvars.iv.next1100.3, %wide.trip.count1102
  br i1 %exitcond1103.not.3, label %.loopexit, label %scalar.ph1419, !llvm.loop !219

bb.z:                                             ; preds = %bb.y
  %i.hg = fcmp oeq double %3, 1.000000e+00
  br i1 %i.hg, label %.preheader603, label %bb.aa

.preheader603:                                    ; preds = %bb.z
  %i.hh = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !37 ; 3 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph801, label %.loopexit

.lr.ph801:                                        ; preds = %.preheader603
  %wide.trip.count1097 = zext nneg i32 %i.hj to i64 ; 5 uses
  %min.iters.check1404 = icmp ult i32 %i.hj, 10
  br i1 %min.iters.check1404, label %scalar.ph1403.preheader, label %vector.memcheck1399

vector.memcheck1399:                              ; preds = %.lr.ph801
  %i.hl = sub i64 %.05831267, %6
  %diff.check1400 = icmp ugt i64 %i.hl, -32
  %i.hm = sub i64 %.05791268, %6
  %diff.check1401 = icmp ugt i64 %i.hm, -32
  %conflict.rdx1402 = or i1 %diff.check1400, %diff.check1401
  br i1 %conflict.rdx1402, label %scalar.ph1403.preheader, label %vector.ph1405

vector.ph1405:                                    ; preds = %vector.memcheck1399
  %n.vec1406 = and i64 %wide.trip.count1097, 2147483644 ; 3 uses
  br label %vector.body1407

vector.body1407:                                  ; preds = %vector.body1407, %vector.ph1405
  %index1408 = phi i64 [ 0, %vector.ph1405 ], [ %index.next1413, %vector.body1407 ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1408 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load1409 = load <2 x double>, ptr %i.hn, align 8, !tbaa !52
  %wide.load1410 = load <2 x double>, ptr %i.ho, align 8, !tbaa !52
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1408 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load1411 = load <2 x double>, ptr %i.hp, align 8, !tbaa !52
  %wide.load1412 = load <2 x double>, ptr %i.hq, align 8, !tbaa !52
  %i.hr = fsub <2 x double> %wide.load1411, %wide.load1409
  %i.hs = fsub <2 x double> %wide.load1412, %wide.load1410
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1408 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store <2 x double> %i.hr, ptr %i.ht, align 8, !tbaa !52
  store <2 x double> %i.hs, ptr %i.hu, align 8, !tbaa !52
  %index.next1413 = add nuw i64 %index1408, 4     ; 2 uses
  %i.hv = icmp eq i64 %index.next1413, %n.vec1406
  br i1 %i.hv, label %middle.block1414, label %vector.body1407, !llvm.loop !220

middle.block1414:                                 ; preds = %vector.body1407
  %cmp.n1415 = icmp eq i64 %n.vec1406, %wide.trip.count1097
  br i1 %cmp.n1415, label %.loopexit, label %scalar.ph1403.preheader

scalar.ph1403.preheader:                          ; preds = %vector.memcheck1399, %.lr.ph801, %middle.block1414
  %indvars.iv1094.ph = phi i64 [ 0, %vector.memcheck1399 ], [ 0, %.lr.ph801 ], [ %n.vec1406, %middle.block1414 ] ; 3 uses
  %xtraiter2824 = and i64 %wide.trip.count1097, 3 ; 2 uses
  %lcmp.mod2825.not = icmp eq i64 %xtraiter2824, 0
  br i1 %lcmp.mod2825.not, label %scalar.ph1403.prol.loopexit, label %scalar.ph1403.prol

scalar.ph1403.prol:                               ; preds = %scalar.ph1403.preheader, %scalar.ph1403.prol
  %indvars.iv1094.prol = phi i64 [ %indvars.iv.next1095.prol, %scalar.ph1403.prol ], [ %indvars.iv1094.ph, %scalar.ph1403.preheader ] ; 4 uses
  %prol.iter2826 = phi i64 [ %prol.iter2826.next, %scalar.ph1403.prol ], [ 0, %scalar.ph1403.preheader ]
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1094.prol
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !52
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1094.prol
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !52
  %i.ia = fsub double %i.hz, %i.hx
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1094.prol
  store double %i.ia, ptr %i.ib, align 8, !tbaa !52
  %indvars.iv.next1095.prol = add nuw nsw i64 %indvars.iv1094.prol, 1 ; 2 uses
  %prol.iter2826.next = add i64 %prol.iter2826, 1 ; 2 uses
  %prol.iter2826.cmp.not = icmp eq i64 %prol.iter2826.next, %xtraiter2824
  br i1 %prol.iter2826.cmp.not, label %scalar.ph1403.prol.loopexit, label %scalar.ph1403.prol, !llvm.loop !221

scalar.ph1403.prol.loopexit:                      ; preds = %scalar.ph1403.prol, %scalar.ph1403.preheader
  %indvars.iv1094.unr = phi i64 [ %indvars.iv1094.ph, %scalar.ph1403.preheader ], [ %indvars.iv.next1095.prol, %scalar.ph1403.prol ]
  %i.ic = sub nsw i64 %indvars.iv1094.ph, %wide.trip.count1097
  %i.id = icmp ugt i64 %i.ic, -4
  br i1 %i.id, label %.loopexit, label %scalar.ph1403

scalar.ph1403:                                    ; preds = %scalar.ph1403.prol.loopexit, %scalar.ph1403
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095.3, %scalar.ph1403 ], [ %indvars.iv1094.unr, %scalar.ph1403.prol.loopexit ] ; 7 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1094
  %i.if = load double, ptr %i.ie, align 8, !tbaa !52
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1094
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !52
  %i.ii = fsub double %i.ih, %i.if
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1094
  store double %i.ii, ptr %i.ij, align 8, !tbaa !52
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 1 ; 3 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1095
  %i.il = load double, ptr %i.ik, align 8, !tbaa !52
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1095
  %i.in = load double, ptr %i.im, align 8, !tbaa !52
  %i.io = fsub double %i.in, %i.il
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1095
  store double %i.io, ptr %i.ip, align 8, !tbaa !52
  %indvars.iv.next1095.1 = add nuw nsw i64 %indvars.iv1094, 2 ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1095.1
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !52
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1095.1
  %i.it = load double, ptr %i.is, align 8, !tbaa !52
  %i.iu = fsub double %i.it, %i.ir
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1095.1
  store double %i.iu, ptr %i.iv, align 8, !tbaa !52
  %indvars.iv.next1095.2 = add nuw nsw i64 %indvars.iv1094, 3 ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1095.2
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !52
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1095.2
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !52
  %i.ja = fsub double %i.iz, %i.ix
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1095.2
  store double %i.ja, ptr %i.jb, align 8, !tbaa !52
  %indvars.iv.next1095.3 = add nuw nsw i64 %indvars.iv1094, 4 ; 2 uses
  %exitcond1098.not.3 = icmp eq i64 %indvars.iv.next1095.3, %wide.trip.count1097
  br i1 %exitcond1098.not.3, label %.loopexit, label %scalar.ph1403, !llvm.loop !222

bb.aa:                                            ; preds = %bb.z
  %i.jc = fcmp oeq double %3, -1.000000e+00
  %i.jd = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !37 ; 5 uses
  %i.jg = icmp sgt i32 %i.jf, 0                   ; 2 uses
  br i1 %i.jc, label %.preheader605, label %.preheader607

.preheader607:                                    ; preds = %bb.aa
  br i1 %i.jg, label %.lr.ph797, label %.loopexit

.lr.ph797:                                        ; preds = %.preheader607
  %wide.trip.count1087 = zext nneg i32 %i.jf to i64 ; 5 uses
  %min.iters.check1366 = icmp ult i32 %i.jf, 8
  br i1 %min.iters.check1366, label %scalar.ph1365.preheader, label %vector.memcheck1361

vector.memcheck1361:                              ; preds = %.lr.ph797
  %i.jh = sub i64 %.05831267, %6
  %diff.check1362 = icmp ugt i64 %i.jh, -32
  %i.ji = sub i64 %.05791268, %6
  %diff.check1363 = icmp ugt i64 %i.ji, -32
  %conflict.rdx1364 = or i1 %diff.check1362, %diff.check1363
  br i1 %conflict.rdx1364, label %scalar.ph1365.preheader, label %vector.ph1367

vector.ph1367:                                    ; preds = %vector.memcheck1361
  %n.vec1368 = and i64 %wide.trip.count1087, 2147483644 ; 3 uses
  %broadcast.splatinsert1369 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1370 = shufflevector <2 x double> %broadcast.splatinsert1369, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1371

vector.body1371:                                  ; preds = %vector.body1371, %vector.ph1367
  %index1372 = phi i64 [ 0, %vector.ph1367 ], [ %index.next1377, %vector.body1371 ] ; 4 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1372 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load1373 = load <2 x double>, ptr %i.jj, align 8, !tbaa !52
  %wide.load1374 = load <2 x double>, ptr %i.jk, align 8, !tbaa !52
  %i.jl = fneg <2 x double> %wide.load1373
  %i.jm = fneg <2 x double> %wide.load1374
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1372 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %wide.load1375 = load <2 x double>, ptr %i.jn, align 8, !tbaa !52
  %wide.load1376 = load <2 x double>, ptr %i.jo, align 8, !tbaa !52
  %i.jp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1370, <2 x double> %wide.load1375, <2 x double> %i.jl)
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1370, <2 x double> %wide.load1376, <2 x double> %i.jm)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1372 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store <2 x double> %i.jp, ptr %i.jr, align 8, !tbaa !52
  store <2 x double> %i.jq, ptr %i.js, align 8, !tbaa !52
  %index.next1377 = add nuw i64 %index1372, 4     ; 2 uses
  %i.jt = icmp eq i64 %index.next1377, %n.vec1368
  br i1 %i.jt, label %middle.block1378, label %vector.body1371, !llvm.loop !223

middle.block1378:                                 ; preds = %vector.body1371
  %cmp.n1379 = icmp eq i64 %n.vec1368, %wide.trip.count1087
  br i1 %cmp.n1379, label %.loopexit, label %scalar.ph1365.preheader

scalar.ph1365.preheader:                          ; preds = %vector.memcheck1361, %.lr.ph797, %middle.block1378
  %indvars.iv1084.ph = phi i64 [ 0, %vector.memcheck1361 ], [ 0, %.lr.ph797 ], [ %n.vec1368, %middle.block1378 ] ; 6 uses
  %xtraiter2818 = and i64 %wide.trip.count1087, 1
  %lcmp.mod2819.not = icmp eq i64 %xtraiter2818, 0
  br i1 %lcmp.mod2819.not, label %scalar.ph1365.prol.loopexit, label %scalar.ph1365.prol

scalar.ph1365.prol:                               ; preds = %scalar.ph1365.preheader
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1084.ph
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !52
  %i.jw = fneg double %i.jv
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1084.ph
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !52
  %i.jz = tail call double @llvm.fmuladd.f64(double %3, double %i.jy, double %i.jw)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1084.ph
  store double %i.jz, ptr %i.ka, align 8, !tbaa !52
  %indvars.iv.next1085.prol = or disjoint i64 %indvars.iv1084.ph, 1
  br label %scalar.ph1365.prol.loopexit

scalar.ph1365.prol.loopexit:                      ; preds = %scalar.ph1365.prol, %scalar.ph1365.preheader
  %indvars.iv1084.unr = phi i64 [ %indvars.iv1084.ph, %scalar.ph1365.preheader ], [ %indvars.iv.next1085.prol, %scalar.ph1365.prol ]
  %i.kb = add nsw i64 %wide.trip.count1087, -1
  %i.kc = icmp eq i64 %indvars.iv1084.ph, %i.kb
  br i1 %i.kc, label %.loopexit, label %scalar.ph1365

.preheader605:                                    ; preds = %bb.aa
  br i1 %i.jg, label %.lr.ph799, label %.loopexit

.lr.ph799:                                        ; preds = %.preheader605
  %wide.trip.count1092 = zext nneg i32 %i.jf to i64 ; 5 uses
  %min.iters.check1386 = icmp ult i32 %i.jf, 10
  br i1 %min.iters.check1386, label %scalar.ph1385.preheader, label %vector.memcheck1381

vector.memcheck1381:                              ; preds = %.lr.ph799
  %i.kd = sub i64 %.05831267, %6
  %diff.check1382 = icmp ugt i64 %i.kd, -32
  %i.ke = sub i64 %.05791268, %6
  %diff.check1383 = icmp ugt i64 %i.ke, -32
  %conflict.rdx1384 = or i1 %diff.check1382, %diff.check1383
  br i1 %conflict.rdx1384, label %scalar.ph1385.preheader, label %vector.ph1387

vector.ph1387:                                    ; preds = %vector.memcheck1381
  %n.vec1388 = and i64 %wide.trip.count1092, 2147483644 ; 3 uses
  br label %vector.body1389

vector.body1389:                                  ; preds = %vector.body1389, %vector.ph1387
  %index1390 = phi i64 [ 0, %vector.ph1387 ], [ %index.next1395, %vector.body1389 ] ; 4 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1390 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %wide.load1391 = load <2 x double>, ptr %i.kf, align 8, !tbaa !52
  %wide.load1392 = load <2 x double>, ptr %i.kg, align 8, !tbaa !52
  %i.kh = fneg <2 x double> %wide.load1391
  %i.ki = fneg <2 x double> %wide.load1392
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1390 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load1393 = load <2 x double>, ptr %i.kj, align 8, !tbaa !52
  %wide.load1394 = load <2 x double>, ptr %i.kk, align 8, !tbaa !52
  %i.kl = fsub <2 x double> %i.kh, %wide.load1393
  %i.km = fsub <2 x double> %i.ki, %wide.load1394
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1390 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store <2 x double> %i.kl, ptr %i.kn, align 8, !tbaa !52
  store <2 x double> %i.km, ptr %i.ko, align 8, !tbaa !52
  %index.next1395 = add nuw i64 %index1390, 4     ; 2 uses
  %i.kp = icmp eq i64 %index.next1395, %n.vec1388
  br i1 %i.kp, label %middle.block1396, label %vector.body1389, !llvm.loop !224

middle.block1396:                                 ; preds = %vector.body1389
  %cmp.n1397 = icmp eq i64 %n.vec1388, %wide.trip.count1092
  br i1 %cmp.n1397, label %.loopexit, label %scalar.ph1385.preheader

scalar.ph1385.preheader:                          ; preds = %vector.memcheck1381, %.lr.ph799, %middle.block1396
  %indvars.iv1089.ph = phi i64 [ 0, %vector.memcheck1381 ], [ 0, %.lr.ph799 ], [ %n.vec1388, %middle.block1396 ] ; 6 uses
  %xtraiter2821 = and i64 %wide.trip.count1092, 1
  %lcmp.mod2822.not = icmp eq i64 %xtraiter2821, 0
  br i1 %lcmp.mod2822.not, label %scalar.ph1385.prol.loopexit, label %scalar.ph1385.prol

scalar.ph1385.prol:                               ; preds = %scalar.ph1385.preheader
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1089.ph
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !52
  %i.ks = fneg double %i.kr
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1089.ph
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !52
  %i.kv = fsub double %i.ks, %i.ku
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1089.ph
  store double %i.kv, ptr %i.kw, align 8, !tbaa !52
  %indvars.iv.next1090.prol = or disjoint i64 %indvars.iv1089.ph, 1
  br label %scalar.ph1385.prol.loopexit

scalar.ph1385.prol.loopexit:                      ; preds = %scalar.ph1385.prol, %scalar.ph1385.preheader
  %indvars.iv1089.unr = phi i64 [ %indvars.iv1089.ph, %scalar.ph1385.preheader ], [ %indvars.iv.next1090.prol, %scalar.ph1385.prol ]
  %i.kx = add nsw i64 %wide.trip.count1092, -1
  %i.ky = icmp eq i64 %indvars.iv1089.ph, %i.kx
  br i1 %i.ky, label %.loopexit, label %scalar.ph1385

scalar.ph1385:                                    ; preds = %scalar.ph1385.prol.loopexit, %scalar.ph1385
  %indvars.iv1089 = phi i64 [ %indvars.iv.next1090.1, %scalar.ph1385 ], [ %indvars.iv1089.unr, %scalar.ph1385.prol.loopexit ] ; 5 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1089
  %i.la = load double, ptr %i.kz, align 8, !tbaa !52
  %i.lb = fneg double %i.la
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1089
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !52
  %i.le = fsub double %i.lb, %i.ld
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1089
  store double %i.le, ptr %i.lf, align 8, !tbaa !52
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 1 ; 3 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1090
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !52
  %i.li = fneg double %i.lh
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1090
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !52
  %i.ll = fsub double %i.li, %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1090
  store double %i.ll, ptr %i.lm, align 8, !tbaa !52
  %indvars.iv.next1090.1 = add nuw nsw i64 %indvars.iv1089, 2 ; 2 uses
  %exitcond1093.not.1 = icmp eq i64 %indvars.iv.next1090.1, %wide.trip.count1092
  br i1 %exitcond1093.not.1, label %.loopexit, label %scalar.ph1385, !llvm.loop !225

scalar.ph1365:                                    ; preds = %scalar.ph1365.prol.loopexit, %scalar.ph1365
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085.1, %scalar.ph1365 ], [ %indvars.iv1084.unr, %scalar.ph1365.prol.loopexit ] ; 5 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1084
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !52
  %i.lp = fneg double %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1084
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !52
  %i.ls = tail call double @llvm.fmuladd.f64(double %3, double %i.lr, double %i.lp)
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1084
  store double %i.ls, ptr %i.lt, align 8, !tbaa !52
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 1 ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1085
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !52
  %i.lw = fneg double %i.lv
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1085
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !52
  %i.lz = tail call double @llvm.fmuladd.f64(double %3, double %i.ly, double %i.lw)
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1085
  store double %i.lz, ptr %i.ma, align 8, !tbaa !52
  %indvars.iv.next1085.1 = add nuw nsw i64 %indvars.iv1084, 2 ; 2 uses
  %exitcond1088.not.1 = icmp eq i64 %indvars.iv.next1085.1, %wide.trip.count1087
  br i1 %exitcond1088.not.1, label %.loopexit, label %scalar.ph1365, !llvm.loop !226

bb.ab:                                            ; preds = %bb.x
  br i1 %i.g, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.o, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !52
  %i.mb = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 12
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !37
  call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.md, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef %i.au, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.me = fcmp oeq double %3, 1.000000e+00
  br i1 %i.me, label %.preheader609, label %bb.af

.preheader609:                                    ; preds = %bb.ae
  %i.mf = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 12
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !37 ; 2 uses
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph795, label %.loopexit

.lr.ph795:                                        ; preds = %.preheader609, %.lr.ph795
  %i.mj = phi i32 [ %i.mo, %.lr.ph795 ], [ %i.mh, %.preheader609 ]
  %.0568794 = phi i32 [ %i.ml, %.lr.ph795 ], [ 0, %.preheader609 ]
  %i.mk = load ptr, ptr %i.aj, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.mj, ptr noundef %.0579, i32 noundef 1, ptr noundef %i.mk, i32 noundef 1)
  %i.ml = add nuw nsw i32 %.0568794, 1            ; 2 uses
  %i.mm = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !37 ; 2 uses
  %i.mp = icmp slt i32 %i.ml, %i.mo
  br i1 %i.mp, label %.lr.ph795, label %.loopexit, !llvm.loop !227

bb.af:                                            ; preds = %bb.ae
  %i.mq = fcmp oeq double %3, -1.000000e+00
  %i.mr = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !37 ; 5 uses
  %i.mu = icmp sgt i32 %i.mt, 0                   ; 2 uses
  br i1 %i.mq, label %.preheader611, label %.preheader613

.preheader613:                                    ; preds = %bb.af
  br i1 %i.mu, label %.lr.ph791, label %.loopexit

.lr.ph791:                                        ; preds = %.preheader613
  %wide.trip.count1077 = zext nneg i32 %i.mt to i64 ; 5 uses
  %min.iters.check1334 = icmp ult i32 %i.mt, 6
  %i.mv = sub i64 %.05791268, %6
  %diff.check1332 = icmp ugt i64 %i.mv, -32
  %or.cond2750 = select i1 %min.iters.check1334, i1 true, i1 %diff.check1332
  br i1 %or.cond2750, label %scalar.ph1333.preheader, label %vector.ph1335.a

vector.ph1335.a:                                  ; preds = %.lr.ph791
  %n.vec1336.a = and i64 %wide.trip.count1077, 2147483644 ; 3 uses
  %broadcast.splatinsert1337.a = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat1338.a = shufflevector <2 x double> %broadcast.splatinsert1337.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1339.a

vector.body1339.a:                                ; preds = %vector.body1339.a, %vector.ph1335.a
  %index1340.a = phi i64 [ 0, %vector.ph1335.a ], [ %index.next1343.a, %vector.body1339.a ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1340.a ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load1341.a = load <2 x double>, ptr %i.mw, align 8, !tbaa !52
  %wide.load1342.a = load <2 x double>, ptr %i.mx, align 8, !tbaa !52
  %i.my = fmul <2 x double> %broadcast.splat1338.a, %wide.load1341.a
  %i.mz = fmul <2 x double> %broadcast.splat1338.a, %wide.load1342.a
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1340.a ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store <2 x double> %i.my, ptr %i.na, align 8, !tbaa !52
  store <2 x double> %i.mz, ptr %i.nb, align 8, !tbaa !52
  %index.next1343.a = add nuw i64 %index1340.a, 4 ; 2 uses
  %i.nc = icmp eq i64 %index.next1343.a, %n.vec1336.a
  br i1 %i.nc, label %middle.block1344.a, label %vector.body1339.a, !llvm.loop !228

middle.block1344.a:                               ; preds = %vector.body1339.a
  %cmp.n1345.a = icmp eq i64 %n.vec1336.a, %wide.trip.count1077
  br i1 %cmp.n1345.a, label %.loopexit, label %scalar.ph1333.preheader

scalar.ph1333.preheader:                          ; preds = %.lr.ph791, %middle.block1344.a
  %indvars.iv1074.ph = phi i64 [ 0, %.lr.ph791 ], [ %n.vec1336.a, %middle.block1344.a ] ; 3 uses
  %xtraiter2812 = and i64 %wide.trip.count1077, 3 ; 2 uses
  %lcmp.mod2813.not = icmp eq i64 %xtraiter2812, 0
  br i1 %lcmp.mod2813.not, label %scalar.ph1333.prol.loopexit, label %scalar.ph1333.prol

scalar.ph1333.prol:                               ; preds = %scalar.ph1333.preheader, %scalar.ph1333.prol
  %indvars.iv1074.prol = phi i64 [ %indvars.iv.next1075.prol, %scalar.ph1333.prol ], [ %indvars.iv1074.ph, %scalar.ph1333.preheader ] ; 3 uses
  %prol.iter2814 = phi i64 [ %prol.iter2814.next, %scalar.ph1333.prol ], [ 0, %scalar.ph1333.preheader ]
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1074.prol
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !52
  %i.nf = fmul double %3, %i.ne
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1074.prol
  store double %i.nf, ptr %i.ng, align 8, !tbaa !52
  %indvars.iv.next1075.prol = add nuw nsw i64 %indvars.iv1074.prol, 1 ; 2 uses
  %prol.iter2814.next = add i64 %prol.iter2814, 1 ; 2 uses
  %prol.iter2814.cmp.not = icmp eq i64 %prol.iter2814.next, %xtraiter2812
  br i1 %prol.iter2814.cmp.not, label %scalar.ph1333.prol.loopexit, label %scalar.ph1333.prol, !llvm.loop !229

scalar.ph1333.prol.loopexit:                      ; preds = %scalar.ph1333.prol, %scalar.ph1333.preheader
  %indvars.iv1074.unr = phi i64 [ %indvars.iv1074.ph, %scalar.ph1333.preheader ], [ %indvars.iv.next1075.prol, %scalar.ph1333.prol ]
  %i.nh = sub nsw i64 %indvars.iv1074.ph, %wide.trip.count1077
  %i.ni = icmp ugt i64 %i.nh, -4
  br i1 %i.ni, label %.loopexit, label %scalar.ph1333

.preheader611:                                    ; preds = %bb.af
  br i1 %i.mu, label %.lr.ph793, label %.loopexit

.lr.ph793:                                        ; preds = %.preheader611
  %wide.trip.count1082 = zext nneg i32 %i.mt to i64 ; 5 uses
  %min.iters.check1350 = icmp ult i32 %i.mt, 6
  %i.nj = sub i64 %.05791268, %6
  %diff.check1348 = icmp ugt i64 %i.nj, -32
  %or.cond2751 = select i1 %min.iters.check1350, i1 true, i1 %diff.check1348
  br i1 %or.cond2751, label %scalar.ph1349.preheader, label %vector.ph1351

vector.ph1351:                                    ; preds = %.lr.ph793
  %n.vec1352 = and i64 %wide.trip.count1082, 2147483644 ; 3 uses
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %vector.ph1351
  %index1354 = phi i64 [ 0, %vector.ph1351 ], [ %index.next1357, %vector.body1353 ] ; 3 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1354 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %wide.load1355 = load <2 x double>, ptr %i.nk, align 8, !tbaa !52
  %wide.load1356 = load <2 x double>, ptr %i.nl, align 8, !tbaa !52
  %i.nm = fneg <2 x double> %wide.load1355
  %i.nn = fneg <2 x double> %wide.load1356
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1354 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store <2 x double> %i.nm, ptr %i.no, align 8, !tbaa !52
  store <2 x double> %i.nn, ptr %i.np, align 8, !tbaa !52
  %index.next1357 = add nuw i64 %index1354, 4     ; 2 uses
  %i.nq = icmp eq i64 %index.next1357, %n.vec1352
  br i1 %i.nq, label %middle.block1358, label %vector.body1353, !llvm.loop !230

middle.block1358:                                 ; preds = %vector.body1353
  %cmp.n1359 = icmp eq i64 %n.vec1352, %wide.trip.count1082
  br i1 %cmp.n1359, label %.loopexit, label %scalar.ph1349.preheader

scalar.ph1349.preheader:                          ; preds = %.lr.ph793, %middle.block1358
  %indvars.iv1079.ph = phi i64 [ 0, %.lr.ph793 ], [ %n.vec1352, %middle.block1358 ] ; 3 uses
  %xtraiter2815 = and i64 %wide.trip.count1082, 3 ; 2 uses
  %lcmp.mod2816.not = icmp eq i64 %xtraiter2815, 0
  br i1 %lcmp.mod2816.not, label %scalar.ph1349.prol.loopexit, label %scalar.ph1349.prol

scalar.ph1349.prol:                               ; preds = %scalar.ph1349.preheader, %scalar.ph1349.prol
  %indvars.iv1079.prol = phi i64 [ %indvars.iv.next1080.prol, %scalar.ph1349.prol ], [ %indvars.iv1079.ph, %scalar.ph1349.preheader ] ; 3 uses
  %prol.iter2817 = phi i64 [ %prol.iter2817.next, %scalar.ph1349.prol ], [ 0, %scalar.ph1349.preheader ]
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1079.prol
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !52
  %i.nt = fneg double %i.ns
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1079.prol
  store double %i.nt, ptr %i.nu, align 8, !tbaa !52
  %indvars.iv.next1080.prol = add nuw nsw i64 %indvars.iv1079.prol, 1 ; 2 uses
  %prol.iter2817.next = add i64 %prol.iter2817, 1 ; 2 uses
  %prol.iter2817.cmp.not = icmp eq i64 %prol.iter2817.next, %xtraiter2815
  br i1 %prol.iter2817.cmp.not, label %scalar.ph1349.prol.loopexit, label %scalar.ph1349.prol, !llvm.loop !231

scalar.ph1349.prol.loopexit:                      ; preds = %scalar.ph1349.prol, %scalar.ph1349.preheader
  %indvars.iv1079.unr = phi i64 [ %indvars.iv1079.ph, %scalar.ph1349.preheader ], [ %indvars.iv.next1080.prol, %scalar.ph1349.prol ]
  %i.nv = sub nsw i64 %indvars.iv1079.ph, %wide.trip.count1082
  %i.nw = icmp ugt i64 %i.nv, -4
  br i1 %i.nw, label %.loopexit, label %scalar.ph1349

scalar.ph1349:                                    ; preds = %scalar.ph1349.prol.loopexit, %scalar.ph1349
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080.3, %scalar.ph1349 ], [ %indvars.iv1079.unr, %scalar.ph1349.prol.loopexit ] ; 6 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1079
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !52
  %i.nz = fneg double %i.ny
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1079
  store double %i.nz, ptr %i.oa, align 8, !tbaa !52
  %indvars.iv.next1080 = add nuw nsw i64 %indvars.iv1079, 1 ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1080
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !52
  %i.od = fneg double %i.oc
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1080
  store double %i.od, ptr %i.oe, align 8, !tbaa !52
  %indvars.iv.next1080.1 = add nuw nsw i64 %indvars.iv1079, 2 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1080.1
  %i.og = load double, ptr %i.of, align 8, !tbaa !52
  %i.oh = fneg double %i.og
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1080.1
  store double %i.oh, ptr %i.oi, align 8, !tbaa !52
  %indvars.iv.next1080.2 = add nuw nsw i64 %indvars.iv1079, 3 ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1080.2
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !52
  %i.ol = fneg double %i.ok
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1080.2
  store double %i.ol, ptr %i.om, align 8, !tbaa !52
  %indvars.iv.next1080.3 = add nuw nsw i64 %indvars.iv1079, 4 ; 2 uses
  %exitcond1083.not.3 = icmp eq i64 %indvars.iv.next1080.3, %wide.trip.count1082
  br i1 %exitcond1083.not.3, label %.loopexit, label %scalar.ph1349, !llvm.loop !232

scalar.ph1333:                                    ; preds = %scalar.ph1333.prol.loopexit, %scalar.ph1333
  %indvars.iv1074 = phi i64 [ %indvars.iv.next1075.3, %scalar.ph1333 ], [ %indvars.iv1074.unr, %scalar.ph1333.prol.loopexit ] ; 6 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1074
  %i.oo = load double, ptr %i.on, align 8, !tbaa !52
  %i.op = fmul double %3, %i.oo
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1074
  store double %i.op, ptr %i.oq, align 8, !tbaa !52
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 1 ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1075
  %i.os = load double, ptr %i.or, align 8, !tbaa !52
  %i.ot = fmul double %3, %i.os
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1075
  store double %i.ot, ptr %i.ou, align 8, !tbaa !52
  %indvars.iv.next1075.1 = add nuw nsw i64 %indvars.iv1074, 2 ; 2 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1075.1
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !52
  %i.ox = fmul double %3, %i.ow
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1075.1
  store double %i.ox, ptr %i.oy, align 8, !tbaa !52
  %indvars.iv.next1075.2 = add nuw nsw i64 %indvars.iv1074, 3 ; 2 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1075.2
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !52
  %i.pb = fmul double %3, %i.pa
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1075.2
  store double %i.pb, ptr %i.pc, align 8, !tbaa !52
  %indvars.iv.next1075.3 = add nuw nsw i64 %indvars.iv1074, 4 ; 2 uses
  %exitcond1078.not.3 = icmp eq i64 %indvars.iv.next1075.3, %wide.trip.count1077
  br i1 %exitcond1078.not.3, label %.loopexit, label %scalar.ph1333, !llvm.loop !233

bb.ag:                                            ; preds = %bb.ab
  br i1 %i.o, label %.preheader615, label %bb.ah

.preheader615:                                    ; preds = %bb.ag
  %i.pd = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !37 ; 3 uses
  %i.pg = icmp sgt i32 %i.pf, 0
  br i1 %i.pg, label %.lr.ph789, label %.loopexit

.lr.ph789:                                        ; preds = %.preheader615
  %wide.trip.count1072 = zext nneg i32 %i.pf to i64 ; 5 uses
  %min.iters.check1318 = icmp ult i32 %i.pf, 6
  %i.ph = sub i64 %.05831267, %6
  %diff.check1316 = icmp ugt i64 %i.ph, -32
  %or.cond2752 = select i1 %min.iters.check1318, i1 true, i1 %diff.check1316
  br i1 %or.cond2752, label %scalar.ph1317.preheader, label %vector.ph1319

vector.ph1319:                                    ; preds = %.lr.ph789
  %n.vec1320 = and i64 %wide.trip.count1072, 2147483644 ; 3 uses
  %broadcast.splatinsert1321 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat1322 = shufflevector <2 x double> %broadcast.splatinsert1321, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1319
  %index1324 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1327, %vector.body1323 ] ; 3 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1324 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %wide.load1325 = load <2 x double>, ptr %i.pi, align 8, !tbaa !52
  %wide.load1326 = load <2 x double>, ptr %i.pj, align 8, !tbaa !52
  %i.pk = fmul <2 x double> %broadcast.splat1322, %wide.load1325
  %i.pl = fmul <2 x double> %broadcast.splat1322, %wide.load1326
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1324 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store <2 x double> %i.pk, ptr %i.pm, align 8, !tbaa !52
  store <2 x double> %i.pl, ptr %i.pn, align 8, !tbaa !52
  %index.next1327 = add nuw i64 %index1324, 4     ; 2 uses
  %i.po = icmp eq i64 %index.next1327, %n.vec1320
  br i1 %i.po, label %middle.block1328, label %vector.body1323, !llvm.loop !234

middle.block1328:                                 ; preds = %vector.body1323
  %cmp.n1329 = icmp eq i64 %n.vec1320, %wide.trip.count1072
  br i1 %cmp.n1329, label %.loopexit, label %scalar.ph1317.preheader

scalar.ph1317.preheader:                          ; preds = %.lr.ph789, %middle.block1328
  %indvars.iv1069.ph = phi i64 [ 0, %.lr.ph789 ], [ %n.vec1320, %middle.block1328 ] ; 3 uses
  %xtraiter2810 = and i64 %wide.trip.count1072, 3 ; 2 uses
  %lcmp.mod2811.not = icmp eq i64 %xtraiter2810, 0
  br i1 %lcmp.mod2811.not, label %scalar.ph1317.prol.loopexit, label %scalar.ph1317.prol

scalar.ph1317.prol:                               ; preds = %scalar.ph1317.preheader, %scalar.ph1317.prol
  %indvars.iv1069.prol = phi i64 [ %indvars.iv.next1070.prol, %scalar.ph1317.prol ], [ %indvars.iv1069.ph, %scalar.ph1317.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1317.prol ], [ 0, %scalar.ph1317.preheader ]
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1069.prol
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !52
  %i.pr = fmul double %1, %i.pq
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1069.prol
  store double %i.pr, ptr %i.ps, align 8, !tbaa !52
  %indvars.iv.next1070.prol = add nuw nsw i64 %indvars.iv1069.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2810
  br i1 %prol.iter.cmp.not, label %scalar.ph1317.prol.loopexit, label %scalar.ph1317.prol, !llvm.loop !235

scalar.ph1317.prol.loopexit:                      ; preds = %scalar.ph1317.prol, %scalar.ph1317.preheader
  %indvars.iv1069.unr = phi i64 [ %indvars.iv1069.ph, %scalar.ph1317.preheader ], [ %indvars.iv.next1070.prol, %scalar.ph1317.prol ]
  %i.pt = sub nsw i64 %indvars.iv1069.ph, %wide.trip.count1072
  %i.pu = icmp ugt i64 %i.pt, -4
  br i1 %i.pu, label %.loopexit, label %scalar.ph1317

scalar.ph1317:                                    ; preds = %scalar.ph1317.prol.loopexit, %scalar.ph1317
  %indvars.iv1069 = phi i64 [ %indvars.iv.next1070.3, %scalar.ph1317 ], [ %indvars.iv1069.unr, %scalar.ph1317.prol.loopexit ] ; 6 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1069
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !52
  %i.px = fmul double %1, %i.pw
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1069
  store double %i.px, ptr %i.py, align 8, !tbaa !52
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 1 ; 2 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1070
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !52
  %i.qb = fmul double %1, %i.qa
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1070
  store double %i.qb, ptr %i.qc, align 8, !tbaa !52
  %indvars.iv.next1070.1 = add nuw nsw i64 %indvars.iv1069, 2 ; 2 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1070.1
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !52
  %i.qf = fmul double %1, %i.qe
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1070.1
  store double %i.qf, ptr %i.qg, align 8, !tbaa !52
  %indvars.iv.next1070.2 = add nuw nsw i64 %indvars.iv1069, 3 ; 2 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1070.2
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !52
  %i.qj = fmul double %1, %i.qi
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1070.2
  store double %i.qj, ptr %i.qk, align 8, !tbaa !52
  %indvars.iv.next1070.3 = add nuw nsw i64 %indvars.iv1069, 4 ; 2 uses
  %exitcond1073.not.3 = icmp eq i64 %indvars.iv.next1070.3, %wide.trip.count1072
  br i1 %exitcond1073.not.3, label %.loopexit, label %scalar.ph1317, !llvm.loop !236

bb.ah:                                            ; preds = %bb.ag
  %i.ql = fcmp oeq double %3, 1.000000e+00
  br i1 %i.ql, label %.preheader617, label %bb.ai

.preheader617:                                    ; preds = %bb.ah
  %i.qm = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !37 ; 3 uses
  %i.qp = icmp sgt i32 %i.qo, 0
  br i1 %i.qp, label %.lr.ph787, label %.loopexit

.lr.ph787:                                        ; preds = %.preheader617
  %wide.trip.count1067 = zext nneg i32 %i.qo to i64 ; 5 uses
  %min.iters.check1300 = icmp ult i32 %i.qo, 8
  br i1 %min.iters.check1300, label %scalar.ph1299.preheader, label %vector.memcheck1295

vector.memcheck1295:                              ; preds = %.lr.ph787
  %i.qq = sub i64 %.05831267, %6
  %diff.check1296 = icmp ugt i64 %i.qq, -32
  %i.qr = sub i64 %.05791268, %6
  %diff.check1297 = icmp ugt i64 %i.qr, -32
  %conflict.rdx1298 = or i1 %diff.check1296, %diff.check1297
  br i1 %conflict.rdx1298, label %scalar.ph1299.preheader, label %vector.ph1301

vector.ph1301:                                    ; preds = %vector.memcheck1295
  %n.vec1302 = and i64 %wide.trip.count1067, 2147483644 ; 3 uses
  %broadcast.splatinsert1303 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat1304 = shufflevector <2 x double> %broadcast.splatinsert1303, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %vector.ph1301
  %index1306 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1311, %vector.body1305 ] ; 4 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1306 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %wide.load1307 = load <2 x double>, ptr %i.qs, align 8, !tbaa !52
  %wide.load1308 = load <2 x double>, ptr %i.qt, align 8, !tbaa !52
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1306 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %wide.load1309 = load <2 x double>, ptr %i.qu, align 8, !tbaa !52
  %wide.load1310 = load <2 x double>, ptr %i.qv, align 8, !tbaa !52
  %i.qw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1304, <2 x double> %wide.load1307, <2 x double> %wide.load1309)
  %i.qx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1304, <2 x double> %wide.load1308, <2 x double> %wide.load1310)
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1306 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store <2 x double> %i.qw, ptr %i.qy, align 8, !tbaa !52
  store <2 x double> %i.qx, ptr %i.qz, align 8, !tbaa !52
  %index.next1311 = add nuw i64 %index1306, 4     ; 2 uses
  %i.ra = icmp eq i64 %index.next1311, %n.vec1302
  br i1 %i.ra, label %middle.block1312, label %vector.body1305, !llvm.loop !237

middle.block1312:                                 ; preds = %vector.body1305
  %cmp.n1313 = icmp eq i64 %n.vec1302, %wide.trip.count1067
  br i1 %cmp.n1313, label %.loopexit, label %scalar.ph1299.preheader

scalar.ph1299.preheader:                          ; preds = %vector.memcheck1295, %.lr.ph787, %middle.block1312
  %indvars.iv1064.ph = phi i64 [ 0, %vector.memcheck1295 ], [ 0, %.lr.ph787 ], [ %n.vec1302, %middle.block1312 ] ; 6 uses
  %xtraiter2808 = and i64 %wide.trip.count1067, 1
  %lcmp.mod2809.not = icmp eq i64 %xtraiter2808, 0
  br i1 %lcmp.mod2809.not, label %scalar.ph1299.prol.loopexit, label %scalar.ph1299.prol

scalar.ph1299.prol:                               ; preds = %scalar.ph1299.preheader
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1064.ph
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !52
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1064.ph
  %i.re = load double, ptr %i.rd, align 8, !tbaa !52
  %i.rf = tail call double @llvm.fmuladd.f64(double %1, double %i.rc, double %i.re)
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1064.ph
  store double %i.rf, ptr %i.rg, align 8, !tbaa !52
  %indvars.iv.next1065.prol = or disjoint i64 %indvars.iv1064.ph, 1
  br label %scalar.ph1299.prol.loopexit

scalar.ph1299.prol.loopexit:                      ; preds = %scalar.ph1299.prol, %scalar.ph1299.preheader
  %indvars.iv1064.unr = phi i64 [ %indvars.iv1064.ph, %scalar.ph1299.preheader ], [ %indvars.iv.next1065.prol, %scalar.ph1299.prol ]
  %i.rh = add nsw i64 %wide.trip.count1067, -1
  %i.ri = icmp eq i64 %indvars.iv1064.ph, %i.rh
  br i1 %i.ri, label %.loopexit, label %scalar.ph1299

scalar.ph1299:                                    ; preds = %scalar.ph1299.prol.loopexit, %scalar.ph1299
  %indvars.iv1064 = phi i64 [ %indvars.iv.next1065.1, %scalar.ph1299 ], [ %indvars.iv1064.unr, %scalar.ph1299.prol.loopexit ] ; 5 uses
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1064
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !52
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1064
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !52
  %i.rn = tail call double @llvm.fmuladd.f64(double %1, double %i.rk, double %i.rm)
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1064
  store double %i.rn, ptr %i.ro, align 8, !tbaa !52
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 1 ; 3 uses
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1065
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !52
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1065
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !52
  %i.rt = tail call double @llvm.fmuladd.f64(double %1, double %i.rq, double %i.rs)
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1065
  store double %i.rt, ptr %i.ru, align 8, !tbaa !52
  %indvars.iv.next1065.1 = add nuw nsw i64 %indvars.iv1064, 2 ; 2 uses
  %exitcond1068.not.1 = icmp eq i64 %indvars.iv.next1065.1, %wide.trip.count1067
  br i1 %exitcond1068.not.1, label %.loopexit, label %scalar.ph1299, !llvm.loop !238

bb.ai:                                            ; preds = %bb.ah
  %i.rv = fcmp oeq double %3, -1.000000e+00
  %i.rw = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 12
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !37 ; 5 uses
  %i.rz = icmp sgt i32 %i.ry, 0                   ; 2 uses
  br i1 %i.rv, label %.preheader619, label %.preheader621

.preheader621:                                    ; preds = %bb.ai
  br i1 %i.rz, label %.lr.ph783, label %.loopexit

.lr.ph783:                                        ; preds = %.preheader621
  %wide.trip.count1057 = zext nneg i32 %i.ry to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ry, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph783
  %i.sa = sub i64 %.05831267, %6
  %diff.check = icmp ugt i64 %i.sa, -32
  %i.sb = sub i64 %.05791268, %6
  %diff.check1269 = icmp ugt i64 %i.sb, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1269
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count1057, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1270 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat1271 = shufflevector <2 x double> %broadcast.splatinsert1270, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  %wide.load = load <2 x double>, ptr %i.sc, align 8, !tbaa !52
  %wide.load1272 = load <2 x double>, ptr %i.sd, align 8, !tbaa !52
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %wide.load1273 = load <2 x double>, ptr %i.se, align 8, !tbaa !52
  %wide.load1274 = load <2 x double>, ptr %i.sf, align 8, !tbaa !52
  %i.sg = fmul <2 x double> %broadcast.splat, %wide.load1273
  %i.sh = fmul <2 x double> %broadcast.splat, %wide.load1274
  %i.si = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1271, <2 x double> %wide.load, <2 x double> %i.sg)
  %i.sj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1271, <2 x double> %wide.load1272, <2 x double> %i.sh)
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  store <2 x double> %i.si, ptr %i.sk, align 8, !tbaa !52
  store <2 x double> %i.sj, ptr %i.sl, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sm = icmp eq i64 %index.next, %n.vec
  br i1 %i.sm, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1057
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph783, %middle.block
  %indvars.iv1054.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph783 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count1057, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1054.ph
  %i.so = load double, ptr %i.sn, align 8, !tbaa !52
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1054.ph
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !52
  %i.sr = fmul double %3, %i.sq
  %i.ss = tail call double @llvm.fmuladd.f64(double %1, double %i.so, double %i.sr)
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1054.ph
  store double %i.ss, ptr %i.st, align 8, !tbaa !52
  %indvars.iv.next1055.prol = or disjoint i64 %indvars.iv1054.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1054.unr = phi i64 [ %indvars.iv1054.ph, %scalar.ph.preheader ], [ %indvars.iv.next1055.prol, %scalar.ph.prol ]
  %i.su = add nsw i64 %wide.trip.count1057, -1
  %i.sv = icmp eq i64 %indvars.iv1054.ph, %i.su
  br i1 %i.sv, label %.loopexit, label %scalar.ph

.preheader619:                                    ; preds = %bb.ai
  br i1 %i.rz, label %.lr.ph785, label %.loopexit

.lr.ph785:                                        ; preds = %.preheader619
  %wide.trip.count1062 = zext nneg i32 %i.ry to i64 ; 5 uses
  %min.iters.check1280 = icmp ult i32 %i.ry, 8
  br i1 %min.iters.check1280, label %scalar.ph1279.preheader, label %vector.memcheck1275

vector.memcheck1275:                              ; preds = %.lr.ph785
  %i.sw = sub i64 %.05831267, %6
  %diff.check1276 = icmp ugt i64 %i.sw, -32
  %i.sx = sub i64 %.05791268, %6
  %diff.check1277 = icmp ugt i64 %i.sx, -32
  %conflict.rdx1278 = or i1 %diff.check1276, %diff.check1277
  br i1 %conflict.rdx1278, label %scalar.ph1279.preheader, label %vector.ph1281

vector.ph1281:                                    ; preds = %vector.memcheck1275
  %n.vec1282 = and i64 %wide.trip.count1062, 2147483644 ; 3 uses
  %broadcast.splatinsert1283 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat1284 = shufflevector <2 x double> %broadcast.splatinsert1283, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %vector.ph1281
  %index1286 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1291, %vector.body1285 ] ; 4 uses
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index1286 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %wide.load1287 = load <2 x double>, ptr %i.sy, align 8, !tbaa !52
  %wide.load1288 = load <2 x double>, ptr %i.sz, align 8, !tbaa !52
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index1286 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %wide.load1289 = load <2 x double>, ptr %i.ta, align 8, !tbaa !52
  %wide.load1290 = load <2 x double>, ptr %i.tb, align 8, !tbaa !52
  %i.tc = fneg <2 x double> %wide.load1289
  %i.td = fneg <2 x double> %wide.load1290
  %i.te = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1284, <2 x double> %wide.load1287, <2 x double> %i.tc)
  %i.tf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1284, <2 x double> %wide.load1288, <2 x double> %i.td)
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index1286 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  store <2 x double> %i.te, ptr %i.tg, align 8, !tbaa !52
  store <2 x double> %i.tf, ptr %i.th, align 8, !tbaa !52
  %index.next1291 = add nuw i64 %index1286, 4     ; 2 uses
  %i.ti = icmp eq i64 %index.next1291, %n.vec1282
  br i1 %i.ti, label %middle.block1292, label %vector.body1285, !llvm.loop !240

middle.block1292:                                 ; preds = %vector.body1285
  %cmp.n1293 = icmp eq i64 %n.vec1282, %wide.trip.count1062
  br i1 %cmp.n1293, label %.loopexit, label %scalar.ph1279.preheader

scalar.ph1279.preheader:                          ; preds = %vector.memcheck1275, %.lr.ph785, %middle.block1292
  %indvars.iv1059.ph = phi i64 [ 0, %vector.memcheck1275 ], [ 0, %.lr.ph785 ], [ %n.vec1282, %middle.block1292 ] ; 6 uses
  %xtraiter2806 = and i64 %wide.trip.count1062, 1
  %lcmp.mod2807.not = icmp eq i64 %xtraiter2806, 0
  br i1 %lcmp.mod2807.not, label %scalar.ph1279.prol.loopexit, label %scalar.ph1279.prol

scalar.ph1279.prol:                               ; preds = %scalar.ph1279.preheader
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1059.ph
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !52
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1059.ph
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !52
  %i.tn = fneg double %i.tm
  %i.to = tail call double @llvm.fmuladd.f64(double %1, double %i.tk, double %i.tn)
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1059.ph
  store double %i.to, ptr %i.tp, align 8, !tbaa !52
  %indvars.iv.next1060.prol = or disjoint i64 %indvars.iv1059.ph, 1
  br label %scalar.ph1279.prol.loopexit

scalar.ph1279.prol.loopexit:                      ; preds = %scalar.ph1279.prol, %scalar.ph1279.preheader
  %indvars.iv1059.unr = phi i64 [ %indvars.iv1059.ph, %scalar.ph1279.preheader ], [ %indvars.iv.next1060.prol, %scalar.ph1279.prol ]
  %i.tq = add nsw i64 %wide.trip.count1062, -1
  %i.tr = icmp eq i64 %indvars.iv1059.ph, %i.tq
  br i1 %i.tr, label %.loopexit, label %scalar.ph1279

scalar.ph1279:                                    ; preds = %scalar.ph1279.prol.loopexit, %scalar.ph1279
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060.1, %scalar.ph1279 ], [ %indvars.iv1059.unr, %scalar.ph1279.prol.loopexit ] ; 5 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1059
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !52
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1059
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !52
  %i.tw = fneg double %i.tv
  %i.tx = tail call double @llvm.fmuladd.f64(double %1, double %i.tt, double %i.tw)
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1059
  store double %i.tx, ptr %i.ty, align 8, !tbaa !52
  %indvars.iv.next1060 = add nuw nsw i64 %indvars.iv1059, 1 ; 3 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1060
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !52
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1060
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !52
  %i.ud = fneg double %i.uc
  %i.ue = tail call double @llvm.fmuladd.f64(double %1, double %i.ua, double %i.ud)
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1060
  store double %i.ue, ptr %i.uf, align 8, !tbaa !52
  %indvars.iv.next1060.1 = add nuw nsw i64 %indvars.iv1059, 2 ; 2 uses
  %exitcond1063.not.1 = icmp eq i64 %indvars.iv.next1060.1, %wide.trip.count1062
  br i1 %exitcond1063.not.1, label %.loopexit, label %scalar.ph1279, !llvm.loop !241

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055.1, %scalar.ph ], [ %indvars.iv1054.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1054
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !52
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1054
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !52
  %i.uk = fmul double %3, %i.uj
  %i.ul = tail call double @llvm.fmuladd.f64(double %1, double %i.uh, double %i.uk)
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv1054
  store double %i.ul, ptr %i.um, align 8, !tbaa !52
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 1 ; 3 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv.next1055
  %i.uo = load double, ptr %i.un, align 8, !tbaa !52
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv.next1055
  %i.uq = load double, ptr %i.up, align 8, !tbaa !52
  %i.ur = fmul double %3, %i.uq
  %i.us = tail call double @llvm.fmuladd.f64(double %1, double %i.uo, double %i.ur)
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next1055
  store double %i.us, ptr %i.ut, align 8, !tbaa !52
  %indvars.iv.next1055.1 = add nuw nsw i64 %indvars.iv1054, 2 ; 2 uses
  %exitcond1058.not.1 = icmp eq i64 %indvars.iv.next1055.1, %wide.trip.count1057
  br i1 %exitcond1058.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !242

.thread596:                                       ; preds = %.thread593
  %i.uu = fcmp oeq double %5, 1.000000e+00
  br i1 %i.uu, label %bb.aj, label %bb.be

bb.aj:                                            ; preds = %.thread596
  %i.uv = fcmp oeq double %1, 1.000000e+00
  br i1 %i.uv, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.o, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !41
  tail call void @_ZN5Ipopt10IpBlasAxpyEidPKdiPdi(i32 noundef %i.e, double noundef 1.000000e+00, ptr noundef %.0583, i32 noundef 1, ptr noundef %i.ux, i32 noundef 1)
  br label %.loopexit

bb.am:                                            ; preds = %bb.ak
  %i.uy = fcmp oeq double %3, 1.000000e+00
  br i1 %i.uy, label %.preheader623, label %bb.an

.preheader623:                                    ; preds = %bb.am
  %i.uz = icmp sgt i32 %i.e, 0
  br i1 %i.uz, label %.lr.ph781, label %.loopexit

.lr.ph781:                                        ; preds = %.preheader623
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count1052 = zext nneg i32 %i.e to i64 ; 6 uses
  %min.iters.check2726 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check2726, label %scalar.ph2725.preheader, label %vector.memcheck2727

vector.memcheck2727:                              ; preds = %.lr.ph781
  %i.vc = shl nuw nsw i64 %wide.trip.count1052, 3 ; 3 uses
  %i.vd = getelementptr i8, ptr %i.vb, i64 %i.vc  ; 2 uses
  %i.ve = getelementptr i8, ptr %.0583, i64 %i.vc
  %i.vf = getelementptr i8, ptr %.0579, i64 %i.vc
  %bound02728 = icmp ult ptr %i.vb, %i.ve
  %bound12729 = icmp ult ptr %.0583, %i.vd
  %found.conflict2730 = and i1 %bound02728, %bound12729
  %bound02731 = icmp ult ptr %i.vb, %i.vf
  %bound12732 = icmp ult ptr %.0579, %i.vd
  %found.conflict2733 = and i1 %bound02731, %bound12732
  %conflict.rdx2734 = or i1 %found.conflict2730, %found.conflict2733
  br i1 %conflict.rdx2734, label %scalar.ph2725.preheader, label %vector.ph2735

vector.ph2735:                                    ; preds = %vector.memcheck2727
  %n.vec2736 = and i64 %wide.trip.count1052, 2147483644 ; 3 uses
  br label %vector.body2737

vector.body2737:                                  ; preds = %vector.body2737, %vector.ph2735
  %index2738 = phi i64 [ 0, %vector.ph2735 ], [ %index.next2745, %vector.body2737 ] ; 4 uses
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %index2738 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %wide.load2739 = load <2 x double>, ptr %i.vg, align 8, !tbaa !52, !alias.scope !468
  %wide.load2740 = load <2 x double>, ptr %i.vh, align 8, !tbaa !52, !alias.scope !468
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %index2738 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %wide.load2741 = load <2 x double>, ptr %i.vi, align 8, !tbaa !52, !alias.scope !469
  %wide.load2742 = load <2 x double>, ptr %i.vj, align 8, !tbaa !52, !alias.scope !469
  %i.vk = fadd <2 x double> %wide.load2739, %wide.load2741
  %i.vl = fadd <2 x double> %wide.load2740, %wide.load2742
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %index2738 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16 ; 2 uses
  %wide.load2743 = load <2 x double>, ptr %i.vm, align 8, !tbaa !52, !alias.scope !470, !noalias !471
  %wide.load2744 = load <2 x double>, ptr %i.vn, align 8, !tbaa !52, !alias.scope !470, !noalias !471
  %i.vo = fadd <2 x double> %i.vk, %wide.load2743
  %i.vp = fadd <2 x double> %i.vl, %wide.load2744
  store <2 x double> %i.vo, ptr %i.vm, align 8, !tbaa !52, !alias.scope !470, !noalias !471
  store <2 x double> %i.vp, ptr %i.vn, align 8, !tbaa !52, !alias.scope !470, !noalias !471
  %index.next2745 = add nuw i64 %index2738, 4     ; 2 uses
  %i.vq = icmp eq i64 %index.next2745, %n.vec2736
  br i1 %i.vq, label %middle.block2746, label %vector.body2737, !llvm.loop !247

middle.block2746:                                 ; preds = %vector.body2737
  %cmp.n2747 = icmp eq i64 %n.vec2736, %wide.trip.count1052
  br i1 %cmp.n2747, label %.loopexit, label %scalar.ph2725.preheader

scalar.ph2725.preheader:                          ; preds = %vector.memcheck2727, %.lr.ph781, %middle.block2746
  %indvars.iv1049.ph = phi i64 [ 0, %vector.memcheck2727 ], [ 0, %.lr.ph781 ], [ %n.vec2736, %middle.block2746 ] ; 6 uses
  %xtraiter2953.a = and i64 %wide.trip.count1052, 1
  %lcmp.mod2954.not.a = icmp eq i64 %xtraiter2953.a, 0
  br i1 %lcmp.mod2954.not.a, label %scalar.ph2725.prol.loopexit, label %scalar.ph2725.prol

scalar.ph2725.prol:                               ; preds = %scalar.ph2725.preheader
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %.0583, i64 %indvars.iv1049.ph
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !52
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %.0579, i64 %indvars.iv1049.ph
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !52
  %i.vv = fadd double %i.vs, %i.vu
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv1049.ph ; 2 uses
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !52
  %i.vy = fadd double %i.vv, %i.vx
  store double %i.vy, ptr %i.vw, align 8, !tbaa !52
end_hunk_0
begin_hunk_1_@_ZNK5Ipopt11DenseVector15FracToBoundImplERKNS_6VectorEd:bb.a
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !52 ; 2 uses
  %i.bl = fcmp olt double %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = fdiv double %i.ar, %i.bk
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !52
  %i.bp = fmul double %i.bm, %i.bo                ; 2 uses
  %i.bq = fcmp olt double %i.bp, %.350
  %.sroa.speculated.i45 = select i1 %i.bq, double %i.bp, double %.350
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.4 = phi double [ %.sroa.speculated.i45, %bb.o ], [ %.350, %bb.n ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.bs = load double, ptr %i.br, align 8, !tbaa !52 ; 2 uses
  %i.bt = fcmp olt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = fdiv double %i.ar, %i.bs
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !52
  %i.bx = fmul double %i.bu, %i.bw                ; 2 uses
  %i.by = fcmp olt double %i.bx, %.4
  %.sroa.speculated.i45.1 = select i1 %i.by, double %i.bx, double %.4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4.1 = phi double [ %.sroa.speculated.i45.1, %bb.q ], [ %.4, %bb.p ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit82.unr-lcssa, label %bb.n, !llvm.loop !602

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.loopexit, label %.epil.preheader92

.epil.preheader92:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph58
  %indvars.iv68.epil.init = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next69.1, %.loopexit.loopexit.unr-lcssa ]
  %.03856.epil.init = phi double [ 1.000000e+00, %.lr.ph58 ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod96 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv68.epil.init
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !52 ; 2 uses
  %i.cb = fcmp olt double %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.epil.preheader92
  %i.cc = fdiv double %i.q, %i.ca
  %i.cd = fmul double %i.cc, %i.s                 ; 2 uses
  %i.ce = fcmp olt double %i.cd, %.03856.epil.init
  %.sroa.speculated.i43.epil = select i1 %i.ce, double %i.cd, double %.03856.epil.init
  br label %.loopexit

.loopexit.loopexit81.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.loopexit, label %.epil.preheader85

.epil.preheader85:                                ; preds = %.loopexit.loopexit81.unr-lcssa, %.lr.ph54
  %indvars.iv63.epil.init = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next64.1, %.loopexit.loopexit81.unr-lcssa ]
  %.252.epil.init = phi double [ 1.000000e+00, %.lr.ph54 ], [ %.sroa.speculated.i44.1, %.loopexit.loopexit81.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv63.epil.init
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !52
  %i.ch = fmul double %i.ay, %i.cg                ; 2 uses
  %i.ci = fcmp olt double %i.ch, %.252.epil.init
  %.sroa.speculated.i44.epil = select i1 %i.ci, double %i.ch, double %.252.epil.init
  br label %.loopexit

.loopexit.loopexit82.unr-lcssa:                   ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit82.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit82.unr-lcssa ] ; 2 uses
  %.350.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %.4.1, %.loopexit.loopexit82.unr-lcssa ] ; 3 uses
  %lcmp.mod84 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !52 ; 2 uses
  %i.cl = fcmp olt double %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %.epil.preheader
  %i.cm = fdiv double %i.ar, %i.ck
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  %i.co = load double, ptr %i.cn, align 8, !tbaa !52
  %i.cp = fmul double %i.cm, %i.co                ; 2 uses
  %i.cq = fcmp olt double %i.cp, %.350.epil.init
  %.sroa.speculated.i45.epil = select i1 %i.cq, double %i.cp, double %.350.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit82.unr-lcssa, %bb.t, %.epil.preheader, %.epil.preheader85, %.loopexit.loopexit81.unr-lcssa, %.loopexit.loopexit.unr-lcssa, %bb.s, %.epil.preheader92, %.preheader48, %.preheader, %bb.d, %bb.e, %bb.l, %bb.a
  %.039 = phi double [ 1.000000e+00, %bb.a ], [ %.sroa.speculated.i, %bb.e ], [ 1.000000e+00, %bb.d ], [ %.sroa.speculated.i44.epil, %.epil.preheader85 ], [ 1.000000e+00, %.preheader48 ], [ 1.000000e+00, %bb.l ], [ 1.000000e+00, %.preheader ], [ %.03856.epil.init, %.epil.preheader92 ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.speculated.i43.epil, %bb.s ], [ %.sroa.speculated.i44.1, %.loopexit.loopexit81.unr-lcssa ], [ %.4.1, %.loopexit.loopexit82.unr-lcssa ], [ %.sroa.speculated.i45.epil, %bb.t ], [ %.350.epil.init, %.epil.preheader ]
  ret double %.039
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt11DenseVector21AddVectorQuotientImplEdRKNS_6VectorES3_d(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %3, double noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 233
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39, !range !50, !noundef !51 ; 3 uses
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 233
  %i.e = load i8, ptr %i.d, align 1, !tbaa !39, !range !50, !noundef !51 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1                  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fcmp oeq double %4, 0.000000e+00         ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39, !range !50, !noundef !51
  %i.o = and i8 %i.n, %i.b
  %or.cond.not = icmp ne i8 %i.o, 0
  %brmerge.not = and i1 %or.cond.not, %i.f
  br i1 %brmerge.not, label %bb.f, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.p = and i8 %i.e, %i.b
  %.not126 = icmp eq i8 %i.p, 0
  br i1 %.not126, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.r = load double, ptr %i.q, align 8, !tbaa !40
  %i.s = fmul double %1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.u = load double, ptr %i.t, align 8, !tbaa !40
  %i.v = fdiv double %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %i.v, ptr %i.w, align 8, !tbaa !40
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.aa = load double, ptr %i.z, align 8, !tbaa !40
  %i.ab = fmul double %1, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !40
  %i.ae = fdiv double %i.ab, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %4, double %i.y, double %i.ae)
  store double %i.af, ptr %i.x, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.ah, align 1, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.s, label %_ZNK5Ipopt16DenseVectorSpace19FreeInternalStorageEPd.exit

_ZNK5Ipopt16DenseVectorSpace19FreeInternalStorageEPd.exit: ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #19
  store ptr null, ptr %i.ai, align 8, !tbaa !41
  br label %bb.s

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !37 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #21
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.au, %bb.j ], [ null, %bb.i ] ; 2 uses
  store ptr %.0.i.i, ptr %i.ak, align 8, !tbaa !41
  br label %_ZN5Ipopt11DenseVector16values_allocatedEv.exit

_ZN5Ipopt11DenseVector16values_allocatedEv.exit:  ; preds = %bb.h, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i
  %i.av = phi ptr [ %i.al, %bb.h ], [ %.0.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i ] ; 65 uses
  %5 = ptrtoaddr ptr %i.av to i64                 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41 ; 33 uses
  %6 = ptrtoaddr ptr %i.ax to i64                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !41 ; 33 uses
  %7 = ptrtoaddr ptr %i.az to i64                 ; 2 uses
  br i1 %i.l, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !37 ; 7 uses
  %i.bd = icmp sgt i32 %i.bc, 0                   ; 3 uses
  br i1 %i.c, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  br i1 %i.bd, label %.lr.ph163, label %.loopexit

.lr.ph163:                                        ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 5 uses
  %wide.trip.count217 = zext nneg i32 %i.bc to i64 ; 6 uses
  %min.iters.check515 = icmp eq i32 %i.bc, 1
  br i1 %min.iters.check515, label %scalar.ph514.preheader, label %vector.memcheck516

vector.memcheck516:                               ; preds = %.lr.ph163
  %i.bf = shl nuw nsw i64 %wide.trip.count217, 3  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %2, i64 248
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bf
  %bound0517 = icmp ult ptr %i.av, %i.bh
  %bound1518 = icmp ult ptr %i.be, %i.bg
  %found.conflict519 = and i1 %bound0517, %bound1518
  %bound0520 = icmp ult ptr %i.av, %i.bi
  %bound1521 = icmp ult ptr %i.az, %i.bg
  %found.conflict522 = and i1 %bound0520, %bound1521
  %conflict.rdx523 = or i1 %found.conflict519, %found.conflict522
  br i1 %conflict.rdx523, label %scalar.ph514.preheader, label %vector.ph524

vector.ph524:                                     ; preds = %vector.memcheck516
  %n.vec525 = and i64 %wide.trip.count217, 2147483646 ; 3 uses
  %i.bj = load double, ptr %i.be, align 8, !tbaa !40, !alias.scope !655
  %i.bk = fmul double %1, %i.bj
  %broadcast.splatinsert529 = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat530 = shufflevector <2 x double> %broadcast.splatinsert529, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body526

vector.body526:                                   ; preds = %vector.body526, %vector.ph524
  %index527 = phi i64 [ 0, %vector.ph524 ], [ %index.next531, %vector.body526 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index527
  %wide.load528 = load <2 x double>, ptr %i.bl, align 8, !tbaa !52, !alias.scope !656
  %i.bm = fdiv <2 x double> %broadcast.splat530, %wide.load528
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index527
  store <2 x double> %i.bm, ptr %i.bn, align 8, !tbaa !52, !alias.scope !657, !noalias !658
  %index.next531 = add nuw i64 %index527, 2       ; 2 uses
  %i.bo = icmp eq i64 %index.next531, %n.vec525
  br i1 %i.bo, label %middle.block532, label %vector.body526, !llvm.loop !607

middle.block532:                                  ; preds = %vector.body526
  %cmp.n533 = icmp eq i64 %n.vec525, %wide.trip.count217
  br i1 %cmp.n533, label %.loopexit, label %scalar.ph514.preheader

scalar.ph514.preheader:                           ; preds = %vector.memcheck516, %.lr.ph163, %middle.block532
  %indvars.iv214.ph = phi i64 [ 0, %vector.memcheck516 ], [ 0, %.lr.ph163 ], [ %n.vec525, %middle.block532 ] ; 5 uses
  %xtraiter560 = and i64 %wide.trip.count217, 1
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %scalar.ph514.prol.loopexit, label %scalar.ph514.prol

scalar.ph514.prol:                                ; preds = %scalar.ph514.preheader
  %i.bp = load double, ptr %i.be, align 8, !tbaa !40
  %i.bq = fmul double %1, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv214.ph
  %i.bs = load double, ptr %i.br, align 8, !tbaa !52
  %i.bt = fdiv double %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv214.ph
  store double %i.bt, ptr %i.bu, align 8, !tbaa !52
  %indvars.iv.next215.prol = or disjoint i64 %indvars.iv214.ph, 1
  br label %scalar.ph514.prol.loopexit

scalar.ph514.prol.loopexit:                       ; preds = %scalar.ph514.prol, %scalar.ph514.preheader
  %indvars.iv214.unr = phi i64 [ %indvars.iv214.ph, %scalar.ph514.preheader ], [ %indvars.iv.next215.prol, %scalar.ph514.prol ]
  %i.bv = add nsw i64 %wide.trip.count217, -1
  %i.bw = icmp eq i64 %indvars.iv214.ph, %i.bv
  br i1 %i.bw, label %.loopexit, label %scalar.ph514

scalar.ph514:                                     ; preds = %scalar.ph514.prol.loopexit, %scalar.ph514
  %indvars.iv214 = phi i64 [ %indvars.iv.next215.1, %scalar.ph514 ], [ %indvars.iv214.unr, %scalar.ph514.prol.loopexit ] ; 4 uses
  %i.bx = load double, ptr %i.be, align 8, !tbaa !40
  %i.by = fmul double %1, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv214
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !52
  %i.cb = fdiv double %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv214
  store double %i.cb, ptr %i.cc, align 8, !tbaa !52
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.cd = load double, ptr %i.be, align 8, !tbaa !40
  %i.ce = fmul double %1, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next215
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !52
  %i.ch = fdiv double %i.ce, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next215
  store double %i.ch, ptr %i.ci, align 8, !tbaa !52
  %indvars.iv.next215.1 = add nuw nsw i64 %indvars.iv214, 2 ; 2 uses
  %exitcond218.not.1 = icmp eq i64 %indvars.iv.next215.1, %wide.trip.count217
  br i1 %exitcond218.not.1, label %.loopexit, label %scalar.ph514, !llvm.loop !608

bb.l:                                             ; preds = %bb.k
  br i1 %i.f, label %.preheader127, label %.preheader129

.preheader129:                                    ; preds = %bb.l
  br i1 %i.bd, label %.lr.ph159, label %.loopexit

.lr.ph159:                                        ; preds = %.preheader129
  %wide.trip.count207 = zext nneg i32 %i.bc to i64 ; 5 uses
  %min.iters.check458 = icmp eq i32 %i.bc, 1
  br i1 %min.iters.check458, label %scalar.ph457.preheader, label %vector.memcheck453

vector.memcheck453:                               ; preds = %.lr.ph159
  %i.cj = sub i64 %6, %5
  %diff.check454 = icmp ugt i64 %i.cj, -16
  %i.ck = sub i64 %7, %5
  %diff.check455 = icmp ugt i64 %i.ck, -16
  %conflict.rdx456 = or i1 %diff.check454, %diff.check455
  br i1 %conflict.rdx456, label %scalar.ph457.preheader, label %vector.ph459

vector.ph459:                                     ; preds = %vector.memcheck453
  %n.vec460 = and i64 %wide.trip.count207, 2147483646 ; 3 uses
  %broadcast.splatinsert461 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat462 = shufflevector <2 x double> %broadcast.splatinsert461, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph459
  %index464 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body463 ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index464
  %wide.load465 = load <2 x double>, ptr %i.cl, align 8, !tbaa !52
  %i.cm = fmul <2 x double> %broadcast.splat462, %wide.load465
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index464
  %wide.load466 = load <2 x double>, ptr %i.cn, align 8, !tbaa !52
  %i.co = fdiv <2 x double> %i.cm, %wide.load466
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index464
  store <2 x double> %i.co, ptr %i.cp, align 8, !tbaa !52
  %index.next467 = add nuw i64 %index464, 2       ; 2 uses
  %i.cq = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.cq, label %middle.block468, label %vector.body463, !llvm.loop !609

middle.block468:                                  ; preds = %vector.body463
  %cmp.n469 = icmp eq i64 %n.vec460, %wide.trip.count207
  br i1 %cmp.n469, label %.loopexit, label %scalar.ph457.preheader

scalar.ph457.preheader:                           ; preds = %vector.memcheck453, %.lr.ph159, %middle.block468
  %indvars.iv204.ph = phi i64 [ 0, %vector.memcheck453 ], [ 0, %.lr.ph159 ], [ %n.vec460, %middle.block468 ] ; 6 uses
  %xtraiter556 = and i64 %wide.trip.count207, 1
  %lcmp.mod557.not = icmp eq i64 %xtraiter556, 0
  br i1 %lcmp.mod557.not, label %scalar.ph457.prol.loopexit, label %scalar.ph457.prol

scalar.ph457.prol:                                ; preds = %scalar.ph457.preheader
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv204.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !52
  %i.ct = fmul double %1, %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv204.ph
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !52
  %i.cw = fdiv double %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv204.ph
  store double %i.cw, ptr %i.cx, align 8, !tbaa !52
  %indvars.iv.next205.prol = or disjoint i64 %indvars.iv204.ph, 1
  br label %scalar.ph457.prol.loopexit

scalar.ph457.prol.loopexit:                       ; preds = %scalar.ph457.prol, %scalar.ph457.preheader
  %indvars.iv204.unr = phi i64 [ %indvars.iv204.ph, %scalar.ph457.preheader ], [ %indvars.iv.next205.prol, %scalar.ph457.prol ]
  %i.cy = add nsw i64 %wide.trip.count207, -1
  %i.cz = icmp eq i64 %indvars.iv204.ph, %i.cy
  br i1 %i.cz, label %.loopexit, label %scalar.ph457

.preheader127:                                    ; preds = %bb.l
  br i1 %i.bd, label %.lr.ph161, label %.loopexit

.lr.ph161:                                        ; preds = %.preheader127
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 5 uses
  %wide.trip.count212 = zext nneg i32 %i.bc to i64 ; 6 uses
  %min.iters.check482 = icmp eq i32 %i.bc, 1
  br i1 %min.iters.check482, label %scalar.ph481.preheader, label %vector.memcheck483

vector.memcheck483:                               ; preds = %.lr.ph161
  %i.db = shl nuw nsw i64 %wide.trip.count212, 3  ; 2 uses
  %i.dc = getelementptr i8, ptr %i.av, i64 %i.db  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ax, i64 %i.db
  %i.de = getelementptr i8, ptr %3, i64 248
  %bound0484 = icmp ult ptr %i.av, %i.dd
  %bound1485 = icmp ult ptr %i.ax, %i.dc
  %found.conflict486 = and i1 %bound0484, %bound1485
  %bound0487 = icmp ult ptr %i.av, %i.de
  %bound1488 = icmp ult ptr %i.da, %i.dc
  %found.conflict489 = and i1 %bound0487, %bound1488
  %conflict.rdx490 = or i1 %found.conflict486, %found.conflict489
  br i1 %conflict.rdx490, label %scalar.ph481.preheader, label %vector.ph491

vector.ph491:                                     ; preds = %vector.memcheck483
  %n.vec492 = and i64 %wide.trip.count212, 2147483646 ; 3 uses
  %i.df = load double, ptr %i.da, align 8, !tbaa !40, !alias.scope !659
  %broadcast.splatinsert498 = insertelement <2 x double> poison, double %i.df, i64 0
  %broadcast.splat499 = shufflevector <2 x double> %broadcast.splatinsert498, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert493 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat494 = shufflevector <2 x double> %broadcast.splatinsert493, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph491
  %index496 = phi i64 [ 0, %vector.ph491 ], [ %index.next500, %vector.body495 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index496
  %wide.load497 = load <2 x double>, ptr %i.dg, align 8, !tbaa !52, !alias.scope !660
  %i.dh = fmul <2 x double> %broadcast.splat494, %wide.load497
  %i.di = fdiv <2 x double> %i.dh, %broadcast.splat499
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index496
  store <2 x double> %i.di, ptr %i.dj, align 8, !tbaa !52, !alias.scope !661, !noalias !662
  %index.next500 = add nuw i64 %index496, 2       ; 2 uses
  %i.dk = icmp eq i64 %index.next500, %n.vec492
  br i1 %i.dk, label %middle.block501, label %vector.body495, !llvm.loop !614

middle.block501:                                  ; preds = %vector.body495
  %cmp.n502 = icmp eq i64 %n.vec492, %wide.trip.count212
  br i1 %cmp.n502, label %.loopexit, label %scalar.ph481.preheader

scalar.ph481.preheader:                           ; preds = %vector.memcheck483, %.lr.ph161, %middle.block501
  %indvars.iv209.ph = phi i64 [ 0, %vector.memcheck483 ], [ 0, %.lr.ph161 ], [ %n.vec492, %middle.block501 ] ; 5 uses
  %xtraiter558 = and i64 %wide.trip.count212, 1
  %lcmp.mod559.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod559.not, label %scalar.ph481.prol.loopexit, label %scalar.ph481.prol

scalar.ph481.prol:                                ; preds = %scalar.ph481.preheader
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv209.ph
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !52
  %i.dn = fmul double %1, %i.dm
  %i.do = load double, ptr %i.da, align 8, !tbaa !40
  %i.dp = fdiv double %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv209.ph
  store double %i.dp, ptr %i.dq, align 8, !tbaa !52
  %indvars.iv.next210.prol = or disjoint i64 %indvars.iv209.ph, 1
  br label %scalar.ph481.prol.loopexit

scalar.ph481.prol.loopexit:                       ; preds = %scalar.ph481.prol, %scalar.ph481.preheader
  %indvars.iv209.unr = phi i64 [ %indvars.iv209.ph, %scalar.ph481.preheader ], [ %indvars.iv.next210.prol, %scalar.ph481.prol ]
  %i.dr = add nsw i64 %wide.trip.count212, -1
  %i.ds = icmp eq i64 %indvars.iv209.ph, %i.dr
  br i1 %i.ds, label %.loopexit, label %scalar.ph481

scalar.ph481:                                     ; preds = %scalar.ph481.prol.loopexit, %scalar.ph481
  %indvars.iv209 = phi i64 [ %indvars.iv.next210.1, %scalar.ph481 ], [ %indvars.iv209.unr, %scalar.ph481.prol.loopexit ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv209
  %i.du = load double, ptr %i.dt, align 8, !tbaa !52
  %i.dv = fmul double %1, %i.du
  %i.dw = load double, ptr %i.da, align 8, !tbaa !40
  %i.dx = fdiv double %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv209
  store double %i.dx, ptr %i.dy, align 8, !tbaa !52
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next210
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !52
  %i.eb = fmul double %1, %i.ea
  %i.ec = load double, ptr %i.da, align 8, !tbaa !40
  %i.ed = fdiv double %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next210
  store double %i.ed, ptr %i.ee, align 8, !tbaa !52
  %indvars.iv.next210.1 = add nuw nsw i64 %indvars.iv209, 2 ; 2 uses
  %exitcond213.not.1 = icmp eq i64 %indvars.iv.next210.1, %wide.trip.count212
  br i1 %exitcond213.not.1, label %.loopexit, label %scalar.ph481, !llvm.loop !615

scalar.ph457:                                     ; preds = %scalar.ph457.prol.loopexit, %scalar.ph457
  %indvars.iv204 = phi i64 [ %indvars.iv.next205.1, %scalar.ph457 ], [ %indvars.iv204.unr, %scalar.ph457.prol.loopexit ] ; 5 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv204
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !52
  %i.eh = fmul double %1, %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv204
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !52
  %i.ek = fdiv double %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv204
  store double %i.ek, ptr %i.el, align 8, !tbaa !52
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next205
  %i.en = load double, ptr %i.em, align 8, !tbaa !52
  %i.eo = fmul double %1, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next205
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !52
  %i.er = fdiv double %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next205
  store double %i.er, ptr %i.es, align 8, !tbaa !52
  %indvars.iv.next205.1 = add nuw nsw i64 %indvars.iv204, 2 ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %indvars.iv.next205.1, %wide.trip.count207
  br i1 %exitcond208.not.1, label %.loopexit, label %scalar.ph457, !llvm.loop !616

bb.m:                                             ; preds = %_ZN5Ipopt11DenseVector16values_allocatedEv.exit
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 233
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !39, !range !50, !noundef !51
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !40
  %i.ey = fmul double %4, %i.ex                   ; 12 uses
  %i.ez = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !37 ; 7 uses
  %i.fc = icmp sgt i32 %i.fb, 0                   ; 3 uses
  br i1 %i.c, label %.preheader131, label %bb.o

.preheader131:                                    ; preds = %bb.n
  br i1 %i.fc, label %.lr.ph157, label %.loopexit

.lr.ph157:                                        ; preds = %.preheader131
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 5 uses
  %wide.trip.count202 = zext nneg i32 %i.fb to i64 ; 6 uses
  %min.iters.check431 = icmp eq i32 %i.fb, 1
  br i1 %min.iters.check431, label %scalar.ph430.preheader, label %vector.memcheck432

vector.memcheck432:                               ; preds = %.lr.ph157
  %i.fe = shl nuw nsw i64 %wide.trip.count202, 3  ; 2 uses
  %i.ff = getelementptr i8, ptr %i.av, i64 %i.fe  ; 2 uses
  %i.fg = getelementptr i8, ptr %2, i64 248
  %i.fh = getelementptr i8, ptr %i.az, i64 %i.fe
  %bound0433 = icmp ult ptr %i.av, %i.fg
  %bound1434 = icmp ult ptr %i.fd, %i.ff
  %found.conflict435 = and i1 %bound0433, %bound1434
  %bound0436 = icmp ult ptr %i.av, %i.fh
  %bound1437 = icmp ult ptr %i.az, %i.ff
  %found.conflict438 = and i1 %bound0436, %bound1437
  %conflict.rdx439 = or i1 %found.conflict435, %found.conflict438
  br i1 %conflict.rdx439, label %scalar.ph430.preheader, label %vector.ph440

vector.ph440:                                     ; preds = %vector.memcheck432
  %n.vec441 = and i64 %wide.trip.count202, 2147483646 ; 3 uses
  %i.fi = load double, ptr %i.fd, align 8, !tbaa !40, !alias.scope !663
  %i.fj = fmul double %1, %i.fi
  %broadcast.splatinsert447 = insertelement <2 x double> poison, double %i.fj, i64 0
  %broadcast.splat448 = shufflevector <2 x double> %broadcast.splatinsert447, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert442 = insertelement <2 x double> poison, double %i.ey, i64 0
  %broadcast.splat443 = shufflevector <2 x double> %broadcast.splatinsert442, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph440
  %index445 = phi i64 [ 0, %vector.ph440 ], [ %index.next449, %vector.body444 ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index445
  %wide.load446 = load <2 x double>, ptr %i.fk, align 8, !tbaa !52, !alias.scope !664
  %i.fl = fdiv <2 x double> %broadcast.splat448, %wide.load446
  %i.fm = fadd <2 x double> %broadcast.splat443, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index445
  store <2 x double> %i.fm, ptr %i.fn, align 8, !tbaa !52, !alias.scope !665, !noalias !666
  %index.next449 = add nuw i64 %index445, 2       ; 2 uses
  %i.fo = icmp eq i64 %index.next449, %n.vec441
  br i1 %i.fo, label %middle.block450, label %vector.body444, !llvm.loop !621

middle.block450:                                  ; preds = %vector.body444
  %cmp.n451 = icmp eq i64 %n.vec441, %wide.trip.count202
  br i1 %cmp.n451, label %.loopexit, label %scalar.ph430.preheader

scalar.ph430.preheader:                           ; preds = %vector.memcheck432, %.lr.ph157, %middle.block450
  %indvars.iv199.ph = phi i64 [ 0, %vector.memcheck432 ], [ 0, %.lr.ph157 ], [ %n.vec441, %middle.block450 ] ; 5 uses
  %xtraiter554 = and i64 %wide.trip.count202, 1
  %lcmp.mod555.not = icmp eq i64 %xtraiter554, 0
  br i1 %lcmp.mod555.not, label %scalar.ph430.prol.loopexit, label %scalar.ph430.prol

scalar.ph430.prol:                                ; preds = %scalar.ph430.preheader
  %i.fp = load double, ptr %i.fd, align 8, !tbaa !40
  %i.fq = fmul double %1, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv199.ph
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !52
  %i.ft = fdiv double %i.fq, %i.fs
  %i.fu = fadd double %i.ey, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv199.ph
  store double %i.fu, ptr %i.fv, align 8, !tbaa !52
  %indvars.iv.next200.prol = or disjoint i64 %indvars.iv199.ph, 1
  br label %scalar.ph430.prol.loopexit

scalar.ph430.prol.loopexit:                       ; preds = %scalar.ph430.prol, %scalar.ph430.preheader
  %indvars.iv199.unr = phi i64 [ %indvars.iv199.ph, %scalar.ph430.preheader ], [ %indvars.iv.next200.prol, %scalar.ph430.prol ]
  %i.fw = add nsw i64 %wide.trip.count202, -1
  %i.fx = icmp eq i64 %indvars.iv199.ph, %i.fw
  br i1 %i.fx, label %.loopexit, label %scalar.ph430

scalar.ph430:                                     ; preds = %scalar.ph430.prol.loopexit, %scalar.ph430
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.1, %scalar.ph430 ], [ %indvars.iv199.unr, %scalar.ph430.prol.loopexit ] ; 4 uses
  %i.fy = load double, ptr %i.fd, align 8, !tbaa !40
  %i.fz = fmul double %1, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv199
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !52
  %i.gc = fdiv double %i.fz, %i.gb
  %i.gd = fadd double %i.ey, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv199
  store double %i.gd, ptr %i.ge, align 8, !tbaa !52
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.gf = load double, ptr %i.fd, align 8, !tbaa !40
  %i.gg = fmul double %1, %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next200
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !52
  %i.gj = fdiv double %i.gg, %i.gi
  %i.gk = fadd double %i.ey, %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next200
  store double %i.gk, ptr %i.gl, align 8, !tbaa !52
  %indvars.iv.next200.1 = add nuw nsw i64 %indvars.iv199, 2 ; 2 uses
  %exitcond203.not.1 = icmp eq i64 %indvars.iv.next200.1, %wide.trip.count202
  br i1 %exitcond203.not.1, label %.loopexit, label %scalar.ph430, !llvm.loop !622

bb.o:                                             ; preds = %bb.n
  br i1 %i.f, label %.preheader133, label %.preheader135

.preheader135:                                    ; preds = %bb.o
  br i1 %i.fc, label %.lr.ph153, label %.loopexit

.lr.ph153:                                        ; preds = %.preheader135
  %wide.trip.count192 = zext nneg i32 %i.fb to i64 ; 5 uses
  %min.iters.check370 = icmp eq i32 %i.fb, 1
  br i1 %min.iters.check370, label %scalar.ph369.preheader, label %vector.memcheck366

vector.memcheck366:                               ; preds = %.lr.ph153
  %i.gm = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.gm, -16
  %i.gn = sub i64 %7, %5
  %diff.check367 = icmp ugt i64 %i.gn, -16
  %conflict.rdx368 = or i1 %diff.check, %diff.check367
  br i1 %conflict.rdx368, label %scalar.ph369.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %vector.memcheck366
  %n.vec372 = and i64 %wide.trip.count192, 2147483646 ; 3 uses
  %broadcast.splatinsert373 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat374 = shufflevector <2 x double> %broadcast.splatinsert373, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert375 = insertelement <2 x double> poison, double %i.ey, i64 0
  %broadcast.splat376 = shufflevector <2 x double> %broadcast.splatinsert375, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph371
  %index378 = phi i64 [ 0, %vector.ph371 ], [ %index.next381, %vector.body377 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index378
  %wide.load379 = load <2 x double>, ptr %i.go, align 8, !tbaa !52
  %i.gp = fmul <2 x double> %broadcast.splat374, %wide.load379
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index378
  %wide.load380 = load <2 x double>, ptr %i.gq, align 8, !tbaa !52
  %i.gr = fdiv <2 x double> %i.gp, %wide.load380
  %i.gs = fadd <2 x double> %broadcast.splat376, %i.gr
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index378
  store <2 x double> %i.gs, ptr %i.gt, align 8, !tbaa !52
  %index.next381 = add nuw i64 %index378, 2       ; 2 uses
  %i.gu = icmp eq i64 %index.next381, %n.vec372
  br i1 %i.gu, label %middle.block382, label %vector.body377, !llvm.loop !623

middle.block382:                                  ; preds = %vector.body377
  %cmp.n383 = icmp eq i64 %n.vec372, %wide.trip.count192
  br i1 %cmp.n383, label %.loopexit, label %scalar.ph369.preheader

scalar.ph369.preheader:                           ; preds = %vector.memcheck366, %.lr.ph153, %middle.block382
  %indvars.iv189.ph = phi i64 [ 0, %vector.memcheck366 ], [ 0, %.lr.ph153 ], [ %n.vec372, %middle.block382 ] ; 6 uses
  %xtraiter550 = and i64 %wide.trip.count192, 1
  %lcmp.mod551.not = icmp eq i64 %xtraiter550, 0
  br i1 %lcmp.mod551.not, label %scalar.ph369.prol.loopexit, label %scalar.ph369.prol

scalar.ph369.prol:                                ; preds = %scalar.ph369.preheader
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv189.ph
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !52
  %i.gx = fmul double %1, %i.gw
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv189.ph
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !52
  %i.ha = fdiv double %i.gx, %i.gz
  %i.hb = fadd double %i.ey, %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv189.ph
  store double %i.hb, ptr %i.hc, align 8, !tbaa !52
  %indvars.iv.next190.prol = or disjoint i64 %indvars.iv189.ph, 1
  br label %scalar.ph369.prol.loopexit

scalar.ph369.prol.loopexit:                       ; preds = %scalar.ph369.prol, %scalar.ph369.preheader
  %indvars.iv189.unr = phi i64 [ %indvars.iv189.ph, %scalar.ph369.preheader ], [ %indvars.iv.next190.prol, %scalar.ph369.prol ]
  %i.hd = add nsw i64 %wide.trip.count192, -1
  %i.he = icmp eq i64 %indvars.iv189.ph, %i.hd
  br i1 %i.he, label %.loopexit, label %scalar.ph369

.preheader133:                                    ; preds = %bb.o
  br i1 %i.fc, label %.lr.ph155, label %.loopexit

.lr.ph155:                                        ; preds = %.preheader133
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 5 uses
  %wide.trip.count197 = zext nneg i32 %i.fb to i64 ; 6 uses
  %min.iters.check396 = icmp eq i32 %i.fb, 1
  br i1 %min.iters.check396, label %scalar.ph395.preheader, label %vector.memcheck397

vector.memcheck397:                               ; preds = %.lr.ph155
  %i.hg = shl nuw nsw i64 %wide.trip.count197, 3  ; 2 uses
  %i.hh = getelementptr i8, ptr %i.av, i64 %i.hg  ; 2 uses
  %i.hi = getelementptr i8, ptr %i.ax, i64 %i.hg
  %i.hj = getelementptr i8, ptr %3, i64 248
  %bound0398 = icmp ult ptr %i.av, %i.hi
  %bound1399 = icmp ult ptr %i.ax, %i.hh
  %found.conflict400 = and i1 %bound0398, %bound1399
  %bound0401 = icmp ult ptr %i.av, %i.hj
  %bound1402 = icmp ult ptr %i.hf, %i.hh
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %found.conflict400, %found.conflict403
  br i1 %conflict.rdx404, label %scalar.ph395.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %vector.memcheck397
  %n.vec406 = and i64 %wide.trip.count197, 2147483646 ; 3 uses
  %i.hk = load double, ptr %i.hf, align 8, !tbaa !40, !alias.scope !667
  %broadcast.splatinsert414 = insertelement <2 x double> poison, double %i.hk, i64 0
  %broadcast.splat415 = shufflevector <2 x double> %broadcast.splatinsert414, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert407 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat408 = shufflevector <2 x double> %broadcast.splatinsert407, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert409 = insertelement <2 x double> poison, double %i.ey, i64 0
  %broadcast.splat410 = shufflevector <2 x double> %broadcast.splatinsert409, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body411

vector.body411:                                   ; preds = %vector.body411, %vector.ph405
  %index412 = phi i64 [ 0, %vector.ph405 ], [ %index.next416, %vector.body411 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index412
  %wide.load413 = load <2 x double>, ptr %i.hl, align 8, !tbaa !52, !alias.scope !668
  %i.hm = fmul <2 x double> %broadcast.splat408, %wide.load413
  %i.hn = fdiv <2 x double> %i.hm, %broadcast.splat415
  %i.ho = fadd <2 x double> %broadcast.splat410, %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index412
  store <2 x double> %i.ho, ptr %i.hp, align 8, !tbaa !52, !alias.scope !669, !noalias !670
  %index.next416 = add nuw i64 %index412, 2       ; 2 uses
  %i.hq = icmp eq i64 %index.next416, %n.vec406
  br i1 %i.hq, label %middle.block417, label %vector.body411, !llvm.loop !628

middle.block417:                                  ; preds = %vector.body411
  %cmp.n418 = icmp eq i64 %n.vec406, %wide.trip.count197
  br i1 %cmp.n418, label %.loopexit, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %vector.memcheck397, %.lr.ph155, %middle.block417
  %indvars.iv194.ph = phi i64 [ 0, %vector.memcheck397 ], [ 0, %.lr.ph155 ], [ %n.vec406, %middle.block417 ] ; 5 uses
  %xtraiter552 = and i64 %wide.trip.count197, 1
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %scalar.ph395.prol.loopexit, label %scalar.ph395.prol

scalar.ph395.prol:                                ; preds = %scalar.ph395.preheader
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv194.ph
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !52
  %i.ht = fmul double %1, %i.hs
  %i.hu = load double, ptr %i.hf, align 8, !tbaa !40
  %i.hv = fdiv double %i.ht, %i.hu
  %i.hw = fadd double %i.ey, %i.hv
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv194.ph
  store double %i.hw, ptr %i.hx, align 8, !tbaa !52
  %indvars.iv.next195.prol = or disjoint i64 %indvars.iv194.ph, 1
  br label %scalar.ph395.prol.loopexit

scalar.ph395.prol.loopexit:                       ; preds = %scalar.ph395.prol, %scalar.ph395.preheader
  %indvars.iv194.unr = phi i64 [ %indvars.iv194.ph, %scalar.ph395.preheader ], [ %indvars.iv.next195.prol, %scalar.ph395.prol ]
  %i.hy = add nsw i64 %wide.trip.count197, -1
  %i.hz = icmp eq i64 %indvars.iv194.ph, %i.hy
  br i1 %i.hz, label %.loopexit, label %scalar.ph395

scalar.ph395:                                     ; preds = %scalar.ph395.prol.loopexit, %scalar.ph395
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.1, %scalar.ph395 ], [ %indvars.iv194.unr, %scalar.ph395.prol.loopexit ] ; 4 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv194
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !52
  %i.ic = fmul double %1, %i.ib
  %i.id = load double, ptr %i.hf, align 8, !tbaa !40
  %i.ie = fdiv double %i.ic, %i.id
  %i.if = fadd double %i.ey, %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv194
  store double %i.if, ptr %i.ig, align 8, !tbaa !52
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next195
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !52
  %i.ij = fmul double %1, %i.ii
  %i.ik = load double, ptr %i.hf, align 8, !tbaa !40
  %i.il = fdiv double %i.ij, %i.ik
  %i.im = fadd double %i.ey, %i.il
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next195
  store double %i.im, ptr %i.in, align 8, !tbaa !52
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %exitcond198.not.1 = icmp eq i64 %indvars.iv.next195.1, %wide.trip.count197
  br i1 %exitcond198.not.1, label %.loopexit, label %scalar.ph395, !llvm.loop !629

scalar.ph369:                                     ; preds = %scalar.ph369.prol.loopexit, %scalar.ph369
  %indvars.iv189 = phi i64 [ %indvars.iv.next190.1, %scalar.ph369 ], [ %indvars.iv189.unr, %scalar.ph369.prol.loopexit ] ; 5 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv189
  %i.ip = load double, ptr %i.io, align 8, !tbaa !52
  %i.iq = fmul double %1, %i.ip
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv189
  %i.is = load double, ptr %i.ir, align 8, !tbaa !52
  %i.it = fdiv double %i.iq, %i.is
  %i.iu = fadd double %i.ey, %i.it
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv189
  store double %i.iu, ptr %i.iv, align 8, !tbaa !52
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next190
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !52
  %i.iy = fmul double %1, %i.ix
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next190
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !52
  %i.jb = fdiv double %i.iy, %i.ja
  %i.jc = fadd double %i.ey, %i.jb
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next190
  store double %i.jc, ptr %i.jd, align 8, !tbaa !52
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %exitcond193.not.1 = icmp eq i64 %indvars.iv.next190.1, %wide.trip.count192
  br i1 %exitcond193.not.1, label %.loopexit, label %scalar.ph369, !llvm.loop !630

bb.p:                                             ; preds = %bb.m
  %i.je = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !37 ; 9 uses
  %i.jh = icmp sgt i32 %i.jg, 0                   ; 4 uses
  br i1 %i.c, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.f, label %.preheader137, label %.preheader139

.preheader139:                                    ; preds = %bb.q
  br i1 %i.jh, label %.lr.ph149, label %.loopexit

.lr.ph149:                                        ; preds = %.preheader139
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 5 uses
  %wide.trip.count182 = zext nneg i32 %i.jg to i64 ; 6 uses
  %min.iters.check309 = icmp eq i32 %i.jg, 1
  br i1 %min.iters.check309, label %scalar.ph308.preheader, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph149
  %i.jj = shl nuw nsw i64 %wide.trip.count182, 3  ; 2 uses
end_hunk_1
