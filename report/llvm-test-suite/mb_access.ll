inline.NumInlined: 9
begin_hunk_0_@CheckAvailabilityOfNeighbors:bb.a
bb.w:                                             ; preds = %bb.v, %bb.u
  br label %mb_is_available.exit87.thread

mb_is_available.exit87.thread:                    ; preds = %bb.v, %bb.w
  %.0.i84.ph = phi i32 [ 0, %bb.v ], [ 1, %bb.w ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  store i32 %.0.i84.ph, ptr %i.el, align 8, !tbaa !45
  br label %bb.x

mb_is_available.exit87:                           ; preds = %mb_is_available.exit82.thread, %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  store i32 0, ptr %i.em, align 8, !tbaa !45
  %i.en = icmp slt i32 %i.da, 0
  br i1 %i.en, label %mb_is_available.exit92.thread, label %mb_is_available.exit87._crit_edge

mb_is_available.exit87._crit_edge:                ; preds = %mb_is_available.exit87
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 15348
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %mb_is_available.exit87._crit_edge, %mb_is_available.exit87.thread
  %i.eo = phi i32 [ 0, %mb_is_available.exit87._crit_edge ], [ %.0.i84.ph, %mb_is_available.exit87.thread ] ; 3 uses
  %i.ep = phi i32 [ %.pre, %mb_is_available.exit87._crit_edge ], [ %i.eb, %mb_is_available.exit87.thread ]
  %.not.i88 = icmp slt i32 %i.da, %i.ep
  br i1 %.not.i88, label %bb.y, label %mb_is_available.exit92.thread

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 15420
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !29
  %.not6.i90 = icmp eq i32 %i.er, 0
  br i1 %.not6.i90, label %bb.z, label %mb_is_available.exit92

bb.z:                                             ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 14224
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !30 ; 2 uses
  %i.eu = zext nneg i32 %i.da to i64
  %i.ev = getelementptr inbounds nuw [536 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !31
  %i.ex = getelementptr inbounds [536 x i8], ptr %i.et, i64 %i.f
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !31
  %.not7.i91 = icmp eq i32 %i.ew, %i.ey
  br i1 %.not7.i91, label %mb_is_available.exit92, label %mb_is_available.exit92.thread

mb_is_available.exit92:                           ; preds = %bb.z, %bb.y
  %i.ez = load ptr, ptr @PicPos, align 8, !tbaa !41
  %i.fa = getelementptr [8 x i8], ptr %i.ez, i64 %i.f
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !43
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  br label %mb_is_available.exit92.thread

mb_is_available.exit92.thread:                    ; preds = %bb.z, %bb.x, %mb_is_available.exit87, %mb_is_available.exit92
  %i.fg = phi i32 [ %i.eo, %mb_is_available.exit92 ], [ 0, %mb_is_available.exit87 ], [ %i.eo, %bb.x ], [ %i.eo, %bb.z ] ; 4 uses
  %i.fh = phi i32 [ %i.ff, %mb_is_available.exit92 ], [ 0, %mb_is_available.exit87 ], [ 0, %bb.x ], [ 0, %bb.z ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 460
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !46
  %i.fj = icmp slt i32 %i.dd, 0
  br i1 %i.fj, label %mb_is_available.exit77.thread, label %bb.aa

bb.aa:                                            ; preds = %mb_is_available.exit92.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 15348
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !10
  %.not.i93 = icmp slt i32 %i.dd, %i.fl
  br i1 %.not.i93, label %bb.ab, label %mb_is_available.exit77.thread

bb.ab:                                            ; preds = %bb.aa
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 15420
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !29
  %.not6.i95 = icmp eq i32 %i.fn, 0
  br i1 %.not6.i95, label %bb.ac, label %mb_is_available.exit97

bb.ac:                                            ; preds = %bb.ab
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 14224
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !30 ; 2 uses
  %i.fq = zext nneg i32 %i.dd to i64
  %i.fr = getelementptr inbounds nuw [536 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !31
  %i.ft = getelementptr inbounds [536 x i8], ptr %i.fp, i64 %i.f
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !31
  %.not7.i96 = icmp eq i32 %i.fs, %i.fu
  br i1 %.not7.i96, label %mb_is_available.exit97, label %mb_is_available.exit77.thread

mb_is_available.exit97:                           ; preds = %bb.ac, %bb.ab
  %i.fv = load ptr, ptr @PicPos, align 8, !tbaa !41
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.f
  br label %mb_is_available.exit77.thread.sink.split

mb_is_available.exit77.thread.sink.split:         ; preds = %mb_is_available.exit77, %mb_is_available.exit97
  %.sink125.in = phi ptr [ %i.fw, %mb_is_available.exit97 ], [ %i.ct, %mb_is_available.exit77 ]
  %.ph = phi i32 [ %i.cy, %mb_is_available.exit97 ], [ %i.t, %mb_is_available.exit77 ]
  %.ph120 = phi i32 [ %i.fg, %mb_is_available.exit97 ], [ %.0.i64, %mb_is_available.exit77 ]
  %.ph121 = phi i32 [ %i.cu, %mb_is_available.exit97 ], [ %i.o, %mb_is_available.exit77 ]
  %.ph122 = phi i32 [ %i.dx, %mb_is_available.exit97 ], [ %i.au, %mb_is_available.exit77 ]
  %.sink125 = load ptr, ptr %.sink125.in, align 8, !tbaa !43
  %i.fx = load i32, ptr %.sink125, align 4, !tbaa !4
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  br label %mb_is_available.exit77.thread

mb_is_available.exit77.thread:                    ; preds = %mb_is_available.exit77.thread.sink.split, %mb_is_available.exit92.thread, %bb.aa, %bb.ac, %mb_is_available.exit72.thread, %bb.m, %bb.o
  %.sink = phi i32 [ 0, %bb.o ], [ 0, %bb.aa ], [ 0, %mb_is_available.exit72.thread ], [ 0, %bb.m ], [ 0, %bb.ac ], [ 0, %mb_is_available.exit92.thread ], [ %i.fz, %mb_is_available.exit77.thread.sink.split ]
  %i.ga = phi i32 [ %i.t, %bb.o ], [ %i.cy, %bb.aa ], [ %i.t, %mb_is_available.exit72.thread ], [ %i.t, %bb.m ], [ %i.cy, %bb.ac ], [ %i.cy, %mb_is_available.exit92.thread ], [ %.ph, %mb_is_available.exit77.thread.sink.split ]
  %i.gb = phi i32 [ %.0.i64, %bb.o ], [ %i.fg, %bb.aa ], [ %.0.i64, %mb_is_available.exit72.thread ], [ %.0.i64, %bb.m ], [ %i.fg, %bb.ac ], [ %i.fg, %mb_is_available.exit92.thread ], [ %.ph120, %mb_is_available.exit77.thread.sink.split ]
  %i.gc = phi i32 [ %i.o, %bb.o ], [ %i.cu, %bb.aa ], [ %i.o, %mb_is_available.exit72.thread ], [ %i.o, %bb.m ], [ %i.cu, %bb.ac ], [ %i.cu, %mb_is_available.exit92.thread ], [ %.ph121, %mb_is_available.exit77.thread.sink.split ]
  %i.gd = phi i32 [ %i.au, %bb.o ], [ %i.dx, %bb.aa ], [ %i.au, %mb_is_available.exit72.thread ], [ %i.au, %bb.m ], [ %i.dx, %bb.ac ], [ %i.dx, %mb_is_available.exit92.thread ], [ %.ph122, %mb_is_available.exit77.thread.sink.split ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  store i32 %.sink, ptr %i.ge, align 8, !tbaa !47
  %.not61 = icmp eq i32 %i.gd, 0
  br i1 %.not61, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %mb_is_available.exit77.thread
  %i.gf = getelementptr inbounds nuw i8, ptr %i.j, i64 14224
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !30
  %i.gh = sext i32 %i.gc to i64
  %i.gi = getelementptr inbounds [536 x i8], ptr %i.gg, i64 %i.gh
  store ptr %i.gi, ptr %i.i, align 8, !tbaa !48
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %mb_is_available.exit77.thread
  %.not62 = icmp eq i32 %i.gb, 0
  br i1 %.not62, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gj = load ptr, ptr @img, align 8, !tbaa !8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 14224
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !30
  %i.gm = sext i32 %i.ga to i64
  %i.gn = getelementptr inbounds [536 x i8], ptr %i.gl, i64 %i.gm
  store ptr %i.gn, ptr %i.h, align 8, !tbaa !49
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @get_mb_block_pos_normal(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @PicPos, align 8, !tbaa !41
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  store i32 %i.e, ptr %1, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  store i32 %i.g, ptr %2, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @get_mb_block_pos_mbaff(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @PicPos, align 8, !tbaa !41
  %i.b = ashr i32 %0, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  store i32 %i.f, ptr %1, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = shl i32 %i.h, 1
  %i.j = and i32 %0, 1
  %i.k = or disjoint i32 %i.i, %i.j
  store i32 %i.k, ptr %2, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get_mb_pos(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @get_mb_block_pos, align 8, !tbaa !8
  tail call void %i.a(i32 noundef %0, ptr noundef %1, ptr noundef %2) #5
  %i.b = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15552
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4
  %i.g = load i32, ptr %1, align 4, !tbaa !4
  %i.h = mul nsw i32 %i.g, %i.f
  store i32 %i.h, ptr %1, align 4, !tbaa !4
  %i.i = getelementptr [8 x i8], ptr %i.b, i64 %i.d
  %i.j = getelementptr i8, ptr %i.i, i64 15556
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = load i32, ptr %2, align 4, !tbaa !4
  %i.m = mul nsw i32 %i.l, %i.k
  store i32 %i.m, ptr %2, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @getNonAffNeighbour(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 4)) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = zext i32 %0 to i64
  %i.e = getelementptr inbounds nuw [536 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15552
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !4    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 3 uses
  %i.l = icmp slt i32 %2, 0                       ; 2 uses
  %i.m = and i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.m, -1
  br i1 %or.cond.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %1, 0
  %i.o = icmp sgt i32 %2, -1                      ; 2 uses
  %or.cond3 = and i1 %i.n, %i.o
  %i.p = icmp slt i32 %2, %i.k                    ; 2 uses
  %or.cond = select i1 %or.cond3, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp sgt i32 %1, -1                      ; 2 uses
  %i.r = icmp slt i32 %1, %i.i                    ; 2 uses
  %or.cond5 = and i1 %i.l, %i.r
  %or.cond69 = select i1 %i.q, i1 %or.cond5, i1 false
  br i1 %or.cond69, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond7 = and i1 %i.o, %i.r
  %or.cond70 = select i1 %i.q, i1 %or.cond7, i1 false
  %or.cond71 = select i1 %or.cond70, i1 %i.p, i1 false
  br i1 %or.cond71, label %.thread73, label %bb.e

.thread73:                                        ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %0, ptr %i.s, align 4, !tbaa !50
  store i32 1, ptr %4, align 4, !tbaa !52
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = icmp sge i32 %1, %i.i
  %or.cond9 = and i1 %i.l, %i.t
  br i1 %or.cond9, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  store i32 0, ptr %4, align 4, !tbaa !52
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %.sink79 = phi i64 [ 448, %bb.a ], [ 440, %bb.c ], [ 436, %bb.b ], [ 444, %bb.e ]
  %.sink75 = phi i64 [ 464, %bb.a ], [ 456, %bb.c ], [ 452, %bb.b ], [ 460, %bb.e ]
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink79
  %.sink76 = load i32, ptr %5, align 4, !tbaa !4  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sink76, ptr %i.u, align 4, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink75
  %.sink = load i32, ptr %i.v, align 4, !tbaa !4  ; 2 uses
  store i32 %.sink, ptr %4, align 4, !tbaa !52
  %.not = icmp eq i32 %.sink, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 15420
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29
  %.not68 = icmp eq i32 %i.x, 0
  br i1 %.not68, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.thread73, %bb.f
  %i.y = phi i32 [ %.pre, %._crit_edge ], [ %0, %.thread73 ], [ %.sink76, %bb.f ]
  %i.z = load ptr, ptr @PicPos, align 8, !tbaa !41
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %i.ad = add nsw i32 %i.i, -1
  %i.ae = and i32 %i.ad, %1                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !53
  %i.ag = add nsw i32 %i.k, -1
  %i.ah = and i32 %i.ag, %2                       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !54
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ak = mul nsw i32 %i.aj, %i.i
  %i.al = add nsw i32 %i.ak, %i.ae
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.al, ptr %i.am, align 4, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = mul nsw i32 %i.ao, %i.k
  %i.aq = add nsw i32 %i.ap, %i.ah
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @getAffNeighbour(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef initializes((0, 4)) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 10 uses
  %i.d = zext i32 %0 to i64
  %i.e = getelementptr inbounds nuw [536 x i8], ptr %i.c, i64 %i.d ; 23 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15552
  %i.g = sext i32 %3 to i64                       ; 3 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !4    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 8 uses
  store i32 0, ptr %4, align 4, !tbaa !52
  %i.l = add nsw i32 %i.k, -1
  %.not = icmp slt i32 %2, %i.k
  br i1 %.not, label %bb.b, label %bb.bl

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i32 %i.i, -1
  %i.n = icmp sge i32 %1, %i.i
  %i.o = icmp sgt i32 %2, -1
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.bl, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %1, 0
  br i1 %i.p, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %2, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  %i.s = load i32, ptr %i.r, align 8, !tbaa !57
  %.not205 = icmp eq i32 %i.s, 0                  ; 2 uses
  %i.t = and i32 %0, 1
  %i.u = icmp eq i32 %i.t, 0                      ; 4 uses
  br i1 %i.q, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  br i1 %.not205, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.w = load i32, ptr %i.v, align 8, !tbaa !40
  %i.x = add nsw i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 436
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 452
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !44 ; 2 uses
  store i32 %i.af, ptr %4, align 4, !tbaa !52
  %.not206 = icmp eq i32 %i.af, 0
  br i1 %.not206, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 424
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !57
  %.not207 = icmp eq i32 %i.aj, 0
  br i1 %.not207, label %.thread220, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %i.ac, 1
  store i32 %i.ak, ptr %i.ad, align 4, !tbaa !50
  %i.al = add nsw i32 %i.k, %2
  %i.am = ashr i32 %i.al, 1
  br label %.thread220

bb.k:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !40 ; 4 uses
  br i1 %i.u, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !47 ; 2 uses
  store i32 %i.ar, ptr %4, align 4, !tbaa !52
  %.not208 = icmp eq i32 %i.ar, 0
  br i1 %.not208, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 424
  %i.av = load i32, ptr %i.au, align 8, !tbaa !57
  %.not209 = icmp eq i32 %i.av, 0
  br i1 %.not209, label %bb.n, label %.thread220

bb.n:                                             ; preds = %bb.m
  %i.aw = add nsw i32 %i.ao, 1
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !50
  %i.ax = shl nsw i32 %2, 1
  br label %.thread220

bb.o:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %i.ao, 1
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !47 ; 2 uses
  br label %thread-pre-split

bb.p:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 436
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !36 ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 452
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !44 ; 2 uses
  store i32 %i.bg, ptr %4, align 4, !tbaa !52
  %.not199 = icmp eq i32 %i.bg, 0                 ; 4 uses
  br i1 %.not205, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  br i1 %i.u, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %.not199, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = sext i32 %i.bd to i64
  %i.bi = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 424
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !57
  %.not200 = icmp eq i32 %i.bk, 0
  br i1 %.not200, label %.thread220, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = and i32 %2, 1
  %i.bm = add nsw i32 %i.bd, %i.bl
  store i32 %i.bm, ptr %i.be, align 4, !tbaa !50
  %i.bn = lshr i32 %2, 1
  br label %.thread220

bb.u:                                             ; preds = %bb.q
end_hunk_0
