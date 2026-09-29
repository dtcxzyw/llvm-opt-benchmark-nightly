Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/imcompress?download=true
inline.NumInlined: 36
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 58
begin_hunk_0_@fits_img_compress:bb.a
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr %2, align 4, !tbaa !18
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ag = call i32 @imcomp_copy_img2comp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = load i32, ptr %2, align 4, !tbaa !18
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1068
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !43
  %i.am = icmp eq i32 %i.al, 0
  %i.an = load i32, ptr %i.a, align 4
  %i.ao = icmp sgt i32 %i.an, 0
  %or.cond5 = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond5, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = call i32 @ffpscl(ptr noundef %0, double noundef 1.000000e+00, double noundef 0.000000e+00, ptr noundef nonnull %2) #23 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = call i32 @ffrdef(ptr noundef nonnull %1, ptr noundef nonnull %2) #23 ; 0 uses
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1068
  %i.at = load i32, ptr %i.as, align 4, !tbaa !43
  %i.au = icmp eq i32 %i.at, 0
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = icmp sgt i32 %i.av, 0
  %or.cond7 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond7, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = call i32 @ffpscl(ptr noundef nonnull %1, double noundef 1.000000e+00, double noundef 0.000000e+00, ptr noundef nonnull %2) #23 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ay = call i32 @imcomp_compress_image(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 0 uses
  %i.az = call i32 @ffrdef(ptr noundef nonnull %1, ptr noundef nonnull %2) #23 ; 0 uses
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !26  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1000
  store i32 0, ptr %i.bb, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1008
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i8 0, i64 72, i1 false)
  %i.bd = load i32, ptr %2, align 4, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s, %bb.n, %bb.l, %bb.e, %bb.c
  %.0 = phi i32 [ %i.bd, %bb.s ], [ %i.h, %bb.c ], [ 212, %bb.e ], [ %i.af, %bb.l ], [ %i.ai, %bb.n ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

declare i32 @ffgipr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ffcrhd(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ffcrim(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @imcomp_init_table(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [75 x i8], align 16               ; 6 uses
  %i.b = alloca [12 x i8], align 8                ; 12 uses
  %i.c = alloca [3 x ptr], align 16               ; 4 uses
  %i.d = alloca [3 x ptr], align 16               ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 6 uses
  %i.f = alloca [4 x i8], align 1                 ; 4 uses
  %i.g = alloca [4 x i8], align 1                 ; 4 uses
  %i.h = alloca [3 x ptr], align 16               ; 4 uses
  %i.i = alloca [73 x i8], align 16               ; 8 uses
  %i.j = alloca [6 x i64], align 16               ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) @__const.imcomp_init_table.ttype, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, ptr noundef nonnull align 16 dereferenceable(24) @__const.imcomp_init_table.tunit, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.k = load i32, ptr %5, align 4, !tbaa !18     ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.cw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %1, 0                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 9 uses
  br i1 %i.m, label %bb.c, label %._crit_edge419

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1056
  %i.q = load float, ptr %i.p, align 8, !tbaa !38
  %i.r = fcmp oeq float %i.q, 9.999000e+03
  br i1 %i.r, label %bb.d, label %._crit_edge419

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1000
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36
  %.off = add i32 %i.t, -21
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %._crit_edge419, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ffpmsg(ptr noundef nonnull @.str.42) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

._crit_edge419:                                   ; preds = %bb.b, %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1000 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge419
  store i32 11, ptr %i.v, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge419
  %i.y = phi i32 [ 11, %bb.f ], [ %i.w, %._crit_edge419 ] ; 2 uses
  br i1 %i.m, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1056 ; 2 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !38 ; 3 uses
  %i.ab = fcmp une float %i.aa, 9.999000e+03
  br i1 %i.ab, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 1060 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.thread440, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = fcmp oeq float %i.aa, 0.000000e+00
  br i1 %i.af, label %bb.k, label %.thread

.thread440:                                       ; preds = %bb.i
  store i32 1, ptr %i.ac, align 4, !tbaa !39
  %i.ag = fcmp oeq float %i.aa, 0.000000e+00
  br i1 %i.ag, label %.thread441.a, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq i32 %i.ad, -1
  br i1 %i.ah, label %.thread.sink.split, label %.thread441.a

.thread441.a:                                     ; preds = %.thread440, %bb.k
  br label %.thread.sink.split

bb.l:                                             ; preds = %bb.g
  switch i32 %1, label %.thread [
    i32 20, label %bb.n
    i32 40, label %.fold.split
    i32 10, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.n

.thread.sink.split:                               ; preds = %bb.k, %.thread441.a
  %.sink = phi float [ 4.000000e+00, %.thread441.a ], [ 1.600000e+01, %bb.k ]
  store float %.sink, ptr %i.z, align 8, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.j, %bb.h, %.thread440, %bb.l
  br label %bb.n

.fold.split:                                      ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.fold.split, %.thread, %bb.m
  %i.ai = phi i1 [ false, %.thread ], [ true, %bb.l ], [ false, %bb.m ], [ false, %.fold.split ]
  %.0279 = phi i32 [ %1, %.thread ], [ 16, %bb.l ], [ 8, %bb.m ], [ 32, %.fold.split ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 1008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 48, i1 false)
  %i.ak = icmp eq i32 %i.y, 41
  br i1 %i.ak, label %bb.o, label %bb.ba

bb.o:                                             ; preds = %bb.n
  %i.al = icmp slt i32 %2, 2
  br i1 %i.al, label %bb.p, label %.preheader330.preheader

.preheader330.preheader:                          ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.preheader330.preheader470, label %vector.ph

vector.ph:                                        ; preds = %.preheader330.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi455 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x i64>, ptr %i.am, align 8, !tbaa !37
  %wide.load456 = load <2 x i64>, ptr %i.an, align 8, !tbaa !37
  %i.ao = icmp sgt <2 x i64> %wide.load, splat (i64 3)
  %i.ap = icmp sgt <2 x i64> %wide.load456, splat (i64 3)
  %i.aq = zext <2 x i1> %i.ao to <2 x i32>
  %i.ar = zext <2 x i1> %i.ap to <2 x i32>
  %i.as = add <2 x i32> %vec.phi, %i.aq           ; 2 uses
  %i.at = add <2 x i32> %vec.phi455, %i.ar        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit467, label %.preheader330.preheader470

.preheader330.preheader470:                       ; preds = %.preheader330.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader330.preheader ], [ %n.vec, %middle.block ]
  %.0276334.ph = phi i32 [ 0, %.preheader330.preheader ], [ %i.av, %middle.block ]
  br label %.preheader330

bb.p:                                             ; preds = %bb.o
  tail call void @ffpmsg(ptr noundef nonnull @.str.43) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

.preheader330:                                    ; preds = %.preheader330.preheader470, %.preheader330
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader330 ], [ %indvars.iv.ph, %.preheader330.preheader470 ] ; 2 uses
  %.0276334 = phi i32 [ %spec.select, %.preheader330 ], [ %.0276334.ph, %.preheader330.preheader470 ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !37
  %i.ay = icmp sgt i64 %i.ax, 3
  %i.az = zext i1 %i.ay to i32
  %spec.select = add nuw nsw i32 %.0276334, %i.az ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit467, label %.preheader330, !llvm.loop !94

.loopexit467:                                     ; preds = %.preheader330, %middle.block
  %spec.select.lcssa = phi i32 [ %i.av, %middle.block ], [ %spec.select, %.preheader330 ]
  %i.ba = icmp samesign ult i32 %spec.select.lcssa, 2
  br i1 %i.ba, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %.loopexit467
  tail call void @ffpmsg(ptr noundef nonnull @.str.44) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

.lr.ph:                                           ; preds = %.loopexit467, %.lr.ph
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %.lr.ph ], [ 1, %.loopexit467 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv376
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !37
  %switch326 = icmp ult i64 %i.bc, 2              ; 2 uses
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp ne i64 %indvars.iv.next377, %wide.trip.count
  %or.cond446.not = select i1 %switch326, i1 %exitcond380.not, i1 false
  br i1 %or.cond446.not, label %.lr.ph, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %.lr.ph
  %i.bd = load i64, ptr %i.j, align 16, !tbaa !37
  %i.be = icmp slt i64 %i.bd, 1                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp eq i64 %i.bg, -1
  %or.cond = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.bi = load <2 x i64>, ptr %3, align 8, !tbaa !37
  store <2 x i64> %i.bi, ptr %i.j, align 16, !tbaa !37
  %.not371 = icmp eq i32 %2, 2
  br i1 %.not371, label %.lr.ph348.preheader, label %.lr.ph343.preheader

.lr.ph343.preheader:                              ; preds = %bb.r
  %smax389 = tail call i32 @llvm.smax.i32(i32 %2, i32 3)
  %wide.trip.count390 = zext nneg i32 %smax389 to i64 ; 2 uses
  %i.bj = add nsw i64 %wide.trip.count390, -2     ; 3 uses
  %min.iters.check458 = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check458, label %.lr.ph343.preheader468, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph343.preheader
  %n.vec460 = and i64 %i.bj, -4                   ; 3 uses
  %i.bk = or disjoint i64 %n.vec460, 2
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next463, %vector.body461 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index462 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store <2 x i64> splat (i64 1), ptr %i.bm, align 16, !tbaa !37
  store <2 x i64> splat (i64 1), ptr %i.bn, align 16, !tbaa !37
  %index.next463 = add nuw i64 %index462, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next463, %n.vec460
  br i1 %i.bo, label %middle.block464, label %vector.body461, !llvm.loop !96

middle.block464:                                  ; preds = %vector.body461
  %cmp.n465 = icmp eq i64 %i.bj, %n.vec460
  br i1 %cmp.n465, label %.lr.ph348.preheader, label %.lr.ph343.preheader468

.lr.ph343.preheader468:                           ; preds = %.lr.ph343.preheader, %middle.block464
  %indvars.iv386.ph = phi i64 [ 2, %.lr.ph343.preheader ], [ %i.bk, %middle.block464 ]
  br label %.lr.ph343

.lr.ph343:                                        ; preds = %.lr.ph343.preheader468, %.lr.ph343
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph343 ], [ %indvars.iv386.ph, %.lr.ph343.preheader468 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv386
  store i64 1, ptr %i.bp, align 8, !tbaa !37
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count390
  br i1 %exitcond391.not, label %.lr.ph348.preheader, label %.lr.ph343, !llvm.loop !97

bb.s:                                             ; preds = %._crit_edge
  %or.cond4 = and i1 %switch326, %i.be
  br i1 %or.cond4, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.bq = load i64, ptr %3, align 8, !tbaa !37
  store i64 %i.bq, ptr %i.j, align 16, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !37 ; 11 uses
  %i.bt = icmp slt i64 %i.bs, 31
  br i1 %i.bt, label %.lr.ph348.preheader.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = and i64 %i.bs, 15
  %i.bv = add nsw i64 %i.bu, -4
  %or.cond317 = icmp ult i64 %i.bv, -3
  br i1 %or.cond317, label %.lr.ph348.preheader.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = urem i64 %i.bs, 24
  %i.bx = add nsw i64 %i.bw, -4
  %or.cond318 = icmp ult i64 %i.bx, -3
  br i1 %or.cond318, label %.lr.ph348.preheader.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = urem i64 %i.bs, 20
  %i.bz = add nsw i64 %i.by, -4
  %or.cond319 = icmp ult i64 %i.bz, -3
  br i1 %or.cond319, label %.lr.ph348.preheader.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = urem i64 %i.bs, 30
  %i.cb = add nsw i64 %i.ca, -4
  %or.cond320 = icmp ult i64 %i.cb, -3
  br i1 %or.cond320, label %.lr.ph348.preheader.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = urem i64 %i.bs, 28
  %i.cd = add nsw i64 %i.cc, -4
  %or.cond321 = icmp ult i64 %i.cd, -3
  br i1 %or.cond321, label %.lr.ph348.preheader.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = urem i64 %i.bs, 26
  %i.cf = add nsw i64 %i.ce, -4
  %or.cond322 = icmp ult i64 %i.cf, -3
  br i1 %or.cond322, label %.lr.ph348.preheader.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = urem i64 %i.bs, 22
  %i.ch = add nsw i64 %i.cg, -4
  %or.cond323 = icmp ult i64 %i.ch, -3
  br i1 %or.cond323, label %.lr.ph348.preheader.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = urem i64 %i.bs, 18
  %i.cj = add nsw i64 %i.ci, -4
  %or.cond324 = icmp ult i64 %i.cj, -3
  br i1 %or.cond324, label %.lr.ph348.preheader.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = urem i64 %i.bs, 14
  %i.cl = add nsw i64 %i.ck, -4
  %or.cond325 = icmp ult i64 %i.cl, -3
  %.453 = select i1 %or.cond325, i64 14, i64 17
  br label %.lr.ph348.preheader.sink.split

bb.ad:                                            ; preds = %bb.s
  br i1 %i.be, label %bb.ae, label %.lr.ph340.preheader

bb.ae:                                            ; preds = %bb.ad
  %i.cm = load i64, ptr %3, align 8, !tbaa !37
  store i64 %i.cm, ptr %i.j, align 16, !tbaa !37
  br label %.lr.ph340.preheader

.lr.ph340.preheader:                              ; preds = %bb.ad, %bb.ae
  %i.cn = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.cn, 1
  %i.co = icmp eq i32 %2, 2
  br i1 %i.co, label %.lr.ph340.epil.preheader, label %.lr.ph340.preheader.new

.lr.ph340.preheader.new:                          ; preds = %.lr.ph340.preheader
  %unroll_iter = and i64 %i.cn, -2
  br label %.lr.ph340

.lr.ph340:                                        ; preds = %bb.aj, %.lr.ph340.preheader.new
  %indvars.iv381 = phi i64 [ 1, %.lr.ph340.preheader.new ], [ %indvars.iv.next382.1, %bb.aj ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph340.preheader.new ], [ %niter.next.1, %bb.aj ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv381 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !37 ; 2 uses
  %i.cr = icmp slt i64 %i.cq, 0
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph340
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv381
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !37
  br label %.sink.split

bb.ag:                                            ; preds = %.lr.ph340
  %i.cu = icmp eq i64 %i.cq, 0
  br i1 %i.cu, label %.sink.split, label %.lr.ph340.1

.sink.split:                                      ; preds = %bb.ag, %bb.af
  %.sink447 = phi i64 [ %i.ct, %bb.af ], [ 1, %bb.ag ]
  store i64 %.sink447, ptr %i.cp, align 8, !tbaa !37
  br label %.lr.ph340.1

.lr.ph340.1:                                      ; preds = %.sink.split, %bb.ag
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next382 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !37 ; 2 uses
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph340.1
  %i.cy = icmp eq i64 %i.cw, 0
  br i1 %i.cy, label %.sink.split.1, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph340.1
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next382
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !37
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.ai, %bb.ah
  %.sink447.1 = phi i64 [ %i.da, %bb.ai ], [ 1, %bb.ah ]
  store i64 %.sink447.1, ptr %i.cv, align 8, !tbaa !37
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.1, %bb.ah
  %indvars.iv.next382.1 = add nuw nsw i64 %indvars.iv381, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph348.preheader.loopexit469.unr-lcssa, label %.lr.ph340, !llvm.loop !98

.lr.ph348.preheader.sink.split:                   ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.sink448.a = phi i64 [ %i.bs, %bb.t ], [ 16, %bb.u ], [ 20, %bb.w ], [ 28, %bb.y ], [ 22, %bb.aa ], [ 18, %bb.ab ], [ %.453, %bb.ac ], [ 26, %bb.z ], [ 30, %bb.x ], [ 24, %bb.v ]
  store i64 %.sink448.a, ptr %i.bf, align 8, !tbaa !37
  br label %.lr.ph348.preheader

.lr.ph348.preheader.loopexit469.unr-lcssa:        ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph348.preheader, label %.lr.ph340.epil.preheader

.lr.ph340.epil.preheader:                         ; preds = %.lr.ph348.preheader.loopexit469.unr-lcssa, %.lr.ph340.preheader
  %indvars.iv381.epil.init = phi i64 [ 1, %.lr.ph340.preheader ], [ %indvars.iv.next382.1, %.lr.ph348.preheader.loopexit469.unr-lcssa ] ; 2 uses
  %lcmp.mod474 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod474)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv381.epil.init ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !37 ; 2 uses
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph340.epil.preheader
  %i.de = icmp eq i64 %i.dc, 0
  br i1 %i.de, label %.sink.split.epil, label %.lr.ph348.preheader

bb.al:                                            ; preds = %.lr.ph340.epil.preheader
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv381.epil.init
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !37
  br label %.sink.split.epil

.sink.split.epil:                                 ; preds = %bb.al, %bb.ak
  %.sink447.epil = phi i64 [ %i.dg, %bb.al ], [ 1, %bb.ak ]
  store i64 %.sink447.epil, ptr %i.db, align 8, !tbaa !37
  br label %.lr.ph348.preheader

.lr.ph348.preheader:                              ; preds = %.lr.ph348.preheader.loopexit469.unr-lcssa, %.sink.split.epil, %bb.ak, %.lr.ph343, %middle.block464, %.lr.ph348.preheader.sink.split, %bb.r
  br label %.lr.ph348

.lr.ph348:                                        ; preds = %.lr.ph348.preheader, %bb.ap
  %indvars.iv392 = phi i64 [ %indvars.iv.next393, %bb.ap ], [ 0, %.lr.ph348.preheader ] ; 3 uses
  %.0346 = phi i32 [ %.1, %bb.ap ], [ -1, %.lr.ph348.preheader ] ; 3 uses
  %.0273345 = phi i32 [ %.1274, %bb.ap ], [ -1, %.lr.ph348.preheader ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv392
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !37
  %i.dj = icmp sgt i64 %i.di, 1
  br i1 %i.dj, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.lr.ph348
  %i.dk = icmp slt i32 %.0273345, 0
  %i.dl = trunc nuw nsw i64 %indvars.iv392 to i32 ; 2 uses
  br i1 %i.dk, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dm = icmp slt i32 %.0346, 0
  br i1 %i.dm, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @ffpmsg(ptr noundef nonnull @.str.45) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

bb.ap:                                            ; preds = %bb.an, %bb.am, %.lr.ph348
  %.1274 = phi i32 [ %.0273345, %.lr.ph348 ], [ %i.dl, %bb.am ], [ %.0273345, %bb.an ] ; 3 uses
  %.1 = phi i32 [ %.0346, %.lr.ph348 ], [ %.0346, %bb.am ], [ %i.dl, %bb.an ] ; 3 uses
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %exitcond397.not = icmp eq i64 %indvars.iv.next393, %wide.trip.count
  br i1 %exitcond397.not, label %._crit_edge349, label %.lr.ph348, !llvm.loop !99

._crit_edge349:                                   ; preds = %bb.ap
  %i.dn = icmp slt i32 %.1274, 0
  %i.do = icmp slt i32 %.1, 0
  %or.cond6 = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond6, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge349
  tail call void @ffpmsg(ptr noundef nonnull @.str.46) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

bb.ar:                                            ; preds = %._crit_edge349
  %i.dp = zext nneg i32 %.1274 to i64             ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dp ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !37 ; 4 uses
  %i.ds = icmp slt i64 %i.dr, 4
  br i1 %i.ds, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dt = zext nneg i32 %.1 to i64                ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dt ; 3 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !37 ; 2 uses
  %i.dw = icmp slt i64 %i.dv, 4
  br i1 %i.dw, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  tail call void @ffpmsg(ptr noundef nonnull @.str.47) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

bb.au:                                            ; preds = %bb.as
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dp
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !37 ; 3 uses
  %i.dz = srem i64 %i.dy, %i.dr
  %i.ea = sdiv i64 %i.dy, %i.dr
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  %i.ec = add i32 %i.eb, -1
  %or.cond8 = icmp ult i32 %i.ec, 3
  br i1 %or.cond8, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ed = trunc i64 %i.ea to i32
  %i.ee = uitofp nneg i32 %i.eb to double
  %i.ef = sitofp i32 %i.ed to double
  %i.eg = fdiv double %i.ee, %i.ef
  %i.eh = tail call double @llvm.ceil.f64(double %i.eg)
  %i.ei = fptosi double %i.eh to i32
  %i.ej = sext i32 %i.ei to i64
  %i.ek = add nsw i64 %i.dr, %i.ej                ; 2 uses
  store i64 %i.ek, ptr %i.dq, align 8, !tbaa !37
  %i.el = srem i64 %i.dy, %i.ek
  %i.em = trunc i64 %i.el to i32
  %i.en = add i32 %i.em, -1
  %or.cond10 = icmp ult i32 %i.en, 3
  br i1 %or.cond10, label %bb.aw, label %._crit_edge420

._crit_edge420:                                   ; preds = %bb.av
  %.pre421 = load i64, ptr %i.du, align 8, !tbaa !37
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @ffpmsg(ptr noundef nonnull @.str.48) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

bb.ax:                                            ; preds = %._crit_edge420, %bb.au
  %i.eo = phi i64 [ %.pre421, %._crit_edge420 ], [ %i.dv, %bb.au ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dt
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !37 ; 3 uses
  %i.er = srem i64 %i.eq, %i.eo
  %i.es = sdiv i64 %i.eq, %i.eo
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  %i.eu = add i32 %i.et, -1
  %or.cond12 = icmp ult i32 %i.eu, 3
  br i1 %or.cond12, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ev = trunc i64 %i.es to i32
  %i.ew = uitofp nneg i32 %i.et to double
  %i.ex = sitofp i32 %i.ev to double
  %i.ey = fdiv double %i.ew, %i.ex
  %i.ez = tail call double @llvm.ceil.f64(double %i.ey)
  %i.fa = fptosi double %i.ez to i32
  %i.fb = sext i32 %i.fa to i64
  %i.fc = add nsw i64 %i.eo, %i.fb                ; 2 uses
  store i64 %i.fc, ptr %i.du, align 8, !tbaa !37
  %i.fd = srem i64 %i.eq, %i.fc
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = add i32 %i.fe, -1
  %or.cond14 = icmp ult i32 %i.ff, 3
  br i1 %or.cond14, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @ffpmsg(ptr noundef nonnull @.str.49) #23
  store i32 413, ptr %5, align 4, !tbaa !18
  br label %bb.cw

bb.ba:                                            ; preds = %bb.ax, %bb.ay, %bb.n
  %.promoted = load i64, ptr %i.j, align 16       ; 3 uses
  %i.fg = icmp sgt i32 %2, 0                      ; 4 uses
  br i1 %i.fg, label %bb.bb, label %._crit_edge356

bb.bb:                                            ; preds = %bb.ba
  %wide.trip.count401 = zext nneg i32 %2 to i64
  %i.fh = icmp slt i64 %.promoted, 1
  br i1 %i.fh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fi = load i64, ptr %3, align 8, !tbaa !37
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.fj = phi i64 [ %i.fi, %bb.bc ], [ %.promoted, %bb.bb ] ; 4 uses
  %exitcond402.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond402.peel.not, label %._crit_edge356, label %.lr.ph355.peel.next.preheader

.lr.ph355.peel.next.preheader:                    ; preds = %bb.bd
  %i.fk = add nsw i64 %wide.trip.count401, -1     ; 3 uses
  %xtraiter475 = and i64 %i.fk, 1
  %i.fl = icmp eq i32 %2, 2
  br i1 %i.fl, label %.lr.ph355.peel.next.epil.preheader, label %.lr.ph355.peel.next.preheader.new

.lr.ph355.peel.next.preheader.new:                ; preds = %.lr.ph355.peel.next.preheader
  %unroll_iter478 = and i64 %i.fk, -2
  br label %.lr.ph355.peel.next

.lr.ph355.peel.next:                              ; preds = %bb.bi, %.lr.ph355.peel.next.preheader.new
  %indvars.iv398 = phi i64 [ 1, %.lr.ph355.peel.next.preheader.new ], [ %indvars.iv.next399.1, %bb.bi ] ; 4 uses
  %niter479 = phi i64 [ 0, %.lr.ph355.peel.next.preheader.new ], [ %niter479.next.1, %bb.bi ]
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv398 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !37 ; 2 uses
  %i.fo = icmp slt i64 %i.fn, 0
  br i1 %i.fo, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph355.peel.next
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv398
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !37
  br label %.sink.split449.a

bb.bf:                                            ; preds = %.lr.ph355.peel.next
  %i.fr = icmp eq i64 %i.fn, 0
  br i1 %i.fr, label %.sink.split449.a, label %.lr.ph355.peel.next.1

.sink.split449.a:                                 ; preds = %bb.bf, %bb.be
  %.sink450.a = phi i64 [ %i.fq, %bb.be ], [ 1, %bb.bf ]
  store i64 %.sink450.a, ptr %i.fm, align 8, !tbaa !37
  br label %.lr.ph355.peel.next.1

.lr.ph355.peel.next.1:                            ; preds = %.sink.split449.a, %bb.bf
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next399 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !37 ; 2 uses
  %i.fu = icmp slt i64 %i.ft, 0
  br i1 %i.fu, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph355.peel.next.1
  %i.fv = icmp eq i64 %i.ft, 0
  br i1 %i.fv, label %.sink.split449.1, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph355.peel.next.1
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next399
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !37
  br label %.sink.split449.1

.sink.split449.1:                                 ; preds = %bb.bh, %bb.bg
  %.sink450.1 = phi i64 [ %i.fx, %bb.bh ], [ 1, %bb.bg ]
  store i64 %.sink450.1, ptr %i.fs, align 8, !tbaa !37
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split449.1, %bb.bg
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398, 2 ; 2 uses
  %niter479.next.1 = add i64 %niter479, 2         ; 2 uses
  %niter479.ncmp.1 = icmp eq i64 %niter479.next.1, %unroll_iter478
  br i1 %niter479.ncmp.1, label %._crit_edge356.loopexit.unr-lcssa, label %.lr.ph355.peel.next, !llvm.loop !100

._crit_edge356.loopexit.unr-lcssa:                ; preds = %bb.bi
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %._crit_edge356, label %.lr.ph355.peel.next.epil.preheader

.lr.ph355.peel.next.epil.preheader:               ; preds = %._crit_edge356.loopexit.unr-lcssa, %.lr.ph355.peel.next.preheader
  %indvars.iv398.epil.init = phi i64 [ 1, %.lr.ph355.peel.next.preheader ], [ %indvars.iv.next399.1, %._crit_edge356.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod477 = trunc i64 %i.fk to i1
  tail call void @llvm.assume(i1 %lcmp.mod477)
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv398.epil.init ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !37 ; 2 uses
  %i.ga = icmp slt i64 %i.fz, 0
  br i1 %i.ga, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph355.peel.next.epil.preheader
  %i.gb = icmp eq i64 %i.fz, 0
  br i1 %i.gb, label %.sink.split449.epil, label %._crit_edge356

bb.bk:                                            ; preds = %.lr.ph355.peel.next.epil.preheader
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv398.epil.init
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !37
  br label %.sink.split449.epil

.sink.split449.epil:                              ; preds = %bb.bk, %bb.bj
end_hunk_0
