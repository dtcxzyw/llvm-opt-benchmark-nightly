inline.NumInlined: 234
inline.NumDeleted: 128
begin_hunk_0_@_ZN3dpx6Writer12WriteElementEiPvNS_8DataSizeE:bb.a
  %i.dq = load i32, ptr %i.b, align 8, !tbaa !40
  %i.dr = tail call noundef zeroext i1 @_ZNK3dpx6Header17DetermineByteSwapEj(ptr noundef nonnull align 4 dereferenceable(2049) %i.b, i32 noundef %i.dq) ; 2 uses
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ds = call noundef i32 @_ZN3dpx16WriteFloatBufferIdLi64ELb1EEEiP9OutStreamNS_8DataSizeEPvjjiNS_7PackingEbiPcRbb(ptr noundef %i.dp, i32 noundef 4, ptr noundef %2, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %i.ba, i1 noundef zeroext %.in.in, i32 noundef %i.au, ptr noundef %.0200, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext %i.dr)
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.dt = call noundef i32 @_ZN3dpx16WriteFloatBufferIdLi64ELb0EEEiP9OutStreamNS_8DataSizeEPvjjiNS_7PackingEbiPcRbb(ptr noundef %i.dp, i32 noundef %3, ptr noundef %2, i32 noundef %i.av, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %i.ba, i1 noundef zeroext %.in.in, i32 noundef %i.au, ptr noundef %.0200, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext %i.dr)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.ag, %bb.ac, %bb.ad, %bb.z, %bb.aa, %bb.w, %bb.x, %bb.t, %bb.u, %bb.p, %bb.q
  %.sink = phi i32 [ %i.ch, %bb.q ], [ %i.cg, %bb.p ], [ %i.cr, %bb.u ], [ %i.cq, %bb.t ], [ %i.cy, %bb.x ], [ %i.cx, %bb.w ], [ %i.df, %bb.aa ], [ %i.de, %bb.z ], [ %i.dm, %bb.ad ], [ %i.dl, %bb.ac ], [ %i.dt, %bb.ag ], [ %i.ds, %bb.af ]
  %i.du = sext i32 %.sink to i64
  %i.dv = load i64, ptr %i.h, align 8, !tbaa !25
  %i.dw = add nsw i64 %i.dv, %i.du
  store i64 %i.dw, ptr %i.h, align 8, !tbaa !25
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.n
  %i.dx = load i8, ptr %i.a, align 1, !tbaa !62, !range !64, !noundef !65 ; 2 uses
  %i.dy = trunc nuw i8 %i.dx to i1
  %or.cond22 = and i1 %i.bh, %i.dy
  br i1 %or.cond22, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dz = zext i32 %i.bg to i64                   ; 3 uses
  %i.ea = load i64, ptr %i.h, align 8, !tbaa !25
  %i.eb = add nsw i64 %i.ea, %i.dz
  store i64 %i.eb, ptr %i.h, align 8, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !46 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef i64 %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef %.0200, i64 noundef %i.dz), !inline_history !48
  %i.ei = icmp eq i64 %i.eh, %i.dz
  %i.ej = zext i1 %i.ei to i8                     ; 2 uses
  store i8 %i.ej, ptr %i.a, align 1, !tbaa !62
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.in239 = phi i8 [ %i.ej, %bb.ai ], [ %i.dx, %bb.ah ]
  %.not213 = icmp eq ptr %.0200, null
  br i1 %.not213, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %.0200) #16
  %.0.in.pre = load i8, ptr %i.a, align 1, !tbaa !62, !range !64
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.l, %bb.m
  %.0.in = phi i8 [ %.0.in239, %bb.aj ], [ %.0.in.pre, %bb.ak ], [ %i.ca, %bb.l ], [ %i.ca, %bb.m ]
  %.0 = trunc nuw i8 %.0.in to i1
  br label %_ZN3dpx6Writer12WritePadDataEi.exit

_ZN3dpx6Writer12WritePadDataEi.exit:              ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.al, %_ZNK3dpx13GenericHeader12ImagePackingEi.exit, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit, %bb.a
  %.2 = phi i1 [ false, %_ZNK3dpx13GenericHeader15ImageDescriptorEi.exit ], [ false, %bb.a ], [ false, %_ZNK3dpx13GenericHeader12ImagePackingEi.exit ], [ %.0, %bb.al ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %.2
}

declare noundef i32 @_ZNK3dpx13GenericHeader17ComponentDataSizeEi(ptr noundef nonnull align 4 dereferenceable(1664), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK3dpx6Header5WidthEv(ptr noundef nonnull align 4 dereferenceable(2049)) local_unnamed_addr #2

declare noundef i32 @_ZNK3dpx6Header6HeightEv(ptr noundef nonnull align 4 dereferenceable(2049)) local_unnamed_addr #2

declare noundef i32 @_ZNK3dpx13GenericHeader26ImageElementComponentCountEi(ptr noundef nonnull align 4 dereferenceable(1664), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3dpx6Writer12WriteThroughEPvjjiijjPc(ptr noundef nonnull align 8 captures(none) dereferenceable(2080) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = zext i32 %3 to i64                       ; 2 uses
  %i.c = mul nuw i64 %i.b, %i.a
  %i.d = sext i32 %4 to i64
  %i.e = mul i64 %i.c, %i.d
  %i.f = sext i32 %5 to i64
  %i.g = mul i64 %i.e, %i.f                       ; 3 uses
  %i.h = mul i32 %6, %3
  %i.i = zext i32 %i.h to i64
  %i.j = add i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %i.m = add i64 %i.j, %i.l
  store i64 %i.m, ptr %i.k, align 8, !tbaa !25
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not35 = icmp eq i32 %3, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  %i.o = mul i32 %5, %2                           ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = zext i32 %7 to i64                       ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !66

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.s = trunc nuw i64 %indvars.iv to i32
  %i.t = mul i32 %i.o, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef %i.v, i64 noundef %i.p), !inline_history !48
  %i.aa = icmp eq i64 %i.z, %i.p
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !46  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef %8, i64 noundef %i.q), !inline_history !48
  %i.ag = icmp eq i64 %i.af, %i.q
  br i1 %i.ag, label %bb.b, label %.thread

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef %1, i64 noundef %i.g), !inline_history !48
  %i.an = icmp eq i64 %i.am, %i.g
  %spec.select = zext i1 %i.an to i8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.e
  %.0 = phi i8 [ %spec.select, %bb.e ], [ 1, %.preheader ], [ 1, %bb.b ] ; 2 uses
  %i.ao = trunc nuw i8 %.0 to i1
  %i.ap = icmp ne i32 %7, 0
  %or.cond = and i1 %i.ap, %i.ao
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %.loopexit
  %i.aq = zext i32 %7 to i64                      ; 3 uses
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !25
  %i.as = add nsw i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.k, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef %8, i64 noundef %i.aq), !inline_history !48
  %i.az = icmp eq i64 %i.ay, %i.aq
  %i.ba = zext i1 %i.az to i8
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.f, %.loopexit
  %.1 = phi i8 [ %i.ba, %bb.f ], [ %.0, %.loopexit ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.bb = trunc nuw i8 %.1 to i1
  ret i1 %i.bb
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3dpx11WriteBufferIhLi8ELb1EEEiP9OutStreamNS_8DataSizeEPvjjiNS_7PackingEbbiPcRbb(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i32 noundef %9, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %11, i1 noundef zeroext %12) local_unnamed_addr #1 {
bb.a:
  %i.a = mul i32 %5, %3                           ; 11 uses
  br i1 %7, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %i.a, 3
  %i.c = add nuw nsw i32 %i.b, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = add i32 %i.a, 1
  %i.f = add i32 %i.e, %i.d
  %i.g = zext i32 %i.f to i64
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #18 ; 10 uses
  %.not68 = icmp eq i32 %4, 0
  br i1 %.not68, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.i = icmp sgt i32 %i.a, 0                     ; 4 uses
  %wide.trip.count.i28.i = zext i32 %i.a to i64   ; 12 uses
  %i.j = sext i32 %i.a to i64                     ; 2 uses
  %.not = icmp eq i32 %9, 0
  %i.k = sext i32 %9 to i64                       ; 2 uses
  %wide.trip.count = zext i32 %4 to i64
  %min.iters.check105 = icmp ult i32 %i.a, 4
  %n.vec108 = and i64 %wide.trip.count.i28.i, 2147483644 ; 3 uses
  %cmp.n115 = icmp eq i64 %n.vec108, %wide.trip.count.i28.i
  %min.iters.check92 = icmp ult i32 %i.a, 8
  %n.vec95 = and i64 %wide.trip.count.i28.i, 2147483640 ; 3 uses
  %cmp.n102 = icmp eq i64 %n.vec95, %wide.trip.count.i28.i
  %min.iters.check = icmp ult i32 %i.a, 5
  %min.iters.check84 = icmp ult i32 %i.a, 17
  %n.mod.vf = and i64 %wide.trip.count.i28.i, 15  ; 2 uses
  %13 = icmp eq i64 %n.mod.vf, 0
  %14 = select i1 %13, i64 16, i64 %n.mod.vf      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i28.i, %14 ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %14, 5
  %n.vec87 = and i64 %wide.trip.count.i28.i, 3    ; 2 uses
  %cmp.n91 = icmp eq i64 %n.vec87, 0
  %15 = select i1 %cmp.n91, i64 4, i64 %n.vec87
  %n.vec86 = sub nsw i64 %wide.trip.count.i28.i, %15 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.067 = phi i32 [ 0, %.lr.ph ], [ %.2.ph, %bb.j ]
  %i.l = tail call noundef i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef %1)
  %i.m = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.n = mul i32 %i.a, %i.m
  %i.o = mul i32 %i.n, %i.l
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  %i.r = mul i32 %9, %i.m
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr i8, ptr %i.q, i64 %i.s     ; 26 uses
  switch i32 %1, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %.lr.ph.i.i.preheader, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.t, i64 %wide.trip.count.i28.i, i1 false), !tbaa !67
  br label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %iter.check, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit

iter.check:                                       ; preds = %bb.e
  br i1 %min.iters.check, label %.lr.ph.i17.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check84, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 18 uses
  %16 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %17 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %18 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %19 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %20 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %21 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %22 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %23 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %24 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %25 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %26 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %27 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %28 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %29 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %30 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index
  %31 = getelementptr inbounds nuw i8, ptr %i.h, i64 %index
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 1
  %33 = getelementptr inbounds nuw i8, ptr %17, i64 3
  %34 = getelementptr inbounds nuw i8, ptr %18, i64 5
  %35 = getelementptr inbounds nuw i8, ptr %19, i64 7
  %36 = getelementptr inbounds nuw i8, ptr %20, i64 9
  %37 = getelementptr inbounds nuw i8, ptr %21, i64 11
  %38 = getelementptr inbounds nuw i8, ptr %22, i64 13
  %i.v = getelementptr inbounds nuw i8, ptr %23, i64 15
  %i.w = getelementptr inbounds nuw i8, ptr %24, i64 17
  %39 = getelementptr inbounds nuw i8, ptr %25, i64 19
  %40 = getelementptr inbounds nuw i8, ptr %26, i64 21
  %41 = getelementptr inbounds nuw i8, ptr %27, i64 23
  %42 = getelementptr inbounds nuw i8, ptr %28, i64 25
  %43 = getelementptr inbounds nuw i8, ptr %29, i64 27
  %44 = getelementptr inbounds nuw i8, ptr %30, i64 29
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 31
  %45 = load i8, ptr %32, align 1, !tbaa !12
  %46 = load i8, ptr %33, align 1, !tbaa !12
  %47 = load i8, ptr %34, align 1, !tbaa !12
  %48 = load i8, ptr %35, align 1, !tbaa !12
  %49 = load i8, ptr %36, align 1, !tbaa !12
  %50 = load i8, ptr %37, align 1, !tbaa !12
  %51 = load i8, ptr %38, align 1, !tbaa !12
  %52 = load i8, ptr %i.v, align 1, !tbaa !12
  %53 = load i8, ptr %i.w, align 1, !tbaa !12
  %54 = load i8, ptr %39, align 1, !tbaa !12
  %55 = load i8, ptr %40, align 1, !tbaa !12
  %56 = load i8, ptr %41, align 1, !tbaa !12
  %57 = load i8, ptr %42, align 1, !tbaa !12
  %58 = load i8, ptr %43, align 1, !tbaa !12
  %59 = load i8, ptr %44, align 1, !tbaa !12
  %60 = load i8, ptr %i.x, align 1, !tbaa !12
  %61 = insertelement <16 x i8> poison, i8 %45, i64 0
  %62 = insertelement <16 x i8> %61, i8 %46, i64 1
  %63 = insertelement <16 x i8> %62, i8 %47, i64 2
  %64 = insertelement <16 x i8> %63, i8 %48, i64 3
  %65 = insertelement <16 x i8> %64, i8 %49, i64 4
  %66 = insertelement <16 x i8> %65, i8 %50, i64 5
  %67 = insertelement <16 x i8> %66, i8 %51, i64 6
  %68 = insertelement <16 x i8> %67, i8 %52, i64 7
  %69 = insertelement <16 x i8> %68, i8 %53, i64 8
  %70 = insertelement <16 x i8> %69, i8 %54, i64 9
  %71 = insertelement <16 x i8> %70, i8 %55, i64 10
  %72 = insertelement <16 x i8> %71, i8 %56, i64 11
  %73 = insertelement <16 x i8> %72, i8 %57, i64 12
  %74 = insertelement <16 x i8> %73, i8 %58, i64 13
  %75 = insertelement <16 x i8> %74, i8 %59, i64 14
  %76 = insertelement <16 x i8> %75, i8 %60, i64 15
  store <16 x i8> %76, ptr %31, align 1, !tbaa !67
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !68

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i17.i.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 6 uses
  %77 = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index88
  %78 = getelementptr [2 x i8], ptr %i.t, i64 %index88
  %79 = getelementptr [2 x i8], ptr %i.t, i64 %index88
  %i.z = getelementptr [2 x i8], ptr %i.t, i64 %index88
  %80 = getelementptr inbounds nuw i8, ptr %i.h, i64 %index88
  %81 = getelementptr inbounds nuw i8, ptr %77, i64 1
  %82 = getelementptr i8, ptr %78, i64 3
  %83 = getelementptr i8, ptr %79, i64 5
  %i.aa = getelementptr i8, ptr %i.z, i64 7
  %84 = load i8, ptr %81, align 1, !tbaa !12
  %85 = load i8, ptr %82, align 1, !tbaa !12
  %86 = load i8, ptr %83, align 1, !tbaa !12
  %87 = load i8, ptr %i.aa, align 1, !tbaa !12
  %88 = insertelement <4 x i8> poison, i8 %84, i64 0
  %89 = insertelement <4 x i8> %88, i8 %85, i64 1
  %90 = insertelement <4 x i8> %89, i8 %86, i64 2
  %91 = insertelement <4 x i8> %90, i8 %87, i64 3
  store <4 x i8> %91, ptr %80, align 1, !tbaa !67
  %index.next90 = add nuw i64 %index88, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.ab, label %.lr.ph.i17.i.preheader, label %vec.epilog.vector.body, !llvm.loop !69

.lr.ph.i17.i.preheader:                           ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i18.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec86, %vec.epilog.vector.body ]
  br label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i.preheader, %.lr.ph.i17.i
  %indvars.iv.i18.i = phi i64 [ %indvars.iv.next.i19.i, %.lr.ph.i17.i ], [ %indvars.iv.i18.i.ph, %.lr.ph.i17.i.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.i18.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i18.i
  %.shift.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %92 = load i8, ptr %.shift.i.i.i, align 1, !tbaa !12
  store i8 %92, ptr %i.ad, align 1, !tbaa !67
  %indvars.iv.next.i19.i = add nuw nsw i64 %indvars.iv.i18.i, 1 ; 2 uses
  %exitcond.not.i20.i = icmp eq i64 %indvars.iv.next.i19.i, %wide.trip.count.i28.i
  br i1 %exitcond.not.i20.i, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i17.i, !llvm.loop !70

bb.f:                                             ; preds = %bb.c
  br i1 %i.i, label %.lr.ph.i23.i.preheader, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit

.lr.ph.i23.i.preheader:                           ; preds = %bb.f
  br i1 %min.iters.check92, label %.lr.ph.i23.i.preheader117, label %vector.body96

vector.body96:                                    ; preds = %.lr.ph.i23.i.preheader, %vector.body96
  %index97 = phi i64 [ %index.next100, %vector.body96 ], [ 0, %.lr.ph.i23.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index97 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %index97 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load98 = load <4 x float>, ptr %i.ae, align 4, !tbaa !71
  %wide.load99 = load <4 x float>, ptr %i.ag, align 4, !tbaa !71
  %i.ah = fptoui <4 x float> %wide.load98 to <4 x i8>
  %i.ai = fptoui <4 x float> %wide.load99 to <4 x i8>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store <4 x i8> %i.ah, ptr %i.af, align 1, !tbaa !67
  store <4 x i8> %i.ai, ptr %i.aj, align 1, !tbaa !67
  %index.next100 = add nuw i64 %index97, 8        ; 2 uses
  %i.ak = icmp eq i64 %index.next100, %n.vec95
  br i1 %i.ak, label %middle.block101, label %vector.body96, !llvm.loop !72

middle.block101:                                  ; preds = %vector.body96
  br i1 %cmp.n102, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i23.i.preheader117

.lr.ph.i23.i.preheader117:                        ; preds = %.lr.ph.i23.i.preheader, %middle.block101
  %indvars.iv.i24.i.ph = phi i64 [ 0, %.lr.ph.i23.i.preheader ], [ %n.vec95, %middle.block101 ]
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i.preheader117, %.lr.ph.i23.i
  %indvars.iv.i24.i = phi i64 [ %indvars.iv.next.i25.i, %.lr.ph.i23.i ], [ %indvars.iv.i24.i.ph, %.lr.ph.i23.i.preheader117 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i24.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i24.i
  %i.an = load float, ptr %i.al, align 4, !tbaa !71
  %i.ao = fptoui float %i.an to i8
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !67
  %indvars.iv.next.i25.i = add nuw nsw i64 %indvars.iv.i24.i, 1 ; 2 uses
  %exitcond.not.i26.i = icmp eq i64 %indvars.iv.next.i25.i, %wide.trip.count.i28.i
  br i1 %exitcond.not.i26.i, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i23.i, !llvm.loop !73

bb.g:                                             ; preds = %bb.c
  br i1 %i.i, label %.lr.ph.i29.i.preheader, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit

.lr.ph.i29.i.preheader:                           ; preds = %bb.g
  br i1 %min.iters.check105, label %.lr.ph.i29.i.preheader119, label %vector.body109

vector.body109:                                   ; preds = %.lr.ph.i29.i.preheader, %vector.body109
  %index110 = phi i64 [ %index.next113, %vector.body109 ], [ 0, %.lr.ph.i29.i.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index110 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %index110 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load111 = load <2 x double>, ptr %i.ap, align 8, !tbaa !74
  %wide.load112 = load <2 x double>, ptr %i.ar, align 8, !tbaa !74
  %i.as = fptoui <2 x double> %wide.load111 to <2 x i8>
  %i.at = fptoui <2 x double> %wide.load112 to <2 x i8>
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store <2 x i8> %i.as, ptr %i.aq, align 1, !tbaa !67
  store <2 x i8> %i.at, ptr %i.au, align 1, !tbaa !67
  %index.next113 = add nuw i64 %index110, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.av, label %middle.block114, label %vector.body109, !llvm.loop !76

middle.block114:                                  ; preds = %vector.body109
  br i1 %cmp.n115, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i29.i.preheader119

.lr.ph.i29.i.preheader119:                        ; preds = %.lr.ph.i29.i.preheader, %middle.block114
  %indvars.iv.i30.i.ph = phi i64 [ 0, %.lr.ph.i29.i.preheader ], [ %n.vec108, %middle.block114 ]
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %.lr.ph.i29.i.preheader119, %.lr.ph.i29.i
  %indvars.iv.i30.i = phi i64 [ %indvars.iv.next.i31.i, %.lr.ph.i29.i ], [ %indvars.iv.i30.i.ph, %.lr.ph.i29.i.preheader119 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i30.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.i30.i
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !74
  %i.az = fptoui double %i.ay to i8
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !67
  %indvars.iv.next.i31.i = add nuw nsw i64 %indvars.iv.i30.i, 1 ; 2 uses
  %exitcond.not.i32.i = icmp eq i64 %indvars.iv.next.i31.i, %wide.trip.count.i28.i
  br i1 %exitcond.not.i32.i, label %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit, label %.lr.ph.i29.i, !llvm.loop !77

_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit: ; preds = %.lr.ph.i29.i, %.lr.ph.i23.i, %.lr.ph.i17.i, %middle.block114, %middle.block101, %.lr.ph.i.i.preheader, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ba = add i32 %.067, %i.a                     ; 3 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.h, i64 noundef %i.j), !inline_history !48
  %i.bf = icmp eq i64 %i.be, %i.j
  br i1 %i.bf, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = add nsw i32 %i.ba, %9                   ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %10, i64 noundef %i.k), !inline_history !48
  %i.bl = icmp eq i64 %i.bk, %i.k
  br i1 %i.bl, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.ph = phi i32 [ %i.ba, %bb.h ], [ %i.bg, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !78

.loopexit.sink.split:                             ; preds = %bb.i, %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit
  %.3.ph = phi i32 [ %i.ba, %_ZN3dpx15CopyWriteBufferIhEEvNS_8DataSizeEPhPT_i.exit ], [ %i.bg, %bb.i ]
  store i8 0, ptr %11, align 1, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.sink.split, %._crit_edge
  %.3 = phi i32 [ 0, %._crit_edge ], [ %.3.ph, %.loopexit.sink.split ], [ %.2.ph, %bb.j ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #16
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3dpx11WriteBufferIhLi8ELb0EEEiP9OutStreamNS_8DataSizeEPvjjiNS_7PackingEbbiPcRbb(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i32 noundef %9, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %11, i1 noundef zeroext %12) local_unnamed_addr #1 {
bb.a:
  %i.a = mul i32 %5, %3                           ; 5 uses
  br i1 %7, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %i.a, 3
  %i.c = add nuw nsw i32 %i.b, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = add i32 %i.a, 1
  %i.f = add i32 %i.e, %i.d
  %i.g = zext i32 %i.f to i64
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #18 ; 3 uses
  %.not61 = icmp eq i32 %4, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.i = sext i32 %i.a to i64                     ; 4 uses
  %.not = icmp eq i32 %9, 0
  %i.j = sext i32 %9 to i64                       ; 2 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.k = mul i32 %5, %4
  %i.l = mul i32 %i.k, %3
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.c
  %.059.us = phi i32 [ %i.n, %bb.c ], [ 0, %.lr.ph.split.us.preheader ]
  %.04758.us = phi i32 [ %i.t, %bb.c ], [ 0, %.lr.ph.split.us.preheader ]
  %i.m = tail call noundef i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef %1) ; 0 uses
  %i.n = add i32 %.059.us, %i.a                   ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.h, i64 noundef %i.i), !inline_history !48
  %i.s = icmp eq i64 %i.r, %i.i
  br i1 %i.s, label %bb.c, label %.loopexit.sink.split

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.t = add nuw i32 %.04758.us, 1                ; 2 uses
  %exitcond70.not = icmp eq i32 %i.t, %4
  br i1 %exitcond70.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !79

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.059 = phi i32 [ %i.ab, %bb.e ], [ 0, %.lr.ph ]
  %.04758 = phi i32 [ %i.ah, %bb.e ], [ 0, %.lr.ph ]
  %i.u = tail call noundef i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef %1) ; 0 uses
  %i.v = add i32 %.059, %i.a                      ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.h, i64 noundef %i.i), !inline_history !48
  %i.aa = icmp eq i64 %i.z, %i.i
  br i1 %i.aa, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %.lr.ph.split
  %i.ab = add nsw i32 %i.v, %9                    ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %10, i64 noundef %i.j), !inline_history !48
  %i.ag = icmp eq i64 %i.af, %i.j
  br i1 %i.ag, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ah = add nuw i32 %.04758, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %4
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !79

.loopexit.sink.split:                             ; preds = %bb.d, %.lr.ph.split, %.lr.ph.split.us
  %.3.ph = phi i32 [ %i.n, %.lr.ph.split.us ], [ %i.ab, %bb.d ], [ %i.v, %.lr.ph.split ]
  store i8 0, ptr %11, align 1, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %.loopexit.sink.split, %._crit_edge
  %.3 = phi i32 [ %.3.ph, %.loopexit.sink.split ], [ %i.l, %bb.c ], [ 0, %._crit_edge ], [ %i.ab, %bb.e ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #16
  ret i32 %.3
}

declare noundef zeroext i1 @_ZNK3dpx6Header9DatumSwapEi(ptr noundef nonnull align 4 dereferenceable(2049), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3dpx11WriteBufferItLi10ELb1EEEiP9OutStreamNS_8DataSizeEPvjjiNS_7PackingEbbiPcRbb(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i32 noundef %9, ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %11, i1 noundef zeroext %12) local_unnamed_addr #1 {
bb.a:
  %13 = alloca %"struct.dpx::BufferAccess", align 4 ; 10 uses
  %i.a = mul i32 %5, %3                           ; 17 uses
  br i1 %7, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %i.a, 3
  %i.c = add nuw nsw i32 %i.b, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  store i32 0, ptr %13, align 4
  store i32 %i.a, ptr %i.e, align 4, !tbaa !80
  %i.f = add i32 %i.a, 1
  %i.g = add i32 %i.f, %i.d
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #18 ; 21 uses
  %i.k = icmp eq i32 %5, 4
  %spec.select = xor i1 %i.k, %8                  ; 2 uses
  %.not92 = icmp eq i32 %4, 0
  br i1 %.not92, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.l = icmp sgt i32 %i.a, 0                     ; 5 uses
  %wide.trip.count.i28.i = zext i32 %i.a to i64   ; 16 uses
  %i.m = mul nsw i32 %i.a, 10                     ; 2 uses
  %i.n = sdiv i32 %i.m, 32
  %i.o = and i32 %i.m, 30
  %.not.i = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not.i to i32
  %i.q = add nsw i32 %i.n, %i.p
  %i.r = shl nsw i32 %i.q, 1                      ; 2 uses
  %i.s = icmp slt i32 %i.a, 1
  %exitcond.peel.not.i = icmp eq i32 %i.a, 1      ; 2 uses
  %i.t = add nuw nsw i32 %i.a, 2
  %i.u = udiv i32 %i.t, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %i.j, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = udiv i32 %i.a, 3
  %i.z = urem i32 %i.a, 3
  %.not.i76 = icmp ne i32 %i.z, 0
  %i.aa = zext i1 %.not.i76 to i32
  %i.ab = add nuw nsw i32 %i.y, %i.aa
  %i.ac = shl nuw nsw i32 %i.ab, 1                ; 2 uses
  %.not = icmp eq i32 %9, 0
  %i.ad = sext i32 %9 to i64                      ; 2 uses
  %i.ae = shl nuw nsw i64 %wide.trip.count.i28.i, 1
  %wide.trip.count = zext i32 %4 to i64
  %min.iters.check170 = icmp ult i32 %i.a, 4
  %n.vec173 = and i64 %wide.trip.count.i28.i, 2147483644 ; 3 uses
  %cmp.n180 = icmp eq i64 %n.vec173, %wide.trip.count.i28.i
  %min.iters.check157 = icmp ult i32 %i.a, 8
  %n.vec160 = and i64 %wide.trip.count.i28.i, 2147483640 ; 3 uses
  %cmp.n167 = icmp eq i64 %n.vec160, %wide.trip.count.i28.i
  %min.iters.check137 = icmp ult i32 %i.a, 4
  %min.iters.check138 = icmp ult i32 %i.a, 16
  %n.mod.vf140 = and i64 %wide.trip.count.i28.i, 12
  %n.vec141 = and i64 %wide.trip.count.i28.i, 2147483632 ; 4 uses
  %cmp.n148 = icmp eq i64 %n.vec141, %wide.trip.count.i28.i
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf140, 0
  %n.vec150 = and i64 %wide.trip.count.i28.i, 2147483644 ; 3 uses
  %cmp.n154 = icmp eq i64 %n.vec150, %wide.trip.count.i28.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv109 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next110, %bb.v ] ; 2 uses
  %.06991 = phi i32 [ 0, %.lr.ph ], [ %.2.ph, %bb.v ]
  %i.af = call noundef i32 @_ZN3dpx13GenericHeader17DataSizeByteCountENS_8DataSizeE(i32 noundef %1)
  %i.ag = trunc nuw i64 %indvars.iv109 to i32     ; 2 uses
end_hunk_0
