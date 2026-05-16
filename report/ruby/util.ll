inline.NumInlined: 87
inline.NumDeleted: 13
begin_hunk_0_@ruby_strtod:bb.a
Bclear.exit740.thread.sink.split:                 ; preds = %bb.fc, %bb.fd, %bb.ct, %bb.cs, %bb.ck, %bb.ci, %cmp.exit729.thread, %.thread858, %bb.db, %.thread867.sink.split
  %.4800.sink = phi ptr [ %.4800, %.thread858 ], [ %.4800, %cmp.exit729.thread ], [ %.4800, %.thread867.sink.split ], [ %.4800, %bb.db ], [ %.4800, %bb.fc ], [ %.4800, %bb.fd ], [ %i.ml, %bb.ck ], [ %.4800, %bb.cs ], [ %.4800, %bb.ct ], [ %i.ml, %bb.ci ]
  %.4795877911.ph = phi ptr [ %.3794, %.thread858 ], [ %.3794, %cmp.exit729.thread ], [ %.3794, %.thread867.sink.split ], [ %.3794, %bb.db ], [ %.3794, %bb.fc ], [ %.3794, %bb.fd ], [ %i.ma, %bb.ck ], [ %.3794, %bb.cs ], [ %.3794, %bb.ct ], [ %i.ma, %bb.ci ]
  %.5787881907.ph = phi ptr [ %.4786, %.thread858 ], [ %.4786, %cmp.exit729.thread ], [ %.4786, %.thread867.sink.split ], [ %.4786, %bb.db ], [ %.4786, %bb.fc ], [ %.4786, %bb.fd ], [ null, %bb.ck ], [ null, %bb.cs ], [ %.4786, %bb.ct ], [ null, %bb.ci ]
  %.5781883905.ph = phi ptr [ %.4780864, %.thread858 ], [ %.4780, %cmp.exit729.thread ], [ %.5781882.ph, %.thread867.sink.split ], [ null, %bb.db ], [ %i.no, %bb.fc ], [ %i.no, %bb.fd ], [ null, %bb.ck ], [ null, %bb.cs ], [ null, %bb.ct ], [ null, %bb.ci ]
  %.sroa.067.15885903.ph = phi double [ %i.we, %.thread858 ], [ %.sroa.067.14, %cmp.exit729.thread ], [ %.sroa.067.15884.ph, %.thread867.sink.split ], [ %.sroa.067.101132, %bb.db ], [ %.sroa.067.12, %bb.fc ], [ %.sroa.067.12, %bb.fd ], [ %.sroa.067.101132, %bb.ck ], [ %.sroa.067.101132, %bb.cs ], [ %.sroa.067.101132, %bb.ct ], [ %.sroa.067.101132, %bb.ci ]
  tail call void @free(ptr noundef nonnull %.4800.sink) #24
  br label %Bclear.exit740.thread

Bclear.exit740.thread:                            ; preds = %bb.cm, %Bclear.exit, %ruby_nonempty_memcpy.exit, %Bclear.exit740.thread.sink.split
  %.4795877911 = phi ptr [ %.4795877911.ph, %Bclear.exit740.thread.sink.split ], [ %i.ma, %ruby_nonempty_memcpy.exit ], [ %i.ma, %Bclear.exit ], [ %i.ma, %bb.cm ]
  %.5787881907 = phi ptr [ %.5787881907.ph, %Bclear.exit740.thread.sink.split ], [ null, %ruby_nonempty_memcpy.exit ], [ %.3785, %bb.cm ], [ %i.nf, %Bclear.exit ] ; 2 uses
  %.5781883905 = phi ptr [ %.5781883905.ph, %Bclear.exit740.thread.sink.split ], [ null, %ruby_nonempty_memcpy.exit ], [ null, %Bclear.exit ], [ null, %bb.cm ] ; 2 uses
  %.sroa.067.15885903 = phi double [ %.sroa.067.15885903.ph, %Bclear.exit740.thread.sink.split ], [ %.sroa.067.101132, %ruby_nonempty_memcpy.exit ], [ %.sroa.067.101132, %Bclear.exit ], [ %.sroa.067.101132, %bb.cm ] ; 2 uses
  tail call void @free(ptr noundef nonnull %.4795877911) #24
  %.not.i743 = icmp eq ptr %.5787881907, null
  br i1 %.not.i743, label %Bclear.exit744.thread, label %bb.fe

bb.fe:                                            ; preds = %Bclear.exit742.thread, %Bclear.exit740.thread
  %.sroa.067.158859041363 = phi double [ %.sroa.067.101132, %Bclear.exit742.thread ], [ %.sroa.067.15885903, %Bclear.exit740.thread ]
  %.57818839061362 = phi ptr [ null, %Bclear.exit742.thread ], [ %.5781883905, %Bclear.exit740.thread ]
  %.57878819081361 = phi ptr [ %.3785, %Bclear.exit742.thread ], [ %.5787881907, %Bclear.exit740.thread ]
  tail call void @free(ptr noundef nonnull %.57878819081361) #24
  br label %Bclear.exit744.thread

Bclear.exit744.thread.thread:                     ; preds = %Bclear.exit732, %s2b.exit
  %.sroa.067.15885904926931.ph = phi double [ %.sroa.067.9, %s2b.exit ], [ %.sroa.067.13, %Bclear.exit732 ]
  tail call void @free(ptr noundef nonnull %.026.i) #24
  br label %Bclear.exit748

Bclear.exit744.thread:                            ; preds = %bb.fe, %Bclear.exit740.thread
  %.5781883906925933 = phi ptr [ %.57818839061362, %bb.fe ], [ %.5781883905, %Bclear.exit740.thread ] ; 2 uses
  %.sroa.067.15885904926931 = phi double [ %.sroa.067.158859041363, %bb.fe ], [ %.sroa.067.15885903, %Bclear.exit740.thread ] ; 2 uses
  tail call void @free(ptr noundef nonnull %.026.i) #24
  %.not.i747 = icmp eq ptr %.5781883906925933, null
  br i1 %.not.i747, label %Bclear.exit748, label %bb.ff

bb.ff:                                            ; preds = %Bclear.exit744.thread
  tail call void @free(ptr noundef nonnull %.5781883906925933) #24
  br label %Bclear.exit748

Bclear.exit748:                                   ; preds = %bb.b, %.preheader957, %.preheader943, %bb.ca, %.lr.ph53.i, %Bclear.exit744.thread.thread, %._crit_edge.i, %bb.ff, %Bclear.exit744.thread, %.thread827, %.thread817, %bb.ap, %.loopexit960, %bb.e, %bb.q, %bb.ai, %bb.f, %bb.as, %bb.az, %bb.ax, %bb.av, %.critedge4.thread
  %.2541 = phi i32 [ %.1540, %.lr.ph53.i ], [ %.1540, %.critedge4.thread ], [ %.1540, %Bclear.exit744.thread.thread ], [ %.1540, %bb.av ], [ %.1540, %bb.ax ], [ %.1540, %.thread827 ], [ %.1540, %.preheader957 ], [ %.1540, %._crit_edge.i ], [ %.1540, %bb.ff ], [ %.1540, %bb.az ], [ %.1540, %bb.as ], [ %spec.select716, %bb.ap ], [ 0, %bb.f ], [ 0, %bb.ai ], [ 0, %bb.q ], [ 0, %bb.e ], [ %.1540, %.preheader943 ], [ 0, %.loopexit960 ], [ %.1540, %.thread817 ], [ %.1540, %Bclear.exit744.thread ], [ %.1540, %bb.ca ], [ 0, %bb.b ]
  %.27 = phi ptr [ %.26, %.lr.ph53.i ], [ %.15, %.critedge4.thread ], [ %.26, %Bclear.exit744.thread.thread ], [ %.26, %bb.av ], [ %.26, %bb.ax ], [ %.26, %.thread827 ], [ %i.p, %.preheader957 ], [ %.26, %._crit_edge.i ], [ %.26, %bb.ff ], [ %.26, %bb.az ], [ %.26, %bb.as ], [ %spec.select717, %bb.ap ], [ %0, %bb.f ], [ %0, %bb.ai ], [ %0, %bb.q ], [ %0, %bb.e ], [ %i.ce, %.preheader943 ], [ %0, %.loopexit960 ], [ %.26, %.thread817 ], [ %.26, %Bclear.exit744.thread ], [ %.26, %bb.ca ], [ %0, %bb.b ]
  %.sroa.067.16 = phi double [ %.sroa.067.9, %.lr.ph53.i ], [ %i.cd, %.critedge4.thread ], [ %.sroa.067.15885904926931.ph, %Bclear.exit744.thread.thread ], [ %i.gz, %bb.av ], [ %i.hk, %bb.ax ], [ 0.000000e+00, %.thread827 ], [ 0.000000e+00, %.preheader957 ], [ %.sroa.067.9, %._crit_edge.i ], [ %.sroa.067.15885904926931, %bb.ff ], [ %i.hq, %bb.az ], [ %.sroa.067.0815, %bb.as ], [ 0.000000e+00, %bb.ap ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.ai ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %.preheader943 ], [ 0.000000e+00, %.loopexit960 ], [ +inf, %.thread817 ], [ %.sroa.067.15885904926931, %Bclear.exit744.thread ], [ %.sroa.067.9, %bb.ca ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.not704 = icmp eq ptr %1, null
  br i1 %.not704, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %Bclear.exit748
  store ptr %.27, ptr %1, align 8, !tbaa !17
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %Bclear.exit748
  %.not705 = icmp eq i32 %.2541, 0
  %i.wg = fneg double %.sroa.067.16
  %i.wh = select i1 %.not705, double %.sroa.067.16, double %i.wg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret double %i.wh
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare i32 @llvm.get.rounding() #12

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Balloc(i32 noundef %0) unnamed_addr #13 {
bb.a:
  %i.a = shl nuw i32 1, %0                        ; 2 uses
  %i.b = add i32 %i.a, -1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 32
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #26 ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store i32 %0, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr i8, ptr %i.f, i64 12
  store i32 %i.a, ptr %i.h, align 4, !tbaa !47
  %i.i = getelementptr i8, ptr %i.f, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !49
  %i.j = getelementptr i8, ptr %i.f, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(readwrite, argmem: write, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @d2b(double noundef %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 8 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %Balloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %i.a, i64 12
  store i32 2, ptr %i.c, align 4, !tbaa !47
  %i.d = getelementptr i8, ptr %i.a, i64 20       ; 2 uses
  %i.e = getelementptr i8, ptr %i.a, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr i8, ptr %i.a, i64 24       ; 4 uses
  %i.g = bitcast double %0 to i64
  %.sroa.0.4.extract.shift = lshr i64 %i.g, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.h = and i32 %.sroa.0.4.extract.trunc, 1048575 ; 2 uses
  %i.i = tail call double @llvm.fabs.f64(double %0)
  %.sroa.0.4.insert.insert = bitcast double %i.i to i64 ; 2 uses
  %sum.shift = lshr i64 %.sroa.0.4.insert.insert, 52 ; 2 uses
  %i.j = trunc nuw nsw i64 %sum.shift to i32
  %.not37 = icmp eq i64 %sum.shift, 0             ; 2 uses
  %i.k = or disjoint i32 %i.h, 1048576
  %spec.select = select i1 %.not37, i32 %i.h, i32 %i.k ; 13 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.4.insert.insert to i32 ; 11 uses
  %.not38 = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  br i1 %.not38, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i32 %.sroa.0.0.extract.trunc, 7
  %.not.i42 = icmp eq i32 %i.l, 0
  br i1 %.not.i42, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %.sroa.0.0.extract.trunc, 1
  %.not39.i = icmp eq i32 %i.m, 0
  br i1 %.not39.i, label %bb.e, label %lo0bits.exit.thread85

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %.sroa.0.0.extract.trunc, 2
  %.not40.i = icmp eq i32 %i.n, 0
  br i1 %.not40.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = lshr exact i32 %.sroa.0.0.extract.trunc, 1
  br label %lo0bits.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.p = lshr exact i32 %.sroa.0.0.extract.trunc, 2
  br label %lo0bits.exit.thread

bb.h:                                             ; preds = %bb.c
  %i.q = and i32 %.sroa.0.0.extract.trunc, 65528
  %.not33.i = icmp eq i32 %i.q, 0                 ; 2 uses
  %i.r = lshr exact i32 %.sroa.0.0.extract.trunc, 16
  %spec.select.i = select i1 %.not33.i, i32 16, i32 0 ; 2 uses
  %spec.select41.i = select i1 %.not33.i, i32 %i.r, i32 %.sroa.0.0.extract.trunc ; 3 uses
  %i.s = and i32 %spec.select41.i, 255
  %.not34.i = icmp eq i32 %i.s, 0                 ; 2 uses
  %i.t = or disjoint i32 %spec.select.i, 8
  %i.u = lshr exact i32 %spec.select41.i, 8
  %.127.i = select i1 %.not34.i, i32 %i.t, i32 %spec.select.i ; 2 uses
  %.1.i = select i1 %.not34.i, i32 %i.u, i32 %spec.select41.i ; 3 uses
  %i.v = and i32 %.1.i, 15
  %.not35.i = icmp eq i32 %i.v, 0                 ; 2 uses
  %i.w = or disjoint i32 %.127.i, 4
  %i.x = lshr exact i32 %.1.i, 4
  %.228.i = select i1 %.not35.i, i32 %i.w, i32 %.127.i ; 2 uses
  %.2.i = select i1 %.not35.i, i32 %i.x, i32 %.1.i ; 3 uses
  %i.y = and i32 %.2.i, 3
  %.not36.i = icmp eq i32 %i.y, 0                 ; 2 uses
  %i.z = or disjoint i32 %.228.i, 2
  %i.aa = lshr exact i32 %.2.i, 2
  %.329.i = select i1 %.not36.i, i32 %i.z, i32 %.228.i ; 3 uses
  %.3.i = select i1 %.not36.i, i32 %i.aa, i32 %.2.i ; 5 uses
  %i.ab = and i32 %.3.i, 1
  %.not37.i = icmp eq i32 %i.ab, 0
  br i1 %.not37.i, label %bb.i, label %lo0bits.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = add nuw nsw i32 %.329.i, 1
  %i.ad = lshr exact i32 %.3.i, 1
  %.not38.i = icmp eq i32 %.3.i, 0                ; 2 uses
  %spec.select91 = select i1 %.not38.i, i32 32, i32 %i.ac
  %spec.select92 = select i1 %.not38.i, i32 %.sroa.0.0.extract.trunc, i32 %i.ad
  br label %lo0bits.exit.thread

lo0bits.exit:                                     ; preds = %bb.h
  %.not39 = icmp eq i32 %.329.i, 0
  br i1 %.not39, label %lo0bits.exit.thread85, label %lo0bits.exit.thread

lo0bits.exit.thread:                              ; preds = %bb.i, %bb.g, %bb.f, %lo0bits.exit
  %.031.i83 = phi i32 [ %.329.i, %lo0bits.exit ], [ %spec.select91, %bb.i ], [ 2, %bb.g ], [ 1, %bb.f ] ; 3 uses
  %.07882 = phi i32 [ %.3.i, %lo0bits.exit ], [ %spec.select92, %bb.i ], [ %i.p, %bb.g ], [ %i.o, %bb.f ]
  %i.ae = sub nuw nsw i32 32, %.031.i83
  %i.af = shl i32 %spec.select, %i.ae
  %i.ag = or i32 %i.af, %.07882
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !7
  %i.ah = lshr i32 %spec.select, %.031.i83
  br label %bb.j

lo0bits.exit.thread85:                            ; preds = %bb.d, %lo0bits.exit
  %.07889 = phi i32 [ %.3.i, %lo0bits.exit ], [ %.sroa.0.0.extract.trunc, %bb.d ]
  store i32 %.07889, ptr %i.f, align 8, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %lo0bits.exit.thread85, %lo0bits.exit.thread
  %.031.i84 = phi i32 [ 0, %lo0bits.exit.thread85 ], [ %.031.i83, %lo0bits.exit.thread ]
  %.077 = phi i32 [ %spec.select, %lo0bits.exit.thread85 ], [ %i.ah, %lo0bits.exit.thread ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.a, i64 28
  store i32 %.077, ptr %i.ai, align 4, !tbaa !7
  %.not40 = icmp eq i32 %.077, 0
  %i.aj = select i1 %.not40, i32 1, i32 2         ; 2 uses
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !49
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  %i.ak = and i32 %spec.select, 7
  %.not.i43 = icmp eq i32 %i.ak, 0
  br i1 %.not.i43, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = and i32 %spec.select, 1
  %.not39.i44 = icmp eq i32 %i.al, 0
  br i1 %.not39.i44, label %bb.m, label %lo0bits.exit64

bb.m:                                             ; preds = %bb.l
  %i.am = and i32 %spec.select, 2
  %.not40.i46 = icmp eq i32 %i.am, 0
  br i1 %.not40.i46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = lshr exact i32 %spec.select, 1
  br label %lo0bits.exit64

bb.o:                                             ; preds = %bb.m
  %i.ao = lshr exact i32 %spec.select, 2
  br label %lo0bits.exit64

bb.p:                                             ; preds = %bb.k
  %i.ap = and i32 %spec.select, 65528
  %.not33.i50 = icmp eq i32 %i.ap, 0              ; 2 uses
  %i.aq = lshr exact i32 %spec.select, 16
  %spec.select.i51 = select i1 %.not33.i50, i32 16, i32 0 ; 2 uses
  %spec.select41.i52 = select i1 %.not33.i50, i32 %i.aq, i32 %spec.select ; 3 uses
  %i.ar = and i32 %spec.select41.i52, 255
  %.not34.i53 = icmp eq i32 %i.ar, 0              ; 2 uses
  %i.as = or disjoint i32 %spec.select.i51, 8
  %i.at = lshr exact i32 %spec.select41.i52, 8
  %.127.i54 = select i1 %.not34.i53, i32 %i.as, i32 %spec.select.i51 ; 2 uses
  %.1.i55 = select i1 %.not34.i53, i32 %i.at, i32 %spec.select41.i52 ; 3 uses
  %i.au = and i32 %.1.i55, 15
  %.not35.i56 = icmp eq i32 %i.au, 0              ; 2 uses
  %i.av = or disjoint i32 %.127.i54, 4
  %i.aw = lshr exact i32 %.1.i55, 4
  %.228.i57 = select i1 %.not35.i56, i32 %i.av, i32 %.127.i54 ; 2 uses
  %.2.i58 = select i1 %.not35.i56, i32 %i.aw, i32 %.1.i55 ; 3 uses
  %i.ax = and i32 %.2.i58, 3
  %.not36.i59 = icmp eq i32 %i.ax, 0              ; 2 uses
  %i.ay = or disjoint i32 %.228.i57, 2
  %i.az = lshr exact i32 %.2.i58, 2
  %.329.i60 = select i1 %.not36.i59, i32 %i.ay, i32 %.228.i57 ; 2 uses
  %.3.i61 = select i1 %.not36.i59, i32 %i.az, i32 %.2.i58 ; 4 uses
  %i.ba = and i32 %.3.i61, 1
  %.not37.i62 = icmp eq i32 %i.ba, 0
  br i1 %.not37.i62, label %bb.q, label %lo0bits.exit64

bb.q:                                             ; preds = %bb.p
  %i.bb = add nuw nsw i32 %.329.i60, 1
  %i.bc = lshr exact i32 %.3.i61, 1
  %.not38.i63 = icmp eq i32 %.3.i61, 0            ; 2 uses
  %spec.select93 = select i1 %.not38.i63, i32 %spec.select, i32 %i.bc
  %spec.select94 = select i1 %.not38.i63, i32 32, i32 %i.bb
  br label %lo0bits.exit64

lo0bits.exit64:                                   ; preds = %bb.q, %bb.n, %bb.o, %bb.p, %bb.l
  %.1 = phi i32 [ %spec.select93, %bb.q ], [ %spec.select, %bb.l ], [ %i.an, %bb.n ], [ %i.ao, %bb.o ], [ %.3.i61, %bb.p ]
  %.031.i45 = phi i32 [ %spec.select94, %bb.q ], [ 0, %bb.l ], [ 1, %bb.n ], [ 2, %bb.o ], [ %.329.i60, %bb.p ]
  store i32 %.1, ptr %i.f, align 8, !tbaa !7
  store i32 1, ptr %i.d, align 4, !tbaa !49
  %i.bd = add nuw nsw i32 %.031.i45, 32
  br label %bb.r

bb.r:                                             ; preds = %lo0bits.exit64, %bb.j
  %.033 = phi i32 [ %.031.i84, %bb.j ], [ %i.bd, %lo0bits.exit64 ] ; 3 uses
  %.0 = phi i32 [ %i.aj, %bb.j ], [ 1, %lo0bits.exit64 ] ; 2 uses
  br i1 %.not37, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = add nsw i32 %i.j, -1075
  %i.bf = add nsw i32 %i.be, %.033
  %i.bg = sub nsw i32 53, %.033
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bh = add nuw nsw i32 %.033, -1074
  %i.bi = shl nuw nsw i32 %.0, 5
  %i.bj = zext nneg i32 %.0 to i64
  %i.bk = getelementptr [4 x i8], ptr %i.f, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7  ; 3 uses
  %.not.i65 = icmp ult i32 %i.bm, 65536           ; 2 uses
  %i.bn = shl nuw i32 %i.bm, 16
  %spec.select.i66 = select i1 %.not.i65, i32 %i.bn, i32 %i.bm ; 3 uses
  %spec.select26.i = select i1 %.not.i65, i32 16, i32 0 ; 2 uses
  %.not21.i = icmp ult i32 %spec.select.i66, 16777216 ; 2 uses
  %i.bo = or disjoint i32 %spec.select26.i, 8
  %i.bp = shl nuw i32 %spec.select.i66, 8
  %.117.i = select i1 %.not21.i, i32 %i.bp, i32 %spec.select.i66 ; 3 uses
  %.1.i67 = select i1 %.not21.i, i32 %i.bo, i32 %spec.select26.i ; 2 uses
  %.not22.i = icmp ult i32 %.117.i, 268435456     ; 2 uses
  %i.bq = or disjoint i32 %.1.i67, 4
  %i.br = shl nuw i32 %.117.i, 4
  %.218.i = select i1 %.not22.i, i32 %i.br, i32 %.117.i ; 3 uses
  %.2.i68 = select i1 %.not22.i, i32 %i.bq, i32 %.1.i67 ; 2 uses
  %.not23.i = icmp ult i32 %.218.i, 1073741824    ; 2 uses
  %i.bs = or disjoint i32 %.2.i68, 2
  %i.bt = shl nuw i32 %.218.i, 2
  %.319.i = select i1 %.not23.i, i32 %i.bt, i32 %.218.i ; 2 uses
  %.3.i69 = select i1 %.not23.i, i32 %i.bs, i32 %.2.i68 ; 2 uses
  %i.bu = add nuw nsw i32 %.3.i69, 1
  %.not25.i = icmp ult i32 %.319.i, 1073741824
  %spec.select27.i = select i1 %.not25.i, i32 32, i32 %i.bu
  %.not2428.i = icmp slt i32 %.319.i, 0
  %.020.i = select i1 %.not2428.i, i32 %.3.i69, i32 %spec.select27.i
  %i.bv = sub nuw nsw i32 %i.bi, %.020.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink = phi i32 [ %i.bh, %bb.t ], [ %i.bf, %bb.s ]
  %storemerge41 = phi i32 [ %i.bv, %bb.t ], [ %i.bg, %bb.s ]
  store i32 %.sink, ptr %1, align 4, !tbaa !7
  store i32 %storemerge41, ptr %2, align 4, !tbaa !7
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %bb.a, %bb.u
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @pow5mult(ptr noundef captures(address, ret: address, provenance) %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #15 {
bb.a:
  %i.a = and i32 %1, 3                            ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @pow5mult.p05, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = tail call fastcc ptr @multadd(ptr noundef %0, i32 noundef %i.e, i32 noundef 0) ; 2 uses
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %Bclear.exit41, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.069 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.b ]  ; 6 uses
  %i.g = lshr i32 %1, 2                           ; 4 uses
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %Bclear.exit41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @p5s, align 8, !tbaa !52   ; 2 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 7 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = getelementptr i8, ptr %i.i, i64 24
  store i32 625, ptr %i.k, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.j, align 8, !tbaa !7
  store ptr null, ptr %i.i, align 8, !tbaa !53
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = cmpxchg volatile ptr @p5s, i64 0, i64 %i.l seq_cst seq_cst, align 8 ; 2 uses
  %.not28 = extractvalue { i64, i1 } %i.m, 1
  br i1 %.not28, label %.preheader, label %.sink.split, !prof !54

.critedge:                                        ; preds = %bb.e
  %.not.i40 = icmp eq ptr %.069, null
  br i1 %.not.i40, label %Bclear.exit41, label %Bclear.exit41.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.f
  %.sink90 = phi { i64, i1 } [ %i.m, %bb.f ], [ %i.v, %bb.m ]
  %.sink = phi ptr [ %i.i, %bb.f ], [ %i.t, %bb.m ]
  %.170.ph = phi ptr [ %.069, %bb.f ], [ %.271, %bb.m ]
  %.017.ph = phi i32 [ %i.g, %bb.f ], [ %i.r, %bb.m ]
  %i.n = extractvalue { i64, i1 } %.sink90, 0
  %i.o = inttoptr i64 %i.n to ptr
  tail call void @free(ptr noundef nonnull %.sink) #24
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.d, %.sink.split
  %.170.ph91 = phi ptr [ %.170.ph, %.sink.split ], [ %.069, %bb.f ], [ %.069, %bb.d ]
  %.2.ph = phi ptr [ %i.o, %.sink.split ], [ %i.i, %bb.f ], [ %i.h, %bb.d ]
  %.017.ph92 = phi i32 [ %.017.ph, %.sink.split ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %.170 = phi ptr [ %.170.ph91, %.preheader ], [ %.271, %.backedge ] ; 4 uses
  %.2 = phi ptr [ %.2.ph, %.preheader ], [ %.2.be, %.backedge ] ; 5 uses
  %.017 = phi i32 [ %.017.ph92, %.preheader ], [ %i.r, %.backedge ] ; 2 uses
  %i.p = and i32 %.017, 1
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc ptr @mult(ptr noundef %.170, ptr noundef nonnull %.2) ; 2 uses
  %.not.i42 = icmp eq ptr %.170, null
  br i1 %.not.i42, label %Bclear.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.170) #24
  br label %Bclear.exit43

Bclear.exit43:                                    ; preds = %bb.h, %bb.i
  %.not31 = icmp eq ptr %i.q, null
  br i1 %.not31, label %Bclear.exit41, label %bb.j

bb.j:                                             ; preds = %Bclear.exit43, %bb.g
  %.271 = phi ptr [ %.170, %bb.g ], [ %i.q, %Bclear.exit43 ] ; 5 uses
  %i.r = lshr i32 %.017, 1                        ; 3 uses
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %Bclear.exit41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %.2, align 8, !tbaa !53    ; 2 uses
  %.not33 = icmp eq ptr %i.s, null
  br i1 %.not33, label %bb.l, label %.backedge

bb.l:                                             ; preds = %bb.k
  %i.t = tail call fastcc ptr @mult(ptr noundef nonnull %.2, ptr noundef nonnull %.2) ; 5 uses
  %.not35 = icmp eq ptr %i.t, null
  br i1 %.not35, label %.critedge39, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.t, align 8, !tbaa !53
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = cmpxchg volatile ptr %.2, i64 0, i64 %i.u seq_cst seq_cst, align 8 ; 2 uses
  %.not36 = extractvalue { i64, i1 } %i.v, 1
  br i1 %.not36, label %.backedge, label %.sink.split, !prof !55

.backedge:                                        ; preds = %bb.m, %bb.k
  %.2.be = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.m ]
  br label %bb.g

.critedge39:                                      ; preds = %bb.l
  %.not.i46 = icmp eq ptr %.271, null
  br i1 %.not.i46, label %Bclear.exit41, label %Bclear.exit41.sink.split

Bclear.exit41.sink.split:                         ; preds = %.critedge39, %.critedge
  %.271.lcssa.sink = phi ptr [ %.069, %.critedge ], [ %.271, %.critedge39 ]
  tail call void @free(ptr noundef nonnull %.271.lcssa.sink) #24
  br label %Bclear.exit41

Bclear.exit41:                                    ; preds = %bb.j, %Bclear.exit43, %Bclear.exit41.sink.split, %.critedge39, %.critedge, %bb.c, %bb.b
  %.5 = phi ptr [ null, %.critedge ], [ null, %Bclear.exit41.sink.split ], [ null, %bb.b ], [ %.069, %bb.c ], [ null, %.critedge39 ], [ %.271, %bb.j ], [ null, %Bclear.exit43 ]
  ret ptr %.5
}

; Function Attrs: nofree nounwind sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable
define internal fastcc noundef ptr @mult(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
