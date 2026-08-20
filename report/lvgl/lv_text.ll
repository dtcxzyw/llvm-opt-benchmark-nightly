inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lv_text_utf8_next:bb.a
  %i.g = sext i8 %i.f to i32                      ; 8 uses
  %i.h = icmp eq i8 %i.f, 0
  br i1 %i.h, label %.cont98, label %bb.c

bb.c:                                             ; preds = %.cont101
  %i.i = icmp sgt i8 %i.f, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %.cont98, label %.cont98.sink.split

bb.e:                                             ; preds = %bb.c
  %i.j = and i32 %i.g, 224
  %i.k = icmp eq i32 %i.j, 192
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = add i32 %i.c, 1                          ; 2 uses
  br i1 %i.a, label %.cont95, label %.else97

.else97:                                          ; preds = %bb.f
  store i32 %i.l, ptr %1, align 4, !tbaa !9
  br label %.cont95

.cont95:                                          ; preds = %bb.f, %.else97
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = and i32 %i.p, 192
  %.not70 = icmp eq i32 %i.q, 128
  br i1 %.not70, label %bb.g, label %.cont98

bb.g:                                             ; preds = %.cont95
  %i.r = shl nsw i32 %i.g, 6
  %i.s = and i32 %i.r, 1984
  %i.t = and i32 %i.p, 63
  %i.u = or disjoint i32 %i.t, %i.s               ; 2 uses
  br i1 %i.a, label %.cont98, label %.cont98.sink.split

bb.h:                                             ; preds = %bb.e
  %i.v = and i32 %i.g, 240
  %i.w = icmp eq i32 %i.v, 224
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = add i32 %i.c, 1                          ; 3 uses
  br i1 %i.a, label %.cont89, label %.cont89.thread

.cont89:                                          ; preds = %bb.i
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = sext i8 %i.aa to i32                    ; 2 uses
  %i.ac = and i32 %i.ab, 192
  %.not68 = icmp eq i32 %i.ac, 128
  br i1 %.not68, label %.then87, label %.cont98

.cont89.thread:                                   ; preds = %bb.i
  store i32 %i.x, ptr %1, align 4, !tbaa !9
  %i.ad = zext i32 %i.x to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = and i32 %i.ag, 192
  %.not68103 = icmp eq i32 %i.ah, 128
  br i1 %.not68103, label %.else88, label %.cont98

.then87:                                          ; preds = %.cont89
  %i.ai = add i32 %i.c, 2
  br label %.cont86

.else88:                                          ; preds = %.cont89.thread
  %i.aj = add i32 %i.c, 2                         ; 2 uses
  store i32 %i.aj, ptr %1, align 4, !tbaa !9
  br label %.cont86

.cont86:                                          ; preds = %.else88, %.then87
  %i.ak = phi i32 [ %i.aj, %.else88 ], [ %i.ai, %.then87 ]
  %i.al = phi i32 [ %i.ag, %.else88 ], [ %i.ab, %.then87 ]
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %.not69 = icmp eq i32 %i.aq, 128
  br i1 %.not69, label %bb.j, label %.cont98

bb.j:                                             ; preds = %.cont86
  %i.ar = shl nsw i32 %i.g, 12
  %i.as = and i32 %i.ar, 61440
  %i.at = shl nsw i32 %i.al, 6
  %i.au = and i32 %i.at, 4032
  %i.av = or disjoint i32 %i.au, %i.as
  %i.aw = and i32 %i.ap, 63
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  br i1 %i.a, label %.cont98, label %.cont98.sink.split

bb.k:                                             ; preds = %bb.h
  %i.ay = and i32 %i.g, 248
  %i.az = icmp eq i32 %i.ay, 240
  br i1 %i.az, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ba = add i32 %i.c, 1                         ; 3 uses
  br i1 %i.a, label %.cont80, label %.cont80.thread

.cont80:                                          ; preds = %bb.l
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = sext i8 %i.bd to i32                    ; 2 uses
  %i.bf = and i32 %i.be, 192
  %.not = icmp eq i32 %i.bf, 128
  br i1 %.not, label %.cont77, label %.cont98

.cont80.thread:                                   ; preds = %bb.l
  store i32 %i.ba, ptr %1, align 4, !tbaa !9
  %i.bg = zext i32 %i.ba to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = sext i8 %i.bi to i32                    ; 2 uses
  %i.bk = and i32 %i.bj, 192
  %.not104 = icmp eq i32 %i.bk, 128
  br i1 %.not104, label %.cont77.thread, label %.cont98

.cont77:                                          ; preds = %.cont80
  %i.bl = add i32 %i.c, 2
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = sext i8 %i.bo to i32                    ; 2 uses
  %i.bq = and i32 %i.bp, 192
  %.not66 = icmp eq i32 %i.bq, 128
  br i1 %.not66, label %bb.m, label %.cont98

.cont77.thread:                                   ; preds = %.cont80.thread
  %i.br = add i32 %i.c, 2                         ; 2 uses
  store i32 %i.br, ptr %1, align 4, !tbaa !9
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8
  %i.bv = sext i8 %i.bu to i32                    ; 2 uses
  %i.bw = and i32 %i.bv, 192
  %.not66106 = icmp eq i32 %i.bw, 128
  br i1 %.not66106, label %.else76, label %.cont98

bb.m:                                             ; preds = %.cont77
  %i.bx = add i32 %i.c, 3
  br label %.cont74

.else76:                                          ; preds = %.cont77.thread
  %i.by = add i32 %i.c, 3                         ; 2 uses
  store i32 %i.by, ptr %1, align 4, !tbaa !9
  br label %.cont74

.cont74:                                          ; preds = %bb.m, %.else76
  %i.bz = phi i32 [ %i.by, %.else76 ], [ %i.bx, %bb.m ]
  %i.ca = phi i32 [ %i.bj, %.else76 ], [ %i.be, %bb.m ]
  %i.cb = phi i32 [ %i.bv, %.else76 ], [ %i.bp, %bb.m ]
  %i.cc = zext i32 %i.bz to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !8
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = and i32 %i.cf, 192
  %.not67 = icmp eq i32 %i.cg, 128
  br i1 %.not67, label %bb.n, label %.cont98

bb.n:                                             ; preds = %.cont74
  %i.ch = shl nsw i32 %i.g, 18
  %i.ci = and i32 %i.ch, 1835008
  %i.cj = shl nsw i32 %i.ca, 12
  %i.ck = and i32 %i.cj, 258048
  %i.cl = or disjoint i32 %i.ck, %i.ci
  %i.cm = shl nsw i32 %i.cb, 6
  %i.cn = and i32 %i.cm, 4032
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = and i32 %i.cf, 63
  %i.cq = or disjoint i32 %i.co, %i.cp            ; 2 uses
  br i1 %i.a, label %.cont98, label %.cont98.sink.split

bb.o:                                             ; preds = %bb.k
  br i1 %i.a, label %.cont98, label %.cont98.sink.split

.cont98.sink.split:                               ; preds = %bb.o, %bb.n, %bb.j, %bb.g, %bb.d
  %.sink110 = phi i32 [ 4, %bb.n ], [ 3, %bb.j ], [ 2, %bb.g ], [ 1, %bb.d ], [ 1, %bb.o ]
  %.063.ph = phi i32 [ %i.cq, %bb.n ], [ %i.ax, %bb.j ], [ %i.u, %bb.g ], [ %i.g, %bb.d ], [ 0, %bb.o ]
  %i.cr = add i32 %i.c, %.sink110
  store i32 %i.cr, ptr %1, align 4, !tbaa !9
  br label %.cont98

.cont98:                                          ; preds = %.cont98.sink.split, %bb.o, %bb.n, %.cont77.thread, %.cont80.thread, %bb.j, %.cont89.thread, %bb.g, %bb.d, %.cont74, %.cont77, %.cont80, %.cont86, %.cont89, %.cont95, %bb.a, %.cont101
  %.063 = phi i32 [ 0, %.cont77 ], [ 0, %.cont74 ], [ 0, %bb.a ], [ 0, %.cont95 ], [ 0, %.cont89 ], [ 0, %.cont86 ], [ 0, %.cont80 ], [ 0, %.cont101 ], [ 0, %bb.o ], [ 0, %.cont80.thread ], [ 0, %.cont89.thread ], [ 0, %.cont77.thread ], [ %i.g, %bb.d ], [ %i.u, %bb.g ], [ %i.cq, %bb.n ], [ %i.ax, %bb.j ], [ %.063.ph, %.cont98.sink.split ]
  ret i32 %.063
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2097152) i32 @lv_text_utf8_prev(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !9      ; 2 uses
  %i.c = add i32 %i.b, -1                         ; 4 uses
  store i32 %i.c, ptr %1, align 4, !tbaa !9
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = icmp sgt i8 %i.f, -1
  %i.i = and i32 %i.g, 224
  %i.j = icmp eq i32 %i.i, 192
  %or.cond = or i1 %i.h, %i.j
  %i.k = and i32 %i.g, 240
  %i.l = icmp eq i32 %i.k, 224
  %or.cond17 = or i1 %i.l, %or.cond
  %i.m = and i32 %i.g, 248
  %i.n = icmp eq i32 %i.m, 240
  %or.cond19 = or i1 %i.n, %or.cond17
  br i1 %or.cond19, label %.critedge, label %lv_text_utf8_size.exit

lv_text_utf8_size.exit:                           ; preds = %bb.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %lv_text_utf8_size.exit
  %i.o = add i32 %i.b, -2                         ; 2 uses
  store i32 %i.o, ptr %1, align 4, !tbaa !9
  %indvars.iv.next = add nsw i64 %i.d, -1         ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = icmp sgt i8 %i.q, -1
  %i.t = and i32 %i.r, 224
  %i.u = icmp eq i32 %i.t, 192
  %or.cond.1 = or i1 %i.s, %i.u
  %i.v = and i32 %i.r, 240
  %i.w = icmp eq i32 %i.v, 224
  %or.cond17.1 = or i1 %i.w, %or.cond.1
  %i.x = and i32 %i.r, 248
  %i.y = icmp eq i32 %i.x, 240
  %or.cond19.1 = or i1 %i.y, %or.cond17.1
  br i1 %or.cond19.1, label %.critedge, label %lv_text_utf8_size.exit.1

lv_text_utf8_size.exit.1:                         ; preds = %bb.b
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %lv_text_utf8_size.exit.1
  %2 = trunc nuw i64 %indvars.iv.next to i32
  %i.z = add i32 %2, -1                           ; 2 uses
  store i32 %i.z, ptr %1, align 4, !tbaa !9
  %indvars.iv.next.1 = add nsw i64 %i.d, -2       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8   ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 3 uses
  %i.ad = icmp sgt i8 %i.ab, -1
  %i.ae = and i32 %i.ac, 224
  %i.af = icmp eq i32 %i.ae, 192
  %or.cond.2 = or i1 %i.ad, %i.af
  %i.ag = and i32 %i.ac, 240
  %i.ah = icmp eq i32 %i.ag, 224
  %or.cond17.2 = or i1 %i.ah, %or.cond.2
  %i.ai = and i32 %i.ac, 248
  %i.aj = icmp eq i32 %i.ai, 240
  %or.cond19.2 = or i1 %i.aj, %or.cond17.2
  br i1 %or.cond19.2, label %.critedge, label %lv_text_utf8_size.exit.2

lv_text_utf8_size.exit.2:                         ; preds = %bb.c
  %.not.2 = icmp eq i64 %indvars.iv.next.1, 0
  br i1 %.not.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %lv_text_utf8_size.exit.2
  %3 = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.ak = add i32 %3, -1                          ; 2 uses
  store i32 %i.ak, ptr %1, align 4, !tbaa !9
  %indvars.iv.next.2 = add nsw i64 %i.d, -3       ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8   ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = icmp sgt i8 %i.am, -1
  %i.ap = and i32 %i.an, 224
  %i.aq = icmp eq i32 %i.ap, 192
  %or.cond.3 = or i1 %i.ao, %i.aq
  %i.ar = and i32 %i.an, 240
  %i.as = icmp eq i32 %i.ar, 224
  %or.cond17.3 = or i1 %i.as, %or.cond.3
  %i.at = and i32 %i.an, 248
  %i.au = icmp eq i32 %i.at, 240
  %or.cond19.3 = or i1 %i.au, %or.cond17.3
  br i1 %or.cond19.3, label %.critedge, label %lv_text_utf8_size.exit.3

lv_text_utf8_size.exit.3:                         ; preds = %bb.d
  %.not.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not.3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %lv_text_utf8_size.exit.3
  %4 = trunc nuw i64 %indvars.iv.next.2 to i32
  %i.av = add i32 %4, -1
  store i32 %i.av, ptr %1, align 4, !tbaa !9
  br label %.loopexit

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.aw = phi i32 [ %i.ak, %bb.d ], [ %i.z, %bb.c ], [ %i.o, %bb.b ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !9
  %i.ax = call i32 @lv_text_utf8_next(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.loopexit:                                        ; preds = %lv_text_utf8_size.exit, %lv_text_utf8_size.exit.1, %lv_text_utf8_size.exit.2, %lv_text_utf8_size.exit.3, %bb.e, %.critedge
  %.0 = phi i32 [ %i.ax, %.critedge ], [ 0, %bb.e ], [ 0, %lv_text_utf8_size.exit.3 ], [ 0, %lv_text_utf8_size.exit.2 ], [ 0, %lv_text_utf8_size.exit.1 ], [ 0, %lv_text_utf8_size.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @lv_text_utf8_get_byte_id(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %.not16 = icmp eq i32 %1, 0
  br i1 %.not16, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %lv_text_utf8_size.exit
  %.013 = phi i32 [ %i.n, %lv_text_utf8_size.exit ], [ 0, %bb.a ]
  %.01012 = phi i32 [ %i.m, %lv_text_utf8_size.exit ], [ 0, %bb.a ] ; 3 uses
  %i.a = zext i32 %.01012 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8     ; 3 uses
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = zext i8 %i.c to i32                      ; 3 uses
  %i.e = icmp sgt i8 %i.c, -1
  br i1 %i.e, label %lv_text_utf8_size.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.d, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %lv_text_utf8_size.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.d, 240
  %i.i = icmp eq i32 %i.h, 224
  br i1 %i.i, label %lv_text_utf8_size.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.d, 248
  %i.k = icmp eq i32 %i.j, 240
  %i.l = select i1 %i.k, i32 4, i32 1
  br label %lv_text_utf8_size.exit

lv_text_utf8_size.exit:                           ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 3, %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ], [ %i.l, %bb.e ]
  %i.m = add i32 %.0.i, %.01012                   ; 2 uses
  %i.n = add nuw i32 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph, %lv_text_utf8_size.exit, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %lv_text_utf8_size.exit ], [ %.01012, %.lr.ph ]
  ret i32 %.010.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @lv_text_utf8_get_char_id(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.c, %.lr.ph ], [ 0, %bb.a ]
  %i.b = call i32 @lv_text_utf8_next(ptr noundef %0, ptr noundef nonnull %i.a) ; 0 uses
  %i.c = add i32 %.03, 1                          ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !9
  %i.e = icmp ult i32 %i.d, %1
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @lv_text_utf8_get_length(ptr nofree noundef readonly captures(address_is_null) %0) #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.b = load i8, ptr %0, align 1, !tbaa !8
  %.not3 = icmp eq i8 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %i.c = call i32 @lv_text_utf8_next(ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = add i32 %.04, 1                          ; 2 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !9
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define void @lv_text_attributes_init(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef 16) #11
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_text_get_size(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.lv_text_attributes_t, align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @lv_memset(ptr noundef nonnull %7, i8 noundef zeroext 0, i64 noundef 16) #11
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %4, ptr %i.a, align 4, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %5, ptr %i.b, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %6, ptr %i.c, align 4, !tbaa !17
  store i32 %3, ptr %7, align 4, !tbaa !18
  call void @lv_text_get_size_attributes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nounwind uwtable
define void @lv_text_get_size_attributes(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not54 = icmp eq ptr %2, null
  br i1 %.not54, label %.preheader59, label %bb.c

.preheader59:                                     ; preds = %bb.b, %.preheader59
  br label %.preheader59

bb.c:                                             ; preds = %bb.b
  %.not55 = icmp eq ptr %1, null
  br i1 %.not55, label %.preheader60, label %bb.d

.preheader60:                                     ; preds = %bb.c, %.preheader60
  br label %.preheader60

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i32 @lv_font_get_line_height(ptr noundef nonnull %2) #11 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = and i32 %i.d, 1
  %.not56 = icmp eq i32 %i.e, 0
  br i1 %.not56, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 536870911, ptr %i.f, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = load i8, ptr %1, align 1, !tbaa !8
  %.not5762 = icmp eq i8 %i.g, 0
  br i1 %.not5762, label %thread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.mask = and i32 %i.b, 65535                    ; 2 uses
  %i.h = zext nneg i32 %.mask to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %i.j = phi ptr [ %1, %.lr.ph ], [ %i.y, %bb.h ] ; 2 uses
  %.063 = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.h ]
  %i.k = tail call i32 @lv_text_get_next_line(ptr noundef nonnull %i.j, i32 noundef -1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %3) ; 2 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.m, %i.h
  %i.o = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
end_hunk_0
begin_hunk_1_@lv_text_get_next_line:bb.a
  %i.bq = icmp eq i32 %.0.ph180.i, -1
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %lv_text_is_cmd.exit.i
  %i.br = sub nsw i32 %spec.select87.i, %i.aa
  %i.bs = icmp sle i32 %i.br, %spec.select.i      ; 2 uses
  %brmerge.i = or i1 %.not85.i, %i.bs
  %.mux.i = select i1 %i.bs, i32 -1, i32 %.us-phi165.i
  br i1 %brmerge.i, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p, %lv_text_is_cmd.exit.i
  %.1.i = phi i32 [ %.0.ph180.i, %lv_text_is_cmd.exit.i ], [ %.mux.i, %bb.p ] ; 7 uses
  switch i32 %.us-phi166.i, label %lv_text_is_break_char.exit.i [
    i32 13, label %lv_text_is_break_char.exit.thread.i
    i32 10, label %lv_text_is_break_char.exit.thread.i
    i32 32, label %lv_text_is_break_char.exit.thread.i
    i32 44, label %lv_text_is_break_char.exit.thread.i
    i32 46, label %lv_text_is_break_char.exit.thread.i
    i32 59, label %lv_text_is_break_char.exit.thread.i
    i32 58, label %lv_text_is_break_char.exit.thread.i
    i32 45, label %lv_text_is_break_char.exit.thread.i
    i32 95, label %lv_text_is_break_char.exit.thread.i
    i32 41, label %lv_text_is_break_char.exit.thread.i
    i32 93, label %lv_text_is_break_char.exit.thread.i
    i32 125, label %lv_text_is_break_char.exit.thread.i
  ]

lv_text_is_break_char.exit.thread.i:              ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.bt = icmp eq i32 %.us-phi165.i, 0
  %i.bu = icmp eq i32 %.1.i, -1
  %or.cond3.i = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond3.i, label %.thread.i, label %.loopexit.i

lv_text_is_break_char.exit.i:                     ; preds = %bb.q
  %i.bv = icmp eq i32 %.us-phi163.i, 0
  br i1 %i.bv, label %lv_text_is_a_word.exit.thread107.i, label %bb.r

bb.r:                                             ; preds = %lv_text_is_break_char.exit.i
  %i.bw = insertelement <5 x i32> poison, i32 %.us-phi163.i, i64 0 ; 2 uses
  %i.bx = shufflevector <5 x i32> %i.bw, <5 x i32> poison, <5 x i32> zeroinitializer
  %i.by = add nsw <5 x i32> %i.bx, <i32 -19968, i32 -65281, i32 -12736, i32 -12352, i32 -65072>
  %i.bz = shufflevector <5 x i32> %i.bw, <5 x i32> poison, <3 x i32> zeroinitializer
  %i.ca = and <3 x i32> %i.bz, <i32 2097088, i32 2097024, i32 2097136>
  %i.cb = icmp ult <5 x i32> %i.by, <i32 20992, i32 94, i32 48, i32 192, i32 32>
  %i.cc = icmp eq <3 x i32> %i.ca, <i32 12288, i32 11904, i32 65040>
  %i.cd = shufflevector <5 x i1> %i.cb, <5 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <3 x i1> %i.cc, <3 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cf = shufflevector <8 x i1> %i.cd, <8 x i1> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 10>
  %i.cg = freeze <8 x i1> %i.cf
  %i.ch = bitcast <8 x i1> %i.cg to i8
  %.not311 = icmp eq i8 %i.ch, 0
  br i1 %.not311, label %lv_text_is_a_word.exit.thread107.i, label %.loopexit.i

lv_text_is_a_word.exit.thread107.i:               ; preds = %bb.r, %lv_text_is_break_char.exit.i
  %i.ci = icmp eq i32 %.us-phi166.i, 0
  br i1 %i.ci, label %lv_text_is_a_word.exit103.thread110.i, label %bb.s

bb.s:                                             ; preds = %lv_text_is_a_word.exit.thread107.i
  %i.cj = insertelement <5 x i32> poison, i32 %.us-phi166.i, i64 0 ; 2 uses
  %i.ck = shufflevector <5 x i32> %i.cj, <5 x i32> poison, <5 x i32> zeroinitializer
  %i.cl = add nsw <5 x i32> %i.ck, <i32 -19968, i32 -65281, i32 -12736, i32 -12352, i32 -65072>
  %i.cm = shufflevector <5 x i32> %i.cj, <5 x i32> poison, <3 x i32> zeroinitializer
  %i.cn = and <3 x i32> %i.cm, <i32 2097088, i32 2097024, i32 2097136>
  %i.co = icmp ult <5 x i32> %i.cl, <i32 20992, i32 94, i32 48, i32 192, i32 32>
  %i.cp = icmp eq <3 x i32> %i.cn, <i32 12288, i32 11904, i32 65040>
  %i.cq = shufflevector <5 x i1> %i.co, <5 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison>
  %i.cr = shufflevector <3 x i1> %i.cp, <3 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cs = shufflevector <8 x i1> %i.cq, <8 x i1> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 10>
  %i.ct = freeze <8 x i1> %i.cs
  %i.cu = bitcast <8 x i1> %i.ct to i8
  %.not312 = icmp eq i8 %i.cu, 0
  br i1 %.not312, label %lv_text_is_a_word.exit103.thread110.i, label %.loopexit.i

lv_text_is_a_word.exit103.thread110.i:            ; preds = %bb.s, %lv_text_is_a_word.exit.thread107.i
  %i.cv = icmp eq i32 %.1.i, -1
  %spec.select115 = select i1 %i.cv, i32 %spec.select87.i, i32 %.0 ; 2 uses
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !9   ; 2 uses
  %i.cx = zext i32 %.us-phi.i to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %.not82148.i = icmp eq i8 %i.cz, 0
  br i1 %.not82148.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !24

.loopexit.i:                                      ; preds = %bb.r, %bb.s, %lv_text_is_a_word.exit103.thread110.i, %bb.p, %.thread17.i.jt0.i, %.thread17.i.jt2.i, %.thread17.i.jt1.i, %lv_text_is_break_char.exit.thread.i
  %.5103 = phi i32 [ %.4102, %lv_text_is_break_char.exit.thread.i ], [ %.8, %.thread17.i.jt1.i ], [ %.4102, %lv_text_is_a_word.exit103.thread110.i ], [ %.4102, %bb.s ], [ %.4102, %bb.r ], [ %.4102, %bb.p ], [ 0, %.thread17.i.jt0.i ], [ 2, %.thread17.i.jt2.i ] ; 2 uses
  %.195 = phi i32 [ %.0, %lv_text_is_break_char.exit.thread.i ], [ %.0, %.thread17.i.jt1.i ], [ %spec.select115, %lv_text_is_a_word.exit103.thread110.i ], [ %spec.select87.i, %bb.s ], [ %spec.select87.i, %bb.r ], [ %.0, %bb.p ], [ %.0, %.thread17.i.jt0.i ], [ %.0, %.thread17.i.jt2.i ] ; 2 uses
  %i.da = phi i32 [ %.us-phi.i, %lv_text_is_break_char.exit.thread.i ], [ %i.bi, %.thread17.i.jt1.i ], [ %i.cw, %lv_text_is_a_word.exit103.thread110.i ], [ %.us-phi.i, %bb.s ], [ %.us-phi.i, %bb.r ], [ %.us-phi.i, %bb.p ], [ %i.ax, %.thread17.i.jt0.i ], [ %i.bb, %.thread17.i.jt2.i ]
  %.070127.i = phi i32 [ %.us-phi166.i, %lv_text_is_break_char.exit.thread.i ], [ %i.bg, %.thread17.i.jt1.i ], [ %.us-phi163.i, %lv_text_is_a_word.exit103.thread110.i ], [ %.us-phi166.i, %bb.s ], [ %.us-phi166.i, %bb.r ], [ %.us-phi166.i, %bb.p ], [ %i.av, %.thread17.i.jt0.i ], [ %.ph241.i, %.thread17.i.jt2.i ]
  %.172.i = phi i32 [ %.us-phi165.i, %lv_text_is_break_char.exit.thread.i ], [ %i.bh, %.thread17.i.jt1.i ], [ %.us-phi.i, %lv_text_is_a_word.exit103.thread110.i ], [ %.us-phi.i, %bb.s ], [ %.us-phi.i, %bb.r ], [ %.us-phi165.i, %bb.p ], [ %i.aw, %.thread17.i.jt0.i ], [ %.ph242.i, %.thread17.i.jt2.i ]
  %.169.i = phi i32 [ %.us-phi163.i, %lv_text_is_break_char.exit.thread.i ], [ %i.bg, %.thread17.i.jt1.i ], [ %.us-phi163.i, %lv_text_is_a_word.exit103.thread110.i ], [ %.us-phi163.i, %bb.s ], [ %.us-phi163.i, %bb.r ], [ %.us-phi163.i, %bb.p ], [ %i.av, %.thread17.i.jt0.i ], [ %.ph241.i, %.thread17.i.jt2.i ]
  %.165.i = phi i32 [ %.us-phi167.i, %lv_text_is_break_char.exit.thread.i ], [ %i.bf, %.thread17.i.jt1.i ], [ %.us-phi164.i, %lv_text_is_a_word.exit103.thread110.i ], [ %.us-phi164.i, %bb.s ], [ %.us-phi164.i, %bb.r ], [ %.us-phi164.i, %bb.p ], [ %i.au, %.thread17.i.jt0.i ], [ %.ph.i, %.thread17.i.jt2.i ]
  %.2.i = phi i32 [ %.1.i, %lv_text_is_break_char.exit.thread.i ], [ %.0.ph180.i, %.thread17.i.jt1.i ], [ %.1.i, %lv_text_is_a_word.exit103.thread110.i ], [ %.1.i, %bb.s ], [ %.1.i, %bb.r ], [ %.us-phi165.i, %bb.p ], [ %.0.ph180.i, %.thread17.i.jt0.i ], [ %.0.ph180.i, %.thread17.i.jt2.i ] ; 2 uses
  %i.db = icmp eq i32 %.2.i, -1
  br i1 %i.db, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %lv_text_is_break_char.exit.thread.i, %.loopexit.i
  %.7 = phi i32 [ %.5103, %.loopexit.i ], [ %.4102, %lv_text_is_break_char.exit.thread.i ] ; 2 uses
  %.397 = phi i32 [ %.195, %.loopexit.i ], [ %spec.select87.i, %lv_text_is_break_char.exit.thread.i ] ; 2 uses
  %i.dc = phi i32 [ %i.da, %.loopexit.i ], [ %.us-phi.i, %lv_text_is_break_char.exit.thread.i ]
  %.070126.i = phi i32 [ %.070127.i, %.loopexit.i ], [ %.us-phi166.i, %lv_text_is_break_char.exit.thread.i ]
  %.165118.i = phi i32 [ %.165.i, %.loopexit.i ], [ %.us-phi167.i, %lv_text_is_break_char.exit.thread.i ]
  %.169117.i = phi i32 [ %.169.i, %.loopexit.i ], [ %.us-phi163.i, %lv_text_is_break_char.exit.thread.i ]
  %.172116.i = phi i32 [ %.172.i, %.loopexit.i ], [ 0, %lv_text_is_break_char.exit.thread.i ]
  %i.dd = icmp eq i32 %.165118.i, 0
  br i1 %i.dd, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread.i
  %i.de = icmp eq i32 %.070126.i, 13
  %i.df = icmp eq i32 %.169117.i, 10
  %or.cond9.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond9.i, label %bb.u, label %lv_text_get_next_word.exit

bb.u:                                             ; preds = %bb.t, %.thread.i
  br label %lv_text_get_next_word.exit

bb.v:                                             ; preds = %.loopexit.i
  br i1 %.not85.i, label %lv_text_get_next_word.exit.thread, label %lv_text_get_next_word.exit

lv_text_get_next_word.exit.thread:                ; preds = %bb.v
  store i32 %i.r, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.critedge2

lv_text_get_next_word.exit:                       ; preds = %bb.t, %bb.u, %bb.v
  %.6 = phi i32 [ %.7, %bb.u ], [ %.7, %bb.t ], [ %.5103, %bb.v ]
  %.296 = phi i32 [ %.397, %bb.u ], [ %.397, %bb.t ], [ %.195, %bb.v ] ; 2 uses
  %.074.i = phi i32 [ %i.dc, %bb.u ], [ %.172116.i, %bb.t ], [ %.2.i, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.dg = sub i32 %.062, %.296
  %i.dh = add i32 %.296, %.066                    ; 5 uses
  %i.di = icmp eq i32 %.074.i, 0
  br i1 %i.di, label %.critedge2thread-pre-split.loopexit, label %bb.w

bb.w:                                             ; preds = %lv_text_get_next_word.exit
  %i.dj = add i32 %.074.i, %i.r                   ; 5 uses
  %i.dk = load i8, ptr %0, align 1, !tbaa !8
  switch i8 %i.dk, label %bb.x [
    i8 10, label %.critedge2thread-pre-split.loopexit
    i8 13, label %.critedge2thread-pre-split.loopexit
  ]

bb.x:                                             ; preds = %bb.w
  %i.dl = zext i32 %i.dj to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8   ; 2 uses
  switch i8 %i.dn, label %bb.i [
    i8 10, label %bb.y
    i8 13, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.do = add i32 %i.dj, 1                        ; 2 uses
  store i32 %i.do, ptr %i.c, align 4, !tbaa !9
  br label %.critedge2

.critedge2thread-pre-split.loopexit:              ; preds = %bb.j, %bb.w, %bb.w, %lv_text_get_next_word.exit
  %i.dp = phi i32 [ %i.dj, %bb.w ], [ %i.r, %lv_text_get_next_word.exit ], [ %i.dj, %bb.w ], [ %i.r, %bb.j ] ; 2 uses
  %.167.ph.ph = phi i32 [ %i.dh, %bb.w ], [ %i.dh, %lv_text_get_next_word.exit ], [ %i.dh, %bb.w ], [ %.066, %bb.j ]
  %i.dq = phi i1 [ false, %bb.w ], [ true, %lv_text_get_next_word.exit ], [ false, %bb.w ], [ true, %bb.j ]
  store i32 %i.dp, ptr %i.c, align 4
  br label %.critedge2

.critedge2.loopexit:                              ; preds = %bb.i
  store i32 %i.r, ptr %i.c, align 4
  br label %.critedge2

.critedge2:                                       ; preds = %bb.y, %lv_text_get_next_word.exit.thread, %.critedge2thread-pre-split.loopexit, %.critedge2.loopexit
  %i.dr = phi i32 [ %i.r, %.critedge2.loopexit ], [ %i.do, %bb.y ], [ %i.r, %lv_text_get_next_word.exit.thread ], [ %i.dp, %.critedge2thread-pre-split.loopexit ]
  %.167 = phi i32 [ %.066, %.critedge2.loopexit ], [ %i.dh, %bb.y ], [ %.066, %lv_text_get_next_word.exit.thread ], [ %.167.ph.ph, %.critedge2thread-pre-split.loopexit ]
  %.2 = phi i1 [ true, %.critedge2.loopexit ], [ false, %bb.y ], [ true, %lv_text_get_next_word.exit.thread ], [ %i.dq, %.critedge2thread-pre-split.loopexit ]
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge2
  %i.dt = call i32 @lv_text_utf8_next(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br i1 %.not, label %.critedge92, label %.thread112

.thread112:                                       ; preds = %bb.z
  %i.du = call zeroext i16 @lv_font_get_glyph_width(ptr noundef nonnull %2, i32 noundef %i.dt, i32 noundef 0) #11
  %i.dv = zext i16 %i.du to i32
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge2
  br i1 %.not, label %.critedge92, label %bb.ab

bb.ab:                                            ; preds = %.thread112, %bb.aa
  %.3114 = phi i32 [ %i.dv, %.thread112 ], [ %.167, %bb.aa ]
  store i32 %.3114, ptr %3, align 4, !tbaa !9
  br label %.critedge92

.critedge92:                                      ; preds = %bb.z, %bb.ab, %bb.aa
  %.pre = load i32, ptr %i.c, align 4, !tbaa !9   ; 3 uses
  %i.dw = icmp ult i32 %.pre, %1
  %or.cond279 = select i1 %.2, i1 %i.dw, i1 false
  br i1 %or.cond279, label %.lr.ph194.preheader, label %.critedge4

.lr.ph194.preheader:                              ; preds = %.critedge92
  %i.dx = zext i32 %.pre to i64
  %wide.trip.count235 = zext i32 %1 to i64
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194.preheader, %bb.ac
  %indvars.iv232 = phi i64 [ %i.dx, %.lr.ph194.preheader ], [ %indvars.iv.next233, %bb.ac ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv232
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ea = icmp eq i8 %i.dz, 32
  br i1 %i.ea, label %bb.ac, label %.critedge4.loopexit.loopexit.split.loop.exit277

bb.ac:                                            ; preds = %.lr.ph194
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond235.not, label %.critedge4, label %.lr.ph194, !llvm.loop !25

.critedge4.loopexit.loopexit.split.loop.exit277:  ; preds = %.lr.ph194
  %i.eb = trunc nuw i64 %indvars.iv232 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.ac, %.critedge4.loopexit.loopexit.split.loop.exit277, %.critedge92
  %i.ec = phi i32 [ %.pre, %.critedge92 ], [ %i.eb, %.critedge4.loopexit.loopexit.split.loop.exit277 ], [ %1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge4, %bb.g, %.critedge89, %bb.d, %bb.c
  %.170 = phi i32 [ %.165, %.critedge89 ], [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ec, %.critedge4 ], [ %.165, %bb.g ]
  ret i32 %.170
}

; Function Attrs: nounwind uwtable
define i32 @lv_text_get_width(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.k, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %lv_text_is_cmd.exit.thread
  %.038 = phi i32 [ 0, %.lr.ph ], [ %.2, %lv_text_is_cmd.exit.thread ] ; 5 uses
  %.02737 = phi i32 [ 0, %.lr.ph ], [ %.228, %lv_text_is_cmd.exit.thread ] ; 5 uses
  %i.g = call i32 @lv_text_utf8_next(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.a) ; 4 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lv_text_encoded_letter_next_2.exit.thread, label %lv_text_encoded_letter_next_2.exit

lv_text_encoded_letter_next_2.exit:               ; preds = %bb.d
  %i.h = load i32, ptr %i.a, align 4, !tbaa !9
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.k = call i32 @lv_text_utf8_next(ptr noundef nonnull readonly %i.j, ptr noundef null) ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !17
  %i.m = and i32 %i.l, 8
  %.not22 = icmp eq i32 %i.m, 0
  br i1 %.not22, label %lv_text_is_cmd.exit, label %bb.e

lv_text_encoded_letter_next_2.exit.thread:        ; preds = %bb.d
  %i.n = load i32, ptr %i.f, align 4, !tbaa !17
  %i.o = and i32 %i.n, 8
  %.not2230 = icmp ne i32 %i.o, 0
  %i.p = icmp eq i32 %.02737, 1
  %or.cond35 = select i1 %.not2230, i1 %i.p, i1 false
  br i1 %or.cond35, label %lv_text_is_cmd.exit.thread, label %lv_text_is_cmd.exit, !llvm.loop !26

bb.e:                                             ; preds = %lv_text_encoded_letter_next_2.exit
  %i.q = icmp eq i32 %i.g, 35
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ne i32 %.02737, 2
  %spec.select36 = zext i1 %i.r to i32
  br label %lv_text_is_cmd.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i32 %.02737, 1
  br i1 %i.s, label %bb.h, label %lv_text_is_cmd.exit, !llvm.loop !26

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq i32 %i.g, 32
  %spec.select = select i1 %i.t, i32 2, i32 1
  br label %lv_text_is_cmd.exit.thread

lv_text_is_cmd.exit:                              ; preds = %bb.g, %lv_text_encoded_letter_next_2.exit.thread, %lv_text_encoded_letter_next_2.exit
  %i.u = phi i32 [ %i.k, %lv_text_encoded_letter_next_2.exit ], [ 0, %lv_text_encoded_letter_next_2.exit.thread ], [ %i.k, %bb.g ]
  %i.v = call zeroext i16 @lv_font_get_glyph_width(ptr noundef nonnull %2, i32 noundef %i.g, i32 noundef %i.u) #11 ; 2 uses
  %.not23 = icmp eq i16 %i.v, 0
  br i1 %.not23, label %lv_text_is_cmd.exit.thread, label %bb.i

bb.i:                                             ; preds = %lv_text_is_cmd.exit
  %i.w = zext i16 %i.v to i32
  %i.x = add nsw i32 %.038, %i.w
  %i.y = load i32, ptr %3, align 4, !tbaa !18
  %i.z = add nsw i32 %i.x, %i.y
  br label %lv_text_is_cmd.exit.thread

lv_text_is_cmd.exit.thread:                       ; preds = %bb.f, %bb.h, %lv_text_encoded_letter_next_2.exit.thread, %lv_text_is_cmd.exit, %bb.i
  %.228 = phi i32 [ %.02737, %lv_text_is_cmd.exit ], [ %.02737, %bb.i ], [ 1, %lv_text_encoded_letter_next_2.exit.thread ], [ %spec.select, %bb.h ], [ %spec.select36, %bb.f ]
  %.2 = phi i32 [ %.038, %lv_text_is_cmd.exit ], [ %i.z, %bb.i ], [ %.038, %lv_text_encoded_letter_next_2.exit.thread ], [ %.038, %bb.h ], [ %.038, %bb.f ] ; 4 uses
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = icmp ne i8 %i.ad, 0
  %i.af = icmp ult i32 %i.aa, %1
  %i.ag = and i1 %i.af, %i.ae
  br i1 %i.ag, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %lv_text_is_cmd.exit.thread
  %i.ah = icmp sgt i32 %.2, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ai = load i32, ptr %3, align 4, !tbaa !18
  %i.aj = sub nsw i32 %.2, %i.ai
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.c
  %.3 = phi i32 [ %i.aj, %bb.j ], [ %.2, %._crit_edge ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  %.018 = phi i32 [ %.3, %bb.k ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @lv_text_is_cmd(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, 35
  %i.b = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.f [
    i32 0, label %.thread14
    i32 2, label %.thread12
    i32 1, label %.thread17
  ]

.thread14:                                        ; preds = %bb.b
  store i32 1, ptr %0, align 4, !tbaa !9
  br label %bb.f

.thread12:                                        ; preds = %bb.b
  store i32 0, ptr %0, align 4, !tbaa !9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.f

.thread17:                                        ; preds = %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 32
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %0, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.thread17, %.thread14, %.thread12, %bb.d, %bb.e, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ true, %bb.e ], [ true, %bb.d ], [ true, %.thread12 ], [ true, %.thread14 ], [ false, %bb.b ], [ true, %.thread17 ]
  ret i1 %.1
}

declare zeroext i16 @lv_font_get_glyph_width(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @lv_text_encoded_letter_next_2(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @lv_text_utf8_next(ptr noundef %0, ptr noundef %3) ; 2 uses
  store i32 %i.a, ptr %1, align 4, !tbaa !9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !9
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = tail call i32 @lv_text_utf8_next(ptr noundef %i.d, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  store i32 %i.f, ptr %2, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_text_ins(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

end_hunk_1
begin_hunk_2_@lv_text_ins:bb.a
  %.not16.i = icmp eq i32 %1, 0
  br i1 %.not16.i, label %lv_text_utf8_get_byte_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %lv_text_utf8_size.exit.i
  %.013.i = phi i32 [ %i.t, %lv_text_utf8_size.exit.i ], [ 0, %bb.c ]
  %.01012.i = phi i32 [ %i.s, %lv_text_utf8_size.exit.i ], [ 0, %bb.c ] ; 3 uses
  %i.g = zext i32 %.01012.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8     ; 3 uses
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %lv_text_utf8_get_byte_id.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.j = zext i8 %i.i to i32                      ; 3 uses
  %i.k = icmp sgt i8 %i.i, -1
  br i1 %i.k, label %lv_text_utf8_size.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i32 %i.j, 224
  %i.m = icmp eq i32 %i.l, 192
  br i1 %i.m, label %lv_text_utf8_size.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = and i32 %i.j, 240
  %i.o = icmp eq i32 %i.n, 224
  br i1 %i.o, label %lv_text_utf8_size.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %i.j, 248
  %i.q = icmp eq i32 %i.p, 240
  %i.r = select i1 %i.q, i32 4, i32 1
  br label %lv_text_utf8_size.exit.i

lv_text_utf8_size.exit.i:                         ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ 3, %bb.f ], [ 1, %bb.d ], [ 2, %bb.e ], [ %i.r, %bb.g ]
  %i.s = add i32 %.0.i.i, %.01012.i               ; 2 uses
  %i.t = add nuw i32 %.013.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.t, %1
  br i1 %exitcond.not.i, label %lv_text_utf8_get_byte_id.exit.loopexit, label %.lr.ph.i, !llvm.loop !10

lv_text_utf8_get_byte_id.exit.loopexit:           ; preds = %lv_text_utf8_size.exit.i, %.lr.ph.i
  %.010.lcssa.i.ph = phi i32 [ %i.s, %lv_text_utf8_size.exit.i ], [ %.01012.i, %.lr.ph.i ]
  %i.u = zext i32 %.010.lcssa.i.ph to i64
  br label %lv_text_utf8_get_byte_id.exit

lv_text_utf8_get_byte_id.exit:                    ; preds = %lv_text_utf8_get_byte_id.exit.loopexit, %bb.c
  %.010.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.u, %lv_text_utf8_get_byte_id.exit.loopexit ] ; 3 uses
  %i.v = add i64 %i.d, %.010.lcssa.i              ; 2 uses
  %.not26 = icmp ult i64 %i.f, %i.v
  br i1 %.not26, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %lv_text_utf8_get_byte_id.exit
  %i.w = add i64 %i.d, %i.c                       ; 2 uses
  %i.x = add i64 %i.w, -1
  %i.y = add i64 %i.d, %.010.lcssa.i
  %i.z = add i64 %i.y, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.z)
  %i.aa = sub i64 %i.w, %umin                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.aa, 8
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond44 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond44, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i64 %i.aa, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, -32                     ; 4 uses
  %i.ac = sub i64 %i.f, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = sub i64 %i.f, %index                    ; 2 uses
  %i.ae = sub i64 %i.ad, %i.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -15
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !8
  %wide.load37 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -15
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -31
  store <16 x i8> %wide.load, ptr %i.aj, align 1, !tbaa !8
  store <16 x i8> %wide.load37, ptr %i.ak, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.aa, -8                    ; 3 uses
  %i.am = sub i64 %i.f, %n.vec38
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %i.an = sub i64 %i.f, %index39                  ; 2 uses
  %i.ao = sub i64 %i.an, %i.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -7
  %wide.load40 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -7
  store <8 x i8> %wide.load40, ptr %i.as, align 1, !tbaa !8
  %index.next41 = add nuw i64 %index39, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.aa, %n.vec38
  br i1 %cmp.n42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.027.ph = phi i64 [ %i.f, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.027 = phi i64 [ %i.ay, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader ] ; 3 uses
  %i.au = sub i64 %.027, %i.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !8
  %i.ay = add i64 %.027, -1                       ; 2 uses
  %.not = icmp ult i64 %i.ay, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lv_text_utf8_get_byte_id.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %.010.lcssa.i
  %i.ba = tail call ptr @lv_memcpy(ptr noundef nonnull %i.az, ptr noundef nonnull %2, i64 noundef %i.d) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

declare i64 @lv_strlen(ptr noundef) local_unnamed_addr #7

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @lv_text_cut(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @lv_strlen(ptr noundef nonnull %0) #11 ; 3 uses
  %.not16.i = icmp eq i32 %1, 0
  br i1 %.not16.i, label %lv_text_utf8_get_byte_id.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %lv_text_utf8_size.exit.i
  %.013.i = phi i32 [ %i.p, %lv_text_utf8_size.exit.i ], [ 0, %bb.b ]
  %.01012.i = phi i32 [ %i.o, %lv_text_utf8_size.exit.i ], [ 0, %bb.b ] ; 3 uses
  %i.c = zext i32 %.01012.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8     ; 3 uses
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %lv_text_utf8_get_byte_id.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = icmp sgt i8 %i.e, -1
  br i1 %i.g, label %lv_text_utf8_size.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.f, 224
  %i.i = icmp eq i32 %i.h, 192
  br i1 %i.i, label %lv_text_utf8_size.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.f, 240
  %i.k = icmp eq i32 %i.j, 224
  br i1 %i.k, label %lv_text_utf8_size.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.f, 248
  %i.m = icmp eq i32 %i.l, 240
  %i.n = select i1 %i.m, i32 4, i32 1
  br label %lv_text_utf8_size.exit.i

lv_text_utf8_size.exit.i:                         ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 3, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ], [ %i.n, %bb.f ]
  %i.o = add i32 %.0.i.i, %.01012.i               ; 2 uses
  %i.p = add nuw i32 %.013.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, %1
  br i1 %exitcond.not.i, label %lv_text_utf8_get_byte_id.exit, label %.lr.ph.i, !llvm.loop !10

lv_text_utf8_get_byte_id.exit:                    ; preds = %.lr.ph.i, %lv_text_utf8_size.exit.i, %bb.b
  %.010.lcssa.i = phi i32 [ 0, %bb.b ], [ %.01012.i, %.lr.ph.i ], [ %i.o, %lv_text_utf8_size.exit.i ] ; 12 uses
  %i.q = zext i32 %.010.lcssa.i to i64            ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %.not16.i18 = icmp eq i32 %2, 0
  br i1 %.not16.i18, label %lv_text_utf8_get_byte_id.exit27, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %lv_text_utf8_get_byte_id.exit, %lv_text_utf8_size.exit.i23
  %.013.i20 = phi i32 [ %i.af, %lv_text_utf8_size.exit.i23 ], [ 0, %lv_text_utf8_get_byte_id.exit ]
  %.01012.i21 = phi i32 [ %i.ae, %lv_text_utf8_size.exit.i23 ], [ 0, %lv_text_utf8_get_byte_id.exit ] ; 3 uses
  %i.s = zext i32 %.01012.i21 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8     ; 3 uses
  %.not.i22 = icmp eq i8 %i.u, 0
  br i1 %.not.i22, label %lv_text_utf8_get_byte_id.exit27, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i19
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = icmp sgt i8 %i.u, -1
  br i1 %i.w, label %lv_text_utf8_size.exit.i23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = and i32 %i.v, 224
  %i.y = icmp eq i32 %i.x, 192
  br i1 %i.y, label %lv_text_utf8_size.exit.i23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = and i32 %i.v, 240
  %i.aa = icmp eq i32 %i.z, 224
  br i1 %i.aa, label %lv_text_utf8_size.exit.i23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = and i32 %i.v, 248
  %i.ac = icmp eq i32 %i.ab, 240
  %i.ad = select i1 %i.ac, i32 4, i32 1
  br label %lv_text_utf8_size.exit.i23

lv_text_utf8_size.exit.i23:                       ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i24 = phi i32 [ 3, %bb.i ], [ 1, %bb.g ], [ 2, %bb.h ], [ %i.ad, %bb.j ]
  %i.ae = add i32 %.0.i.i24, %.01012.i21          ; 2 uses
  %i.af = add nuw i32 %.013.i20, 1                ; 2 uses
  %exitcond.not.i25 = icmp eq i32 %i.af, %2
  br i1 %exitcond.not.i25, label %lv_text_utf8_get_byte_id.exit27, label %.lr.ph.i19, !llvm.loop !10

lv_text_utf8_get_byte_id.exit27:                  ; preds = %.lr.ph.i19, %lv_text_utf8_size.exit.i23, %lv_text_utf8_get_byte_id.exit
  %.010.lcssa.i26 = phi i32 [ 0, %lv_text_utf8_get_byte_id.exit ], [ %.01012.i21, %.lr.ph.i19 ], [ %i.ae, %lv_text_utf8_size.exit.i23 ] ; 5 uses
  %i.ag = zext i32 %.010.lcssa.i26 to i64         ; 3 uses
  %i.ah = sub i64 %i.b, %i.ag                     ; 2 uses
  %.not28 = icmp ult i64 %i.ah, %i.q
  br i1 %.not28, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %lv_text_utf8_get_byte_id.exit27
  %i.ai = add i64 %i.b, 1
  %i.aj = sub i64 %i.ai, %i.ag
  %i.ak = add i32 %.010.lcssa.i, 1
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %umax38 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.al)
  %i.am = add i64 %umax38, 1
  %i.an = sub i64 %i.am, %i.al                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ao = add i64 %i.b, 1
  %i.ap = sub i64 %i.ao, %i.ag
  %i.aq = add i32 %.010.lcssa.i, 1
  %i.ar = zext i32 %i.aq to i64
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.ar) ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 -2, %.010.lcssa.i
  %i.av = icmp ult i32 %i.au, %i.at
  %i.aw = icmp ugt i64 %i.as, 4294967295
  %i.ax = or i1 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ay = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %i.az = zext i32 %i.ay to i64
  %i.ba = sub nsw i64 %i.az, %i.q
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check39 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.an, 24
  %n.vec = and i64 %i.an, -32                     ; 5 uses
  %i.bc = add i64 %n.vec, %i.q
  %i.bd = trunc i64 %n.vec to i32
  %i.be = add i32 %.010.lcssa.i, %i.bd
  %invariant.op = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = trunc i64 %index to i32
  %.reass = add i32 %i.bf, %invariant.op
  %i.bg = zext i32 %.reass to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load = load <16 x i8>, ptr %i.bh, align 1, !tbaa !8
  %wide.load40 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !8
  store <16 x i8> %wide.load40, ptr %i.bj, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.an, -8                    ; 4 uses
  %i.bl = add i64 %n.vec42, %i.q
  %i.bm = trunc i64 %n.vec42 to i32
  %i.bn = add i32 %.010.lcssa.i, %i.bm
  %invariant.op49 = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %invariant.gep51 = getelementptr i8, ptr %0, i64 %i.q
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.bo = trunc i64 %index43 to i32
  %.reass50 = add i32 %i.bo, %invariant.op49
  %i.bp = zext i32 %.reass50 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %wide.load44 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !8
  %gep52 = getelementptr i8, ptr %invariant.gep51, i64 %index43
  store <8 x i8> %wide.load44, ptr %gep52, align 1, !tbaa !8
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.br = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.an, %n.vec42
  br i1 %cmp.n46, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.q, %iter.check ], [ %i.q, %vector.scevcheck ], [ %i.q, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  %.029.ph = phi i32 [ %.010.lcssa.i, %iter.check ], [ %.010.lcssa.i, %vector.scevcheck ], [ %.010.lcssa.i, %vector.memcheck ], [ %i.be, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bs = phi i64 [ %i.bz, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.029 = phi i32 [ %i.by, %.lr.ph ], [ %.029.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bt = add i32 %.029, %.010.lcssa.i26
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !8
  %i.by = add i32 %.029, 1                        ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %.not = icmp ult i64 %i.ah, %i.bz
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lv_text_utf8_get_byte_id.exit27, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define nonnull ptr @lv_text_set_text_vfmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr %1)
  %i.a = call i32 @lv_vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = add i32 %i.a, 1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = call ptr @lv_malloc(i64 noundef %i.c) #11 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @lv_vsnprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef %0, ptr noundef %1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #9

declare i32 @lv_vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #7

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = !{!15, !5, i64 4}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!16 = !{!15, !5, i64 8}
!17 = !{!15, !5, i64 12}
!18 = !{!15, !5, i64 0}
!19 = !{!20, !5, i64 0}
!20 = !{!"", !5, i64 0, !5, i64 4}
!21 = !{!20, !5, i64 4}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"branch_weights", i32 8, i32 24}
!31 = distinct !{!31, !11, !28, !29}
!32 = distinct !{!32, !11, !28}
!33 = distinct !{!33, !11, !28, !29}
!34 = distinct !{!34, !11, !28, !29}
!35 = distinct !{!35, !11, !28}
end_hunk_2
