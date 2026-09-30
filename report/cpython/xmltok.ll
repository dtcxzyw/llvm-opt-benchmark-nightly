Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/xmltok?download=true
inline.NumInlined: 156
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@little2_scanAtts:bb.a
  br i1 %i.do, label %.select.unfold_crit_edge, label %bb.aa

.select.unfold_crit_edge:                         ; preds = %bb.z
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %select.unfold

bb.aa:                                            ; preds = %bb.z
  %i.dp = icmp eq i32 %i.dn, 0
  br i1 %i.dp, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !15
  br label %.thread.sink.split

bb.ac:                                            ; preds = %bb.t
  %i.dr = getelementptr i8, ptr %i.cw, i64 2      ; 2 uses
  store ptr %i.dr, ptr %i.a, align 8, !tbaa !15
  br label %select.unfold

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %bb.u, %bb.w, %bb.y, %bb.ac
  %i.ds = phi ptr [ %.pre, %.select.unfold_crit_edge ], [ %i.dh, %bb.u ], [ %i.dj, %bb.w ], [ %i.dl, %bb.y ], [ %i.dr, %bb.ac ] ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.b, %i.dt                     ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 1
  br i1 %i.dv, label %.lr.ph313, label %.thread

.thread120:                                       ; preds = %unicode_byte_type.exit102
  %i.dw = getelementptr i8, ptr %i.cw, i64 2      ; 8 uses
  store ptr %i.dw, ptr %i.a, align 8, !tbaa !15
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.b, %i.dx
  %i.dz = icmp sgt i64 %i.dy, 1
  br i1 %i.dz, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %.thread120
  %i.ea = getelementptr i8, ptr %i.cw, i64 3
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !16
  %cond699 = icmp eq i8 %i.eb, 0
  br i1 %cond699, label %unicode_byte_type.exit105, label %.thread.sink.split

unicode_byte_type.exit105:                        ; preds = %bb.ad
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !16
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr i8, ptr %i.f, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !16
  switch i8 %i.ef, label %.thread.sink.split [
    i8 21, label %bb.ae
    i8 9, label %bb.ae
    i8 10, label %bb.ae
    i8 17, label %.loopexit144
    i8 11, label %.loopexit145
  ]

bb.ae:                                            ; preds = %unicode_byte_type.exit105, %unicode_byte_type.exit105, %unicode_byte_type.exit105
  %i.eg = getelementptr i8, ptr %i.cw, i64 4      ; 2 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.b, %i.eh                     ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 1
  br i1 %i.ej, label %.lr.ph331, label %.thread

.lr.ph331:                                        ; preds = %bb.ae, %bb.ah
  %i.ek = phi i64 [ %i.fp, %bb.ah ], [ %i.ei, %bb.ae ] ; 2 uses
  %i.el = phi ptr [ %i.fn, %bb.ah ], [ %i.eg, %bb.ae ] ; 17 uses
  %i.em = phi ptr [ %i.el, %bb.ah ], [ %i.dw, %bb.ae ] ; 3 uses
  %i.en = getelementptr i8, ptr %i.em, i64 3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !16
  switch i8 %i.eo, label %unicode_byte_type.exit108.thread533 [
    i8 0, label %unicode_byte_type.exit108
    i8 -40, label %unicode_byte_type.exit108.thread536
    i8 -39, label %unicode_byte_type.exit108.thread536
    i8 -38, label %unicode_byte_type.exit108.thread536
    i8 -37, label %unicode_byte_type.exit108.thread536
    i8 -36, label %.thread.sink.split
    i8 -35, label %.thread.sink.split
    i8 -34, label %.thread.sink.split
    i8 -33, label %.thread.sink.split
    i8 -1, label %bb.af
  ]

bb.af:                                            ; preds = %.lr.ph331
  %i.ep = load i8, ptr %i.el, align 1, !tbaa !16
  %switch.i106 = icmp ugt i8 %i.ep, -3
  br i1 %switch.i106, label %.thread.sink.split, label %unicode_byte_type.exit108.thread533

unicode_byte_type.exit108:                        ; preds = %.lr.ph331
  %i.eq = load i8, ptr %i.el, align 1, !tbaa !16
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr i8, ptr %i.f, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16
  switch i8 %i.et, label %.thread.sink.split [
    i8 29, label %unicode_byte_type.exit108.thread533
    i8 22, label %.loopexit
    i8 24, label %.loopexit
    i8 17, label %.loopexit144
    i8 6, label %bb.ag
    i8 7, label %unicode_byte_type.exit108.thread536
    i8 21, label %bb.ah
    i8 9, label %bb.ah
    i8 10, label %bb.ah
    i8 11, label %.loopexit145
  ]

unicode_byte_type.exit108.thread533:              ; preds = %.lr.ph331, %unicode_byte_type.exit108, %bb.af
  %i.eu = getelementptr i8, ptr %i.em, i64 3
  store ptr %i.el, ptr %i.a, align 8, !tbaa !15
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !16
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr i8, ptr @nmstrtPages, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !16
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 3
  %i.fb = load i8, ptr %i.el, align 1, !tbaa !16
  %i.fc = zext i8 %i.fb to i32                    ; 2 uses
  %i.fd = lshr i32 %i.fc, 5
  %i.fe = or disjoint i32 %i.fd, %i.fa
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr [4 x i8], ptr @namingBitmap, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !12
  %i.fi = and i32 %i.fc, 31
  %i.fj = shl nuw i32 1, %i.fi
  %i.fk = and i32 %i.fj, %i.fh
  %.not = icmp eq i32 %i.fk, 0
  br i1 %.not, label %.thread.sink.split, label %.loopexit

bb.ag:                                            ; preds = %unicode_byte_type.exit108
  %i.fl = icmp eq i64 %i.ek, 2
  br i1 %i.fl, label %.thread, label %.thread.sink.split

unicode_byte_type.exit108.thread536:              ; preds = %.lr.ph331, %.lr.ph331, %.lr.ph331, %.lr.ph331, %unicode_byte_type.exit108
  %i.fm = icmp samesign ult i64 %i.ek, 4
  br i1 %i.fm, label %.thread, label %.thread.sink.split

bb.ah:                                            ; preds = %unicode_byte_type.exit108, %unicode_byte_type.exit108, %unicode_byte_type.exit108
  %i.fn = getelementptr i8, ptr %i.el, i64 2      ; 2 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = sub i64 %i.b, %i.fo                     ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, 1
  br i1 %i.fq, label %.lr.ph331, label %.thread

.loopexit145:                                     ; preds = %unicode_byte_type.exit105, %unicode_byte_type.exit108
  %i.fr = phi ptr [ %i.el, %unicode_byte_type.exit108 ], [ %i.dw, %unicode_byte_type.exit105 ]
  %i.fs = getelementptr i8, ptr %i.fr, i64 2
  br label %.thread.sink.split

.loopexit144:                                     ; preds = %unicode_byte_type.exit105, %unicode_byte_type.exit108
  %i.ft = phi ptr [ %i.el, %unicode_byte_type.exit108 ], [ %i.dw, %unicode_byte_type.exit105 ] ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 2      ; 5 uses
  store ptr %i.fu, ptr %i.a, align 8, !tbaa !15
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.b, %i.fv
  %i.fx = icmp sgt i64 %i.fw, 1
  br i1 %i.fx, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %.loopexit144
  %i.fy = getelementptr i8, ptr %i.ft, i64 3
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !16
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.aj, label %.thread.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.gb = load i8, ptr %i.fu, align 1, !tbaa !16
  %i.gc = icmp eq i8 %i.gb, 62                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.ft, i64 4
  %spec.select = select i1 %i.gc, ptr %i.gd, ptr %i.fu
  %spec.select700 = select i1 %i.gc, i32 3, i32 0
  br label %.thread.sink.split

.loopexit:                                        ; preds = %unicode_byte_type.exit108, %unicode_byte_type.exit108, %unicode_byte_type.exit108.thread533
  %i.ge = getelementptr i8, ptr %i.em, i64 4
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.j, %bb.d
  %.sink = phi ptr [ %i.ge, %.loopexit ], [ %i.bg, %bb.j ], [ %i.ad, %bb.d ] ; 3 uses
  %.173 = phi i32 [ 0, %.loopexit ], [ 1, %bb.j ], [ %.072335, %bb.d ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !15
  %i.gf = ptrtoint ptr %.sink to i64
  %i.gg = sub i64 %i.b, %i.gf                     ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, 1
  br i1 %i.gh, label %bb.b, label %.thread, !llvm.loop !127

.thread.sink.split:                               ; preds = %unicode_byte_type.exit, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.af, %unicode_byte_type.exit108.thread533, %unicode_byte_type.exit105, %bb.ad, %unicode_byte_type.exit93, %bb.i, %bb.h, %bb.h, %bb.h, %bb.h, %unicode_byte_type.exit93.thread526, %bb.f, %unicode_byte_type.exit.thread520, %.lr.ph, %unicode_byte_type.exit96, %unicode_byte_type.exit99.thread, %.lr.ph310, %bb.t, %bb.t, %bb.t, %bb.t, %unicode_byte_type.exit108, %.lr.ph331, %.lr.ph331, %.lr.ph331, %.lr.ph331, %bb.aj, %bb.ai, %unicode_byte_type.exit108.thread536, %bb.ag, %unicode_byte_type.exit93.thread529, %bb.k, %unicode_byte_type.exit.thread523, %bb.e, %.loopexit145, %bb.ab
  %.sink698 = phi ptr [ %i.dq, %bb.ab ], [ %spec.select, %bb.aj ], [ %.promoted, %bb.e ], [ %i.cw, %bb.t ], [ %i.el, %unicode_byte_type.exit108.thread536 ], [ %i.ag, %unicode_byte_type.exit93.thread529 ], [ %i.fs, %.loopexit145 ], [ %i.el, %bb.ag ], [ %i.ag, %bb.k ], [ %i.cd, %unicode_byte_type.exit99.thread ], [ %i.bn, %.lr.ph ], [ %i.fu, %bb.ai ], [ %i.el, %unicode_byte_type.exit108 ], [ %.promoted, %unicode_byte_type.exit.thread523 ], [ %i.el, %.lr.ph331 ], [ %i.el, %.lr.ph331 ], [ %i.el, %.lr.ph331 ], [ %i.el, %.lr.ph331 ], [ %i.cw, %bb.t ], [ %i.cw, %bb.t ], [ %i.cw, %bb.t ], [ %i.cd, %.lr.ph310 ], [ %i.bn, %unicode_byte_type.exit96 ], [ %.promoted, %bb.f ], [ %.promoted, %unicode_byte_type.exit ], [ %.promoted, %unicode_byte_type.exit.thread520 ], [ %i.ag, %bb.h ], [ %i.ag, %bb.h ], [ %i.ag, %bb.h ], [ %i.ag, %bb.h ], [ %i.ag, %bb.i ], [ %.promoted, %bb.b ], [ %.promoted, %bb.b ], [ %.promoted, %bb.c ], [ %i.dw, %bb.ad ], [ %.promoted, %bb.b ], [ %.promoted, %bb.b ], [ %i.el, %unicode_byte_type.exit108.thread533 ], [ %i.dw, %unicode_byte_type.exit105 ], [ %i.el, %bb.af ], [ %i.ag, %unicode_byte_type.exit93 ], [ %i.ag, %unicode_byte_type.exit93.thread526 ]
  %.10.ph = phi i32 [ 0, %bb.ab ], [ %spec.select700, %bb.aj ], [ 0, %bb.e ], [ 0, %bb.t ], [ 0, %unicode_byte_type.exit108.thread536 ], [ 0, %unicode_byte_type.exit93.thread529 ], [ 1, %.loopexit145 ], [ 0, %bb.ag ], [ 0, %bb.k ], [ 0, %unicode_byte_type.exit99.thread ], [ 0, %.lr.ph ], [ 0, %bb.ai ], [ 0, %unicode_byte_type.exit108 ], [ 0, %unicode_byte_type.exit.thread523 ], [ 0, %.lr.ph331 ], [ 0, %.lr.ph331 ], [ 0, %.lr.ph331 ], [ 0, %.lr.ph331 ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %.lr.ph310 ], [ 0, %unicode_byte_type.exit96 ], [ 0, %unicode_byte_type.exit.thread520 ], [ 0, %bb.f ], [ 0, %unicode_byte_type.exit93.thread526 ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %unicode_byte_type.exit93 ], [ 0, %bb.ad ], [ 0, %unicode_byte_type.exit105 ], [ 0, %unicode_byte_type.exit108.thread533 ], [ 0, %bb.af ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %unicode_byte_type.exit ]
  store ptr %.sink698, ptr %3, align 8, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.ak, %.thread120, %bb.o, %bb.l, %.thread111, %bb.ae, %bb.m, %bb.n, %select.unfold, %bb.x, %bb.v, %bb.ah, %.thread.sink.split, %bb.a, %bb.aa, %.loopexit144, %unicode_byte_type.exit108.thread536, %bb.ag, %unicode_byte_type.exit93.thread529, %bb.k, %unicode_byte_type.exit.thread523, %bb.e
  %.10 = phi i32 [ -1, %bb.n ], [ -2, %unicode_byte_type.exit108.thread536 ], [ -2, %unicode_byte_type.exit93.thread529 ], [ -1, %bb.m ], [ -1, %bb.ah ], [ -2, %bb.k ], [ -2, %bb.e ], [ -1, %.loopexit144 ], [ -2, %bb.ag ], [ -2, %unicode_byte_type.exit.thread523 ], [ -1, %bb.a ], [ -1, %select.unfold ], [ %i.dn, %bb.aa ], [ %.10.ph, %.thread.sink.split ], [ -2, %bb.v ], [ -2, %bb.x ], [ -1, %bb.ae ], [ -1, %.thread111 ], [ -1, %bb.l ], [ -1, %bb.o ], [ -1, %.thread120 ], [ -1, %bb.ak ], [ -1, %bb.g ]
  ret i32 %.10
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @initScan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #5 {
bb.a:
  %.not = icmp ult ptr %3, %4
  br i1 %.not, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 7 uses
  %i.c = getelementptr i8, ptr %3, i64 1
  %i.d = icmp eq ptr %i.c, %4
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 133
  %i.f = load i8, ptr %i.e, align 1, !tbaa !30    ; 2 uses
  %.off = add i8 %i.f, -3
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %3, align 1, !tbaa !16
  switch i8 %i.g, label %bb.y [
    i8 -2, label %bb.e
    i8 -1, label %bb.e
    i8 -17, label %bb.e
    i8 0, label %bb.z
    i8 60, label %bb.z
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.h = icmp eq i8 %i.f, 0
  %i.i = icmp ne i32 %2, 0
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.y, label %bb.z

bb.f:                                             ; preds = %bb.b
  %6 = load i16, ptr %3, align 1                  ; 3 uses
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  switch i16 %7, label %bb.s [
    i16 -257, label %bb.g
    i16 15360, label %bb.i
    i16 -2, label %bb.m
    i16 -4165, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %1, i64 133
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = icmp eq i8 %i.k, 0
  %i.m = icmp ne i32 %2, 0
  %or.cond3 = and i1 %i.m, %i.l
  br i1 %or.cond3, label %bb.y, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %3, i64 2
  store ptr %i.n, ptr %5, align 8, !tbaa !15
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  store ptr %i.p, ptr %i.b, align 8, !tbaa !35
  br label %bb.z

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %1, i64 133
  %i.r = load i8, ptr %i.q, align 1, !tbaa !30    ; 2 uses
  %i.s = icmp eq i8 %i.r, 4
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = icmp eq i8 %i.r, 3
  %i.u = icmp ne i32 %2, 0
  %or.cond5 = and i1 %i.u, %i.t
  br i1 %or.cond5, label %bb.y, label %bb.l

bb.k:                                             ; preds = %bb.i
  %.old4.not = icmp eq i32 %2, 0
  br i1 %.old4.not, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = getelementptr i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35   ; 3 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !35
  %i.x = zext nneg i32 %2 to i64
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = tail call i32 %i.z(ptr noundef %i.w, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  br label %bb.z

bb.m:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %1, i64 133
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !30
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = icmp ne i32 %2, 0
  %or.cond8 = and i1 %i.ae, %i.ad
  br i1 %or.cond8, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr i8, ptr %3, i64 2
  store ptr %i.af, ptr %5, align 8, !tbaa !15
  %i.ag = getelementptr i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !35
  br label %bb.z

bb.o:                                             ; preds = %bb.f
  %.not106 = icmp eq i32 %2, 0
  br i1 %.not106, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr i8, ptr %1, i64 133
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !30
  switch i8 %i.aj, label %.thread [
    i8 5, label %bb.y
    i8 4, label %bb.y
    i8 3, label %bb.y
    i8 0, label %bb.y
  ]

.thread:                                          ; preds = %bb.p, %bb.o
  %i.ak = getelementptr i8, ptr %3, i64 2         ; 2 uses
  %i.al = icmp eq ptr %i.ak, %4
  br i1 %i.al, label %bb.z, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.an = icmp eq i8 %i.am, -65
  br i1 %i.an, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr i8, ptr %3, i64 3
  store ptr %i.ao, ptr %5, align 8, !tbaa !15
  %i.ap = getelementptr i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !35
  br label %bb.z

bb.s:                                             ; preds = %bb.f
  %8 = and i16 %6, 255
  %i.ar = icmp eq i16 %8, 0
  br i1 %i.ar, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not107 = icmp eq i32 %2, 0
  br i1 %.not107, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr i8, ptr %1, i64 133
  %i.at = load i8, ptr %i.as, align 1, !tbaa !30
  %i.au = icmp eq i8 %i.at, 5
  br i1 %i.au, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.av = getelementptr i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 3 uses
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !35
  %i.ax = zext nneg i32 %2 to i64
  %i.ay = getelementptr [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.ba = tail call i32 %i.az(ptr noundef %i.aw, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  br label %bb.z

bb.w:                                             ; preds = %bb.s
  %9 = icmp ugt i16 %6, 255
  %i.bb = icmp ne i32 %2, 0
  %or.cond20 = or i1 %i.bb, %9
  br i1 %or.cond20, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr i8, ptr %0, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 3 uses
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !35
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bf = tail call i32 %i.be(ptr noundef nonnull %i.bd, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  br label %bb.z

bb.y:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.g, %bb.j, %bb.k, %bb.m, %bb.q, %bb.u, %bb.w, %bb.d, %bb.e
  %i.bg = getelementptr i8, ptr %1, i64 133
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !30
  %i.bi = sext i8 %i.bh to i64
  %i.bj = getelementptr [8 x i8], ptr %0, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35 ; 3 uses
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !35
  %i.bl = zext nneg i32 %2 to i64
  %i.bm = getelementptr [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.bo = tail call i32 %i.bn(ptr noundef %i.bk, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #13
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.d, %bb.d, %bb.e, %bb.c, %bb.a, %bb.y, %bb.x, %bb.v, %bb.r, %bb.n, %bb.l, %bb.h
  %.099 = phi i32 [ 14, %bb.r ], [ %i.bo, %bb.y ], [ -1, %bb.c ], [ -4, %bb.a ], [ %i.ba, %bb.v ], [ %i.bf, %bb.x ], [ 14, %bb.h ], [ %i.aa, %bb.l ], [ 14, %bb.n ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %.thread ]
  ret i32 %.099
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @ascii_toUtf8(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readnone captures(address) %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.b = icmp ult ptr %i.a, %2
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.j, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.e = icmp ult ptr %i.d, %4
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.c, i64 1
  store ptr %i.f, ptr %1, align 8, !tbaa !15
  %i.g = load i8, ptr %i.c, align 1, !tbaa !16
  %i.h = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %3, align 8, !tbaa !15
  store i8 %i.g, ptr %i.h, align 1, !tbaa !16
  %i.j = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.k = icmp ult ptr %i.j, %2
  br i1 %i.k, label %.lr.ph, label %.thread, !llvm.loop !128

.critedge:                                        ; preds = %.lr.ph
  %i.l = icmp eq ptr %i.d, %4
  br i1 %i.l, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %.critedge
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %.thread
  %.0 = phi i32 [ 0, %.thread ], [ 2, %.critedge ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @big2_prologTok(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #9 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %.not221 = trunc i64 %i.c to i1
  %i.d = and i64 %i.c, -2                         ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %.not248 = and i1 %i.e, %.not221
  %.1211 = select i1 %.not248, ptr %i.f, ptr %2   ; 17 uses
  %cond.not = icmp eq i64 %i.c, 1
  br i1 %cond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !16      ; 2 uses
  switch i8 %i.g, label %unicode_byte_type.exit.thread392 [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread390
    i8 -39, label %unicode_byte_type.exit.thread390
    i8 -38, label %unicode_byte_type.exit.thread390
    i8 -37, label %unicode_byte_type.exit.thread390
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %switch.i = icmp ugt i8 %i.i, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %unicode_byte_type.exit.thread392

unicode_byte_type.exit:                           ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 136
  %i.k = getelementptr i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  switch i8 %i.o, label %unicode_byte_type.exit.thread [
    i8 12, label %bb.e
    i8 13, label %bb.f
    i8 2, label %bb.g
    i8 9, label %bb.l
    i8 21, label %bb.n
    i8 10, label %bb.n
    i8 30, label %bb.r
    i8 35, label %bb.s
    i8 20, label %bb.t
    i8 4, label %bb.u
    i8 31, label %bb.ac
    i8 32, label %bb.ad
    i8 36, label %bb.aj
    i8 11, label %bb.ak
    i8 19, label %bb.al
    i8 5, label %bb.am
    i8 6, label %bb.ao
    i8 7, label %unicode_byte_type.exit.thread390
    i8 22, label %bb.at
    i8 24, label %bb.at
    i8 25, label %bb.ar
    i8 26, label %bb.ar
    i8 27, label %bb.ar
    i8 23, label %bb.ar
    i8 29, label %unicode_byte_type.exit.thread392
  ]

bb.e:                                             ; preds = %unicode_byte_type.exit
  %i.p = getelementptr i8, ptr %1, i64 2
  %i.q = tail call fastcc i32 @big2_scanLit(i32 noundef 12, ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef %.1211, ptr noundef %3)
  br label %.loopexit

bb.f:                                             ; preds = %unicode_byte_type.exit
  %i.r = getelementptr i8, ptr %1, i64 2
  %i.s = tail call fastcc i32 @big2_scanLit(i32 noundef 13, ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef %.1211, ptr noundef %3)
  br label %.loopexit

bb.g:                                             ; preds = %unicode_byte_type.exit
  %i.t = getelementptr i8, ptr %1, i64 2          ; 3 uses
  %i.u = ptrtoint ptr %.1211 to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %i.t, align 1, !tbaa !16
  switch i8 %i.y, label %unicode_byte_type.exit235.thread396 [
    i8 0, label %unicode_byte_type.exit235
    i8 -1, label %bb.i
    i8 -33, label %unicode_byte_type.exit235.thread
    i8 -34, label %unicode_byte_type.exit235.thread
    i8 -35, label %unicode_byte_type.exit235.thread
    i8 -36, label %unicode_byte_type.exit235.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %1, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %switch.i233 = icmp ugt i8 %i.aa, -3
  br i1 %switch.i233, label %unicode_byte_type.exit235.thread, label %unicode_byte_type.exit235.thread396

unicode_byte_type.exit235:                        ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %0, i64 136
  %i.ac = getelementptr i8, ptr %1, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  switch i8 %i.ag, label %unicode_byte_type.exit235.thread [
    i8 16, label %bb.j
    i8 15, label %bb.k
    i8 22, label %unicode_byte_type.exit235.thread396
    i8 24, label %unicode_byte_type.exit235.thread396
    i8 29, label %unicode_byte_type.exit235.thread396
    i8 5, label %unicode_byte_type.exit235.thread396
    i8 6, label %unicode_byte_type.exit235.thread396
    i8 7, label %unicode_byte_type.exit235.thread396
  ]

bb.j:                                             ; preds = %unicode_byte_type.exit235
  %i.ah = getelementptr i8, ptr %1, i64 4
  %i.ai = tail call fastcc i32 @big2_scanDecl(ptr noundef nonnull %0, ptr noundef %i.ah, ptr noundef %.1211, ptr noundef %3)
  br label %.loopexit

bb.k:                                             ; preds = %unicode_byte_type.exit235
  %i.aj = getelementptr i8, ptr %1, i64 4
end_hunk_0
begin_hunk_1_@big2_toUtf8:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.h = ptrtoint ptr %4 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.06579 = phi ptr [ %i.a, %.lr.ph ], [ %i.cm, %bb.m ] ; 13 uses
  %i.j = getelementptr i8, ptr %.06579, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 8 uses
  %i.l = load i8, ptr %.06579, align 1, !tbaa !16 ; 5 uses
  %i.m = zext i8 %i.l to i32
  switch i8 %i.l, label %bb.h [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 6, label %bb.f
    i8 7, label %bb.f
    i8 -40, label %bb.j
    i8 -39, label %bb.j
    i8 -38, label %bb.j
    i8 -37, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = icmp sgt i8 %i.k, -1
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %3, align 8, !tbaa !15     ; 3 uses
  %i.p = icmp eq ptr %i.o, %4
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.o, i64 1
  store ptr %i.q, ptr %3, align 8, !tbaa !15
  store i8 %i.k, ptr %i.o, align 1, !tbaa !16
  br label %bb.m

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.r = load ptr, ptr %3, align 8, !tbaa !15     ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.h, %i.s
  %i.u = icmp slt i64 %i.t, 2
  br i1 %i.u, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i8 @llvm.fshl.i8(i8 %i.l, i8 %i.k, i8 2)
  %i.w = or i8 %i.v, -64
  %i.x = getelementptr i8, ptr %i.r, i64 1
  store ptr %i.x, ptr %3, align 8, !tbaa !15
  store i8 %i.w, ptr %i.r, align 1, !tbaa !16
  %i.y = and i8 %i.k, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %3, align 8, !tbaa !15
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !16
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %3, align 8, !tbaa !15    ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.h, %i.ad
  %i.af = icmp slt i64 %i.ae, 3
  br i1 %i.af, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = lshr i8 %i.l, 4
  %i.ah = or disjoint i8 %i.ag, -32
  %i.ai = getelementptr i8, ptr %i.ac, i64 1
  store ptr %i.ai, ptr %3, align 8, !tbaa !15
  store i8 %i.ah, ptr %i.ac, align 1, !tbaa !16
  %i.aj = shl i8 %i.l, 2
  %i.ak = and i8 %i.aj, 60
  %i.al = lshr i8 %i.k, 6
  %i.am = or disjoint i8 %i.al, %i.ak
  %i.an = or disjoint i8 %i.am, -128
  %i.ao = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  store ptr %i.ap, ptr %3, align 8, !tbaa !15
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !16
  %i.aq = and i8 %i.k, 63
  %i.ar = or disjoint i8 %i.aq, -128
  %i.as = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %3, align 8, !tbaa !15
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !16
  br label %bb.m

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.au = load ptr, ptr %3, align 8, !tbaa !15    ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.h, %i.av
  %i.ax = icmp slt i64 %i.aw, 4
  br i1 %i.ax, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = ptrtoint ptr %.06579 to i64
  %i.az = sub i64 %i.i, %i.ay
  %i.ba = icmp slt i64 %i.az, 4
  br i1 %i.ba, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = shl nuw nsw i32 %i.m, 2
  %i.bc = and i32 %i.bb, 12
  %i.bd = zext i8 %i.k to i32                     ; 2 uses
  %i.be = lshr i32 %i.bd, 6
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = add nuw nsw i32 %i.bf, 1                ; 2 uses
  %i.bh = trunc nuw nsw i32 %i.bg to i8
  %i.bi = lshr i8 %i.bh, 2
  %i.bj = or i8 %i.bi, -16
  %i.bk = getelementptr i8, ptr %i.au, i64 1
  store ptr %i.bk, ptr %3, align 8, !tbaa !15
  store i8 %i.bj, ptr %i.au, align 1, !tbaa !16
  %i.bl = lshr i32 %i.bd, 2
  %i.bm = and i32 %i.bl, 15
  %i.bn = shl nuw nsw i32 %i.bg, 4
  %i.bo = and i32 %i.bn, 48
  %i.bp = or disjoint i32 %i.bo, %i.bm
  %i.bq = trunc nuw nsw i32 %i.bp to i8
  %i.br = or disjoint i8 %i.bq, -128
  %i.bs = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 1
  store ptr %i.bt, ptr %3, align 8, !tbaa !15
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !16
  %i.bu = getelementptr i8, ptr %.06579, i64 2    ; 2 uses
  %i.bv = getelementptr i8, ptr %.06579, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16  ; 2 uses
  %i.bx = shl i8 %i.k, 4
  %i.by = and i8 %i.bx, 48
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.ca = shl i8 %i.bz, 2
  %i.cb = and i8 %i.ca, 12
  %i.cc = lshr i8 %i.bw, 6
  %i.cd = or disjoint i8 %i.by, %i.cc
  %i.ce = or disjoint i8 %i.cd, %i.cb
  %i.cf = or disjoint i8 %i.ce, -128
  %i.cg = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 1
  store ptr %i.ch, ptr %3, align 8, !tbaa !15
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ci = and i8 %i.bw, 63
  %i.cj = or disjoint i8 %i.ci, -128
  %i.ck = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  store ptr %i.cl, ptr %3, align 8, !tbaa !15
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.g, %bb.e
  %.2 = phi ptr [ %i.bu, %bb.l ], [ %.06579, %bb.i ], [ %.06579, %bb.e ], [ %.06579, %bb.g ]
  %i.cm = getelementptr i8, ptr %.2, i64 2        ; 3 uses
  %i.cn = icmp ult ptr %i.cm, %i.f
  br i1 %i.cn, label %bb.b, label %.thread, !llvm.loop !140

.thread:                                          ; preds = %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.a
  %.06579.lcssa.sink = phi ptr [ %i.a, %bb.a ], [ %.06579, %bb.h ], [ %.06579, %bb.d ], [ %.06579, %bb.k ], [ %.06579, %bb.j ], [ %.06579, %bb.f ], [ %i.cm, %bb.m ]
  %.268 = phi i32 [ 0, %bb.a ], [ 2, %bb.h ], [ 2, %bb.d ], [ 1, %bb.k ], [ 2, %bb.j ], [ 2, %bb.f ], [ 0, %bb.m ]
  store ptr %.06579.lcssa.sink, ptr %1, align 8, !tbaa !15
  ret i32 %.268
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @big2_toUtf16(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 4 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = and i64 %i.d, -2                         ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e     ; 3 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.h = ptrtoint ptr %4 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp sgt i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.f, i64 -2       ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = and i8 %i.m, -8
  %i.o = icmp eq i8 %i.n, -40                     ; 2 uses
  %spec.select = select i1 %i.o, ptr %i.l, ptr %i.f
  %spec.select26 = zext i1 %i.o to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi ptr [ %i.f, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select26, %bb.b ]
  %i.p = icmp ult ptr %i.a, %.023
  br i1 %i.p, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.t, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.r = phi ptr [ %i.u, %bb.d ], [ %i.a, %bb.c ] ; 2 uses
  %i.s = icmp ult ptr %i.q, %4
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %5 = load i16, ptr %i.r, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %i.t = getelementptr i8, ptr %i.q, i64 2        ; 2 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !26
  store i16 %6, ptr %i.q, align 2, !tbaa !19
  %i.u = getelementptr i8, ptr %i.r, i64 2        ; 3 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !15
  %i.v = icmp ult ptr %i.u, %.023
  br i1 %i.v, label %.lr.ph, label %.thread, !llvm.loop !141

.critedge:                                        ; preds = %.lr.ph
  %i.w = icmp eq ptr %i.q, %4
  br i1 %i.w, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %.critedge
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %.thread
  %.022 = phi i32 [ %.0, %.thread ], [ 2, %.critedge ]
  ret i32 %.022
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -27, 28) i32 @big2_scanLit(i32 noundef range(i32 12, 14) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 136        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.ah, %bb.k ] ; 2 uses
  %.03457 = phi ptr [ %2, %.lr.ph ], [ %.236, %bb.k ] ; 10 uses
  %i.g = load i8, ptr %.03457, align 1, !tbaa !16
  switch i8 %i.g, label %unicode_byte_type.exit.thread44 [
    i8 0, label %unicode_byte_type.exit
    i8 -40, label %unicode_byte_type.exit.thread47
    i8 -39, label %unicode_byte_type.exit.thread47
    i8 -38, label %unicode_byte_type.exit.thread47
    i8 -37, label %unicode_byte_type.exit.thread47
    i8 -36, label %unicode_byte_type.exit.thread
    i8 -35, label %unicode_byte_type.exit.thread
    i8 -34, label %unicode_byte_type.exit.thread
    i8 -33, label %unicode_byte_type.exit.thread
    i8 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.03457, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %switch.i = icmp ugt i8 %i.i, -3
  br i1 %switch.i, label %unicode_byte_type.exit.thread, label %unicode_byte_type.exit.thread44

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.03457, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
  switch i8 %i.n, label %unicode_byte_type.exit.thread44 [
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %unicode_byte_type.exit.thread47
    i8 0, label %unicode_byte_type.exit.thread
    i8 1, label %unicode_byte_type.exit.thread
    i8 8, label %unicode_byte_type.exit.thread
    i8 12, label %bb.h
    i8 13, label %bb.h
  ]

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.o = getelementptr i8, ptr %.03457, i64 2
  br label %bb.k

bb.e:                                             ; preds = %unicode_byte_type.exit
  %i.p = icmp eq i64 %i.f, 2
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.03457, i64 3
  br label %bb.k

unicode_byte_type.exit.thread47:                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %unicode_byte_type.exit
  %i.r = icmp samesign ult i64 %i.f, 4
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %unicode_byte_type.exit.thread47
  %i.s = getelementptr i8, ptr %.03457, i64 4
  br label %bb.k

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %unicode_byte_type.exit, %unicode_byte_type.exit, %unicode_byte_type.exit
  store ptr %.03457, ptr %4, align 8, !tbaa !15
  br label %.thread

bb.h:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %i.t = zext nneg i8 %i.n to i32
  %i.u = getelementptr i8, ptr %.03457, i64 2     ; 4 uses
  %.not = icmp eq i32 %0, %i.t
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.a, %i.v
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.u, ptr %4, align 8, !tbaa !15
  %i.y = load i8, ptr %i.u, align 1, !tbaa !16
  %cond = icmp eq i8 %i.y, 0
  br i1 %cond, label %unicode_byte_type.exit42, label %.thread

unicode_byte_type.exit42:                         ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.03457, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %switch.tableidx = add i8 %i.ad, -9             ; 2 uses
  %i.ae = icmp ult i8 %switch.tableidx, 22
  br i1 %i.ae, label %switch.lookup, label %.thread

unicode_byte_type.exit.thread44:                  ; preds = %bb.b, %bb.c, %unicode_byte_type.exit
  %i.af = getelementptr i8, ptr %.03457, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.g, %unicode_byte_type.exit.thread44, %bb.h
  %.236 = phi ptr [ %i.u, %bb.h ], [ %i.af, %unicode_byte_type.exit.thread44 ], [ %i.o, %bb.d ], [ %i.q, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  %i.ag = ptrtoint ptr %.236 to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.b, label %.thread

switch.lookup:                                    ; preds = %unicode_byte_type.exit42
  %i.aj = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.big2_scanLit, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.thread

.thread:                                          ; preds = %bb.k, %unicode_byte_type.exit.thread47, %bb.e, %bb.j, %unicode_byte_type.exit42, %switch.lookup, %bb.a, %unicode_byte_type.exit.thread, %bb.i
  %.2 = phi i32 [ -27, %bb.i ], [ %switch.ext, %switch.lookup ], [ 0, %bb.j ], [ -1, %bb.a ], [ 0, %unicode_byte_type.exit.thread ], [ 0, %unicode_byte_type.exit42 ], [ -1, %bb.k ], [ -2, %unicode_byte_type.exit.thread47 ], [ -2, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -2, 34) i32 @big2_scanDecl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !16
  %cond = icmp eq i8 %i.e, 0
  br i1 %cond, label %unicode_byte_type.exit, label %unicode_byte_type.exit.thread

unicode_byte_type.exit:                           ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 136
  %i.g = getelementptr i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  switch i8 %i.k, label %unicode_byte_type.exit.thread [
    i8 27, label %bb.c
    i8 20, label %bb.d
    i8 22, label %bb.e
    i8 24, label %bb.e
  ]

bb.c:                                             ; preds = %unicode_byte_type.exit
  %i.l = getelementptr i8, ptr %1, i64 2
  %i.m = tail call fastcc i32 @big2_scanComment(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef %2, ptr noundef %3)
  br label %.loopexit

bb.d:                                             ; preds = %unicode_byte_type.exit
  %i.n = getelementptr i8, ptr %1, i64 2
  store ptr %i.n, ptr %3, align 8, !tbaa !15
  br label %.loopexit

bb.e:                                             ; preds = %unicode_byte_type.exit, %unicode_byte_type.exit
  %.03758 = getelementptr i8, ptr %1, i64 2       ; 2 uses
  %i.o = ptrtoint ptr %.03758 to i64
  %i.p = sub i64 %i.a, %i.o                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 136        ; 2 uses
  br label %bb.f

unicode_byte_type.exit.thread:                    ; preds = %bb.b, %unicode_byte_type.exit
  store ptr %1, ptr %3, align 8, !tbaa !15
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.s = phi i64 [ %i.p, %.lr.ph ], [ %i.ai, %bb.j ]
end_hunk_1
begin_hunk_2_@parsePseudoAttribute:bb.a
isSpace.exit119:                                  ; preds = %isSpace.exit119.backedge, %isSpace.exit116
  %.2 = phi ptr [ %.1, %isSpace.exit116 ], [ %i.ba, %isSpace.exit119.backedge ]
  %i.ay = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %.2, i64 %i.az    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  store ptr %i.k, ptr %i.l, align 8, !tbaa !15
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.bc = call i32 %i.bb(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef %2, ptr noundef nonnull %i.l, ptr noundef nonnull %i.ax) #13, !inline_history !2 ; 0 uses
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.be = icmp eq ptr %i.bd, %i.k
  %i.bf = load i8, ptr %i.k, align 1
  %i.bg = sext i8 %i.bf to i32
  %.0.i117 = select i1 %i.be, i32 -1, i32 %i.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  switch i32 %.0.i117, label %bb.k [
    i32 32, label %isSpace.exit119.backedge
    i32 13, label %isSpace.exit119.backedge
    i32 10, label %isSpace.exit119.backedge
    i32 9, label %isSpace.exit119.backedge
    i32 61, label %.loopexit
  ]

isSpace.exit119.backedge:                         ; preds = %isSpace.exit119, %isSpace.exit119, %isSpace.exit119, %isSpace.exit119
  br label %isSpace.exit119, !llvm.loop !157

bb.k:                                             ; preds = %isSpace.exit119
  store ptr %i.ba, ptr %6, align 8, !tbaa !15
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  %i.bh = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %.1, i64 %i.bi
  br label %bb.h

.loopexit:                                        ; preds = %isSpace.exit119, %bb.j
  %.3 = phi ptr [ %.1, %bb.j ], [ %i.ba, %isSpace.exit119 ] ; 3 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !15
  %i.bl = icmp eq ptr %.3, %i.bk
  br i1 %i.bl, label %bb.m, label %select.unfold.preheader

bb.m:                                             ; preds = %.loopexit
  store ptr %.3, ptr %6, align 8, !tbaa !15
  br label %bb.r

select.unfold.preheader:                          ; preds = %.loopexit
  %i.bm = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr i8, ptr %.3, i64 %i.bn    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.bo, ptr %i.g, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  store ptr %i.h, ptr %i.i, align 8, !tbaa !15
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.br = call i32 %i.bp(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef %2, ptr noundef nonnull %i.i, ptr noundef nonnull %i.bq) #13, !inline_history !2 ; 0 uses
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.bt = icmp eq ptr %i.bs, %i.h
  %i.bu = load i8, ptr %i.h, align 1
  %i.bv = sext i8 %i.bu to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %spec.select = select i1 %i.bt, i32 -1, i32 %i.bv
  br label %select.unfold

select.unfold:                                    ; preds = %isSpace.exit122, %select.unfold.preheader
  %.4 = phi ptr [ %i.bo, %select.unfold.preheader ], [ %i.bz, %isSpace.exit122 ] ; 3 uses
  %.0 = phi i32 [ %spec.select, %select.unfold.preheader ], [ %.0.be, %isSpace.exit122 ] ; 3 uses
  switch i32 %.0, label %bb.n [
    i32 32, label %isSpace.exit122
    i32 13, label %isSpace.exit122
    i32 10, label %isSpace.exit122
    i32 9, label %isSpace.exit122
    i32 39, label %bb.o
    i32 34, label %bb.o
  ]

isSpace.exit122:                                  ; preds = %select.unfold, %select.unfold, %select.unfold, %select.unfold
  %i.bx = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %.4, i64 %i.by    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store ptr %i.e, ptr %i.f, align 8, !tbaa !15
  %i.ca = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.cb = call i32 %i.ca(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bw) #13, !inline_history !2 ; 0 uses
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.cd = icmp eq ptr %i.cc, %i.e
  %i.ce = load i8, ptr %i.e, align 1
  %i.cf = sext i8 %i.ce to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.0.be = select i1 %i.cd, i32 -1, i32 %i.cf
  br label %select.unfold

bb.n:                                             ; preds = %select.unfold
  store ptr %.4, ptr %6, align 8, !tbaa !15
  br label %bb.r

bb.o:                                             ; preds = %select.unfold, %select.unfold
  %i.cg = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %.4, i64 %i.ch    ; 4 uses
  store ptr %i.ci, ptr %5, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr %i.b, ptr %i.c, align 8, !tbaa !15
  %i.ck = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.cl = call i32 %i.ck(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cj) #13, !inline_history !2 ; 0 uses
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.cn = icmp eq ptr %i.cm, %i.b
  %i.co = load i8, ptr %i.b, align 1
  %i.cp = sext i8 %i.co to i32
  %.0.i124146 = select i1 %i.cn, i32 -1, i32 %i.cp
  %.0.i124.fr147 = freeze i32 %.0.i124146         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cq = icmp eq i32 %.0.i124.fr147, %.0
  br i1 %i.cq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.q
  %.0.i124.fr149 = phi i32 [ %.0.i124.fr, %bb.q ], [ %.0.i124.fr147, %bb.o ] ; 3 uses
  %.5148 = phi ptr [ %i.cw, %bb.q ], [ %i.ci, %bb.o ] ; 2 uses
  %i.cr = and i32 %.0.i124.fr149, -33
  %i.cs = add i32 %i.cr, -91
  %or.cond = icmp ult i32 %i.cs, -26
  %i.ct = add i32 %.0.i124.fr149, -58
  %or.cond7 = icmp ult i32 %i.ct, -10
  %or.cond137 = and i1 %or.cond7, %or.cond
  br i1 %or.cond137, label %switch.early.test, label %bb.q

switch.early.test:                                ; preds = %.lr.ph
  switch i32 %.0.i124.fr149, label %bb.p [
    i32 95, label %bb.q
    i32 46, label %bb.q
    i32 45, label %bb.q
  ]

bb.p:                                             ; preds = %switch.early.test
  store ptr %.5148, ptr %6, align 8, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %.lr.ph
  %i.cu = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %.5148, i64 %i.cv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr %i.b, ptr %i.c, align 8, !tbaa !15
  %i.cx = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.cy = call i32 %i.cx(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cj) #13, !inline_history !2 ; 0 uses
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.da = icmp eq ptr %i.cz, %i.b
  %i.db = load i8, ptr %i.b, align 1
  %i.dc = sext i8 %i.db to i32
  %.0.i124 = select i1 %i.da, i32 -1, i32 %i.dc
  %.0.i124.fr = freeze i32 %.0.i124               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dd = icmp eq i32 %.0.i124.fr, %.0
  br i1 %i.dd, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %bb.o
  %.5.lcssa = phi ptr [ %i.ci, %bb.o ], [ %i.cw, %bb.q ]
  %i.de = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %.5.lcssa, i64 %i.df
  store ptr %i.dg, ptr %6, align 8, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p, %bb.n, %bb.m, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.098 = phi i32 [ 1, %bb.b ], [ 1, %bb.f ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.n ], [ 1, %._crit_edge ], [ 0, %bb.p ], [ 0, %bb.k ], [ 0, %bb.d ]
  ret i32 %.098
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !17}
!1 = distinct !{!1, !17}
!2 = distinct !{null}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"short", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"encoding", !10, i64 0, !10, i64 32, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !11, i64 128, !10, i64 132, !10, i64 133}
!21 = !{!"normal_encoding", !20, i64 0, !10, i64 136, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456}
!22 = !{!"unknown_encoding", !21, i64 0, !13, i64 464, !13, i64 472, !10, i64 480, !10, i64 992}
!23 = !{!22, !13, i64 472}
!24 = !{!22, !13, i64 464}
!25 = !{!"p1 short", !13, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"any p2 pointer", !13, i64 0}
!28 = !{!"p2 _ZTS8encoding", !27, i64 0}
!29 = !{!"", !20, i64 0, !28, i64 136}
!30 = !{!29, !10, i64 133}
!31 = !{!13, !13, i64 0}
!32 = !{!29, !13, i64 96}
!33 = !{!29, !28, i64 136}
!34 = !{!"p1 _ZTS8encoding", !13, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"long", !10, i64 0}
!37 = !{!"position", !36, i64 0, !36, i64 8}
!38 = !{!37, !36, i64 8}
!39 = !{!37, !36, i64 0}
!40 = !{!20, !11, i64 128}
!41 = !{!20, !13, i64 112}
!42 = !{!21, !13, i64 440}
!43 = !{!21, !13, i64 416}
!44 = !{!21, !13, i64 392}
!45 = !{!21, !13, i64 448}
!46 = !{!21, !13, i64 424}
!47 = !{!21, !13, i64 400}
!48 = !{!21, !13, i64 456}
!49 = !{!21, !13, i64 432}
!50 = !{!21, !13, i64 408}
!51 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !10, i64 24}
!52 = !{!51, !14, i64 0}
!53 = !{!51, !10, i64 24}
!54 = !{!51, !14, i64 8}
!55 = !{!51, !14, i64 16}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = !{!22, !13, i64 392}
!59 = !{!22, !13, i64 400}
!60 = !{!22, !13, i64 408}
!61 = !{!22, !13, i64 416}
!62 = !{!22, !13, i64 424}
!63 = !{!22, !13, i64 432}
!64 = !{!22, !13, i64 440}
!65 = !{!22, !13, i64 448}
!66 = !{!22, !13, i64 456}
!67 = !{!22, !13, i64 112}
!68 = !{!22, !13, i64 120}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = !{!20, !13, i64 48}
!72 = !{ptr @findEncoding, ptr @findEncodingNS}
!73 = distinct !{!73, !17}
!74 = distinct !{null}
!75 = distinct !{null, null}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17}
!110 = distinct !{!110, !17}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !17}
!114 = distinct !{!114, !17}
!115 = distinct !{!115, !17}
!116 = distinct !{!116, !17}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !17}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, !17}
!123 = distinct !{!123, !17}
!124 = distinct !{!124, !17}
!125 = distinct !{!125, !17}
!126 = distinct !{!126, !17}
!127 = distinct !{!127, !17}
!128 = distinct !{!128, !17}
!129 = distinct !{!129, !17}
!130 = distinct !{!130, !17}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, !17}
!133 = distinct !{!133, !17}
!134 = distinct !{!134, !17}
!135 = distinct !{!135, !17}
!136 = distinct !{!136, !17}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = distinct !{!146, !17}
!147 = distinct !{!147, !17}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = distinct !{!151, !17}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17}
!154 = distinct !{!154, !17}
!155 = distinct !{!155, !17}
!156 = distinct !{!156, !17}
!157 = distinct !{!157, !17}
end_hunk_2
