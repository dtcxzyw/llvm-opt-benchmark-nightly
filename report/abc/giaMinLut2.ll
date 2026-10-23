Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMinLut2?download=true
inline.NumInlined: 405
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_TryPermOptCare:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr align 8 %i.k, i64 %i.w, i1 false), !tbaa !26
  br label %.lr.ph18.preheader.i51.us.us

.lr.ph18.preheader.i51.us.us:                     ; preds = %.lr.ph18.preheader.i.us.us, %.lr.ph.split.us.split.us
  %.165.us.us = phi i32 [ %.074.us.us, %.lr.ph.split.us.split.us ], [ %i.z, %.lr.ph18.preheader.i.us.us ] ; 2 uses
  %.14363.us.us = phi i32 [ %.04273.us.us, %.lr.ph.split.us.split.us ], [ %.04471.us.us, %.lr.ph18.preheader.i.us.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %0, i64 %i.w, i1 false), !tbaa !26
  %i.ab = add nuw nsw i32 %.04471.us.us, 1        ; 2 uses
  %exitcond95.not = icmp eq i32 %i.ab, %4
  br i1 %exitcond95.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !250

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.lr.ph18.preheader.i51.us
  %.074.us = phi i32 [ %.165.us, %.lr.ph18.preheader.i51.us ], [ 1000000000, %.lr.ph.split.us ] ; 2 uses
  %.04273.us = phi i32 [ %.14363.us, %.lr.ph18.preheader.i51.us ], [ -1, %.lr.ph.split.us ]
  %.04471.us = phi i32 [ %i.ag, %.lr.ph18.preheader.i51.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.ac = icmp ne i32 %.04471.us, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.k, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ad, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 2 uses
  %i.af = icmp sgt i32 %.074.us, %i.ae
  br i1 %i.af, label %.lr.ph18.preheader.i.us, label %.lr.ph18.preheader.i51.us

.lr.ph18.preheader.i.us:                          ; preds = %.lr.ph.split.us.split
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr align 8 %i.k, i64 %i.w, i1 false), !tbaa !26
  br label %.lr.ph18.preheader.i51.us

.lr.ph18.preheader.i51.us:                        ; preds = %.lr.ph18.preheader.i.us, %.lr.ph.split.us.split
  %.165.us = phi i32 [ %.074.us, %.lr.ph.split.us.split ], [ %i.ae, %.lr.ph18.preheader.i.us ] ; 2 uses
  %.14363.us = phi i32 [ %.04273.us, %.lr.ph.split.us.split ], [ %.04471.us, %.lr.ph18.preheader.i.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %0, i64 %i.w, i1 false), !tbaa !26
  %putchar.us = call i32 @putchar(i32 10)         ; 0 uses
  %i.ag = add nuw nsw i32 %.04471.us, 1           ; 2 uses
  %exitcond94.not = icmp eq i32 %i.ag, %4
  br i1 %exitcond94.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !250

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not50, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %Abc_TtCopy.exit57.us81
  %.074.us77 = phi i32 [ %.164.us82, %Abc_TtCopy.exit57.us81 ], [ 1000000000, %.lr.ph.split ] ; 2 uses
  %.04273.us78 = phi i32 [ %.14362.us83, %Abc_TtCopy.exit57.us81 ], [ -1, %.lr.ph.split ]
  %.04471.us79 = phi i32 [ %i.al, %Abc_TtCopy.exit57.us81 ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.ah = icmp ne i32 %.04471.us79, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.k, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.ak = icmp sgt i32 %.074.us77, %i.aj
  br i1 %i.ak, label %bb.c, label %Abc_TtCopy.exit57.us81

bb.c:                                             ; preds = %.lr.ph.split.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit57.us81

Abc_TtCopy.exit57.us81:                           ; preds = %.lr.ph.split.split.us, %bb.c
  %.164.us82 = phi i32 [ %i.aj, %bb.c ], [ %.074.us77, %.lr.ph.split.split.us ] ; 2 uses
  %.14362.us83 = phi i32 [ %.04471.us79, %bb.c ], [ %.04273.us78, %.lr.ph.split.split.us ] ; 2 uses
  %i.al = add nuw nsw i32 %.04471.us79, 1         ; 2 uses
  %exitcond93.not = icmp eq i32 %i.al, %4
  br i1 %exitcond93.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !250

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %Abc_TtCopy.exit57
  %.074 = phi i32 [ %.164, %Abc_TtCopy.exit57 ], [ 1000000000, %.lr.ph.split ] ; 2 uses
  %.04273 = phi i32 [ %.14362, %Abc_TtCopy.exit57 ], [ -1, %.lr.ph.split ]
  %.04471 = phi i32 [ %i.aq, %Abc_TtCopy.exit57 ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.am = icmp ne i32 %.04471, 0
  %i.an = zext i1 %i.am to i32
  %i.ao = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.k, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.an, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 2 uses
  %i.ap = icmp sgt i32 %.074, %i.ao
  br i1 %i.ap, label %bb.d, label %Abc_TtCopy.exit57

bb.d:                                             ; preds = %.lr.ph.split.split
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit57

Abc_TtCopy.exit57:                                ; preds = %.lr.ph.split.split, %bb.d
  %.164 = phi i32 [ %i.ao, %bb.d ], [ %.074, %.lr.ph.split.split ] ; 2 uses
  %.14362 = phi i32 [ %.04471, %bb.d ], [ %.04273, %.lr.ph.split.split ] ; 2 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.aq = add nuw nsw i32 %.04471, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !250

._crit_edge:                                      ; preds = %Abc_TtCopy.exit57, %Abc_TtCopy.exit57.us81, %.lr.ph18.preheader.i51.us, %.lr.ph18.preheader.i51.us.us, %Abc_TtDup.exit
  %.042.lcssa = phi i32 [ -1, %Abc_TtDup.exit ], [ %.14362.us83, %Abc_TtCopy.exit57.us81 ], [ %.14363.us, %.lr.ph18.preheader.i51.us ], [ %.14363.us.us, %.lr.ph18.preheader.i51.us.us ], [ %.14362, %Abc_TtCopy.exit57 ]
  %.0.lcssa = phi i32 [ 1000000000, %Abc_TtDup.exit ], [ %.164.us82, %Abc_TtCopy.exit57.us81 ], [ %.165.us, %.lr.ph18.preheader.i51.us ], [ %.165.us.us, %.lr.ph18.preheader.i51.us.us ], [ %.164, %Abc_TtCopy.exit57 ]
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.042.lcssa, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.not48 = icmp eq ptr %i.k, null
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.k) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.as = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %Abc_Clock.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i64, ptr %6, align 8, !tbaa !37
  %i.av = mul nsw i64 %i.au, 1000000
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !38
  %i.ay = sdiv i64 %i.ax, 1000
  %i.az = add nsw i64 %i.ay, %i.av
  br label %Abc_Clock.exit59

Abc_Clock.exit59:                                 ; preds = %bb.i, %bb.j
  %.0.i58 = phi i64 [ %i.az, %bb.j ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ba = add i64 %.0.i58, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11)
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.bc)
  br label %bb.k

bb.k:                                             ; preds = %Abc_Clock.exit59, %bb.h
  %i.bd = call ptr @Abc_TtSimpleMinArrayNew(ptr noundef %i.r, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a)
  %.not49 = icmp eq ptr %i.r, null
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.r) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.bd
}

; Function Attrs: nounwind uwtable
define ptr @Gia_TryPermOpt2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #27
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %7, align 8, !tbaa !37
  %.neg72 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %.neg = sdiv i64 %i.h, -1000
  %.neg73 = add i64 %.neg, %.neg72
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg73, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.i = mul i32 %3, %2                           ; 6 uses
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #25 ; 13 uses
  %i.m = icmp sgt i32 %i.i, 0                     ; 3 uses
  br i1 %i.m, label %.lr.ph18.preheader.i.i, label %Abc_TtDup.exit

.lr.ph18.preheader.i.i:                           ; preds = %Abc_Clock.exit
  %wide.trip.count24.i.i = zext nneg i32 %i.i to i64
  %i.n = shl nuw nsw i64 %wide.trip.count24.i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr readonly align 8 %0, i64 %i.n, i1 false), !tbaa !26
  br label %Abc_TtDup.exit

Abc_TtDup.exit:                                   ; preds = %Abc_Clock.exit, %.lr.ph18.preheader.i.i
  %i.o = sdiv i32 %i.i, 2                         ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 -1, ptr %i.c, align 4, !tbaa !17
  %i.s = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_TtDup.exit
  %i.u = sext i32 %1 to i64
  %i.v = shl nsw i64 %i.u, 2                      ; 4 uses
  %i.w = icmp sgt i32 %i.i, 1
  %wide.trip.count24.i57 = zext i32 %i.i to i64   ; 2 uses
  %.not55 = icmp eq i32 %5, 0                     ; 3 uses
  br i1 %i.w, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count24.i = zext nneg i32 %i.o to i64
  %i.x = shl nuw nsw i64 %wide.trip.count24.i, 3
  %i.y = shl nuw nsw i64 %wide.trip.count24.i57, 3
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %.078.us = phi i32 [ %.171.us, %bb.e ], [ 1000000000, %.lr.ph.split.us.preheader ] ; 3 uses
  %.04577.us = phi i32 [ %.14669.us, %bb.e ], [ -1, %.lr.ph.split.us.preheader ] ; 2 uses
  %.04774.us = phi i32 [ %i.af, %bb.e ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.z = icmp ne i32 %.04774.us, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.aa, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 0 uses
  %i.ac = call ptr @Abc_TtMinArray(ptr noundef %i.l, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %i.c, i32 noundef %5) ; 3 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.ae = icmp sgt i32 %.078.us, %i.ad
  br i1 %i.ae, label %.lr.ph18.preheader.i.us, label %Abc_TtCopy.exit.us

.lr.ph18.preheader.i.us:                          ; preds = %.lr.ph.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr align 8 %i.ac, i64 %i.x, i1 false), !tbaa !26
  br label %Abc_TtCopy.exit.thread.us

Abc_TtCopy.exit.us:                               ; preds = %.lr.ph.split.us
  %.not54.us = icmp eq ptr %i.ac, null
  br i1 %.not54.us, label %bb.c, label %Abc_TtCopy.exit.thread.us

Abc_TtCopy.exit.thread.us:                        ; preds = %.lr.ph18.preheader.i.us, %Abc_TtCopy.exit.us
  %.170.us = phi i32 [ %.078.us, %Abc_TtCopy.exit.us ], [ %i.ad, %.lr.ph18.preheader.i.us ]
  %.14668.us = phi i32 [ %.04577.us, %Abc_TtCopy.exit.us ], [ %.04774.us, %.lr.ph18.preheader.i.us ]
  call void @free(ptr noundef nonnull %i.ac) #27
  br label %bb.c

bb.c:                                             ; preds = %Abc_TtCopy.exit.thread.us, %Abc_TtCopy.exit.us
  %.171.us = phi i32 [ %.078.us, %Abc_TtCopy.exit.us ], [ %.170.us, %Abc_TtCopy.exit.thread.us ] ; 2 uses
  %.14669.us = phi i32 [ %.04577.us, %Abc_TtCopy.exit.us ], [ %.14668.us, %Abc_TtCopy.exit.thread.us ] ; 2 uses
  br i1 %i.m, label %.lr.ph18.i58.us.preheader, label %Abc_TtCopy.exit62.us

.lr.ph18.i58.us.preheader:                        ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %0, i64 %i.y, i1 false), !tbaa !26
  br label %Abc_TtCopy.exit62.us

Abc_TtCopy.exit62.us:                             ; preds = %.lr.ph18.i58.us.preheader, %bb.c
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %Abc_TtCopy.exit62.us
  %putchar.us = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %Abc_TtCopy.exit62.us
  %i.af = add nuw nsw i32 %.04774.us, 1           ; 2 uses
  %exitcond120.not = icmp eq i32 %i.af, %4
  br i1 %exitcond120.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !251

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.m, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %8 = shl nuw nsw i64 %wide.trip.count24.i57, 3
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.h
  %.078.us81 = phi i32 [ %.1.us86, %bb.h ], [ 1000000000, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %.04577.us82 = phi i32 [ %.146.us85, %bb.h ], [ -1, %.lr.ph.split.split.us.preheader ]
  %.04774.us83 = phi i32 [ %i.am, %bb.h ], [ 0, %.lr.ph.split.split.us.preheader ] ; 3 uses
  %i.ag = icmp ne i32 %.04774.us83, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ah, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 0 uses
  %i.aj = call ptr @Abc_TtMinArray(ptr noundef %i.l, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %i.c, i32 noundef %5) ; 2 uses
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.al = icmp sgt i32 %.078.us81, %i.ak
  br i1 %i.al, label %bb.f, label %Abc_TtCopy.exit.us84

bb.f:                                             ; preds = %.lr.ph.split.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit.us84

Abc_TtCopy.exit.us84:                             ; preds = %bb.f, %.lr.ph.split.split.us
  %.146.us85 = phi i32 [ %.04577.us82, %.lr.ph.split.split.us ], [ %.04774.us83, %bb.f ] ; 2 uses
  %.1.us86 = phi i32 [ %.078.us81, %.lr.ph.split.split.us ], [ %i.ak, %bb.f ] ; 2 uses
  %.not54.us87 = icmp eq ptr %i.aj, null
  br i1 %.not54.us87, label %.lr.ph18.preheader.i56.us89, label %Abc_TtCopy.exit.thread.us88

Abc_TtCopy.exit.thread.us88:                      ; preds = %Abc_TtCopy.exit.us84
  call void @free(ptr noundef nonnull %i.aj) #27
  br label %.lr.ph18.preheader.i56.us89

.lr.ph18.preheader.i56.us89:                      ; preds = %Abc_TtCopy.exit.thread.us88, %Abc_TtCopy.exit.us84
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %0, i64 %8, i1 false), !tbaa !26
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph18.preheader.i56.us89
  %putchar.us96 = call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph18.preheader.i56.us89
  %i.am = add nuw nsw i32 %.04774.us83, 1         ; 2 uses
  %exitcond119.not = icmp eq i32 %i.am, %4
  br i1 %exitcond119.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !251

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not55, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %Abc_TtCopy.exit62.us109
  %.078.us101 = phi i32 [ %.1.us106, %Abc_TtCopy.exit62.us109 ], [ 1000000000, %.lr.ph.split.split ] ; 2 uses
  %.04577.us102 = phi i32 [ %.146.us105, %Abc_TtCopy.exit62.us109 ], [ -1, %.lr.ph.split.split ]
  %.04774.us103 = phi i32 [ %i.at, %Abc_TtCopy.exit62.us109 ], [ 0, %.lr.ph.split.split ] ; 3 uses
  %i.an = icmp ne i32 %.04774.us103, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.ao, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.aq = call ptr @Abc_TtMinArray(ptr noundef %i.l, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.as = icmp sgt i32 %.078.us101, %i.ar
  br i1 %i.as, label %bb.i, label %Abc_TtCopy.exit.us104

bb.i:                                             ; preds = %.lr.ph.split.split.split.us
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit.us104

Abc_TtCopy.exit.us104:                            ; preds = %bb.i, %.lr.ph.split.split.split.us
  %.146.us105 = phi i32 [ %.04577.us102, %.lr.ph.split.split.split.us ], [ %.04774.us103, %bb.i ] ; 2 uses
  %.1.us106 = phi i32 [ %.078.us101, %.lr.ph.split.split.split.us ], [ %i.ar, %bb.i ] ; 2 uses
  %.not54.us107 = icmp eq ptr %i.aq, null
  br i1 %.not54.us107, label %Abc_TtCopy.exit62.us109, label %Abc_TtCopy.exit.thread.us108

Abc_TtCopy.exit.thread.us108:                     ; preds = %Abc_TtCopy.exit.us104
  call void @free(ptr noundef nonnull %i.aq) #27
  br label %Abc_TtCopy.exit62.us109

Abc_TtCopy.exit62.us109:                          ; preds = %Abc_TtCopy.exit.thread.us108, %Abc_TtCopy.exit.us104
  %i.at = add nuw nsw i32 %.04774.us103, 1        ; 2 uses
  %exitcond118.not = icmp eq i32 %i.at, %4
  br i1 %exitcond118.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !251

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %Abc_TtCopy.exit62
  %.078 = phi i32 [ %.1, %Abc_TtCopy.exit62 ], [ 1000000000, %.lr.ph.split.split ] ; 2 uses
  %.04577 = phi i32 [ %.146, %Abc_TtCopy.exit62 ], [ -1, %.lr.ph.split.split ]
  %.04774 = phi i32 [ %i.ba, %Abc_TtCopy.exit62 ], [ 0, %.lr.ph.split.split ] ; 3 uses
  %i.au = icmp ne i32 %.04774, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = call i32 @Gia_ManPermuteTreeOne(ptr noundef %i.l, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.av, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef %5) ; 0 uses
  %i.ax = call ptr @Abc_TtMinArray(ptr noundef %i.l, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %i.c, i32 noundef %5) ; 2 uses
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.az = icmp sgt i32 %.078, %i.ay
  br i1 %i.az, label %bb.j, label %Abc_TtCopy.exit

bb.j:                                             ; preds = %.lr.ph.split.split.split
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.v, i1 false)
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %bb.j, %.lr.ph.split.split.split
  %.146 = phi i32 [ %.04577, %.lr.ph.split.split.split ], [ %.04774, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %.078, %.lr.ph.split.split.split ], [ %i.ay, %bb.j ] ; 2 uses
  %.not54 = icmp eq ptr %i.ax, null
  br i1 %.not54, label %Abc_TtCopy.exit62, label %Abc_TtCopy.exit.thread

Abc_TtCopy.exit.thread:                           ; preds = %Abc_TtCopy.exit
  call void @free(ptr noundef nonnull %i.ax) #27
  br label %Abc_TtCopy.exit62

Abc_TtCopy.exit62:                                ; preds = %Abc_TtCopy.exit, %Abc_TtCopy.exit.thread
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.ba = add nuw nsw i32 %.04774, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !251

._crit_edge:                                      ; preds = %Abc_TtCopy.exit62, %Abc_TtCopy.exit62.us109, %bb.h, %bb.e, %Abc_TtDup.exit
  %.045.lcssa = phi i32 [ -1, %Abc_TtDup.exit ], [ %.146.us85, %bb.h ], [ %.146.us105, %Abc_TtCopy.exit62.us109 ], [ %.14669.us, %bb.e ], [ %.146, %Abc_TtCopy.exit62 ]
  %.0.lcssa = phi i32 [ 1000000000, %Abc_TtDup.exit ], [ %.1.us86, %bb.h ], [ %.1.us106, %Abc_TtCopy.exit62.us109 ], [ %.171.us, %bb.e ], [ %.1, %Abc_TtCopy.exit62 ]
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.045.lcssa, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.not52 = icmp eq ptr %i.l, null
  br i1 %.not52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.l) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #27
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %Abc_Clock.exit64, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i64, ptr %6, align 8, !tbaa !37
  %i.bf = mul nsw i64 %i.be, 1000000
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !38
  %i.bi = sdiv i64 %i.bh, 1000
  %i.bj = add nsw i64 %i.bi, %i.bf
  br label %Abc_Clock.exit64

Abc_Clock.exit64:                                 ; preds = %bb.o, %bb.p
  %.0.i63 = phi i64 [ %i.bj, %bb.p ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bk = add i64 %.0.i63, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11)
  %i.bl = sitofp i64 %i.bk to double
  %i.bm = fdiv double %i.bl, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.22, double noundef %i.bm)
  br label %bb.q

bb.q:                                             ; preds = %Abc_Clock.exit64, %bb.n
  %i.bn = sdiv i32 %2, 2
  %i.bo = call ptr @Gia_ManContructTree(ptr noundef readonly %i.r, i32 noundef %1, i32 noundef %i.bn, i32 noundef %3) ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 520
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  %i.br = load i32, ptr %i.bo, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !23
  %i.bu = call ptr @Gia_ManBuildMuxesTest(ptr noundef %i.bq, i32 noundef %i.br, i32 noundef %i.bt, ptr noundef nonnull %i.a)
  call void @Gia_ManTreeFree(ptr noundef nonnull %i.bo)
  %.not53 = icmp eq ptr %i.r, null
  br i1 %.not53, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.r) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.bu
}

; Function Attrs: nounwind uwtable
define ptr @Gia_TryPermOpt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  %i.c = alloca ptr, align 8                      ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #27
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %7, align 8, !tbaa !37
  %.neg42 = mul i64 %i.f, -1000000
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  %.neg = sdiv i64 %i.h, -1000
  %.neg43 = add i64 %.neg, %.neg42
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg43, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !69
  %i.i = mul nsw i32 %3, %2                       ; 4 uses
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = call noalias ptr @malloc(i64 noundef %i.k) #25 ; 13 uses
  %i.m = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.m, label %.lr.ph18.preheader.i.i, label %Abc_TtDup.exit

.lr.ph18.preheader.i.i:                           ; preds = %Abc_Clock.exit
  %wide.trip.count24.i.i = zext nneg i32 %i.i to i64
  %i.n = shl nuw nsw i64 %wide.trip.count24.i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr readonly align 8 %0, i64 %i.n, i1 false), !tbaa !26
  br label %Abc_TtDup.exit

Abc_TtDup.exit:                                   ; preds = %Abc_Clock.exit, %.lr.ph18.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.o = call i32 @Gia_ManRandom(i32 noundef 1) #27 ; 0 uses
  %i.p = icmp sgt i32 %4, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_TtDup.exit
  %.not39 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %wide.trip.count24.i = zext nneg i32 %i.i to i64
end_hunk_0
