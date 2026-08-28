Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/raster?download=true
inline.NumInlined: 36
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Render_Glyph:bb.a
  %i.aj = zext nneg i32 %i.af to i64
  %i.ak = mul nuw nsw i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !99
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.am = tail call fastcc i32 @Render_Single_Pass(ptr noundef %0, i8 noundef signext 0, i32 noundef %i.ah) ; 2 uses
  %.not39 = icmp eq i32 %i.am, 0
  br i1 %.not39, label %bb.g, label %bb.j

bb.g:                                             ; preds = %._crit_edge
  %i.an = load i32, ptr %i.a, align 8, !tbaa !84
  %i.ao = and i32 %i.an, 512
  %.not40 = icmp eq i32 %i.ao, 0
  br i1 %.not40, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @Horizontal_Sweep_Init, ptr %i.s, align 8, !tbaa !92
  store ptr @Horizontal_Sweep_Span, ptr %i.t, align 8, !tbaa !93
  store ptr @Horizontal_Sweep_Drop, ptr %i.u, align 8, !tbaa !94
  store ptr @Horizontal_Sweep_Step, ptr %i.v, align 8, !tbaa !95
  %i.ap = load i32, ptr %i.x, align 4, !tbaa !96
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = sext i16 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !100
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = sext i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.i, ptr %i.j, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Vertical_Sweep_Span(ptr nofree noundef readonly captures(none) %0, i16 signext %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load i16, ptr %i.a, align 8, !tbaa !103
  %i.c = and i16 %i.b, 7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !88   ; 2 uses
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
  %i.o = load i32, ptr %i.n, align 4, !tbaa !87
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
  %i.r = load i32, ptr %0, align 8, !tbaa !85
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = ashr i64 %i.k, %i.s                      ; 2 uses
  %i.u = ashr i64 %.048, %i.s                     ; 3 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.x = load i16, ptr %i.w, align 2, !tbaa !97
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
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !102 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ab ; 5 uses
  %i.ap = sub nsw i32 %i.af, %i.ac                ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !38
  %i.as = or i8 %i.ar, %i.ai
  store i8 %i.as, ptr %i.ao, align 1, !tbaa !38
  %.not63 = icmp eq i32 %i.ap, 1
  br i1 %.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.at = getelementptr i8, ptr %i.an, i64 %i.ab
  %scevgep = getelementptr i8, ptr %i.at, i64 1
  %i.au = add nsw i32 %i.af, -2
  %i.av = sub nsw i32 %i.au, %i.ac
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 -1, i64 %i.ax, i1 false), !tbaa !38
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ab
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.aw
  %scevgep65 = getelementptr i8, ptr %i.az, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %.047.lcssa = phi ptr [ %i.ao, %bb.f ], [ %scevgep65, %.lr.ph.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.047.lcssa, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !38
  %i.bc = or i8 %i.bb, %i.al
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !38
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bd = and i8 %i.al, %i.ai
  %i.be = load i8, ptr %i.ao, align 1, !tbaa !38
  %i.bf = or i8 %i.be, %i.bd
  store i8 %i.bf, ptr %i.ao, align 1, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Vertical_Sweep_Drop(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readonly captures(address) %5) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88   ; 4 uses
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
  %.pre83 = load i32, ptr %0, align 8, !tbaa !85
  %.pre84 = zext nneg i32 %.pre83 to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i16, ptr %i.k, align 8, !tbaa !103  ; 3 uses
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
  %6 = lshr i32 %i.q, 6
  %7 = zext nneg i32 %6 to i64
  %i.r = add nsw i64 %i.p, %7
  %i.s = ashr i64 %i.r, 1
  %i.t = and i64 %i.s, %i.g
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105
  %i.w = icmp eq ptr %i.v, %5
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !106
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = and i16 %i.l, 16
  %.not = icmp eq i16 %i.aa, 0
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = sub nsw i64 %3, %2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !89
  %i.ae = sext i32 %i.ad to i64
  %.not76 = icmp slt i64 %i.ab, %i.ae
  br i1 %.not76, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !105
  %i.ah = icmp eq ptr %i.ag, %4
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !107
  %i.ak = sext i16 %1 to i64
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = and i16 %i.l, 32
  %.not77 = icmp eq i16 %i.am, 0
  br i1 %.not77, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = sub nsw i64 %3, %2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !89
  %i.aq = sext i32 %i.ap to i64
  %.not78 = icmp slt i64 %i.an, %i.aq
  br i1 %.not78, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.ar = icmp eq i16 %i.m, 1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i64 %3, %2
  %i.at = mul nuw nsw i32 %i.b, 63
  %8 = lshr i32 %i.at, 6
  %9 = zext nneg i32 %8 to i64
  %i.au = add nsw i64 %i.as, %9
  %i.av = ashr i64 %i.au, 1
  %i.aw = and i64 %i.av, %i.g
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.c, %bb.n, %bb.d
  %.069 = phi i64 [ %i.aw, %bb.n ], [ %i.t, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.m ] ; 3 uses
  %i.ax = icmp slt i64 %.069, 0
  %.pre = load i32, ptr %0, align 8, !tbaa !85
  %.pre86 = zext nneg i32 %.pre to i64            ; 5 uses
  br i1 %i.ax, label %._crit_edge85, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = lshr i64 %.069, %.pre86
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !97
  %i.bb = zext i16 %i.ba to i64
  %.not79 = icmp samesign ult i64 %i.ay, %i.bb
  %spec.select = select i1 %.not79, i64 %.069, i64 %i.i
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %bb.o, %bb.p
  %.1 = phi i64 [ %spec.select, %bb.p ], [ %i.h, %bb.o ] ; 4 uses
  %i.bc = icmp eq i64 %.1, %i.h
  %i.bd = select i1 %i.bc, i64 %i.i, i64 %i.h
  %i.be = ashr i64 %i.bd, %.pre86                 ; 4 uses
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = and i32 %i.bf, 7
  %i.bh = icmp sgt i64 %i.be, -1
  br i1 %i.bh, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge85
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !97
  %i.bk = zext i16 %i.bj to i64
  %i.bl = icmp samesign ult i64 %i.be, %i.bk
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !102
  %i.bo = lshr i64 %i.be, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.br = zext i8 %i.bq to i32
  %i.bs = lshr exact i32 128, %i.bg
  %i.bt = and i32 %i.bs, %i.br
  %.not80 = icmp eq i32 %i.bt, 0
  br i1 %.not80, label %bb.s, label %.thread

bb.s:                                             ; preds = %._crit_edge, %._crit_edge85, %bb.q, %bb.r
  %.pre-phi = phi i64 [ %.pre84, %._crit_edge ], [ %.pre86, %._crit_edge85 ], [ %.pre86, %bb.q ], [ %.pre86, %bb.r ]
  %.3 = phi i64 [ %i.h, %._crit_edge ], [ %.1, %._crit_edge85 ], [ %.1, %bb.q ], [ %.1, %bb.r ]
  %i.bu = ashr i64 %.3, %.pre-phi                 ; 4 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  br i1 %i.bv, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !97
  %i.by = zext i16 %i.bx to i64
  %i.bz = icmp samesign ult i64 %i.bu, %i.by
  br i1 %i.bz, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ca = lshr i64 %i.bu, 3
  %i.cb = trunc i64 %i.bu to i8
  %i.cc = and i8 %i.cb, 7
  %i.cd = lshr exact i8 -128, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !102
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ca ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !38
  %i.ci = or i8 %i.ch, %i.cd
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.l, %bb.h, %bb.r, %bb.g, %bb.c, %bb.k, %bb.u, %bb.t, %bb.s
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @Vertical_Sweep_Step(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = sext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  store ptr %i.g, ptr %i.c, align 8, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Render_Single_Pass(ptr noundef nonnull initializes((40, 64), (104, 124), (128, 144)) %0, i8 noundef signext range(i8 0, 2) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca ptr, align 8                      ; 18 uses
  %i.d = alloca [32 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 123 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not.i.i = icmp eq i8 %1, 0                    ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.cf, %bb.a
  %.029.ph = phi i32 [ %i.ww, %bb.cf ], [ 0, %bb.a ]
  %.027.ph = phi i32 [ %i.wt, %bb.cf ], [ %2, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %i.ws, %bb.cf ], [ 0, %bb.a ]
  %i.ah = sext i32 %.027.ph to i64
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.bd
  %.029 = phi i32 [ %i.of, %bb.bd ], [ %.029.ph, %.outer ] ; 5 uses
  %.0 = phi i32 [ %i.oc, %bb.bd ], [ %.0.ph, %.outer ] ; 4 uses
  %i.ai = sext i32 %.029 to i64
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !88
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = mul nsw i64 %i.ak, %i.ai
  store i64 %i.al, ptr %i.f, align 8, !tbaa !108
  %i.am = mul nsw i64 %i.ak, %i.ah
  store i64 %i.am, ptr %i.g, align 8, !tbaa !109
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !40  ; 5 uses
  store ptr %i.an, ptr %i.i, align 8, !tbaa !110
  store i32 0, ptr %i.j, align 8, !tbaa !111
  store ptr null, ptr %i.k, align 8, !tbaa !112
  store i8 0, ptr %i.l, align 1, !tbaa !113
  store i8 0, ptr %i.m, align 2, !tbaa !114
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -64 ; 2 uses
  store ptr %i.ap, ptr %i.o, align 8, !tbaa !115
  store i32 0, ptr %i.p, align 4, !tbaa !116
  store ptr %i.an, ptr %i.q, align 8, !tbaa !117
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !118
  store i16 0, ptr %i.r, align 8, !tbaa !119
  %i.ar = load i16, ptr %i.s, align 8, !tbaa !120
  %i.as = icmp sgt i16 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i, label %Convert_Glyph.exit.thread232

.lr.ph.i:                                         ; preds = %bb.b
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.aq, %.lr.ph.i
  %i.at = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.ja, %bb.aq ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aq ] ; 2 uses
  %.056138.i = phi i64 [ -1, %.lr.ph.i ], [ %i.ay, %bb.aq ] ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !121
  store ptr null, ptr %i.u, align 8, !tbaa !122
  %i.au = add nsw i64 %.056138.i, 1               ; 2 uses
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !123
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !27
  %i.ay = sext i16 %i.ax to i64                   ; 3 uses
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !124 ; 2 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.ay ; 5 uses
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.au ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !80
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !90
  %i.be = sext i32 %i.bd to i64                   ; 4 uses
  %i.bf = mul nsw i64 %i.bc, %i.be
  %i.bg = sext i32 %i.at to i64                   ; 4 uses
  %i.bh = sub nsw i64 %i.bf, %i.bg                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !81
  %i.bk = mul nsw i64 %i.bj, %i.be
  %i.bl = sub nsw i64 %i.bk, %i.bg                ; 2 uses
  %i.bm = load i64, ptr %i.ba, align 8, !tbaa !80
  %i.bn = mul nsw i64 %i.bm, %i.be
end_hunk_0
begin_hunk_1_@Render_Single_Pass:bb.a
  %i.wg = add i16 %.2147383.i, 1                  ; 2 uses
  %.not159.i = icmp sgt i16 %i.wg, %.1134.i
  br i1 %.not159.i, label %Draw_Sweep.exit.thread, label %.lr.ph384.i, !llvm.loop !155

.lr.ph356.i:                                      ; preds = %.preheader296.i, %bb.cd
  %.1140355.i = phi ptr [ %.1140.i, %bb.cd ], [ %.0..0..0..0..0139345.i, %.preheader296.i ] ; 4 uses
  %.1138354.i = phi ptr [ %.1138.i, %bb.cd ], [ %.0..1138352.i, %.preheader296.i ] ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.1140355.i, i64 48 ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !144
  %.not163.i = icmp eq i32 %i.wi, 0
  br i1 %.not163.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph356.i
  store i32 0, ptr %i.wh, align 8, !tbaa !144
  %i.wj = load ptr, ptr %i.af, align 8, !tbaa !94
  %i.wk = load i64, ptr %.1140355.i, align 8, !tbaa !140
  %i.wl = load i64, ptr %.1138354.i, align 8, !tbaa !140
  tail call void %i.wj(ptr noundef nonnull %0, i16 noundef signext %.1146357.i, i64 noundef %i.wk, i64 noundef %i.wl, ptr noundef nonnull %.1140355.i, ptr noundef nonnull %.1138354.i) #8, !inline_history !143
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph356.i
  %i.wm = getelementptr inbounds nuw i8, ptr %.1140355.i, i64 8
  %i.wn = getelementptr inbounds nuw i8, ptr %.1138354.i, i64 8
  %.1138.i = load ptr, ptr %i.wn, align 8, !tbaa !139 ; 2 uses
  %.1140.i = load ptr, ptr %i.wm, align 8, !tbaa !139 ; 2 uses
  %i.wo = icmp ne ptr %.1140.i, null
  %i.wp = icmp ne ptr %.1138.i, null
  %i.wq = select i1 %i.wo, i1 %i.wp, i1 false
  br i1 %i.wq, label %.lr.ph356.i, label %.loopexit297.i, !llvm.loop !156

Draw_Sweep.exit.thread:                           ; preds = %.lr.ph384.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

bb.ce:                                            ; preds = %._crit_edge.i41
  store i32 20, ptr %i.j, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %Convert_Glyph.exit.thread.thread51

.thread:                                          ; preds = %Convert_Glyph.exit.thread232, %Draw_Sweep.exit.thread
  %i.wr = icmp slt i32 %.0, 1
  br i1 %i.wr, label %Convert_Glyph.exit.thread.thread51, label %bb.cf

bb.cf:                                            ; preds = %.thread
  %i.ws = add nsw i32 %.0, -1                     ; 2 uses
  %i.wt = add nsw i32 %.029, -1
  %i.wu = zext nneg i32 %i.ws to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !3
  br label %.outer

Convert_Glyph.exit.thread.thread51:               ; preds = %Convert_Glyph.exit.thread.thread, %Convert_Glyph.exit.thread, %.thread, %.thread223.i.i, %bb.ak, %bb.ce
  %.031 = phi i32 [ 99, %bb.ak ], [ 20, %.thread223.i.i ], [ 20, %bb.ce ], [ %.pr, %Convert_Glyph.exit.thread ], [ 98, %Convert_Glyph.exit.thread.thread ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret i32 %.031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Horizontal_Sweep_Init(ptr nofree readnone captures(none) %0, i16 signext %1, i16 signext %2) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Horizontal_Sweep_Span(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1, i64 noundef %2, i64 noundef %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88   ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = add i64 %2, -1
  %i.e = add i64 %i.d, %i.c
  %i.f = sub nsw i32 0, %i.b
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = and i64 %i.e, %i.g
  %i.i = icmp eq i64 %2, %i.h
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !85
  %i.k = zext nneg i32 %i.j to i64
  %i.l = ashr i64 %2, %i.k                        ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i32, ptr %i.n, align 8, !tbaa !101
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %i.l, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = ashr i16 %1, 3
  %i.u = sext i16 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = load i32, ptr %i.w, align 8, !tbaa !100
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.l, %i.y
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ac = and i16 %1, 7
  %i.ad = lshr exact i16 128, %i.ac
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !38
  %i.af = trunc nuw i16 %i.ad to i8
  %i.ag = or i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !38
  %.pre = load i32, ptr %i.a, align 4, !tbaa !88
  %.pre37 = sub nsw i32 0, %.pre
  %.pre38 = sext i32 %.pre37 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.pre-phi39 = phi i64 [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %.pre38, %bb.d ], [ %i.g, %bb.a ]
  %i.ah = and i64 %3, %.pre-phi39
  %i.ai = icmp eq i64 %3, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %0, align 8, !tbaa !85
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = ashr i64 %3, %i.ak                      ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !101
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !99
  %i.at = ashr i16 %1, 3
  %i.au = sext i16 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !100
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.al, %i.ay
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.av, i64 %i.ba ; 2 uses
  %i.bc = and i16 %1, 7
  %i.bd = lshr exact i16 128, %i.bc
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !38
  %i.bf = trunc nuw i16 %i.bd to i8
  %i.bg = or i8 %i.be, %i.bf
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Horizontal_Sweep_Drop(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readonly captures(address) %5) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88   ; 4 uses
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
  %.pre87 = load i32, ptr %0, align 8, !tbaa !85
  %.pre88 = zext nneg i32 %.pre87 to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i16, ptr %i.k, align 8, !tbaa !103  ; 3 uses
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
  %6 = lshr i32 %i.q, 6
  %7 = zext nneg i32 %6 to i64
  %i.r = add nsw i64 %i.p, %7
  %i.s = ashr i64 %i.r, 1
  %i.t = and i64 %i.s, %i.g
  br label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105
  %i.w = icmp eq ptr %i.v, %5
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !106
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = and i16 %i.l, 16
  %.not = icmp eq i16 %i.aa, 0
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = sub nsw i64 %3, %2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !89
  %i.ae = sext i32 %i.ad to i64
  %.not80 = icmp slt i64 %i.ab, %i.ae
  br i1 %.not80, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !105
  %i.ah = icmp eq ptr %i.ag, %4
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !107
  %i.ak = sext i16 %1 to i64
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = and i16 %i.l, 32
  %.not81 = icmp eq i16 %i.am, 0
  br i1 %.not81, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = sub nsw i64 %3, %2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !89
  %i.aq = sext i32 %i.ap to i64
  %.not82 = icmp slt i64 %i.an, %i.aq
  br i1 %.not82, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.ar = icmp eq i16 %i.m, 1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i64 %3, %2
  %i.at = mul nuw nsw i32 %i.b, 63
  %8 = lshr i32 %i.at, 6
  %9 = zext nneg i32 %8 to i64
  %i.au = add nsw i64 %i.as, %9
  %i.av = ashr i64 %i.au, 1
  %i.aw = and i64 %i.av, %i.g
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.c, %bb.n, %bb.d
  %.073 = phi i64 [ %i.aw, %bb.n ], [ %i.t, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.m ] ; 3 uses
  %i.ax = icmp slt i64 %.073, 0
  %.pre = load i32, ptr %0, align 8, !tbaa !85
  %.pre90 = zext nneg i32 %.pre to i64            ; 5 uses
  br i1 %i.ax, label %._crit_edge89, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = lshr i64 %.073, %.pre90
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !101
  %i.bb = zext i32 %i.ba to i64
  %.not83 = icmp samesign ult i64 %i.ay, %i.bb
  %spec.select = select i1 %.not83, i64 %.073, i64 %i.i
  br label %._crit_edge89

._crit_edge89:                                    ; preds = %bb.o, %bb.p
  %.1 = phi i64 [ %spec.select, %bb.p ], [ %i.h, %bb.o ] ; 4 uses
  %i.bc = icmp eq i64 %.1, %i.h
  %i.bd = select i1 %i.bc, i64 %i.i, i64 %i.h
  %i.be = ashr i64 %i.bd, %.pre90                 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !99
  %i.bh = ashr i16 %1, 3
  %i.bi = sext i16 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !100
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %i.be, %i.bm
  %i.bo = sub i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 %i.bo
  %i.bq = and i16 %1, 7
  %i.br = lshr exact i16 128, %i.bq
  %i.bs = icmp sgt i64 %i.be, -1
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge89
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !101
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %i.be, %i.bv
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.by = zext i8 %i.bx to i16
  %i.bz = and i16 %i.br, %i.by
  %.not84 = icmp eq i16 %i.bz, 0
  br i1 %.not84, label %bb.s, label %.thread

bb.s:                                             ; preds = %._crit_edge, %._crit_edge89, %bb.q, %bb.r
  %.pre-phi = phi i64 [ %.pre88, %._crit_edge ], [ %.pre90, %._crit_edge89 ], [ %.pre90, %bb.q ], [ %.pre90, %bb.r ]
  %.3 = phi i64 [ %i.h, %._crit_edge ], [ %.1, %._crit_edge89 ], [ %.1, %bb.q ], [ %.1, %bb.r ]
  %i.ca = ashr i64 %.3, %.pre-phi                 ; 3 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  br i1 %i.cb, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !101
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp samesign ult i64 %i.ca, %i.ce
  br i1 %i.cf, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !99
  %i.ci = ashr i16 %1, 3
  %i.cj = sext i16 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !100
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %i.ca, %i.cn
  %i.cp = sub nsw i64 0, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.ck, i64 %i.cp ; 2 uses
  %i.cr = and i16 %1, 7
  %i.cs = lshr exact i16 128, %i.cr
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !38
  %i.cu = trunc nuw i16 %i.cs to i8
  %i.cv = or i8 %i.ct, %i.cu
  store i8 %i.cv, ptr %i.cq, align 1, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.l, %bb.h, %bb.r, %bb.g, %bb.c, %bb.k, %bb.u, %bb.t, %bb.s
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Horizontal_Sweep_Step(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc signext range(i8 0, 2) i8 @Line_To(ptr nofree noundef nonnull %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  switch i32 %i.b, label %thread-pre-split.thread157 [
    i32 0, label %bb.b
    i32 1, label %bb.j
    i32 2, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !127  ; 5 uses
  %i.e = icmp sgt i64 %2, %i.d
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !88   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = add i64 %i.d, -1
  %i.j = add i64 %i.i, %i.h
  %i.k = sub nsw i32 0, %i.g
  %i.l = sext i32 %i.k to i64
  %i.m = and i64 %i.j, %i.l
  %i.n = sub nsw i64 %i.m, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !89
  %i.q = sext i32 %i.p to i64
  %.not127 = icmp slt i64 %i.n, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %.not.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !110  ; 4 uses
  br i1 %.not.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.u, ptr %i.v, align 8, !tbaa !117
  store ptr %i.u, ptr %i.r, align 8, !tbaa !112
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !110
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !115
  %.not31.i = icmp ult ptr %i.x, %i.z
  br i1 %.not31.i, label %.sink.split.i, label %New_Profile.exit

.sink.split.i:                                    ; preds = %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !117 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !131
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr null, ptr %i.af, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !91
  %i.ai = zext i8 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %spec.select.v = select i1 %.not127, i16 8, i16 40
  %spec.select = or i16 %spec.select.v, %i.ai
  store i16 %spec.select, ptr %i.aj, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !122
  %.not34.i = icmp eq ptr %i.al, null
  br i1 %.not34.i, label %bb.e, label %New_Profile.exit.thread

bb.e:                                             ; preds = %.sink.split.i
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !122
  br label %New_Profile.exit.thread

New_Profile.exit.thread:                          ; preds = %.sink.split.i, %bb.e
  store i32 1, ptr %i.a, align 8, !tbaa !121
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 1, ptr %i.am, align 2, !tbaa !114
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 0, ptr %i.an, align 1, !tbaa !113
  br label %..thread_crit_edge

New_Profile.exit:                                 ; preds = %._crit_edge.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 98, ptr %i.ao, align 8, !tbaa !111
  br label %End_Profile.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.ap = icmp slt i64 %2, %i.d
  br i1 %i.ap, label %bb.g, label %thread-pre-split.thread157

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !88
end_hunk_1
