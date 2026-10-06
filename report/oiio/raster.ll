Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/raster?download=true
inline.NumInlined: 36
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ft_raster1_set_mode:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = tail call i32 %i.f(ptr noundef %i.h, i64 noundef %1, ptr noundef %2) #8
  ret i32 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Render_Glyph(ptr noundef nonnull initializes((0, 24), (40, 65), (66, 68), (72, 80), (104, 124), (128, 144), (240, 272)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !126  ; 4 uses
  %i.c = and i32 %i.b, 256
  %.not.i = icmp eq i32 %i.c, 0                   ; 3 uses
  %.sink13.i = select i1 %.not.i, i32 6, i32 12   ; 2 uses
  %.sink12.i = select i1 %.not.i, i32 32, i32 256
  %.sink.i = select i1 %.not.i, i32 2, i32 30
  store i32 %.sink13.i, ptr %0, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink12.i, ptr %i.d, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink.i, ptr %i.e, align 4, !tbaa !61
  %i.f = shl nuw nsw i32 1, %.sink13.i            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !62
  %i.h = lshr exact i32 %i.f, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !63
  %i.j = lshr i32 %i.f, 6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.j, ptr %i.k, align 4, !tbaa !64
  %i.l = and i32 %i.b, 8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 2, ptr %i.m, align 8, !tbaa !65
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.n = trunc i32 %i.b to i8
  %i.o = lshr i8 %i.n, 2
  %spec.select = and i8 %i.o, 4                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 %spec.select, ptr %i.p, align 8, !tbaa !65
  %i.q = and i32 %i.b, 32
  %.not38 = icmp eq i32 %i.q, 0
  br i1 %.not38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = or disjoint i8 %spec.select, 1
  store i8 %i.r, ptr %i.p, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr @Vertical_Sweep_Init, ptr %i.s, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr @Vertical_Sweep_Span, ptr %i.t, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr @Vertical_Sweep_Drop, ptr %i.u, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store ptr @Vertical_Sweep_Step, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !127
  %i.z = trunc i32 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !72 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %.pre = load i32, ptr %i.w, align 8, !tbaa !73
  %i.ah = add i32 %.pre, -1                       ; 2 uses
  br i1 %i.ag, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.ai = zext i32 %i.ah to i64
  %i.aj = zext nneg i32 %i.af to i64
  %i.ak = mul nuw nsw i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.am = tail call fastcc i32 @Render_Single_Pass(ptr noundef %0, i8 noundef signext 0, i32 noundef %i.ah) ; 2 uses
  %.not39 = icmp eq i32 %i.am, 0
  br i1 %.not39, label %bb.g, label %bb.j

bb.g:                                             ; preds = %._crit_edge
  %i.an = load i32, ptr %i.a, align 8, !tbaa !126
  %i.ao = and i32 %i.an, 512
  %.not40 = icmp eq i32 %i.ao, 0
  br i1 %.not40, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @Horizontal_Sweep_Init, ptr %i.s, align 8, !tbaa !66
  store ptr @Horizontal_Sweep_Span, ptr %i.t, align 8, !tbaa !67
  store ptr @Horizontal_Sweep_Drop, ptr %i.u, align 8, !tbaa !68
  store ptr @Horizontal_Sweep_Step, ptr %i.v, align 8, !tbaa !69
  %i.ap = load i32, ptr %i.x, align 4, !tbaa !127
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = tail call fastcc i32 @Render_Single_Pass(ptr noundef %0, i8 noundef signext 1, i32 noundef %i.aq) ; 2 uses
  %.not41 = icmp eq i32 %i.ar, 0
  br i1 %.not41, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %._crit_edge, %bb.i
  %.0 = phi i32 [ %i.am, %._crit_edge ], [ 0, %bb.i ], [ %i.ar, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @Vertical_Sweep_Init(ptr nofree noundef captures(none) initializes((80, 88)) %0, i16 noundef signext %1, i16 signext %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.c = sext i16 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !72
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Vertical_Sweep_Span(ptr nofree noundef readonly captures(none) %0, i16 signext %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load i16, ptr %i.a, align 8, !tbaa !76
  %i.c = and i16 %i.b, 7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62   ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = add i64 %2, %i.f                         ; 2 uses
  %i.h = add nsw i64 %i.g, -1
  %i.i = sub nsw i32 0, %i.e
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = and i64 %3, %i.j                         ; 3 uses
  %.not = icmp eq i16 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub i64 %3, %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !61
  %i.p = sext i32 %i.o to i64
  %.not56 = icmp sgt i64 %i.m, %i.p
  %.not57 = icmp eq i64 %i.k, %2
  %.not58 = icmp eq i64 %i.l, %3
  %i.q = or i1 %.not58, %.not57
  %or.cond60 = select i1 %.not56, i1 true, i1 %i.q
  %spec.select = select i1 %or.cond60, i64 %i.l, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.048 = phi i64 [ %i.l, %bb.a ], [ %spec.select, %bb.b ]
  %i.r = load i32, ptr %0, align 8, !tbaa !59
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = ashr i64 %i.k, %i.s                      ; 2 uses
  %i.u = ashr i64 %.048, %i.s                     ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.x = load i16, ptr %i.w, align 2, !tbaa !70
  %i.y = zext i16 %i.x to i64                     ; 3 uses
  %i.z = icmp slt i64 %i.t, %i.y
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.t, i64 0) ; 2 uses
  %.not59 = icmp samesign ult i64 %i.u, %i.y
  %i.aa = add nsw i64 %i.y, -1
  %.1 = select i1 %.not59, i64 %i.u, i64 %i.aa    ; 2 uses
  %i.ab = lshr i64 %spec.store.select, 3          ; 4 uses
  %i.ac = trunc nuw nsw i64 %i.ab to i32          ; 2 uses
  %i.ad = lshr i64 %.1, 3
  %i.ae = trunc i64 %i.ad to i16
  %i.af = sext i16 %i.ae to i32                   ; 2 uses
  %i.ag = trunc i64 %spec.store.select to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 -1, %i.ah                       ; 2 uses
  %i.aj = trunc i64 %.1 to i8
  %i.ak = and i8 %i.aj, 7
  %i.al = ashr exact i8 -128, %i.ak               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ab ; 5 uses
  %i.ap = sub nsw i32 %i.af, %i.ac                ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !26
  %i.as = or i8 %i.ar, %i.ai
  store i8 %i.as, ptr %i.ao, align 1, !tbaa !26
  %.not63 = icmp eq i32 %i.ap, 1
  br i1 %.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.at = getelementptr i8, ptr %i.an, i64 %i.ab
  %scevgep = getelementptr i8, ptr %i.at, i64 1
  %i.au = add nsw i32 %i.af, -2
  %6 = sub nsw i32 %i.au, %i.ac
  %7 = zext i32 %6 to i64                         ; 2 uses
  %8 = add nuw nsw i64 %7, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 -1, i64 %8, i1 false), !tbaa !26
  %i.av = getelementptr i8, ptr %i.an, i64 %i.ab
  %i.aw = getelementptr i8, ptr %i.av, i64 %7
  %scevgep65 = getelementptr i8, ptr %i.aw, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %.047.lcssa = phi ptr [ %i.ao, %bb.f ], [ %scevgep65, %.lr.ph.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.047.lcssa, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !26
  %i.az = or i8 %i.ay, %i.al
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ba = and i8 %i.al, %i.ai
  %i.bb = load i8, ptr %i.ao, align 1, !tbaa !26
  %i.bc = or i8 %i.bb, %i.ba
  store i8 %i.bc, ptr %i.ao, align 1, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Vertical_Sweep_Drop(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readonly captures(address) %5) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62   ; 4 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add i64 %2, -1
  %i.e = add i64 %i.d, %i.c
  %i.f = sub nsw i32 0, %i.b
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = and i64 %i.e, %i.g                       ; 6 uses
  %i.i = and i64 %3, %i.g                         ; 6 uses
  %i.j = icmp sgt i64 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre83 = load i32, ptr %0, align 8, !tbaa !59
  %.pre84 = zext nneg i32 %.pre83 to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i16, ptr %i.k, align 8, !tbaa !76   ; 3 uses
  %i.m = and i16 %i.l, 7                          ; 2 uses
  %i.n = add nsw i64 %i.i, %i.c
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  switch i16 %i.m, label %.thread [
    i16 0, label %bb.o
    i16 4, label %bb.d
    i16 1, label %bb.e
    i16 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %3, %2
  %i.q = mul nuw nsw i32 %i.b, 63
  %i.r = lshr i32 %i.q, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nsw i64 %i.p, %i.s
  %i.u = ashr i64 %i.t, 1
  %i.v = and i64 %i.u, %i.g
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.y = icmp eq ptr %i.x, %5
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !78
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = and i16 %i.l, 16
  %.not = icmp eq i16 %i.ac, 0
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = sub nsw i64 %3, %2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !63
  %i.ag = sext i32 %i.af to i64
  %.not76 = icmp slt i64 %i.ad, %i.ag
  br i1 %.not76, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.aj = icmp eq ptr %i.ai, %4
  br i1 %i.aj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !79
  %i.am = sext i16 %1 to i64
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = and i16 %i.l, 32
  %.not77 = icmp eq i16 %i.ao, 0
  br i1 %.not77, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = sub nsw i64 %3, %2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !63
  %i.as = sext i32 %i.ar to i64
  %.not78 = icmp slt i64 %i.ap, %i.as
  br i1 %.not78, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.at = icmp eq i16 %i.m, 1
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i64 %3, %2
  %i.av = mul nuw nsw i32 %i.b, 63
  %i.aw = lshr i32 %i.av, 6
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add nsw i64 %i.au, %i.ax
  %i.az = ashr i64 %i.ay, 1
  %i.ba = and i64 %i.az, %i.g
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.c, %bb.n, %bb.d
  %.069 = phi i64 [ %i.ba, %bb.n ], [ %i.v, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.m ] ; 3 uses
  %i.bb = icmp slt i64 %.069, 0
  %.pre = load i32, ptr %0, align 8, !tbaa !59
  %.pre86 = zext nneg i32 %.pre to i64            ; 5 uses
  br i1 %i.bb, label %._crit_edge85, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = lshr i64 %.069, %.pre86
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !70
  %i.bf = zext i16 %i.be to i64
  %.not79 = icmp samesign ult i64 %i.bc, %i.bf
  %spec.select = select i1 %.not79, i64 %.069, i64 %i.i
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %bb.o, %bb.p
  %.1 = phi i64 [ %spec.select, %bb.p ], [ %i.h, %bb.o ] ; 4 uses
  %i.bg = icmp eq i64 %.1, %i.h
  %i.bh = select i1 %i.bg, i64 %i.i, i64 %i.h
  %i.bi = ashr i64 %i.bh, %.pre86                 ; 4 uses
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 7
  %i.bl = icmp sgt i64 %i.bi, -1
  br i1 %i.bl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge85
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !70
  %i.bo = zext i16 %i.bn to i64
  %i.bp = icmp samesign ult i64 %i.bi, %i.bo
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.bs = lshr i64 %i.bi, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !26
  %i.bv = zext i8 %i.bu to i32
  %i.bw = lshr exact i32 128, %i.bk
  %i.bx = and i32 %i.bw, %i.bv
  %.not80 = icmp eq i32 %i.bx, 0
  br i1 %.not80, label %bb.s, label %.thread

bb.s:                                             ; preds = %._crit_edge, %._crit_edge85, %bb.q, %bb.r
  %.pre-phi = phi i64 [ %.pre84, %._crit_edge ], [ %.pre86, %._crit_edge85 ], [ %.pre86, %bb.q ], [ %.pre86, %bb.r ]
  %.3 = phi i64 [ %i.h, %._crit_edge ], [ %.1, %._crit_edge85 ], [ %.1, %bb.q ], [ %.1, %bb.r ]
  %i.by = ashr i64 %.3, %.pre-phi                 ; 4 uses
  %i.bz = icmp sgt i64 %i.by, -1
  br i1 %i.bz, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !70
  %i.cc = zext i16 %i.cb to i64
  %i.cd = icmp samesign ult i64 %i.by, %i.cc
  br i1 %i.cd, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ce = lshr i64 %i.by, 3
  %i.cf = trunc i64 %i.by to i8
  %i.cg = and i8 %i.cf, 7
  %i.ch = lshr exact i8 -128, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !74
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ce ; 2 uses
end_hunk_0
