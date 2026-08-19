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
  %i.b = load i32, ptr %1, align 4, !tbaa !9      ; 5 uses
  %i.c = add i32 %i.b, -1                         ; 4 uses
  store i32 %i.c, ptr %1, align 4, !tbaa !9
  %i.d = zext i32 %i.c to i64
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
  %i.o = add i32 %i.b, -2                         ; 4 uses
  store i32 %i.o, ptr %1, align 4, !tbaa !9
  %2 = zext i32 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %2
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
  %.not.1 = icmp eq i32 %i.o, 0
  br i1 %.not.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %lv_text_utf8_size.exit.1
  %i.z = add i32 %i.b, -3                         ; 4 uses
  store i32 %i.z, ptr %1, align 4, !tbaa !9
  %3 = zext i32 %i.z to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %3
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
  %.not.2 = icmp eq i32 %i.z, 0
  br i1 %.not.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %lv_text_utf8_size.exit.2
  %i.ak = add i32 %i.b, -4                        ; 4 uses
  store i32 %i.ak, ptr %1, align 4, !tbaa !9
  %4 = zext i32 %i.ak to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %4
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
  %.not.3 = icmp eq i32 %i.ak, 0
  br i1 %.not.3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %lv_text_utf8_size.exit.3
  %i.av = add i32 %i.b, -5
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
