Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/raster?download=true
inline.NumInlined: 36
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Horizontal_Sweep_Span:bb.a
  %i.x = load i32, ptr %i.w, align 8, !tbaa !75
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.l, %i.y
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ac = and i16 %1, 7
  %i.ad = lshr exact i16 128, %i.ac
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !29
  %i.af = trunc nuw i16 %i.ad to i8
  %i.ag = or i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !29
  %.pre = load i32, ptr %i.a, align 4, !tbaa !65
  %.pre37 = sub nsw i32 0, %.pre
  %.pre38 = sext i32 %.pre37 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.pre-phi39 = phi i64 [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %.pre38, %bb.d ], [ %i.g, %bb.a ]
  %i.ah = and i64 %3, %.pre-phi39
  %i.ai = icmp eq i64 %3, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %0, align 8, !tbaa !62
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = ashr i64 %3, %i.ak                      ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !76
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %i.al, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !74
  %i.at = ashr i16 %1, 3
  %i.au = sext i16 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !75
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.al, %i.ay
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.av, i64 %i.ba ; 2 uses
  %i.bc = and i16 %1, 7
  %i.bd = lshr exact i16 128, %i.bc
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !29
  %i.bf = trunc nuw i16 %i.bd to i8
  %i.bg = or i8 %i.be, %i.bf
  store i8 %i.bg, ptr %i.bb, align 1, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Horizontal_Sweep_Drop(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readonly captures(address) %5) #5 !guid !181 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65   ; 4 uses
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
  %.pre87 = load i32, ptr %0, align 8, !tbaa !62
  %.pre88 = zext nneg i32 %.pre87 to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i16, ptr %i.k, align 8, !tbaa !79   ; 3 uses
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.y = icmp eq ptr %i.x, %5
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !81
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = and i16 %i.l, 16
  %.not = icmp eq i16 %i.ac, 0
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = sub nsw i64 %3, %2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !66
  %i.ag = sext i32 %i.af to i64
  %.not80 = icmp slt i64 %i.ad, %i.ag
  br i1 %.not80, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !80
  %i.aj = icmp eq ptr %i.ai, %4
  br i1 %i.aj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !82
  %i.am = sext i16 %1 to i64
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ao = and i16 %i.l, 32
  %.not81 = icmp eq i16 %i.ao, 0
  br i1 %.not81, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = sub nsw i64 %3, %2
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !66
  %i.as = sext i32 %i.ar to i64
  %.not82 = icmp slt i64 %i.ap, %i.as
  br i1 %.not82, label %.thread, label %bb.m

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
  %.073 = phi i64 [ %i.ba, %bb.n ], [ %i.v, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.m ] ; 3 uses
  %i.bb = icmp slt i64 %.073, 0
  %.pre = load i32, ptr %0, align 8, !tbaa !62
  %.pre90 = zext nneg i32 %.pre to i64            ; 5 uses
  br i1 %i.bb, label %._crit_edge89, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = lshr i64 %.073, %.pre90
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !76
  %i.bf = zext i32 %i.be to i64
  %.not83 = icmp samesign ult i64 %i.bc, %i.bf
  %spec.select = select i1 %.not83, i64 %.073, i64 %i.i
  br label %._crit_edge89

._crit_edge89:                                    ; preds = %bb.o, %bb.p
  %.1 = phi i64 [ %spec.select, %bb.p ], [ %i.h, %bb.o ] ; 4 uses
  %i.bg = icmp eq i64 %.1, %i.h
  %i.bh = select i1 %i.bg, i64 %i.i, i64 %i.h
  %i.bi = ashr i64 %i.bh, %.pre90                 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !74
  %i.bl = ashr i16 %1, 3
  %i.bm = sext i16 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !75
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %i.bi, %i.bq
  %i.bs = sub i64 0, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bn, i64 %i.bs
  %i.bu = and i16 %1, 7
  %i.bv = lshr exact i16 128, %i.bu
  %i.bw = icmp sgt i64 %i.bi, -1
  br i1 %i.bw, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge89
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !76
  %i.bz = zext i32 %i.by to i64
  %i.ca = icmp samesign ult i64 %i.bi, %i.bz
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.cc = zext i8 %i.cb to i16
  %i.cd = and i16 %i.bv, %i.cc
  %.not84 = icmp eq i16 %i.cd, 0
  br i1 %.not84, label %bb.s, label %.thread

bb.s:                                             ; preds = %._crit_edge, %._crit_edge89, %bb.q, %bb.r
  %.pre-phi = phi i64 [ %.pre88, %._crit_edge ], [ %.pre90, %._crit_edge89 ], [ %.pre90, %bb.q ], [ %.pre90, %bb.r ]
  %.3 = phi i64 [ %i.h, %._crit_edge ], [ %.1, %._crit_edge89 ], [ %.1, %bb.q ], [ %.1, %bb.r ]
  %i.ce = ashr i64 %.3, %.pre-phi                 ; 3 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  br i1 %i.cf, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !76
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp samesign ult i64 %i.ce, %i.ci
  br i1 %i.cj, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !74
  %i.cm = ashr i16 %1, 3
  %i.cn = sext i16 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !75
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.ce, %i.cr
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.co, i64 %i.ct ; 2 uses
  %i.cv = and i16 %1, 7
  %i.cw = lshr exact i16 128, %i.cv
  %i.cx = load i8, ptr %i.cu, align 1, !tbaa !29
  %i.cy = trunc nuw i16 %i.cw to i8
  %i.cz = or i8 %i.cx, %i.cy
  store i8 %i.cz, ptr %i.cu, align 1, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.l, %bb.h, %bb.r, %bb.g, %bb.c, %bb.k, %bb.u, %bb.t, %bb.s
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @Horizontal_Sweep_Step(ptr nofree readnone captures(none) %0) #1 !guid !182 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc signext range(i8 0, 2) i8 @Line_To(ptr nofree noundef nonnull %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !guid !183 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  switch i32 %i.b, label %thread-pre-split.thread157 [
    i32 0, label %bb.b
    i32 1, label %bb.j
    i32 2, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97   ; 5 uses
  %i.e = icmp sgt i64 %2, %i.d
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !65   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = add i64 %i.d, -1
  %i.j = add i64 %i.i, %i.h
  %i.k = sub nsw i32 0, %i.g
  %i.l = sext i32 %i.k to i64
  %i.m = and i64 %i.j, %i.l
  %i.n = sub nsw i64 %i.m, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !66
  %i.q = sext i32 %i.p to i64
  %.not127 = icmp slt i64 %i.n, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87
  %.not.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85   ; 4 uses
  br i1 %.not.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.u, ptr %i.v, align 8, !tbaa !91
  store ptr %i.u, ptr %i.r, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !85
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !90
  %.not31.i = icmp ult ptr %i.x, %i.z
  br i1 %.not31.i, label %.sink.split.i, label %New_Profile.exit

.sink.split.i:                                    ; preds = %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !92
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !99
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr null, ptr %i.af, align 8, !tbaa !80
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !68
  %i.ai = zext i8 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %spec.select.v = select i1 %.not127, i16 8, i16 40
  %spec.select = or i16 %spec.select.v, %i.ai
  store i16 %spec.select, ptr %i.aj, align 8, !tbaa !79
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95
  %.not34.i = icmp eq ptr %i.al, null
  br i1 %.not34.i, label %bb.e, label %New_Profile.exit.thread

bb.e:                                             ; preds = %.sink.split.i
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !95
  br label %New_Profile.exit.thread

New_Profile.exit.thread:                          ; preds = %.sink.split.i, %bb.e
  store i32 1, ptr %i.a, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 1, ptr %i.am, align 2, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 0, ptr %i.an, align 1, !tbaa !88
  br label %..thread_crit_edge

New_Profile.exit:                                 ; preds = %._crit_edge.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 98, ptr %i.ao, align 8, !tbaa !86
  br label %End_Profile.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.ap = icmp slt i64 %2, %i.d
  br i1 %i.ap, label %bb.g, label %thread-pre-split.thread157

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !65
  %i.as = add i32 %i.ar, -1
  %.not70 = sext i32 %i.as to i64
  %i.at = and i64 %i.d, %.not70
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !66
  %i.aw = sext i32 %i.av to i64
  %.not125 = icmp slt i64 %i.at, %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87
  %.not.i75 = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !85 ; 4 uses
  br i1 %.not.i75, label %bb.h, label %._crit_edge.i76

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !91
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !85
  br label %._crit_edge.i76

._crit_edge.i76:                                  ; preds = %bb.h, %bb.g
  %i.bd = phi ptr [ %i.bc, %bb.h ], [ %i.ba, %bb.g ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !90
  %.not31.i77 = icmp ult ptr %i.bd, %i.bf
  br i1 %.not31.i77, label %.sink.split.i79, label %New_Profile.exit81

.sink.split.i79:                                  ; preds = %._crit_edge.i76
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !91 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
end_hunk_0
