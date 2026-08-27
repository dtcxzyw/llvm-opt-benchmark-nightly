Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5VM?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@H5VM_hyper_stride:bb.a
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !8
  %i.fg = load i64, ptr %i.ez, align 8, !tbaa !8
  %i.fh = mul i64 %i.fg, %.07985.epil.init
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !8
  %i.fk = mul i64 %i.fj, %i.fh
  %i.fl = add i64 %i.fk, %.08084.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.epil.preheader, %.loopexit.loopexit98.unr-lcssa, %.lr.ph.split.us.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.o, %bb.n, %bb.i, %bb.f
  %.1 = phi i64 [ %i.cl, %bb.n ], [ %i.p, %bb.f ], [ %i.at, %bb.i ], [ %i.f, %bb.o ], [ %i.f, %.lr.ph.split.us.epil.preheader ], [ %i.f, %.loopexit.loopexit.unr-lcssa ], [ %i.en, %.loopexit.loopexit98.unr-lcssa ], [ %i.fl, %.lr.ph.split.epil.preheader ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @H5VM_hyper_eq(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not35 = icmp eq ptr %3, null                  ; 2 uses
  %.not37 = icmp eq ptr %2, null
  %.not38 = icmp eq ptr %4, null
  %or.cond = or i1 %.not37, %.not38
  br i1 %or.cond, label %.thread, label %.preheader.split.split

.preheader.split.split:                           ; preds = %.preheader
  %.not = icmp eq ptr %1, null
  %wide.trip.count86 = zext i32 %0 to i64         ; 4 uses
  br i1 %.not, label %.preheader.split.split.split.us, label %.preheader.split.split.split

.preheader.split.split.split.us:                  ; preds = %.preheader.split.split
  br i1 %.not35, label %.preheader.split.split.split.us.split.us, label %.preheader.split.split.split.us.split

.preheader.split.split.split.us.split.us:         ; preds = %.preheader.split.split.split.us, %bb.b
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.b ], [ 0, %.preheader.split.split.split.us ] ; 3 uses
  %.02543.us52.us = phi i64 [ %i.h, %bb.b ], [ 1, %.preheader.split.split.split.us ]
  %.02642.us53.us = phi i64 [ %i.f, %bb.b ], [ 1, %.preheader.split.split.split.us ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv83
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv83
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %.not39.us55.us.not = icmp eq i64 %i.c, %i.e
  br i1 %.not39.us55.us.not, label %bb.c, label %.thread

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.thread, label %.preheader.split.split.split.us.split.us, !llvm.loop !12

bb.c:                                             ; preds = %.preheader.split.split.split.us.split.us
  %i.f = mul i64 %i.c, %.02642.us53.us            ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = mul i64 %i.c, %.02543.us52.us            ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.b

.preheader.split.split.split.us.split:            ; preds = %.preheader.split.split.split.us, %bb.e
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.e ], [ 0, %.preheader.split.split.split.us ] ; 4 uses
  %.02543.us52 = phi i64 [ %i.r, %bb.e ], [ 1, %.preheader.split.split.split.us ]
  %.02642.us53 = phi i64 [ %i.p, %bb.e ], [ 1, %.preheader.split.split.split.us ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv78
  %i.k = load i64, ptr %i.j, align 8, !tbaa !8
  %.not36.us54 = icmp eq i64 %i.k, 0
  br i1 %.not36.us54, label %bb.f, label %.thread

bb.e:                                             ; preds = %bb.h
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count86
  br i1 %exitcond82.not, label %.thread, label %.preheader.split.split.split.us.split, !llvm.loop !12

bb.f:                                             ; preds = %.preheader.split.split.split.us.split
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv78
  %i.m = load i64, ptr %i.l, align 8, !tbaa !8    ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv78
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8
  %.not39.us55.not = icmp eq i64 %i.m, %i.o
  br i1 %.not39.us55.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = mul i64 %i.m, %.02642.us53               ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = mul i64 %i.m, %.02543.us52               ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.e

.preheader.split.split.split:                     ; preds = %.preheader.split.split
  br i1 %.not35, label %.preheader.split.split.split.split.us, label %.preheader.split.split.split.split

.preheader.split.split.split.split.us:            ; preds = %.preheader.split.split.split, %bb.i
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %bb.i ], [ 0, %.preheader.split.split.split ] ; 4 uses
  %.02543.us59 = phi i64 [ %i.ab, %bb.i ], [ 1, %.preheader.split.split.split ]
  %.02642.us60 = phi i64 [ %i.z, %bb.i ], [ 1, %.preheader.split.split.split ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  %.not36.us61 = icmp eq i64 %i.u, 0
  br i1 %.not36.us61, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.l
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count86
  br i1 %exitcond77.not, label %.thread, label %.preheader.split.split.split.split.us, !llvm.loop !12

bb.j:                                             ; preds = %.preheader.split.split.split.split.us
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.w = load i64, ptr %i.v, align 8, !tbaa !8    ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv73
  %i.y = load i64, ptr %i.x, align 8, !tbaa !8
  %.not39.us62.not = icmp eq i64 %i.w, %i.y
  br i1 %.not39.us62.not, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.z = mul i64 %i.w, %.02642.us60               ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = mul i64 %i.w, %.02543.us59              ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.thread, label %bb.i

bb.m:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count86
  br i1 %exitcond.not, label %.thread, label %.preheader.split.split.split.split, !llvm.loop !12

.preheader.split.split.split.split:               ; preds = %.preheader.split.split.split, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.preheader.split.split.split ] ; 5 uses
  %.02543 = phi i64 [ %i.an, %bb.m ], [ 1, %.preheader.split.split.split ]
  %.02642 = phi i64 [ %i.al, %bb.m ], [ 1, %.preheader.split.split.split ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !8
  %.not36 = icmp eq i64 %i.ae, %i.ag
  br i1 %.not36, label %bb.n, label %.thread

bb.n:                                             ; preds = %.preheader.split.split.split.split
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !8  ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !8
  %.not39.not = icmp eq i64 %i.ai, %i.ak
  br i1 %.not39.not, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.al = mul i64 %i.ai, %.02642                  ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = mul i64 %i.ai, %.02543                  ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.o, %bb.n, %bb.p, %.preheader.split.split.split.split, %bb.m, %bb.i, %.preheader.split.split.split.split.us, %bb.j, %bb.k, %bb.l, %bb.e, %.preheader.split.split.split.us.split, %bb.f, %bb.g, %bb.h, %bb.b, %.preheader.split.split.split.us.split.us, %bb.c, %bb.d, %.preheader, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.e ], [ 0, %.preheader ], [ 0, %bb.j ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %.preheader.split.split.split.us.split.us ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %.preheader.split.split.split.us.split ], [ 0, %.preheader.split.split.split.split.us ], [ 0, %bb.l ], [ 0, %bb.k ], [ 1, %bb.i ], [ 0, %.preheader.split.split.split.split ], [ 0, %bb.n ], [ 0, %bb.p ], [ 1, %bb.m ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @H5VM_hyper_fill(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i64], align 16              ; 5 uses
  %i.b = alloca [33 x i64], align 16              ; 11 uses
  %i.c = alloca [33 x i64], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %.not = icmp eq ptr %1, null
  %i.d = zext i32 %0 to i64
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 8 %1, i64 %i.e, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = call i64 @H5VM_hyper_stride(i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.c) ; 2 uses
  %.not21.i = icmp eq i32 %0, 0
  br i1 %.not21.i, label %.lr.ph45.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.g = add i32 %0, -1                           ; 3 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %.lr.ph.preheader, label %H5VM__stride_optimize1.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h
  %i.m = load i64, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %.not20.i47 = icmp eq i32 %i.g, 0
  br i1 %.not20.i47, label %.lr.ph45.thread.i, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.n = zext i32 %0 to i64
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %.lr.ph.i
  %indvars.iv.next.a = add nsw i64 %indvars.iv48, -1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !8
  %i.q = mul i64 %i.p, %i.r                       ; 2 uses
  %.not20.i = icmp eq i32 %7, 0
  br i1 %.not20.i, label %.lr.ph45.thread.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %i.r = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.q, %.lr.ph ] ; 4 uses
  %6 = phi i32 [ %i.g, %.lr.ph.i.lr.ph ], [ %7, %.lr.ph ] ; 2 uses
  %indvars.iv48 = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %indvars.iv.next.a, %.lr.ph ] ; 2 uses
  %i.s = add i64 %indvars.iv48, 4294967294
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !8
  %i.w = add i64 %i.v, %i.r
  store i64 %i.w, ptr %i.u, align 8, !tbaa !8
  %7 = add i32 %6, -1                             ; 3 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !8    ; 2 uses
  %.not19.i = icmp ne i64 %i.y, 0
  %i.z = icmp eq i64 %i.y, %i.r
  %or.cond = select i1 %.not19.i, i1 %i.z, i1 false
  br i1 %or.cond, label %.lr.ph, label %H5VM__stride_optimize1.exit, !llvm.loop !13

H5VM__stride_optimize1.exit:                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.014.lcssa = phi i32 [ %0, %.lr.ph.i.preheader ], [ %6, %.lr.ph.i ] ; 5 uses
  %.0.lcssa = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.aa = zext i32 %.014.lcssa to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 16 %i.b, i64 %i.ab, i1 false)
  %i.ac = add i32 %.014.lcssa, -1
  %xtraiter = and i32 %.014.lcssa, 7              ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 7
  br i1 %i.ad, label %.lr.ph.i.i.epil.preheader, label %H5VM__stride_optimize1.exit.new

H5VM__stride_optimize1.exit.new:                  ; preds = %H5VM__stride_optimize1.exit
  %unroll_iter = and i32 %.014.lcssa, -8
  br label %.lr.ph.i.i

.lr.ph45.thread.i:                                ; preds = %.lr.ph, %.lr.ph.preheader, %bb.d
  %.1.ph = phi i64 [ 1, %bb.d ], [ %i.m, %.lr.ph.preheader ], [ %i.q, %.lr.ph ]
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.af = trunc i32 %5 to i8
  br label %.lr.ph45.split.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %H5VM__stride_optimize1.exit.new
  %.011.i.i = phi i64 [ 1, %H5VM__stride_optimize1.exit.new ], [ %i.bd, %.lr.ph.i.i ]
  %.0610.i.i = phi ptr [ %i.b, %H5VM__stride_optimize1.exit.new ], [ %i.bb, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i32 [ 0, %H5VM__stride_optimize1.exit.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 8
  %i.ah = load i64, ptr %.0610.i.i, align 8, !tbaa !8
  %i.ai = mul i64 %i.ah, %.011.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 16
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !8
  %i.al = mul i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 24
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !8
  %i.ao = mul i64 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 32
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !8
  %i.ar = mul i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 40
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !8
  %i.au = mul i64 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 48
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !8
  %i.ax = mul i64 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 56
  %i.az = load i64, ptr %i.av, align 8, !tbaa !8
  %i.ba = mul i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 64 ; 2 uses
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !8
  %i.bd = mul i64 %i.bc, %i.ba                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %H5VM_vector_reduce_product.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !14

H5VM_vector_reduce_product.exit.i.unr-lcssa:      ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %H5VM_vector_reduce_product.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %H5VM_vector_reduce_product.exit.i.unr-lcssa, %H5VM__stride_optimize1.exit
  %.011.i.i.epil.init = phi i64 [ 1, %H5VM__stride_optimize1.exit ], [ %i.bd, %H5VM_vector_reduce_product.exit.i.unr-lcssa ]
  %.0610.i.i.epil.init = phi ptr [ %i.b, %H5VM__stride_optimize1.exit ], [ %i.bb, %H5VM_vector_reduce_product.exit.i.unr-lcssa ]
  %lcmp.mod56 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.011.i.i.epil = phi i64 [ %i.bg, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0610.i.i.epil = phi ptr [ %i.be, %.lr.ph.i.i.epil ], [ %.0610.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0610.i.i.epil, i64 8
  %i.bf = load i64, ptr %.0610.i.i.epil, align 8, !tbaa !8
  %i.bg = mul i64 %i.bf, %.011.i.i.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %H5VM_vector_reduce_product.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !15

H5VM_vector_reduce_product.exit.i:                ; preds = %.lr.ph.i.i.epil, %H5VM_vector_reduce_product.exit.i.unr-lcssa
  %.lcssa49 = phi i64 [ %i.bd, %H5VM_vector_reduce_product.exit.i.unr-lcssa ], [ %i.bg, %.lr.ph.i.i.epil ] ; 2 uses
  %.not47.i = icmp eq i64 %.lcssa49, 0
  br i1 %.not47.i, label %H5VM_stride_fill.exit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %H5VM_vector_reduce_product.exit.i
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 %i.f ; 2 uses
  %i.bh = trunc i32 %5 to i8                      ; 2 uses
  %.02340.i = add i32 %.014.lcssa, -1             ; 2 uses
  %i.bi = icmp sgt i32 %.02340.i, -1
  br i1 %i.bi, label %.lr.ph.us.i, label %.lr.ph45.split.i

.lr.ph.us.i:                                      ; preds = %.lr.ph45.i, %._crit_edge.us.i
  %.02444.us.i = phi i64 [ %i.bs, %._crit_edge.us.i ], [ 0, %.lr.ph45.i ]
  %.02543.us.i = phi ptr [ %i.bl, %._crit_edge.us.i ], [ %9, %.lr.ph45.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.02543.us.i, i8 %i.bh, i64 %.0.lcssa, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.us.i
  %.02342.us.i = phi i32 [ %.02340.i, %.lr.ph.us.i ], [ %.023.us.i, %bb.f ] ; 3 uses
  %.12641.us.i = phi ptr [ %.02543.us.i, %.lr.ph.us.i ], [ %i.bl, %bb.f ]
  %10 = zext nneg i32 %.02342.us.i to i64         ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %10
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.12641.us.i, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %10 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !8
  %i.bo = add i64 %i.bn, -1                       ; 2 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !8
  %.not30.us.i = icmp eq i64 %i.bo, 0
  br i1 %.not30.us.i, label %bb.f, label %._crit_edge.us.i

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %10
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !8
  store i64 %i.bq, ptr %i.bm, align 8, !tbaa !8
  %.023.us.i = add nsw i32 %.02342.us.i, -1
  %i.br = icmp sgt i32 %.02342.us.i, 0
  br i1 %i.br, label %bb.e, label %._crit_edge.us.i, !llvm.loop !17

._crit_edge.us.i:                                 ; preds = %bb.f, %bb.e
  %i.bs = add nuw i64 %.02444.us.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %.lcssa49
  br i1 %exitcond.not.i, label %H5VM_stride_fill.exit, label %.lr.ph.us.i, !llvm.loop !18

.lr.ph45.split.i:                                 ; preds = %.lr.ph45.i, %.lr.ph45.thread.i
  %i.bt = phi ptr [ %i.ae, %.lr.ph45.thread.i ], [ %9, %.lr.ph45.i ]
  %.118 = phi i64 [ %.1.ph, %.lr.ph45.thread.i ], [ %.0.lcssa, %.lr.ph45.i ]
  %i.bu = phi i8 [ %i.af, %.lr.ph45.thread.i ], [ %i.bh, %.lr.ph45.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bt, i8 %i.bu, i64 %.118, i1 false)
  br label %H5VM_stride_fill.exit

H5VM_stride_fill.exit:                            ; preds = %._crit_edge.us.i, %H5VM_vector_reduce_product.exit.i, %.lr.ph45.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @H5VM_stride_fill(i32 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq ptr %2, null
  %i.b = zext i32 %0 to i64
  %i.c = shl nuw nsw i64 %i.b, 3                  ; 2 uses
  %i.d = icmp eq i32 %0, 0                        ; 2 uses
  br i1 %.not, label %.split28, label %.split

.split:                                           ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %2, i64 %i.c, i1 false)
  br i1 %i.d, label %.lr.ph45.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split
  %xtraiter = and i32 %0, 7                       ; 3 uses
  %i.e = icmp ult i32 %0, 8
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %0, -8
  br label %.lr.ph.i

.lr.ph45.thread:                                  ; preds = %.split
  %i.f = trunc i32 %5 to i8
  br label %.lr.ph45.split

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.ad, %.lr.ph.i ]
  %.0610.i = phi ptr [ %2, %.lr.ph.i.preheader.new ], [ %i.ab, %.lr.ph.i ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0610.i, i64 8
  %i.h = load i64, ptr %.0610.i, align 8, !tbaa !8
  %i.i = mul i64 %i.h, %.011.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0610.i, i64 16
  %i.k = load i64, ptr %i.g, align 8, !tbaa !8
  %i.l = mul i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0610.i, i64 24
  %i.n = load i64, ptr %i.j, align 8, !tbaa !8
  %i.o = mul i64 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %.0610.i, i64 32
  %i.q = load i64, ptr %i.m, align 8, !tbaa !8
  %i.r = mul i64 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %.0610.i, i64 40
  %i.t = load i64, ptr %i.p, align 8, !tbaa !8
  %i.u = mul i64 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %.0610.i, i64 48
  %i.w = load i64, ptr %i.s, align 8, !tbaa !8
  %i.x = mul i64 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %.0610.i, i64 56
  %i.z = load i64, ptr %i.v, align 8, !tbaa !8
  %i.aa = mul i64 %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %.0610.i, i64 64 ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !8
  %i.ad = mul i64 %i.ac, %i.aa                    ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %H5VM_vector_reduce_product.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

.split28:                                         ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.c, i1 false)
  %.mux.i33 = zext i1 %i.d to i64
  br label %H5VM_vector_reduce_product.exit

H5VM_vector_reduce_product.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %H5VM_vector_reduce_product.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %H5VM_vector_reduce_product.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.ad, %H5VM_vector_reduce_product.exit.loopexit.unr-lcssa ]
  %.0610.i.epil.init = phi ptr [ %2, %.lr.ph.i.preheader ], [ %i.ab, %H5VM_vector_reduce_product.exit.loopexit.unr-lcssa ]
  %lcmp.mod62 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi i64 [ %i.ag, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0610.i.epil = phi ptr [ %i.ae, %.lr.ph.i.epil ], [ %.0610.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0610.i.epil, i64 8
  %i.af = load i64, ptr %.0610.i.epil, align 8, !tbaa !8
  %i.ag = mul i64 %i.af, %.011.i.epil             ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %H5VM_vector_reduce_product.exit, label %.lr.ph.i.epil, !llvm.loop !19

H5VM_vector_reduce_product.exit:                  ; preds = %H5VM_vector_reduce_product.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.split28
  %phi.call = phi i64 [ %.mux.i33, %.split28 ], [ %i.ad, %H5VM_vector_reduce_product.exit.loopexit.unr-lcssa ], [ %i.ag, %.lr.ph.i.epil ] ; 2 uses
  %.not47 = icmp eq i64 %phi.call, 0
  br i1 %.not47, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %H5VM_vector_reduce_product.exit
  %i.ah = trunc i32 %5 to i8                      ; 2 uses
  %.02340 = add i32 %0, -1                        ; 2 uses
  %i.ai = icmp sgt i32 %.02340, -1
  br i1 %i.ai, label %.lr.ph.us, label %.lr.ph45.split

.lr.ph.us:                                        ; preds = %.lr.ph45, %._crit_edge.us
  %.02444.us = phi i64 [ %i.at, %._crit_edge.us ], [ 0, %.lr.ph45 ]
  %.02543.us = phi ptr [ %i.am, %._crit_edge.us ], [ %4, %.lr.ph45 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.02543.us, i8 %i.ah, i64 %1, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.c
  %.02342.us = phi i32 [ %.02340, %.lr.ph.us ], [ %.023.us, %bb.c ] ; 3 uses
  %.12641.us = phi ptr [ %.02543.us, %.lr.ph.us ], [ %i.am, %bb.c ]
  %i.aj = zext nneg i32 %.02342.us to i64         ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %.12641.us, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aj ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !8
  %i.ap = add i64 %i.ao, -1                       ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !8
  %.not30.us = icmp eq i64 %i.ap, 0
  br i1 %.not30.us, label %bb.c, label %._crit_edge.us

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aj
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !8
  store i64 %i.ar, ptr %i.an, align 8, !tbaa !8
  %.023.us = add nsw i32 %.02342.us, -1
  %i.as = icmp sgt i32 %.02342.us, 0
  br i1 %i.as, label %bb.b, label %._crit_edge.us, !llvm.loop !17

._crit_edge.us:                                   ; preds = %bb.b, %bb.c
  %i.at = add nuw i64 %.02444.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %phi.call
  br i1 %exitcond.not, label %._crit_edge46, label %.lr.ph.us, !llvm.loop !18

.lr.ph45.split:                                   ; preds = %.lr.ph45.thread, %.lr.ph45
  %i.au = phi i8 [ %i.f, %.lr.ph45.thread ], [ %i.ah, %.lr.ph45 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 %i.au, i64 %1, i1 false)
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %._crit_edge.us, %.lr.ph45.split, %H5VM_vector_reduce_product.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @H5VM_hyper_copy(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i64], align 16              ; 5 uses
  %i.b = alloca [33 x i64], align 16              ; 23 uses
  %i.c = alloca [33 x i64], align 16              ; 26 uses
  %i.d = alloca [33 x i64], align 16              ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %.not = icmp eq ptr %1, null
  %i.e = zext i32 %0 to i64
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 8 %1, i64 %i.f, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add i32 %0, -1                           ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.h ; 2 uses
  store i64 1, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h
  store i64 1, ptr %i.j, align 8, !tbaa !8
  %.not140 = icmp eq ptr %3, null                 ; 8 uses
  br i1 %.not140, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.h
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = phi i64 [ %i.l, %bb.e ], [ 0, %bb.d ]    ; 5 uses
  %.not141 = icmp eq ptr %6, null                 ; 8 uses
  br i1 %.not141, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.h
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = phi i64 [ %i.o, %bb.g ], [ 0, %bb.f ]    ; 5 uses
  switch i32 %0, label %bb.ag [
    i32 2, label %bb.i
    i32 3, label %bb.m
    i32 4, label %bb.u
  ]

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  store i64 %i.u, ptr %i.d, align 16, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !8    ; 2 uses
  %i.x = sub i64 %i.w, %i.t
  store i64 %i.x, ptr %i.c, align 16, !tbaa !8
  br i1 %.not140, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %3, align 8, !tbaa !8
  %i.z = mul i64 %i.y, %i.r
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aa = phi i64 [ %i.z, %bb.j ], [ 0, %bb.i ]
  %i.ab = add i64 %i.aa, %i.m
  br i1 %.not141, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i64, ptr %6, align 8, !tbaa !8
  %i.ad = mul i64 %i.ac, %i.w
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.k
  %i.ae = phi i64 [ %i.ad, %bb.l ], [ 0, %bb.k ]
  %i.af = add i64 %i.ae, %i.p
  br label %bb.am

bb.m:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !8  ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !8 ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !8  ; 4 uses
  %i.ao = sub i64 %i.an, %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !8
  br i1 %.not140, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !8
  %i.as = mul i64 %i.ar, %i.ah
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.at = phi i64 [ %i.as, %bb.n ], [ 0, %bb.m ]
  %i.au = add i64 %i.at, %i.m
  br i1 %.not141, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !8
  %i.ax = mul i64 %i.aw, %i.an
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ay = phi i64 [ %i.ax, %bb.p ], [ 0, %bb.o ]
  %i.az = add i64 %i.ay, %i.p
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !8  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !8  ; 2 uses
  %i.be = sub i64 %i.bb, %i.bd
  %i.bf = mul i64 %i.be, %i.ah
  store i64 %i.bf, ptr %i.d, align 16, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bi = sub i64 %i.bh, %i.bd
  %i.bj = mul i64 %i.bi, %i.an
  store i64 %i.bj, ptr %i.c, align 16, !tbaa !8
  %i.bk = mul i64 %i.bh, %i.an
  br i1 %.not140, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = mul i64 %i.bb, %i.ah
  %i.bm = load i64, ptr %3, align 8, !tbaa !8
  %i.bn = mul i64 %i.bl, %i.bm
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bo = phi i64 [ %i.bn, %bb.r ], [ 0, %bb.q ]
  %i.bp = add i64 %i.au, %i.bo
  br i1 %.not141, label %.thread173, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load i64, ptr %6, align 8, !tbaa !8
  %i.br = mul i64 %i.bk, %i.bq
  br label %.thread173

.thread173:                                       ; preds = %bb.t, %bb.s
  %i.bs = phi i64 [ %i.br, %bb.t ], [ 0, %bb.s ]
  %i.bt = add i64 %i.az, %i.bs
  br label %bb.ao

bb.u:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !8  ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !8  ; 2 uses
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.by, ptr %i.bz, align 16, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8  ; 4 uses
  %i.cc = sub i64 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.cc, ptr %i.cd, align 16, !tbaa !8
  br i1 %.not140, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !8
  %i.cg = mul i64 %i.cf, %i.bv
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ch = phi i64 [ %i.cg, %bb.v ], [ 0, %bb.u ]
  %i.ci = add i64 %i.ch, %i.m
  br i1 %.not141, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !8
  %i.cl = mul i64 %i.ck, %i.cb
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cm = phi i64 [ %i.cl, %bb.x ], [ 0, %bb.w ]
  %i.cn = add i64 %i.cm, %i.p
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !8  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cr = load i64, ptr %i.cq, align 16, !tbaa !8 ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr
  %i.ct = mul i64 %i.cs, %i.bv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !8  ; 2 uses
  %i.cx = sub i64 %i.cw, %i.cr
  %i.cy = mul i64 %i.cx, %i.cb
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !8
  %i.da = mul i64 %i.cp, %i.bv                    ; 3 uses
  %i.db = mul i64 %i.cw, %i.cb                    ; 3 uses
  br i1 %.not140, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !8
  %i.de = mul i64 %i.dd, %i.da
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.df = phi i64 [ %i.de, %bb.z ], [ 0, %bb.y ]
  %i.dg = add i64 %i.ci, %i.df
  br i1 %.not141, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
end_hunk_0
begin_hunk_1_@H5VM_hyper_copy:bb.a
  %i.ej = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !8  ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ej
  %i.en = load i64, ptr %i.em, align 8, !tbaa !8  ; 2 uses
  %i.eo = sub i64 %i.el, %i.en
  %i.ep = mul i64 %i.eo, %.0125200
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ej
  %i.es = load i64, ptr %i.er, align 8, !tbaa !8  ; 2 uses
  %i.et = sub i64 %i.es, %i.en
  %i.eu = mul i64 %i.et, %.0124201
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !8
  %i.ew = mul i64 %i.el, %.0125200                ; 2 uses
  %i.ex = mul i64 %i.es, %.0124201                ; 2 uses
  br i1 %.not140, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !8
  %i.fa = mul i64 %i.ez, %i.ew
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ah
  %i.fb = phi i64 [ %i.fa, %bb.ah ], [ 0, %.lr.ph ]
  %i.fc = add i64 %i.fb, %.0127198                ; 2 uses
  br i1 %.not141, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !8
  %i.ff = mul i64 %i.fe, %i.ex
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.fg = phi i64 [ %i.ff, %bb.aj ], [ 0, %bb.ai ]
  %i.fh = add i64 %i.fg, %.0126199                ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fi = icmp sgt i64 %indvars.iv, 0
  br i1 %i.fi, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.ak, %bb.ag
  %.0127.lcssa = phi i64 [ %i.m, %bb.ag ], [ %i.fc, %bb.ak ] ; 10 uses
  %.0126.lcssa = phi i64 [ %i.p, %bb.ag ], [ %i.fh, %bb.ak ] ; 10 uses
  switch i32 %0, label %.lr.ph.i.preheader [
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.ao
    i32 4, label %bb.ar
    i32 0, label %.loopexit192
  ]

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.fj = load i64, ptr %i.i, align 8, !tbaa !8
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %.lr.ph206, label %.loopexit

bb.al:                                            ; preds = %._crit_edge
  %i.fl = load i64, ptr %i.d, align 16, !tbaa !8
  %i.fm = icmp eq i64 %i.fl, 1
  %i.fn = load i64, ptr %i.c, align 16
  %i.fo = icmp eq i64 %i.fn, 1
  %or.cond = select i1 %i.fm, i1 %i.fo, i1 false
  br i1 %or.cond, label %.critedge.sink.split.i, label %.loopexit

bb.am:                                            ; preds = %.thread, %._crit_edge
  %.1172 = phi i64 [ %i.af, %.thread ], [ %.0126.lcssa, %._crit_edge ] ; 3 uses
  %.1128169 = phi i64 [ %i.ab, %.thread ], [ %.0127.lcssa, %._crit_edge ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !8
  %i.fr = icmp eq i64 %i.fq, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = icmp eq i64 %i.ft, 1
  %or.cond247 = select i1 %i.fr, i1 %i.fu, i1 false
  br i1 %or.cond247, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !8  ; 4 uses
  %i.fx = load i64, ptr %i.d, align 16, !tbaa !8  ; 2 uses
  %i.fy = add i64 %i.fx, %i.fw
  store i64 %i.fy, ptr %i.d, align 16, !tbaa !8
  %i.fz = load i64, ptr %i.c, align 16, !tbaa !8  ; 2 uses
  %i.ga = add i64 %i.fz, %i.fw
  store i64 %i.ga, ptr %i.c, align 16, !tbaa !8
  %i.gb = icmp eq i64 %i.fx, 0
  %i.gc = icmp eq i64 %i.fz, 0
  %or.cond.i = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond.i, label %.critedge.sink.split.i, label %.loopexit

bb.ao:                                            ; preds = %.thread173, %._crit_edge
  %.1177 = phi i64 [ %i.bt, %.thread173 ], [ %.0126.lcssa, %._crit_edge ] ; 4 uses
  %.1128176 = phi i64 [ %i.bp, %.thread173 ], [ %.0127.lcssa, %._crit_edge ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ge = load i64, ptr %i.gd, align 16, !tbaa !8
  %i.gf = icmp eq i64 %i.ge, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gh = load i64, ptr %i.gg, align 16
  %i.gi = icmp eq i64 %i.gh, 1
  %or.cond250 = select i1 %i.gf, i1 %i.gi, i1 false
  br i1 %or.cond250, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !8 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !8  ; 2 uses
  %i.gn = add i64 %i.gm, %i.gk                    ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !8  ; 2 uses
  %i.gq = add i64 %i.gp, %i.gk
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !8
  %i.gr = icmp eq i64 %i.gm, 0
  %i.gs = icmp eq i64 %i.gp, 0
  %or.cond143.i = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond143.i, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !8  ; 2 uses
  %i.gv = mul i64 %i.gu, %i.gk                    ; 3 uses
  %i.gw = mul i64 %i.gu, %i.gn
  %i.gx = load i64, ptr %i.d, align 16, !tbaa !8
  %i.gy = add i64 %i.gx, %i.gw                    ; 2 uses
  store i64 %i.gy, ptr %i.d, align 16, !tbaa !8
  %i.gz = load i64, ptr %i.c, align 16, !tbaa !8  ; 2 uses
  %i.ha = add i64 %i.gz, %i.gv                    ; 2 uses
  store i64 %i.ha, ptr %i.c, align 16, !tbaa !8
  %i.hb = icmp eq i64 %i.gy, %i.gv
  %i.hc = icmp eq i64 %i.gz, 0
  %or.cond144.i = select i1 %i.hb, i1 %i.hc, i1 false
  br i1 %or.cond144.i, label %.critedge.sink.split.i, label %.loopexit

bb.ar:                                            ; preds = %.thread178, %._crit_edge
  %.1182 = phi i64 [ %i.ef, %.thread178 ], [ %.0126.lcssa, %._crit_edge ] ; 5 uses
  %.1128181 = phi i64 [ %i.eb, %.thread178 ], [ %.0127.lcssa, %._crit_edge ] ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !8
  %i.hf = icmp eq i64 %i.he, 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = icmp eq i64 %i.hh, 1
  %or.cond253 = select i1 %i.hf, i1 %i.hi, i1 false
  br i1 %or.cond253, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !8  ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 16, !tbaa !8 ; 2 uses
  %i.hn = add i64 %i.hm, %i.hk                    ; 2 uses
  store i64 %i.hn, ptr %i.hl, align 16, !tbaa !8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 16, !tbaa !8 ; 2 uses
  %i.hq = add i64 %i.hp, %i.hk
  store i64 %i.hq, ptr %i.ho, align 16, !tbaa !8
  %i.hr = icmp eq i64 %i.hm, 0
  %i.hs = icmp eq i64 %i.hp, 0
  %or.cond145.i = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %or.cond145.i, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hu = load i64, ptr %i.ht, align 16, !tbaa !8 ; 2 uses
  %i.hv = mul i64 %i.hu, %i.hk                    ; 4 uses
  %i.hw = mul i64 %i.hu, %i.hn
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !8
  %i.hz = add i64 %i.hy, %i.hw                    ; 2 uses
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !8  ; 2 uses
  %i.ic = add i64 %i.ib, %i.hv                    ; 2 uses
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !8
  %i.id = icmp eq i64 %i.hz, %i.hv
  %i.ie = icmp eq i64 %i.ib, 0
  %or.cond146.i = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond146.i, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !8  ; 2 uses
  %i.ih = mul i64 %i.ig, %i.ic                    ; 3 uses
  %i.ii = mul i64 %i.ig, %i.hv
  %i.ij = load i64, ptr %i.d, align 16, !tbaa !8
  %i.ik = add i64 %i.ij, %i.ii                    ; 2 uses
  store i64 %i.ik, ptr %i.d, align 16, !tbaa !8
  %i.il = load i64, ptr %i.c, align 16, !tbaa !8  ; 2 uses
  %i.im = add i64 %i.il, %i.ih                    ; 2 uses
  store i64 %i.im, ptr %i.c, align 16, !tbaa !8
  %i.in = icmp eq i64 %i.ik, %i.ih
  %i.io = icmp eq i64 %i.il, 0
  %or.cond147.i = select i1 %i.in, i1 %i.io, i1 false
  br i1 %or.cond147.i, label %.critedge.sink.split.i, label %.loopexit

.lr.ph206:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ip = phi i64 [ %i.iw, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 3 uses
  %i.iq = phi i64 [ %10, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ] ; 2 uses
  %8 = phi i32 [ %9, %.lr.ph.i ], [ %i.g, %.lr.ph.i.preheader ] ; 4 uses
  %.0163204 = phi i32 [ %8, %.lr.ph.i ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !8
  %i.it = icmp eq i64 %i.is, %i.ip
  br i1 %i.it, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %.lr.ph206
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.iq
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !8
  %i.iw = mul i64 %i.iv, %i.ip                    ; 6 uses
  %.not142.i = icmp eq i32 %8, 0
  br i1 %.not142.i, label %.loopexit192, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.ix = add i32 %.0163204, -2
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !8
  %i.jb = add i64 %i.ja, %i.iw
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.iy ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !8
  %i.je = add i64 %i.jd, %i.iw
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !8
  %9 = add i32 %8, -1                             ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %10
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !8
  %i.jh = icmp eq i64 %i.jg, %i.iw
  br i1 %i.jh, label %.lr.ph206, label %.loopexit, !llvm.loop !21

.critedge.sink.split.i:                           ; preds = %bb.al, %bb.au, %bb.aq, %bb.an
  %.1171 = phi i64 [ %.1177, %bb.aq ], [ %.1172, %bb.an ], [ %.0126.lcssa, %bb.al ], [ %.1182, %bb.au ]
  %.1128168 = phi i64 [ %.1128176, %bb.aq ], [ %.1128169, %bb.an ], [ %.0127.lcssa, %bb.al ], [ %.1128181, %bb.au ]
  %.sink163.i = phi i64 [ %i.ha, %bb.aq ], [ %i.fw, %bb.an ], [ 1, %bb.al ], [ %i.im, %bb.au ]
  %i.ji = load i64, ptr %i.b, align 16, !tbaa !8
  %i.jj = mul i64 %i.ji, %.sink163.i
  br label %.loopexit192

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph206, %.lr.ph.i.preheader, %bb.al, %bb.an, %bb.am, %bb.aq, %bb.ap, %bb.ao, %bb.au, %bb.at, %bb.as, %bb.ar
  %.1170.ph = phi i64 [ %.1182, %bb.ar ], [ %.0126.lcssa, %bb.al ], [ %.1182, %bb.as ], [ %.1182, %bb.at ], [ %.1182, %bb.au ], [ %.1177, %bb.ao ], [ %.0126.lcssa, %.lr.ph.i.preheader ], [ %.1177, %bb.ap ], [ %.1177, %bb.aq ], [ %.1172, %bb.am ], [ %.1172, %bb.an ], [ %.0126.lcssa, %.lr.ph206 ], [ %.0126.lcssa, %.lr.ph.i ]
  %.1128167.ph = phi i64 [ %.1128181, %bb.ar ], [ %.0127.lcssa, %bb.al ], [ %.1128181, %bb.as ], [ %.1128181, %bb.at ], [ %.1128181, %bb.au ], [ %.1128176, %bb.ao ], [ %.0127.lcssa, %.lr.ph.i.preheader ], [ %.1128176, %bb.ap ], [ %.1128176, %bb.aq ], [ %.1128169, %bb.am ], [ %.1128169, %bb.an ], [ %.0127.lcssa, %.lr.ph206 ], [ %.0127.lcssa, %.lr.ph.i ]
  %.1164.ph = phi i32 [ 4, %bb.ar ], [ 1, %bb.al ], [ 3, %bb.as ], [ 2, %bb.at ], [ 1, %bb.au ], [ 3, %bb.ao ], [ %0, %.lr.ph.i.preheader ], [ 2, %bb.ap ], [ 1, %bb.aq ], [ 2, %bb.am ], [ 1, %bb.an ], [ %8, %.lr.ph.i ], [ %.0163204, %.lr.ph206 ] ; 5 uses
  %.1162.ph = phi i64 [ 1, %bb.ar ], [ 1, %bb.al ], [ %i.hk, %bb.as ], [ %i.hv, %bb.at ], [ %i.ih, %bb.au ], [ 1, %bb.ao ], [ 1, %.lr.ph.i.preheader ], [ %i.gk, %bb.ap ], [ %i.gv, %bb.aq ], [ 1, %bb.am ], [ %i.fw, %bb.an ], [ %i.iw, %.lr.ph.i ], [ %i.ip, %.lr.ph206 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.jk = zext i32 %.1164.ph to i64
  %i.jl = shl nuw nsw i64 %i.jk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 16 %i.b, i64 %i.jl, i1 false)
  %i.jm = add i32 %.1164.ph, -1
  %xtraiter = and i32 %.1164.ph, 7                ; 3 uses
  %i.jn = icmp ult i32 %i.jm, 7
  br i1 %i.jn, label %.lr.ph.i.i.epil.preheader, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter = and i32 %.1164.ph, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.new
  %.011.i.i = phi i64 [ 1, %.loopexit.new ], [ %i.kl, %.lr.ph.i.i ]
  %.0610.i.i = phi ptr [ %i.b, %.loopexit.new ], [ %i.kj, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i32 [ 0, %.loopexit.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 8
  %i.jp = load i64, ptr %.0610.i.i, align 8, !tbaa !8
  %i.jq = mul i64 %i.jp, %.011.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 16
  %i.js = load i64, ptr %i.jo, align 8, !tbaa !8
  %i.jt = mul i64 %i.js, %i.jq
  %i.ju = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 24
  %i.jv = load i64, ptr %i.jr, align 8, !tbaa !8
  %i.jw = mul i64 %i.jv, %i.jt
  %i.jx = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 32
  %i.jy = load i64, ptr %i.ju, align 8, !tbaa !8
  %i.jz = mul i64 %i.jy, %i.jw
  %i.ka = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 40
  %i.kb = load i64, ptr %i.jx, align 8, !tbaa !8
  %i.kc = mul i64 %i.kb, %i.jz
  %i.kd = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 48
  %i.ke = load i64, ptr %i.ka, align 8, !tbaa !8
  %i.kf = mul i64 %i.ke, %i.kc
  %i.kg = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 56
  %i.kh = load i64, ptr %i.kd, align 8, !tbaa !8
  %i.ki = mul i64 %i.kh, %i.kf
  %i.kj = getelementptr inbounds nuw i8, ptr %.0610.i.i, i64 64 ; 2 uses
  %i.kk = load i64, ptr %i.kg, align 8, !tbaa !8
  %i.kl = mul i64 %i.kk, %i.ki                    ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %H5VM_vector_reduce_product.exit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !14

H5VM_vector_reduce_product.exit.i.unr-lcssa:      ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %H5VM_vector_reduce_product.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %H5VM_vector_reduce_product.exit.i.unr-lcssa, %.loopexit
  %.011.i.i.epil.init = phi i64 [ 1, %.loopexit ], [ %i.kl, %H5VM_vector_reduce_product.exit.i.unr-lcssa ]
  %.0610.i.i.epil.init = phi ptr [ %i.b, %.loopexit ], [ %i.kj, %H5VM_vector_reduce_product.exit.i.unr-lcssa ]
  %lcmp.mod267 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod267)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.011.i.i.epil = phi i64 [ %i.ko, %.lr.ph.i.i.epil ], [ %.011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0610.i.i.epil = phi ptr [ %i.km, %.lr.ph.i.i.epil ], [ %.0610.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.km = getelementptr inbounds nuw i8, ptr %.0610.i.i.epil, i64 8
  %i.kn = load i64, ptr %.0610.i.i.epil, align 8, !tbaa !8
  %i.ko = mul i64 %i.kn, %.011.i.i.epil           ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %H5VM_vector_reduce_product.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !22

H5VM_vector_reduce_product.exit.i:                ; preds = %.lr.ph.i.i.epil, %H5VM_vector_reduce_product.exit.i.unr-lcssa
  %.lcssa262 = phi i64 [ %i.kl, %H5VM_vector_reduce_product.exit.i.unr-lcssa ], [ %i.ko, %.lr.ph.i.i.epil ] ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 %.1128167.ph ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 %.1170.ph ; 6 uses
  %.not61.i = icmp eq i64 %.lcssa262, 0
  br i1 %.not61.i, label %H5VM_stride_copy.exit, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %H5VM_vector_reduce_product.exit.i
  %.03152.i = add i32 %.1164.ph, -1               ; 2 uses
  %i.kr = icmp sgt i32 %.03152.i, -1
  br i1 %i.kr, label %.lr.ph.us.i, label %.lr.ph60.split.i.preheader

.lr.ph60.split.i.preheader:                       ; preds = %.lr.ph60.i
  %xtraiter268 = and i64 %.lcssa262, 3            ; 3 uses
  %i.ks = icmp ult i64 %.lcssa262, 4
  br i1 %i.ks, label %.lr.ph60.split.i.epil.preheader, label %.lr.ph60.split.i.preheader.new

.lr.ph60.split.i.preheader.new:                   ; preds = %.lr.ph60.split.i.preheader
  %unroll_iter272 = and i64 %.lcssa262, -4
  br label %.lr.ph60.split.i

.lr.ph.us.i:                                      ; preds = %.lr.ph60.i, %._crit_edge.us.i
  %.03259.us.i = phi i64 [ %i.lf, %._crit_edge.us.i ], [ 0, %.lr.ph60.i ]
  %.03358.us.i = phi ptr [ %i.kv, %._crit_edge.us.i ], [ %i.kq, %.lr.ph60.i ] ; 2 uses
  %.03557.us.i = phi ptr [ %i.ky, %._crit_edge.us.i ], [ %i.kp, %.lr.ph60.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03557.us.i, ptr align 1 %.03358.us.i, i64 %.1162.ph, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.us.i
  %.03155.us.i = phi i32 [ %.03152.i, %.lr.ph.us.i ], [ %.031.us.i, %bb.ax ] ; 3 uses
  %.13454.us.i = phi ptr [ %.03358.us.i, %.lr.ph.us.i ], [ %i.kv, %bb.ax ]
  %.13653.us.i = phi ptr [ %.03557.us.i, %.lr.ph.us.i ], [ %i.ky, %bb.ax ]
  %11 = zext nneg i32 %.03155.us.i to i64         ; 4 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %11
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !8
  %i.kv = getelementptr inbounds nuw i8, ptr %.13454.us.i, i64 %i.ku ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %11
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !8
  %i.ky = getelementptr inbounds nuw i8, ptr %.13653.us.i, i64 %i.kx ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %11 ; 3 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !8
  %i.lb = add i64 %i.la, -1                       ; 2 uses
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !8
  %.not42.us.i = icmp eq i64 %i.lb, 0
  br i1 %.not42.us.i, label %bb.ax, label %._crit_edge.us.i

bb.ax:                                            ; preds = %bb.aw
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %11
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !8
  store i64 %i.ld, ptr %i.kz, align 8, !tbaa !8
  %.031.us.i = add nsw i32 %.03155.us.i, -1
  %i.le = icmp sgt i32 %.03155.us.i, 0
  br i1 %i.le, label %bb.aw, label %._crit_edge.us.i, !llvm.loop !23

._crit_edge.us.i:                                 ; preds = %bb.ax, %bb.aw
  %i.lf = add nuw i64 %.03259.us.i, 1             ; 2 uses
  %exitcond65.not.i = icmp eq i64 %i.lf, %.lcssa262
  br i1 %exitcond65.not.i, label %H5VM_stride_copy.exit, label %.lr.ph.us.i, !llvm.loop !24

.lr.ph60.split.i:                                 ; preds = %.lr.ph60.split.i, %.lr.ph60.split.i.preheader.new
  %niter273 = phi i64 [ 0, %.lr.ph60.split.i.preheader.new ], [ %niter273.next.3, %.lr.ph60.split.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  %niter273.next.3 = add nuw i64 %niter273, 4     ; 2 uses
  %niter273.ncmp.3 = icmp eq i64 %niter273.next.3, %unroll_iter272
  br i1 %niter273.ncmp.3, label %H5VM_stride_copy.exit.loopexit261.unr-lcssa, label %.lr.ph60.split.i, !llvm.loop !24

.loopexit192:                                     ; preds = %bb.av, %.critedge.sink.split.i, %._crit_edge
  %.1170 = phi i64 [ %.0126.lcssa, %._crit_edge ], [ %.1171, %.critedge.sink.split.i ], [ %.0126.lcssa, %bb.av ]
  %.1128167 = phi i64 [ %.0127.lcssa, %._crit_edge ], [ %.1128168, %.critedge.sink.split.i ], [ %.0127.lcssa, %bb.av ]
  %.1162 = phi i64 [ 1, %._crit_edge ], [ %i.jj, %.critedge.sink.split.i ], [ %i.iw, %bb.av ]
  %i.lg = getelementptr inbounds nuw i8, ptr %4, i64 %.1128167
  %i.lh = getelementptr inbounds nuw i8, ptr %7, i64 %.1170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lg, ptr readonly align 1 %i.lh, i64 %.1162, i1 false)
  br label %H5VM_stride_copy.exit

H5VM_stride_copy.exit.loopexit261.unr-lcssa:      ; preds = %.lr.ph60.split.i
  %lcmp.mod270.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod270.not, label %H5VM_stride_copy.exit, label %.lr.ph60.split.i.epil.preheader

.lr.ph60.split.i.epil.preheader:                  ; preds = %H5VM_stride_copy.exit.loopexit261.unr-lcssa, %.lr.ph60.split.i.preheader
  %lcmp.mod271 = icmp ne i64 %xtraiter268, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %.lr.ph60.split.i.epil

.lr.ph60.split.i.epil:                            ; preds = %.lr.ph60.split.i.epil, %.lr.ph60.split.i.epil.preheader
  %epil.iter269 = phi i64 [ 0, %.lr.ph60.split.i.epil.preheader ], [ %epil.iter269.next, %.lr.ph60.split.i.epil ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr readonly align 1 %i.kq, i64 %.1162.ph, i1 false)
  %epil.iter269.next = add i64 %epil.iter269, 1   ; 2 uses
  %epil.iter269.cmp.not = icmp eq i64 %epil.iter269.next, %xtraiter268
  br i1 %epil.iter269.cmp.not, label %H5VM_stride_copy.exit, label %.lr.ph60.split.i.epil, !llvm.loop !25

H5VM_stride_copy.exit:                            ; preds = %H5VM_stride_copy.exit.loopexit261.unr-lcssa, %.lr.ph60.split.i.epil, %._crit_edge.us.i, %H5VM_vector_reduce_product.exit.i, %.loopexit192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @H5VM_stride_copy(i32 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i64], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %.loopexit, label %.split

.split:                                           ; preds = %bb.b
  %i.b = zext i32 %0 to i64
  %i.c = shl nuw nsw i64 %i.b, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %2, i64 %i.c, i1 false)
  %xtraiter = and i32 %0, 7                       ; 3 uses
  %i.d = icmp ult i32 %0, 8
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.split.new

.split.new:                                       ; preds = %.split
  %unroll_iter = and i32 %0, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.split.new
  %.011.i = phi i64 [ 1, %.split.new ], [ %i.ab, %.lr.ph.i ]
  %.0610.i = phi ptr [ %2, %.split.new ], [ %i.z, %.lr.ph.i ] ; 9 uses
  %niter = phi i32 [ 0, %.split.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.0610.i, i64 8
  %i.f = load i64, ptr %.0610.i, align 8, !tbaa !8
  %i.g = mul i64 %i.f, %.011.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0610.i, i64 16
  %i.i = load i64, ptr %i.e, align 8, !tbaa !8
  %i.j = mul i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %.0610.i, i64 24
  %i.l = load i64, ptr %i.h, align 8, !tbaa !8
  %i.m = mul i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %.0610.i, i64 32
  %i.o = load i64, ptr %i.k, align 8, !tbaa !8
  %i.p = mul i64 %i.o, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %.0610.i, i64 40
  %i.r = load i64, ptr %i.n, align 8, !tbaa !8
  %i.s = mul i64 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %.0610.i, i64 48
  %i.u = load i64, ptr %i.q, align 8, !tbaa !8
  %i.v = mul i64 %i.u, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %.0610.i, i64 56
  %i.x = load i64, ptr %i.t, align 8, !tbaa !8
  %i.y = mul i64 %i.x, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %.0610.i, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !8
  %i.ab = mul i64 %i.aa, %i.y                     ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %H5VM_vector_reduce_product.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

H5VM_vector_reduce_product.exit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %H5VM_vector_reduce_product.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %H5VM_vector_reduce_product.exit.unr-lcssa, %.split
  %.011.i.epil.init = phi i64 [ 1, %.split ], [ %i.ab, %H5VM_vector_reduce_product.exit.unr-lcssa ]
  %.0610.i.epil.init = phi ptr [ %2, %.split ], [ %i.z, %H5VM_vector_reduce_product.exit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi i64 [ %i.ae, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0610.i.epil = phi ptr [ %i.ac, %.lr.ph.i.epil ], [ %.0610.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0610.i.epil, i64 8
  %i.ad = load i64, ptr %.0610.i.epil, align 8, !tbaa !8
  %i.ae = mul i64 %i.ad, %.011.i.epil             ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %H5VM_vector_reduce_product.exit, label %.lr.ph.i.epil, !llvm.loop !26

H5VM_vector_reduce_product.exit:                  ; preds = %.lr.ph.i.epil, %H5VM_vector_reduce_product.exit.unr-lcssa
  %.lcssa79 = phi i64 [ %i.ab, %H5VM_vector_reduce_product.exit.unr-lcssa ], [ %i.ae, %.lr.ph.i.epil ] ; 5 uses
  %.not61 = icmp eq i64 %.lcssa79, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph60

.lr.ph60:                                         ; preds = %H5VM_vector_reduce_product.exit
  %.03152 = add i32 %0, -1                        ; 2 uses
  %i.af = icmp sgt i32 %.03152, -1
  br i1 %i.af, label %.lr.ph.us, label %.lr.ph60.split.preheader

.lr.ph60.split.preheader:                         ; preds = %.lr.ph60
  %xtraiter82 = and i64 %.lcssa79, 3              ; 3 uses
  %i.ag = icmp ult i64 %.lcssa79, 4
  br i1 %i.ag, label %.lr.ph60.split.epil.preheader, label %.lr.ph60.split.preheader.new

.lr.ph60.split.preheader.new:                     ; preds = %.lr.ph60.split.preheader
  %unroll_iter86 = and i64 %.lcssa79, -4
  br label %.lr.ph60.split

.lr.ph.us:                                        ; preds = %.lr.ph60, %._crit_edge.us
  %.03259.us = phi i64 [ %i.au, %._crit_edge.us ], [ 0, %.lr.ph60 ]
  %.03358.us = phi ptr [ %i.ak, %._crit_edge.us ], [ %6, %.lr.ph60 ] ; 2 uses
  %.03557.us = phi ptr [ %i.an, %._crit_edge.us ], [ %4, %.lr.ph60 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03557.us, ptr align 1 %.03358.us, i64 %1, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.d
  %.03155.us = phi i32 [ %.03152, %.lr.ph.us ], [ %.031.us, %bb.d ] ; 3 uses
  %.13454.us = phi ptr [ %.03358.us, %.lr.ph.us ], [ %i.ak, %bb.d ]
  %.13653.us = phi ptr [ %.03557.us, %.lr.ph.us ], [ %i.an, %bb.d ]
  %i.ah = zext nneg i32 %.03155.us to i64         ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %.13454.us, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ah
  %i.am = load i64, ptr %i.al, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %.13653.us, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !8
  %i.aq = add i64 %i.ap, -1                       ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !8
  %.not42.us = icmp eq i64 %i.aq, 0
  br i1 %.not42.us, label %bb.d, label %._crit_edge.us

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ah
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !8
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !8
  %.031.us = add nsw i32 %.03155.us, -1
  %i.at = icmp sgt i32 %.03155.us, 0
  br i1 %i.at, label %bb.c, label %._crit_edge.us, !llvm.loop !23

._crit_edge.us:                                   ; preds = %bb.c, %bb.d
  %i.au = add nuw i64 %.03259.us, 1               ; 2 uses
  %exitcond65.not = icmp eq i64 %i.au, %.lcssa79
  br i1 %exitcond65.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !24

.lr.ph60.split:                                   ; preds = %.lr.ph60.split, %.lr.ph60.split.preheader.new
  %niter87 = phi i64 [ 0, %.lr.ph60.split.preheader.new ], [ %niter87.next.3, %.lr.ph60.split ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %6, i64 %1, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %6, i64 %1, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %6, i64 %1, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %6, i64 %1, i1 false)
  %niter87.next.3 = add nuw i64 %niter87, 4       ; 2 uses
  %niter87.ncmp.3 = icmp eq i64 %niter87.next.3, %unroll_iter86
  br i1 %niter87.ncmp.3, label %.loopexit.loopexit78.unr-lcssa, label %.lr.ph60.split, !llvm.loop !24

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %6, i64 %1, i1 false)
  br label %.loopexit

end_hunk_1
