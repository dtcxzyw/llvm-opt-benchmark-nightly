inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@attr_update_width:bb.a
  %i.bu = add nuw nsw i8 %i.bs, 32
  %i.bv = select i1 %or.cond.i.i96.2, i8 %i.bu, i8 %i.bs
  %.not19.i98.2 = icmp eq i8 %i.bv, 110
  br i1 %.not19.i98.2, label %bb.u, label %ic_istarts_with.exit103.thread123

bb.u:                                             ; preds = %.lr.ph.i93.2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9   ; 4 uses
  %.not.i100.2 = icmp eq i8 %i.bx, 0
  br i1 %.not.i100.2, label %ic_istarts_with.exit103.thread123, label %.lr.ph.i93.3

.lr.ph.i93.3:                                     ; preds = %bb.u
  %i.by = add i8 %i.bx, -65
  %or.cond.i.i96.3 = icmp ult i8 %i.by, 26
  %i.bz = add nuw nsw i8 %i.bx, 32
  %i.ca = select i1 %or.cond.i.i96.3, i8 %i.bz, i8 %i.bx
  %.not19.i98.3 = icmp eq i8 %i.ca, 116
  br i1 %.not19.i98.3, label %bb.v, label %ic_istarts_with.exit103.thread123

bb.v:                                             ; preds = %.lr.ph.i93.3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9   ; 4 uses
  %.not.i100.3 = icmp eq i8 %i.cc, 0
  br i1 %.not.i100.3, label %ic_istarts_with.exit103.thread123, label %.lr.ph.i93.4

.lr.ph.i93.4:                                     ; preds = %bb.v
  %i.cd = add i8 %i.cc, -65
  %or.cond.i.i96.4 = icmp ult i8 %i.cd, 26
  %i.ce = add nuw nsw i8 %i.cc, 32
  %i.cf = select i1 %or.cond.i.i96.4, i8 %i.ce, i8 %i.cc
  %.not19.i98.4 = icmp eq i8 %i.cf, 101
  br i1 %.not19.i98.4, label %bb.w, label %ic_istarts_with.exit103.thread123

bb.w:                                             ; preds = %.lr.ph.i93.4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9   ; 4 uses
  %.not.i100.4 = icmp eq i8 %i.ch, 0
  br i1 %.not.i100.4, label %ic_istarts_with.exit103.thread123, label %.lr.ph.i93.5

.lr.ph.i93.5:                                     ; preds = %bb.w
  %i.ci = add i8 %i.ch, -65
  %or.cond.i.i96.5 = icmp ult i8 %i.ci, 26
  %i.cj = add nuw nsw i8 %i.ch, 32
  %i.ck = select i1 %or.cond.i.i96.5, i8 %i.cj, i8 %i.ch
  %.not19.i98.5 = icmp eq i8 %i.ck, 114
  br i1 %.not19.i98.5, label %ic_istarts_with.exit103.thread123.sink.split, label %ic_istarts_with.exit103.thread123

ic_istarts_with.exit103.thread123.sink.split:     ; preds = %bb.q, %.lr.ph.i93.5, %bb.k, %.lr.ph.i81.4, %bb.f, %.lr.ph.i.3
  %.sink = phi i32 [ 0, %bb.f ], [ 2, %bb.k ], [ 0, %.lr.ph.i.3 ], [ 2, %.lr.ph.i81.4 ], [ 1, %.lr.ph.i93.5 ], [ 1, %bb.q ]
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sink, ptr %i.cl, align 8, !tbaa !275
  br label %ic_istarts_with.exit103.thread123

ic_istarts_with.exit103.thread123:                ; preds = %ic_istarts_with.exit103.thread123.sink.split, %bb.u, %bb.t, %bb.w, %bb.v, %bb.s, %bb.r, %bb.n, %bb.o, %bb.p, %bb.m, %bb.l, %bb.i, %bb.j, %bb.h, %bb.g, %.lr.ph.i93.preheader, %.lr.ph.i93.1, %.lr.ph.i93.2, %.lr.ph.i93.3, %.lr.ph.i93.4, %.lr.ph.i93.5, %.lr.ph.i81.4, %.lr.ph.i81.3, %.lr.ph.i81.2, %.lr.ph.i81.1, %.lr.ph.i81.preheader, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader, %.critedge2
  %i.cm = icmp eq i8 %i.j, 59
  br i1 %i.cm, label %bb.x, label %ic_istarts_with.exit115.thread126

bb.x:                                             ; preds = %ic_istarts_with.exit103.thread123
  %i.cn = add nuw nsw i64 %i.h, 1                 ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.1 = phi i64 [ 0, %bb.x ], [ %i.cr, %bb.z ]    ; 3 uses
  %i.co = getelementptr i8, ptr %2, i64 %.1       ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cn
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.cq, label %bb.z [
    i8 59, label %.critedge4
    i8 0, label %.critedge4
  ]

bb.z:                                             ; preds = %bb.y
  %i.cr = add nuw nsw i64 %.1, 1
  br label %bb.y, !llvm.loop !276

.critedge4:                                       ; preds = %bb.y, %bb.y
  %i.cs = getelementptr i8, ptr %i.co, i64 %i.cn  ; 2 uses
  %i.ct = icmp eq i64 %.1, 1
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge4
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  store i8 %i.cv, ptr %i.a, align 1, !tbaa !272
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge4
  %i.cw = icmp eq i8 %i.cq, 59
  br i1 %i.cw, label %.preheader, label %ic_istarts_with.exit115.thread126

.preheader:                                       ; preds = %bb.ab
  %i.cx = getelementptr i8, ptr %i.cs, i64 1      ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader, %bb.ad
  %.2 = phi i64 [ %i.da, %bb.ad ], [ 0, %.preheader ] ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 %.2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  switch i8 %i.cz, label %bb.ad [
    i8 59, label %.critedge6
    i8 0, label %.critedge6
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.da = add nuw nsw i64 %.2, 1
  br label %bb.ac, !llvm.loop !277

.critedge6:                                       ; preds = %bb.ac, %bb.ac
  switch i64 %.2, label %ic_istarts_with.exit115.thread126 [
    i64 2, label %bb.ae
    i64 1, label %bb.ah
  ]

bb.ae:                                            ; preds = %.critedge6
  %i.db = icmp eq ptr %i.cx, @.str.18
  br i1 %i.db, label %ic_istarts_with.exit115.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = load i8, ptr %i.cx, align 1, !tbaa !9   ; 4 uses
  %.not22.i104 = icmp eq i8 %i.dc, 0
  br i1 %.not22.i104, label %ic_istarts_with.exit115.thread126, label %.lr.ph.i105.preheader

.lr.ph.i105.preheader:                            ; preds = %bb.af
  %i.dd = add i8 %i.dc, -65
  %or.cond.i.i108 = icmp ult i8 %i.dd, 26
  %i.de = add nuw nsw i8 %i.dc, 32
  %i.df = select i1 %or.cond.i.i108, i8 %i.de, i8 %i.dc
  %.not19.i110 = icmp eq i8 %i.df, 111
  br i1 %.not19.i110, label %bb.ag, label %ic_istarts_with.exit115.thread126

bb.ag:                                            ; preds = %.lr.ph.i105.preheader
  %i.dg = getelementptr i8, ptr %i.cs, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !9   ; 4 uses
  %.not.i112.not = icmp eq i8 %i.dh, 0
  br i1 %.not.i112.not, label %ic_istarts_with.exit115.thread126, label %.lr.ph.i105.1

.lr.ph.i105.1:                                    ; preds = %bb.ag
  %i.di = add i8 %i.dh, -65
  %or.cond.i.i108.1 = icmp ult i8 %i.di, 26
  %i.dj = add nuw nsw i8 %i.dh, 32
  %i.dk = select i1 %or.cond.i.i108.1, i8 %i.dj, i8 %i.dh
  %.not19.i110.1 = icmp eq i8 %i.dk, 110
  br i1 %.not19.i110.1, label %ic_istarts_with.exit115.thread, label %ic_istarts_with.exit115.thread126

bb.ah:                                            ; preds = %.critedge6
  %i.dl = load i8, ptr %i.cx, align 1, !tbaa !9
  %i.dm = icmp eq i8 %i.dl, 49
  br i1 %i.dm, label %ic_istarts_with.exit115.thread, label %ic_istarts_with.exit115.thread126

ic_istarts_with.exit115.thread:                   ; preds = %.lr.ph.i105.1, %bb.ae, %bb.ah
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 1, ptr %i.dn, align 4, !tbaa !278
  br label %ic_istarts_with.exit115.thread126

bb.ai:                                            ; preds = %bb.a
  call void (ptr, ...) @bbcode_invalid(ptr noundef nonnull @.str.34, ptr noundef %2)
  br label %ic_istarts_with.exit115.thread126

ic_istarts_with.exit115.thread126:                ; preds = %.preheader128, %bb.ag, %bb.af, %.lr.ph.i105.preheader, %.lr.ph.i105.1, %bb.ah, %ic_istarts_with.exit115.thread, %.critedge6, %bb.ab, %ic_istarts_with.exit103.thread123, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !279
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define internal fastcc i64 @attr_from_sgr(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.sroa.025.050 = phi i64 [ %.sroa.025.6, %.thread ], [ 0, %bb.a ] ; 27 uses
  %storemerge49 = phi i64 [ %i.dk, %.thread ], [ 0, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %storemerge49 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %.thread, %bb.a
  %.sroa.025.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.025.6, %.thread ], [ %.sroa.025.050, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.sroa.025.0.lcssa

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ]   ; 3 uses
  %i.j = add nuw nsw i64 %.0.i, %storemerge49     ; 20 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = add i8 %i.l, -48
  %i.n = icmp ult i8 %i.m, 10
  %i.o = add nuw nsw i64 %.0.i, 1
  br i1 %i.n, label %bb.c, label %bb.d, !llvm.loop !281

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.q = icmp eq i64 %.0.i, 0
  br i1 %i.q, label %.thread, label %sgr_next_par.exit

sgr_next_par.exit:                                ; preds = %bb.d
  %i.r = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull readonly %i.h, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.b) #28
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.e, label %.thread

bb.e:                                             ; preds = %sgr_next_par.exit
  %.pr = load i64, ptr %i.b, align 8, !tbaa !62   ; 11 uses
  switch i64 %.pr, label %bb.p [
    i64 0, label %.thread
    i64 1, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 7, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 27, label %bb.m
    i64 39, label %bb.n
    i64 49, label %bb.o
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = and i64 %.sroa.025.050, -805306369
  %i.u = or disjoint i64 %i.t, 268435456
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.v = and i64 %.sroa.025.050, 4611686018427387903
  %i.w = or disjoint i64 %i.v, 4611686018427387904
  br label %.thread

bb.h:                                             ; preds = %bb.e
  %i.x = and i64 %.sroa.025.050, -3458764513820540929
  %i.y = or disjoint i64 %i.x, 1152921504606846976
  br label %.thread

bb.i:                                             ; preds = %bb.e
  %i.z = and i64 %.sroa.025.050, -3221225473
  %i.aa = or disjoint i64 %i.z, 1073741824
  br label %.thread

bb.j:                                             ; preds = %bb.e
  %i.ab = or i64 %.sroa.025.050, 805306368
  br label %.thread

bb.k:                                             ; preds = %bb.e
  %i.ac = or i64 %.sroa.025.050, -4611686018427387904
  br label %.thread

bb.l:                                             ; preds = %bb.e
  %i.ad = or i64 %.sroa.025.050, 3458764513820540928
  br label %.thread

bb.m:                                             ; preds = %bb.e
  %i.ae = or i64 %.sroa.025.050, 3221225472
  br label %.thread

bb.n:                                             ; preds = %bb.e
  %i.af = and i64 %.sroa.025.050, -268435456
  %i.ag = or disjoint i64 %i.af, 39
  br label %.thread

bb.o:                                             ; preds = %bb.e
  %i.ah = and i64 %.sroa.025.050, -1152921500311879681
  %i.ai = or disjoint i64 %i.ah, 167503724544
  br label %.thread

bb.p:                                             ; preds = %bb.e
  %i.aj = add i64 %.pr, -30
  %or.cond = icmp ult i64 %i.aj, 8
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = and i64 %.sroa.025.050, -268435456
  %i.al = or disjoint i64 %.pr, %i.ak
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.am = and i64 %.pr, -8
  %or.cond3 = icmp eq i64 %i.am, 40
  br i1 %or.cond3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = shl nuw nsw i64 %.pr, 32
  %i.ao = add nuw nsw i64 %i.an, 231928233984
  %i.ap = and i64 %i.ao, 270582939648
  %i.aq = and i64 %.sroa.025.050, -1152921500311879681
  %i.ar = or disjoint i64 %i.ap, %i.aq
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.as = add i64 %.pr, -90
  %or.cond5 = icmp ult i64 %i.as, 8
  br i1 %or.cond5, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = and i64 %.sroa.025.050, -268435456
  %i.au = or disjoint i64 %.pr, %i.at
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.av = add i64 %.pr, -100
  %or.cond7 = icmp ult i64 %i.av, 8
  br i1 %or.cond7, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aw = shl nuw nsw i64 %.pr, 32
  %i.ax = add nuw nsw i64 %i.aw, 506806140928
  %i.ay = and i64 %i.ax, 545460846592
  %i.az = and i64 %.sroa.025.050, -1152921500311879681
  %i.ba = or disjoint i64 %i.ay, %i.az
  br label %.thread

bb.x:                                             ; preds = %bb.v
  switch i64 %.pr, label %bb.aq [
    i64 48, label %bb.y
    i64 38, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.bb = load i8, ptr %i.p, align 1, !tbaa !9
  %i.bc = and i8 %i.bb, -2
  %i.bd = icmp eq i8 %i.bc, 58
  br i1 %i.bd, label %bb.z, label %bb.aq

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 0, ptr %i.c, align 8, !tbaa !62
  %i.be = add nsw i64 %i.j, 1
  store i64 %i.be, ptr %i.a, align 8, !tbaa !62
  %i.bf = call fastcc zeroext i1 @sgr_next_par(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.c)
  br i1 %i.bf, label %bb.aa, label %.thread48

bb.aa:                                            ; preds = %bb.z
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !62
  switch i64 %i.bg, label %.thread48 [
    i64 5, label %bb.ab
    i64 2, label %bb.ak
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bk = and i8 %i.bj, -2
  %i.bl = icmp eq i8 %i.bk, 58
  br i1 %i.bl, label %bb.ac, label %.thread48

bb.ac:                                            ; preds = %bb.ab
  %i.bm = add nsw i64 %i.bh, 1
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !62
  %i.bn = call fastcc zeroext i1 @sgr_next_par(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.c)
  %i.bo = load i64, ptr %i.c, align 8             ; 6 uses
  %i.bp = icmp ult i64 %i.bo, 256
  %or.cond13 = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond13, label %bb.ad, label %.thread48

bb.ad:                                            ; preds = %bb.ac
  %or.cond.i = icmp samesign ult i64 %i.bo, 8
  br i1 %or.cond.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bq = trunc nuw nsw i64 %i.bo to i32
  %i.br = add nuw nsw i32 %i.bq, 30
  br label %color_from_ansi256.exit

bb.af:                                            ; preds = %bb.ad
  %i.bs = and i64 %i.bo, 248
  %or.cond3.i = icmp eq i64 %i.bs, 8
  br i1 %or.cond3.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bt = trunc nuw nsw i64 %i.bo to i32
  %i.bu = add nuw nsw i32 %i.bt, 82
  br label %color_from_ansi256.exit

bb.ah:                                            ; preds = %bb.af
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @ansi256, i64 %i.bo
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !125
  %i.bx = and i32 %i.bw, 16777215
  %i.by = or disjoint i32 %i.bx, 16777216
  br label %color_from_ansi256.exit

color_from_ansi256.exit:                          ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i46 = phi i32 [ %i.br, %bb.ae ], [ %i.bu, %bb.ag ], [ %i.by, %bb.ah ]
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !62
  %i.ca = icmp eq i64 %i.bz, 38
  %i.cb = zext nneg i32 %.0.i46 to i64            ; 2 uses
  br i1 %i.ca, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %color_from_ansi256.exit
  %i.cc = and i64 %.sroa.025.050, -268435456
  %i.cd = or disjoint i64 %i.cc, %i.cb
  br label %.thread48

bb.aj:                                            ; preds = %color_from_ansi256.exit
  %i.ce = shl nuw nsw i64 %i.cb, 32
  %i.cf = and i64 %.sroa.025.050, -1152921500311879681
  %i.cg = add nuw nsw i64 %i.ce, %i.cf
  br label %.thread48

bb.ak:                                            ; preds = %bb.aa
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %0, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9
  %i.ck = and i8 %i.cj, -2
  %i.cl = icmp eq i8 %i.ck, 58
  br i1 %i.cl, label %bb.al, label %.thread48

bb.al:                                            ; preds = %bb.ak
  %i.cm = add nsw i64 %i.ch, 1
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.cn = call fastcc zeroext i1 @sgr_next_par3(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  br i1 %i.cn, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.co = load i64, ptr %i.d, align 8, !tbaa !62
  %i.cp = load i64, ptr %i.e, align 8, !tbaa !62
  %i.cq = load i64, ptr %i.f, align 8, !tbaa !62
  %i.cr = call i64 @llvm.smax.i64(i64 %i.co, i64 0)
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cr, i64 255)
  %i.ct = shl nuw nsw i64 %i.cs, 16
  %i.cu = call i64 @llvm.smax.i64(i64 %i.cp, i64 0)
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cu, i64 255)
  %i.cw = shl nuw nsw i64 %i.cv, 8
  %i.cx = or disjoint i64 %i.cw, %i.ct
  %i.cy = call i64 @llvm.smax.i64(i64 %i.cq, i64 0)
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cy, i64 255)
  %i.da = or disjoint i64 %i.cx, %i.cz
  %i.db = or disjoint i64 %i.da, 16777216         ; 2 uses
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !62
  %i.dd = icmp eq i64 %i.dc, 38
  br i1 %i.dd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.de = and i64 %.sroa.025.050, -268435456
  %i.df = or disjoint i64 %i.de, %i.db
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dg = shl nuw nsw i64 %i.db, 32
  %i.dh = and i64 %.sroa.025.050, -1152921500311879681
  %i.di = or disjoint i64 %i.dg, %i.dh
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.al
  %.sroa.025.3 = phi i64 [ %.sroa.025.050, %bb.al ], [ %i.df, %bb.an ], [ %i.di, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %.thread48

.thread48:                                        ; preds = %bb.aa, %bb.ab, %bb.ai, %bb.aj, %bb.ac, %bb.ap, %bb.ak, %bb.z
  %.sroa.025.4 = phi i64 [ %.sroa.025.050, %bb.z ], [ %.sroa.025.050, %bb.ac ], [ %.sroa.025.3, %bb.ap ], [ %.sroa.025.050, %bb.ak ], [ %.sroa.025.050, %bb.aa ], [ %i.cd, %bb.ai ], [ %i.cg, %bb.aj ], [ %.sroa.025.050, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %.pre = load i64, ptr %i.a, align 8, !tbaa !62
  br label %.thread

bb.aq:                                            ; preds = %bb.x, %bb.y
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.29, i64 noundef %.pr)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.s, %bb.w, %bb.aq, %.thread48, %bb.u, %bb.q, %sgr_next_par.exit
  %i.dj = phi i64 [ %i.j, %sgr_next_par.exit ], [ %i.j, %bb.q ], [ %i.j, %bb.s ], [ %i.j, %bb.u ], [ %i.j, %bb.w ], [ %.pre, %.thread48 ], [ %i.j, %bb.aq ], [ %i.j, %bb.o ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.h ], [ %i.j, %bb.i ], [ %i.j, %bb.j ], [ %i.j, %bb.k ], [ %i.j, %bb.l ], [ %i.j, %bb.m ], [ %i.j, %bb.n ], [ %i.j, %bb.e ], [ %storemerge49, %bb.d ]
  %.sroa.025.6 = phi i64 [ %.sroa.025.050, %sgr_next_par.exit ], [ %i.al, %bb.q ], [ %i.ar, %bb.s ], [ %i.au, %bb.u ], [ %i.ba, %bb.w ], [ %.sroa.025.4, %.thread48 ], [ %.sroa.025.050, %bb.aq ], [ %i.ai, %bb.o ], [ %i.u, %bb.f ], [ %i.w, %bb.g ], [ %i.y, %bb.h ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ], [ %i.ac, %bb.k ], [ %i.ad, %bb.l ], [ %i.ae, %bb.m ], [ %i.ag, %bb.n ], [ -1152921333076590553, %bb.e ], [ -1152921333076590553, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.dk = add nsw i64 %i.dj, 1                    ; 3 uses
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !62
  %i.dl = icmp slt i64 %i.dk, %1
  br i1 %i.dl, label %.lr.ph, label %.critedge, !llvm.loop !282
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef zeroext i1 @sgr_next_par(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !62     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]     ; 3 uses
  %i.b = add nuw nsw i64 %.0, %i.a                ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9
  %i.e = add i8 %i.d, -48
  %i.f = icmp ult i8 %i.e, 10
  %i.g = add nuw nsw i64 %.0, 1
  br i1 %i.f, label %bb.b, label %bb.c, !llvm.loop !281

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %.0, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 %i.b, ptr %1, align 8, !tbaa !62
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.j = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef readonly %i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull %2) #28
  %i.k = icmp eq i32 %i.j, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.013 = phi i1 [ true, %bb.d ], [ %i.k, %bb.e ]
  ret i1 %.013
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef zeroext i1 @sgr_next_par3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !62     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]   ; 3 uses
  %i.b = add nuw nsw i64 %.0.i, %i.a              ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9
  %i.e = add i8 %i.d, -48
  %i.f = icmp ult i8 %i.e, 10
  %i.g = add nuw nsw i64 %.0.i, 1
  br i1 %i.f, label %bb.b, label %bb.c, !llvm.loop !281

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %.0.i, 0
  br i1 %i.h, label %sgr_next_par.exit.thread, label %sgr_next_par.exit

sgr_next_par.exit.thread:                         ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !62
  br label %bb.d

sgr_next_par.exit:                                ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.j = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef readonly %i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull %2) #28
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %sgr_next_par.exit15

bb.d:                                             ; preds = %sgr_next_par.exit.thread, %sgr_next_par.exit
  %.126 = phi i64 [ %i.a, %sgr_next_par.exit.thread ], [ %i.b, %sgr_next_par.exit ] ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %0, i64 %.126
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = and i8 %i.m, -2
  %i.o = icmp eq i8 %i.n, 58
  br i1 %i.o, label %bb.e, label %sgr_next_par.exit15

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i64 %.126, 1                     ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i10 = phi i64 [ 0, %bb.e ], [ %i.v, %bb.f ] ; 3 uses
  %i.q = add nuw nsw i64 %.0.i10, %i.p            ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = add i8 %i.s, -48
  %i.u = icmp ult i8 %i.t, 10
  %i.v = add nuw nsw i64 %.0.i10, 1
  br i1 %i.u, label %bb.f, label %bb.g, !llvm.loop !281

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq i64 %.0.i10, 0
  br i1 %i.w, label %sgr_next_par.exit12.thread, label %sgr_next_par.exit12

sgr_next_par.exit12.thread:                       ; preds = %bb.g
  store i64 0, ptr %3, align 8, !tbaa !62
  br label %bb.h

sgr_next_par.exit12:                              ; preds = %bb.g
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.y = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef readonly %i.x, ptr noundef nonnull @.str.30, ptr noundef nonnull %3) #28
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.h, label %sgr_next_par.exit15

bb.h:                                             ; preds = %sgr_next_par.exit12.thread, %sgr_next_par.exit12
  %.229 = phi i64 [ %i.p, %sgr_next_par.exit12.thread ], [ %i.q, %sgr_next_par.exit12 ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.229
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = and i8 %i.ab, -2
  %i.ad = icmp eq i8 %i.ac, 58
  br i1 %i.ad, label %bb.i, label %sgr_next_par.exit15

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i64 %.229, 1                    ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.0.i13 = phi i64 [ 0, %bb.i ], [ %i.ak, %bb.j ] ; 3 uses
  %i.af = add nuw nsw i64 %.0.i13, %i.ae          ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  %i.ak = add nuw nsw i64 %.0.i13, 1
  br i1 %i.aj, label %bb.j, label %bb.k, !llvm.loop !281

bb.k:                                             ; preds = %bb.j
  %i.al = icmp eq i64 %.0.i13, 0
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %4, align 8, !tbaa !62
  br label %sgr_next_par.exit15

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.ae
  %i.an = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef readonly %i.am, ptr noundef nonnull @.str.30, ptr noundef nonnull %4) #28
  %i.ao = icmp eq i32 %i.an, 1
  br label %sgr_next_par.exit15

sgr_next_par.exit15:                              ; preds = %bb.m, %bb.l, %sgr_next_par.exit12, %bb.h, %bb.d, %sgr_next_par.exit
  %.023 = phi i64 [ %i.b, %sgr_next_par.exit ], [ %.229, %bb.h ], [ %i.q, %sgr_next_par.exit12 ], [ %.126, %bb.d ], [ %i.ae, %bb.l ], [ %i.af, %bb.m ]
  %.0 = phi i1 [ false, %sgr_next_par.exit ], [ false, %bb.h ], [ false, %sgr_next_par.exit12 ], [ false, %bb.d ], [ true, %bb.l ], [ %i.ao, %bb.m ]
  store i64 %.023, ptr %1, align 8, !tbaa !62
  ret i1 %.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @attrbuf_append_n(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, i64 %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i64 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %attrbuf_ensure_extra.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %attrbuf_set_at.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = add nsw i64 %i.d, %3                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42   ; 6 uses
  %.not.i.i = icmp sgt i64 %i.e, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ugt i64 %i.g, 1000
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw nsw i64 %i.g, 1000
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = shl nuw nsw i64 %i.g, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.l = phi i64 [ 240, %bb.d ], [ %i.j, %bb.f ], [ %i.k, %bb.g ]
  %spec.select.i.i = tail call i64 @llvm.smax.i64(i64 %i.e, i64 %i.l) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = load ptr, ptr %1, align 8, !tbaa !41
  %i.p = shl nsw i64 %spec.select.i.i, 3
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.r = tail call ptr %.val.i.i(ptr noundef %i.o, i64 noundef %i.p) #28, !inline_history !283 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.r, null
  br i1 %.not22.i.i, label %attrbuf_ensure_extra.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr %1, align 8, !tbaa !41
  store i64 %spec.select.i.i, ptr %i.f, align 8, !tbaa !42
  %.pre = load i64, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %.pre19 = add nsw i64 %.pre, %3
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %.pre-phi = phi i64 [ %i.e, %bb.c ], [ %.pre19, %bb.i ] ; 8 uses
  %i.s = phi i64 [ %i.d, %bb.c ], [ %.pre, %bb.i ] ; 2 uses
  %i.t = phi i64 [ %i.g, %bb.c ], [ %spec.select.i.i, %bb.i ] ; 5 uses
  %.fr41.i.i = freeze i64 %4
  %.not.i.i.i = icmp sgt i64 %.pre-phi, %i.t
  br i1 %.not.i.i.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.u = icmp slt i64 %i.t, 1
  br i1 %i.u, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = icmp samesign ugt i64 %i.t, 1000
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = add nuw nsw i64 %i.t, 1000
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.x = shl nuw nsw i64 %i.t, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.y = phi i64 [ 240, %bb.k ], [ %i.w, %bb.m ], [ %i.x, %bb.n ]
  %spec.select.i.i.i = tail call i64 @llvm.smax.i64(i64 %.pre-phi, i64 %i.y) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = load ptr, ptr %1, align 8, !tbaa !41
  %i.ac = shl nsw i64 %spec.select.i.i.i, 3
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.ae = tail call ptr %.val.i.i.i(ptr noundef %i.ab, i64 noundef %i.ac) #28, !inline_history !284 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not22.i.i.i, label %attrbuf_set_at.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.ae, ptr %1, align 8, !tbaa !41
  store i64 %spec.select.i.i.i, ptr %i.f, align 8, !tbaa !42
  %.pre18 = load i64, ptr %i.c, align 8, !tbaa !47
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.af = phi i64 [ %.pre18, %bb.p ], [ %i.s, %bb.j ] ; 5 uses
  %i.ag = icmp slt i64 %i.af, %.pre-phi
  br i1 %i.ag, label %.preheader.i.i.preheader, label %bb.r

.preheader.i.i.preheader:                         ; preds = %bb.q
  %i.ah = sub i64 %.pre-phi, %i.af
  %xtraiter = and i64 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.028.i.i.prol = phi i64 [ %i.ak, %.preheader.i.i.prol ], [ %i.af, %.preheader.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.ai = load ptr, ptr %1, align 8, !tbaa !41
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %.028.i.i.prol
  store i64 0, ptr %i.aj, align 8, !tbaa !9
  %i.ak = add nsw i64 %.028.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !285

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.028.i.i.unr = phi i64 [ %i.af, %.preheader.i.i.preheader ], [ %i.ak, %.preheader.i.i.prol ]
  %i.al = sub i64 %i.af, %.pre-phi
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %.unr-lcssa, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.028.i.i = phi i64 [ %i.ay, %.preheader.i.i ], [ %.028.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 5 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !41
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.028.i.i
  store i64 0, ptr %i.ao, align 8, !tbaa !9
  %i.ap = load ptr, ptr %1, align 8, !tbaa !41
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %.028.i.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !9
  %i.as = load ptr, ptr %1, align 8, !tbaa !41
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %.028.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 16
  store i64 0, ptr %i.au, align 8, !tbaa !9
  %i.av = load ptr, ptr %1, align 8, !tbaa !41
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %.028.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 24
  store i64 0, ptr %i.ax, align 8, !tbaa !9
  %i.ay = add nsw i64 %.028.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ay, %.pre-phi
  br i1 %exitcond.not.i.i.3, label %.unr-lcssa, label %.preheader.i.i, !llvm.loop !286

.unr-lcssa:                                       ; preds = %.preheader.i.i, %.preheader.i.i.prol.loopexit
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !47
  br label %bb.r

bb.r:                                             ; preds = %.unr-lcssa, %bb.q
  %i.az = icmp sgt i64 %3, 0
  br i1 %i.az, label %.lr.ph.split.i.i, label %attrbuf_set_at.exit

.lr.ph.split.i.i:                                 ; preds = %bb.r, %.lr.ph.split.i.i
  %.129.i.i = phi i64 [ %i.bc, %.lr.ph.split.i.i ], [ %i.s, %bb.r ] ; 2 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !41
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %.129.i.i
  store i64 %.fr41.i.i, ptr %i.bb, align 8, !tbaa !9
  %i.bc = add nsw i64 %.129.i.i, 1                ; 2 uses
  %i.bd = icmp slt i64 %i.bc, %.pre-phi
  br i1 %i.bd, label %.lr.ph.split.i.i, label %attrbuf_set_at.exit, !llvm.loop !287

end_hunk_0
begin_hunk_1_@tty_read_timeout:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.refresh_info_s, align 8     ; 9 uses
  %3 = alloca %struct.refresh_info_s, align 8     ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct.tag_s, align 8              ; 5 uses
  %5 = alloca [65 x %struct.brace_s], align 16    ; 6 uses
  %6 = alloca %struct.tag_s, align 8              ; 5 uses
  %7 = alloca %struct.tag_s, align 8              ; 5 uses
  %8 = alloca %struct.ic_highlight_env_s, align 8 ; 9 uses
  %9 = alloca %struct.rowcol_s, align 8           ; 10 uses
  %10 = alloca %struct.rowcol_s, align 8          ; 5 uses
  %i.c = getelementptr i8, ptr %1, i64 96
  %.val144 = load ptr, ptr %i.c, align 8, !tbaa !329
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.f = tail call fastcc i64 @bbcode_column_width(ptr noundef %i.e, ptr noundef %.val144)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !141
  %i.j = tail call fastcc i64 @bbcode_column_width(ptr noundef %i.g, ptr noundef %i.i)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !161
  %i.n = tail call fastcc i64 @bbcode_column_width(ptr noundef %i.k, ptr noundef %i.m) ; 2 uses
  %i.o = add nsw i64 %i.j, %i.f                   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.q = load i8, ptr %i.p, align 2, !tbaa !192, !range !130, !noundef !131
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = tail call i64 @llvm.smax.i64(i64 %i.o, i64 %i.n)
  %i.t = select i1 %i.r, i64 %i.n, i64 %i.s       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !330  ; 17 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %highlight.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !87
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.y = load ptr, ptr %1, align 8, !tbaa !320    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %sbuf_string.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !49  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %spec.select.i.i = select i1 %i.ad, ptr @.str.3, ptr %i.ac
  br label %sbuf_string.exit

sbuf_string.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %spec.select.i.i, %bb.c ], [ null, %bb.b ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !197, !range !130, !noundef !131
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sbuf_string.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !203
  br label %bb.e

bb.e:                                             ; preds = %sbuf_string.exit, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.d ], [ null, %sbuf_string.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !204
  %i.am = icmp eq ptr %.0.i.i, null
  br i1 %i.am, label %highlight.exit, label %ic_strlen.exit.i

ic_strlen.exit.i:                                 ; preds = %bb.e
  %i.an = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i) #29 ; 5 uses
  %i.ao = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.an, i64 0) ; 8 uses
  %i.ap = icmp slt i64 %i.an, 1
  br i1 %i.ap, label %highlight.exit, label %bb.f

bb.f:                                             ; preds = %ic_strlen.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !42 ; 5 uses
  %.not.i.i.i.i = icmp sgt i64 %i.ao, %i.ar
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.as = icmp slt i64 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp samesign ugt i64 %i.ar, 1000
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = add nuw nsw i64 %i.ar, 1000
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.av = shl nuw nsw i64 %i.ar, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.aw = phi i64 [ 240, %bb.g ], [ %i.au, %bb.i ], [ %i.av, %bb.j ]
  %i.ax = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.aw) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !36
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.bb = shl nsw i64 %i.ax, 3
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bd = tail call ptr %.val.i.i.i.i(ptr noundef %i.ba, i64 noundef %i.bb) #28, !inline_history !386 ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not22.i.i.i.i, label %attrbuf_set_at.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !41
  store i64 %i.ax, ptr %i.aq, align 8, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !47 ; 5 uses
  %i.bg = icmp slt i64 %i.bf, %i.ao
  br i1 %i.bg, label %.preheader.i.i.i.preheader, label %.lr.ph.split.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.m
  %i.bh = sub i64 %i.ao, %i.bf
  %xtraiter = and i64 %i.bh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i.prol
  %.028.i.i.i.prol = phi i64 [ %i.bk, %.preheader.i.i.i.prol ], [ %i.bf, %.preheader.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.prol ], [ 0, %.preheader.i.i.i.preheader ]
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.028.i.i.i.prol
  store i64 0, ptr %i.bj, align 8, !tbaa !9
  %i.bk = add nsw i64 %.028.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol, !llvm.loop !387

.preheader.i.i.i.prol.loopexit:                   ; preds = %.preheader.i.i.i.prol, %.preheader.i.i.i.preheader
  %.028.i.i.i.unr = phi i64 [ %i.bf, %.preheader.i.i.i.preheader ], [ %i.bk, %.preheader.i.i.i.prol ]
  %i.bl = sub i64 %i.bf, %i.ao
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %.unr-lcssa, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i
  %.028.i.i.i = phi i64 [ %i.by, %.preheader.i.i.i ], [ %.028.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ] ; 5 uses
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.028.i.i.i
  store i64 0, ptr %i.bo, align 8, !tbaa !9
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %.028.i.i.i
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  store i64 0, ptr %i.br, align 8, !tbaa !9
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %.028.i.i.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store i64 0, ptr %i.bu, align 8, !tbaa !9
  %i.bv = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %.028.i.i.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 24
  store i64 0, ptr %i.bx, align 8, !tbaa !9
  %i.by = add nsw i64 %.028.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.by, %i.ao
  br i1 %exitcond.not.i.i.i.3, label %.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !286

.unr-lcssa:                                       ; preds = %.preheader.i.i.i, %.preheader.i.i.i.prol.loopexit
  store i64 %i.ao, ptr %i.be, align 8, !tbaa !47
  br label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.unr-lcssa, %bb.m
  %xtraiter272 = and i64 %i.an, 3                 ; 3 uses
  %i.bz = icmp ult i64 %i.an, 4
  br i1 %i.bz, label %.lr.ph.split.i.i.i.epil.preheader, label %.lr.ph.split.i.i.i.preheader.new

.lr.ph.split.i.i.i.preheader.new:                 ; preds = %.lr.ph.split.i.i.i.preheader
  %unroll_iter = and i64 %i.an, 9223372036854775804
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i, %.lr.ph.split.i.i.i.preheader.new
  %.129.i.i.i = phi i64 [ 0, %.lr.ph.split.i.i.i.preheader.new ], [ %i.cl, %.lr.ph.split.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.i.i.i ]
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.129.i.i.i
  store i64 0, ptr %i.cb, align 8, !tbaa !9
  %i.cc = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.129.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 0, ptr %i.ce, align 8, !tbaa !9
  %i.cf = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.129.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 0, ptr %i.ch, align 8, !tbaa !9
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.129.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 0, ptr %i.ck, align 8, !tbaa !9
  %i.cl = add nuw nsw i64 %.129.i.i.i, 4          ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %attrbuf_set_at.exit.i.loopexit.unr-lcssa, label %.lr.ph.split.i.i.i, !llvm.loop !287

attrbuf_set_at.exit.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.split.i.i.i
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %attrbuf_set_at.exit.i, label %.lr.ph.split.i.i.i.epil.preheader

.lr.ph.split.i.i.i.epil.preheader:                ; preds = %attrbuf_set_at.exit.i.loopexit.unr-lcssa, %.lr.ph.split.i.i.i.preheader
  %.129.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.i.i.preheader ], [ %i.cl, %attrbuf_set_at.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod274 = icmp ne i64 %xtraiter272, 0
  tail call void @llvm.assume(i1 %lcmp.mod274)
  br label %.lr.ph.split.i.i.i.epil

.lr.ph.split.i.i.i.epil:                          ; preds = %.lr.ph.split.i.i.i.epil, %.lr.ph.split.i.i.i.epil.preheader
  %.129.i.i.i.epil = phi i64 [ %i.co, %.lr.ph.split.i.i.i.epil ], [ %.129.i.i.i.epil.init, %.lr.ph.split.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i.i.i.epil ], [ 0, %.lr.ph.split.i.i.i.epil.preheader ]
  %i.cm = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.129.i.i.i.epil
  store i64 0, ptr %i.cn, align 8, !tbaa !9
  %i.co = add nuw nsw i64 %.129.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter272
  br i1 %epil.iter.cmp.not, label %attrbuf_set_at.exit.i, label %.lr.ph.split.i.i.i.epil, !llvm.loop !388

attrbuf_set_at.exit.i:                            ; preds = %attrbuf_set_at.exit.i.loopexit.unr-lcssa, %.lr.ph.split.i.i.i.epil, %bb.k
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %highlight.exit, label %bb.n

bb.n:                                             ; preds = %attrbuf_set_at.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.v, ptr %8, align 8, !tbaa !31
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.0.i.i, ptr %i.cp, align 8, !tbaa !26
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ao, ptr %i.cq, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.x, ptr %i.cr, align 8, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.w, ptr %i.cs, align 8, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  call void %i.aj(ptr noundef nonnull %8, ptr noundef nonnull %.0.i.i, ptr noundef %i.al) #28, !inline_history !389
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %highlight.exit

highlight.exit:                                   ; preds = %bb.n, %attrbuf_set_at.exit.i, %ic_strlen.exit.i, %bb.e
  %.pr = load ptr, ptr %i.u, align 8, !tbaa !330  ; 6 uses
  %.not134 = icmp eq ptr %.pr, null
  br i1 %.not134, label %highlight.exit.thread, label %bb.o

bb.o:                                             ; preds = %highlight.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.cv = load i8, ptr %i.cu, align 2, !tbaa !199, !range !130, !noundef !131
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %highlight.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %1, align 8, !tbaa !320   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !46
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %sbuf_string.exit152, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !49 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  %spec.select = select i1 %i.dc, ptr @.str.3, ptr %i.db
  br label %sbuf_string.exit152

sbuf_string.exit152:                              ; preds = %bb.q, %bb.p
  %.0.i.i151 = phi ptr [ %spec.select, %bb.q ], [ null, %bb.p ] ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !325
  %i.df = getelementptr i8, ptr %0, i64 88
  %.val145 = load ptr, ptr %i.df, align 8, !tbaa !200 ; 2 uses
  %i.dg = icmp eq ptr %.val145, null
  %spec.select.i = select i1 %i.dg, ptr @.str.267, ptr %.val145 ; 6 uses
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !146 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 24
  %.val142 = load ptr, ptr %i.di, align 8, !tbaa !18
  %i.dj = getelementptr i8, ptr %i.dh, i64 40
  %.val143 = load i64, ptr %i.dj, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  call fastcc void @attr_update_with_styles(ptr noundef %7, ptr noundef nonnull @.str.263, ptr noundef null, i1 noundef zeroext false, ptr noundef readonly %.val142, i64 noundef %.val143)
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.dk, align 8, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.dl = load ptr, ptr %i.d, align 8, !tbaa !146 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 24
  %.val140 = load ptr, ptr %i.dm, align 8, !tbaa !18
  %i.dn = getelementptr i8, ptr %i.dl, i64 40
  %.val141 = load i64, ptr %i.dn, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call fastcc void @attr_update_with_styles(ptr noundef %6, ptr noundef nonnull @.str.264, ptr noundef null, i1 noundef zeroext false, ptr noundef readonly %.val140, i64 noundef %.val141)
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i153 = load i64, ptr %i.do, align 8, !tbaa !9 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dp = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select.i) #29 ; 4 uses
  %i.dq = icmp eq ptr %.0.i.i151, null
  br i1 %i.dq, label %highlight_match_braces.exit, label %ic_strlen.exit72.lr.ph.i

ic_strlen.exit72.lr.ph.i:                         ; preds = %sbuf_string.exit152
  %i.dr = icmp sgt i64 %i.dp, 1
  %i.ds = add nsw i64 %i.de, -1                   ; 3 uses
  br i1 %i.dr, label %ic_strlen.exit72.us.i.preheader, label %ic_strlen.exit72.lr.ph.split.i

ic_strlen.exit72.us.i.preheader:                  ; preds = %ic_strlen.exit72.lr.ph.i
  %i.dt = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i151) #29
  %i.du = icmp sgt i64 %i.dt, 0
  br i1 %i.du, label %.lr.ph.us.i.preheader, label %highlight_match_braces.exit

.lr.ph.us.i.preheader:                            ; preds = %ic_strlen.exit72.us.i.preheader, %.thread81.us.i
  %.06696.us.i215 = phi i64 [ %.584.us.i, %.thread81.us.i ], [ 0, %ic_strlen.exit72.us.i.preheader ] ; 11 uses
  %.06597.us.i214 = phi i64 [ %i.fl, %.thread81.us.i ], [ 0, %ic_strlen.exit72.us.i.preheader ] ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i151, i64 %.06597.us.i214
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !9   ; 5 uses
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %bb.r
  %.06293.us.i = phi i64 [ %i.ea, %bb.r ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.06293.us.i
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.dz = icmp eq i8 %i.dw, %i.dy
  br i1 %i.dz, label %bb.ad, label %bb.r

bb.r:                                             ; preds = %.lr.ph.us.i
  %i.ea = add nuw nsw i64 %.06293.us.i, 2         ; 2 uses
  %i.eb = icmp sgt i64 %i.dp, %i.ea
  br i1 %i.eb, label %.lr.ph.us.i, label %.preheader.us.i.loopexit, !llvm.loop !390

bb.s:                                             ; preds = %.preheader.us.i.loopexit
  %i.ec = add nuw nsw i64 %.094.us.i, 2           ; 2 uses
  %i.ed = icmp sgt i64 %i.dp, %i.ec
  br i1 %i.ed, label %.preheader.us.i.loopexit, label %.thread81.us.i, !llvm.loop !391

.preheader.us.i.loopexit:                         ; preds = %bb.r, %bb.s
  %.094.us.i = phi i64 [ %i.ec, %bb.s ], [ 1, %bb.r ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.094.us.i
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.eg = icmp eq i8 %i.dw, %i.ef
  br i1 %i.eg, label %bb.t, label %bb.s

bb.t:                                             ; preds = %.preheader.us.i.loopexit
  %i.eh = icmp slt i64 %.06696.us.i215, 1
  br i1 %i.eh, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr [16 x i8], ptr %5, i64 %.06696.us.i215 ; 3 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -16
  %i.ek = load i8, ptr %i.ej, align 16, !tbaa !392 ; 2 uses
  %i.el = icmp ne i8 %i.ek, %i.dw
  %i.em = icmp ne i64 %.06696.us.i215, 1
  %or.cond.us.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.us.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr i8, ptr %i.ei, i64 -32
  %i.eo = load i8, ptr %i.en, align 16, !tbaa !392
  %i.ep = icmp eq i8 %i.eo, %i.dw
  br i1 %i.ep, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %bb.v
  %i.eq = getelementptr i8, ptr %i.ei, i64 -8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !394
  call fastcc void @attrbuf_update_set_at(ptr noundef nonnull %.pr, i64 noundef %i.er, i64 noundef 1, i64 %.sroa.0.0.copyload.i153, i1 noundef zeroext true)
  %i.es = add nsw i64 %.06696.us.i215, -1
  br label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not.us.i = icmp eq i8 %i.ek, %i.dw
  br i1 %.not.us.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @attrbuf_update_set_at(ptr noundef nonnull %.pr, i64 noundef %.06597.us.i214, i64 noundef 1, i64 %.sroa.0.0.copyload.i153, i1 noundef zeroext true)
  br label %.thread81.us.i

bb.y:                                             ; preds = %bb.w, %.thread.i
  %.268.us142.i = phi i64 [ %i.es, %.thread.i ], [ %.06696.us.i215, %bb.w ]
  %i.et = add nsw i64 %.268.us142.i, -1           ; 4 uses
  %i.eu = icmp eq i64 %.06597.us.i214, %i.ds
  %.phi.trans.insert124.i = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.et ; 3 uses
  br i1 %i.eu, label %._crit_edge123.i, label %bb.z

._crit_edge123.i:                                 ; preds = %bb.y
  %.phi.trans.insert125.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert124.i, i64 8
  %.pre126.i = load i64, ptr %.phi.trans.insert125.i, align 8, !tbaa !394
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %.phi.trans.insert124.i, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !395, !range !130, !noundef !131
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.aa, label %.thread81.us.i

bb.aa:                                            ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %.phi.trans.insert124.i, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !394 ; 2 uses
  %.not70.us.i = icmp eq i64 %i.ez, -1
  br i1 %.not70.us.i, label %.thread81.us.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge123.i
  %i.fa = phi i64 [ %.pre126.i, %._crit_edge123.i ], [ %i.ez, %bb.aa ]
  call fastcc void @attrbuf_update_set_at(ptr noundef nonnull %.pr, i64 noundef %i.fa, i64 noundef 1, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext true)
  call fastcc void @attrbuf_update_set_at(ptr noundef nonnull %.pr, i64 noundef %.06597.us.i214, i64 noundef 1, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext true)
  br label %.thread81.us.i

bb.ac:                                            ; preds = %bb.t
  call fastcc void @attrbuf_update_set_at(ptr noundef nonnull %.pr, i64 noundef %.06597.us.i214, i64 noundef 1, i64 %.sroa.0.0.copyload.i153, i1 noundef zeroext true)
  br label %.thread81.us.i

bb.ad:                                            ; preds = %.lr.ph.us.i
  %i.fb = icmp sgt i64 %.06696.us.i215, 63
  br i1 %i.fb, label %highlight_match_braces.exit, label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %.06293.us.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !9
  %i.ff = getelementptr inbounds [16 x i8], ptr %5, i64 %.06696.us.i215 ; 3 uses
  store i8 %i.fe, ptr %i.ff, align 16, !tbaa !392
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %.06597.us.i214, ptr %i.fg, align 8, !tbaa !394
  %i.fh = icmp eq i64 %.06597.us.i214, %i.ds
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fj = zext i1 %i.fh to i8
  store i8 %i.fj, ptr %i.fi, align 1, !tbaa !395
  %i.fk = add nsw i64 %.06696.us.i215, 1
  br label %.thread81.us.i

.thread81.us.i:                                   ; preds = %bb.s, %.thread.us.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x
  %.584.us.i = phi i64 [ %i.et, %bb.z ], [ %.06696.us.i215, %bb.ac ], [ %i.fk, %.thread.us.i ], [ %i.et, %bb.aa ], [ %i.et, %bb.ab ], [ %.06696.us.i215, %bb.x ], [ %.06696.us.i215, %bb.s ]
  %i.fl = add nuw nsw i64 %.06597.us.i214, 1      ; 2 uses
  %i.fm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i151) #29
  %i.fn = icmp sgt i64 %i.fm, %i.fl
  br i1 %i.fn, label %.lr.ph.us.i.preheader, label %highlight_match_braces.exit

ic_strlen.exit72.lr.ph.split.i:                   ; preds = %ic_strlen.exit72.lr.ph.i
  %.not.i155.not = icmp eq i64 %i.dp, 1
  br i1 %.not.i155.not, label %ic_strlen.exit72.lr.ph.split.split.us.split.i, label %highlight_match_braces.exit

ic_strlen.exit72.lr.ph.split.split.us.split.i:    ; preds = %ic_strlen.exit72.lr.ph.split.i
  %i.fo = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i151) #29 ; 2 uses
  %i.fp = icmp sgt i64 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.us109.preheader.i, label %highlight_match_braces.exit

.lr.ph.us109.preheader.i:                         ; preds = %ic_strlen.exit72.lr.ph.split.split.us.split.i
  %.pre.pre.i = load i8, ptr %spec.select.i, align 1, !tbaa !9
  %i.fq = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  br label %bb.ae

bb.ae:                                            ; preds = %.thread81.us106.i, %.lr.ph.us109.preheader.i
  %.06696.us102116.i = phi i64 [ %.584.us107.i, %.thread81.us106.i ], [ 0, %.lr.ph.us109.preheader.i ] ; 4 uses
  %.06597.us101115.i = phi i64 [ %i.gc, %.thread81.us106.i ], [ 0, %.lr.ph.us109.preheader.i ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i.i151, i64 %.06597.us101115.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !9
  %i.ft = icmp eq i8 %i.fs, %.pre.pre.i
  br i1 %i.ft, label %bb.af, label %.thread81.us106.i

bb.af:                                            ; preds = %bb.ae
  %i.fu = icmp sgt i64 %.06696.us102116.i, 63
  br i1 %i.fu, label %highlight_match_braces.exit, label %.thread.us105.i

.thread.us105.i:                                  ; preds = %bb.af
  %i.fv = load i8, ptr %i.fq, align 1, !tbaa !9
  %i.fw = getelementptr inbounds [16 x i8], ptr %5, i64 %.06696.us102116.i ; 3 uses
  store i8 %i.fv, ptr %i.fw, align 16, !tbaa !392
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i64 %.06597.us101115.i, ptr %i.fx, align 8, !tbaa !394
  %i.fy = icmp eq i64 %.06597.us101115.i, %i.ds
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  %i.ga = zext i1 %i.fy to i8
  store i8 %i.ga, ptr %i.fz, align 1, !tbaa !395
  %i.gb = add nsw i64 %.06696.us102116.i, 1
  br label %.thread81.us106.i

.thread81.us106.i:                                ; preds = %.thread.us105.i, %bb.ae
  %.584.us107.i = phi i64 [ %i.gb, %.thread.us105.i ], [ %.06696.us102116.i, %bb.ae ]
  %i.gc = add nuw nsw i64 %.06597.us101115.i, 1   ; 2 uses
  %exitcond.not.i156 = icmp eq i64 %i.gc, %i.fo
  br i1 %exitcond.not.i156, label %highlight_match_braces.exit, label %bb.ae

highlight_match_braces.exit:                      ; preds = %bb.af, %.thread81.us106.i, %bb.ad, %.thread81.us.i, %ic_strlen.exit72.us.i.preheader, %sbuf_string.exit152, %ic_strlen.exit72.lr.ph.split.i, %ic_strlen.exit72.lr.ph.split.split.us.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %highlight.exit.thread

highlight.exit.thread:                            ; preds = %bb.a, %highlight_match_braces.exit, %bb.o, %highlight.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !322 ; 3 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %sbuf_len.exit.thread, label %sbuf_len.exit

sbuf_len.exit:                                    ; preds = %highlight.exit.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !46 ; 2 uses
  %i.gi = icmp sgt i64 %i.gh, 0
  br i1 %i.gi, label %bb.ag, label %sbuf_len.exit.thread

bb.ag:                                            ; preds = %sbuf_len.exit
  %i.gj = load ptr, ptr %i.u, align 8, !tbaa !330 ; 2 uses
  %.not135 = icmp eq ptr %i.gj, null
  br i1 %.not135, label %.thread, label %bb.ah

.thread:                                          ; preds = %bb.ag
  %i.gk = load ptr, ptr %1, align 8, !tbaa !320
  br label %select.unfold203

bb.ah:                                            ; preds = %bb.ag
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !325
  %i.gn = load ptr, ptr %i.d, align 8, !tbaa !146 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 24
  %.val = load ptr, ptr %i.go, align 8, !tbaa !18
  %i.gp = getelementptr i8, ptr %i.gn, i64 40
  %.val139 = load i64, ptr %i.gp, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call fastcc void @attr_update_with_styles(ptr noundef %4, ptr noundef nonnull @.str.265, ptr noundef null, i1 noundef zeroext false, ptr noundef readonly %.val, i64 noundef %.val139)
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i159 = load i64, ptr %i.gq, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call fastcc void @attrbuf_insert_at(ptr noundef nonnull %i.gj, i64 noundef %i.gm, i64 noundef %i.gh, i64 %.sroa.0.0.copyload.i159)
  %.pre = load ptr, ptr %i.gd, align 8, !tbaa !322 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre220 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !46
  %i.gr = icmp slt i64 %.pre220, 0
  %i.gs = load ptr, ptr %1, align 8, !tbaa !320   ; 2 uses
  br i1 %i.gr, label %sbuf_insert_at.exit, label %select.unfold203

select.unfold203:                                 ; preds = %.thread, %bb.ah
  %i.gt = phi ptr [ %i.gk, %.thread ], [ %i.gs, %bb.ah ]
  %i.gu = phi ptr [ %i.ge, %.thread ], [ %.pre, %bb.ah ]
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !49 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  %spec.select209 = select i1 %i.gw, ptr @.str.3, ptr %i.gv ; 2 uses
  %i.gx = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select209) #29
  %i.gy = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.gx, i64 0)
  br label %sbuf_insert_at.exit

sbuf_insert_at.exit:                              ; preds = %bb.ah, %select.unfold203
  %i.gz = phi ptr [ %i.gt, %select.unfold203 ], [ %i.gs, %bb.ah ]
  %.0.i.i161206 = phi ptr [ %spec.select209, %select.unfold203 ], [ null, %bb.ah ]
  %.0.i.i164 = phi i64 [ %i.gy, %select.unfold203 ], [ 0, %bb.ah ]
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ha = load i64, ptr %.in, align 8, !tbaa !325
  %i.hb = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.gz, ptr noundef readonly %.0.i.i161206, i64 noundef %.0.i.i164, i64 noundef %i.ha) ; 0 uses
  br label %sbuf_len.exit.thread

sbuf_len.exit.thread:                             ; preds = %highlight.exit.thread, %sbuf_insert_at.exit, %sbuf_len.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !321 ; 2 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %sbuf_len.exit166.thread, label %sbuf_len.exit166

sbuf_len.exit166:                                 ; preds = %sbuf_len.exit.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !46
  %i.hh = icmp sgt i64 %i.hg, 0
  br i1 %i.hh, label %bb.ai, label %sbuf_len.exit166.thread

bb.ai:                                            ; preds = %sbuf_len.exit166
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !317 ; 2 uses
  %.val.i = load ptr, ptr %i.hj, align 8, !tbaa !33
  %i.hk = call ptr %.val.i(i64 noundef 32) #28, !inline_history !43 ; 6 uses
  %.not.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i, label %sbuf_len.exit166.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  store ptr %i.hj, ptr %i.hl, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, i8 0, i64 24, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !323 ; 3 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %sbuf_len.exit168.thread, label %sbuf_len.exit168

sbuf_len.exit168:                                 ; preds = %bb.aj
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !46
  %i.hr = icmp sgt i64 %i.hq, 0
  br i1 %i.hr, label %sbuf_string.exit171, label %sbuf_len.exit168.thread

sbuf_string.exit171:                              ; preds = %sbuf_len.exit168
  %i.hs = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !49 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  %spec.select.i.i169 = select i1 %i.hu, ptr @.str.3, ptr %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !331
  call fastcc void @bbcode_append(ptr noundef %i.hs, ptr noundef nonnull %spec.select.i.i169, ptr noundef %i.hk, ptr noundef %i.hw)
  br label %sbuf_len.exit168.thread

sbuf_len.exit168.thread:                          ; preds = %bb.aj, %sbuf_string.exit171, %sbuf_len.exit168
  %i.hx = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.hy = load ptr, ptr %i.hc, align 8, !tbaa !321 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !46
  %i.ib = icmp slt i64 %i.ia, 0
end_hunk_1
