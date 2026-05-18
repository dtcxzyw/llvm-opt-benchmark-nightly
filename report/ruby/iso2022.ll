inline.NumInlined: 10
inline.NumDeleted: 1
begin_hunk_0_@fun_so_cp50221_decoder:bb.a
  br i1 %or.cond26, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i8 -114, ptr %3, align 1, !tbaa !10
  %i.l = load i8, ptr %1, align 1, !tbaa !10
  %i.m = or i8 %i.l, -128
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !10
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.o = or i8 %i.a, -128
  store i8 %i.o, ptr %3, align 1, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10
  %i.r = or i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.e, %bb.d, %bb.c, %bb.h, %bb.g, %bb.f, %bb.j, %bb.i
  %.0 = phi i64 [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.c ], [ 0, %bb.d ], [ 2, %bb.n ], [ 2, %bb.m ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal i64 @fun_so_cp50220_encoder(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i64 %4) #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10
  %i.b = icmp eq i8 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10    ; 2 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i8 %i.d, 127                         ; 2 uses
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr [2 x i8], ptr @tbl0208, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -66
  store i8 0, ptr %i.c, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.j, 2
  br i1 %.not.i, label %iso2022jp_put_state.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 27, ptr %3, align 1, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 36, ptr %i.k, align 1, !tbaa !10
  store i8 66, ptr %i.l, align 1, !tbaa !10
  %.0.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  br label %iso2022jp_put_state.exit

iso2022jp_put_state.exit:                         ; preds = %bb.c, %bb.d
  %.1.i = phi ptr [ %.0.i, %bb.d ], [ %3, %bb.c ] ; 5 uses
  store i8 2, ptr %0, align 1, !tbaa !10
  %i.m = getelementptr i8, ptr %i.g, i64 -65      ; 3 uses
  %i.n = load i8, ptr %i.h, align 2, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 3 uses
  store i8 %i.n, ptr %.1.i, align 1, !tbaa !10
  %i.p = icmp eq i64 %2, 2
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %iso2022jp_put_state.exit
  %i.q = load i8, ptr %1, align 1, !tbaa !10
  %i.r = icmp eq i8 %i.q, -114
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10    ; 2 uses
  %i.u = icmp eq i8 %i.t, -34
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.m, align 1, !tbaa !10
  %i.w = add i8 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 %i.w, ptr %i.o, align 1, !tbaa !10
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.y = icmp eq i8 %i.t, -33
  %i.z = add nsw i8 %i.e, -74
  %i.aa = icmp ult i8 %i.z, 5
  %or.cond3 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %i.m, align 1, !tbaa !10
  %i.ac = add i8 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 %i.ac, ptr %i.o, align 1, !tbaa !10
  br label %.thread

bb.j:                                             ; preds = %iso2022jp_put_state.exit, %bb.e, %bb.h
  %i.ae = load i8, ptr %i.m, align 1, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 %i.ae, ptr %i.o, align 1, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.a
  %.177 = phi ptr [ %i.af, %bb.j ], [ %3, %bb.b ], [ %3, %bb.a ] ; 23 uses
  switch i64 %2, label %bb.l [
    i64 2, label %bb.p
    i64 1, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.ag = load i8, ptr %1, align 1, !tbaa !10
  %i.ah = icmp eq i8 %i.ag, -114
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.018.i = phi i1 [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.l ]
  %.017.i = phi ptr [ %1, %bb.k ], [ %i.ai, %bb.m ], [ %1, %bb.l ] ; 2 uses
  %.0.i87 = phi i32 [ 0, %bb.k ], [ 3, %bb.m ], [ 2, %bb.l ] ; 4 uses
  %i.aj = load i8, ptr %0, align 1, !tbaa !10
  %i.ak = zext i8 %i.aj to i32
  %.not.i.i = icmp eq i32 %.0.i87, %i.ak
  br i1 %.not.i.i, label %iso2022jp_put_state.exit.i, label %switch.lookup

switch.lookup:                                    ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.177, i64 1
  store i8 27, ptr %.177, align 1, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %.177, i64 2
  %switch.shiftamt = shl nuw nsw i32 %.0.i87, 3
  %switch.downshift = lshr i32 673447976, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.shiftamt122 = shl nuw nsw i32 %.0.i87, 3
  %switch.downshift123 = lshr i32 1229062210, %switch.shiftamt122
  %switch.masked124 = trunc i32 %switch.downshift123 to i8
  store i8 %switch.masked, ptr %i.al, align 1, !tbaa !10
  store i8 %switch.masked124, ptr %i.am, align 1, !tbaa !10
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.177, i64 3
  %i.an = trunc nuw nsw i32 %.0.i87 to i8
  store i8 %i.an, ptr %0, align 1, !tbaa !10
  br label %iso2022jp_put_state.exit.i

iso2022jp_put_state.exit.i:                       ; preds = %switch.lookup, %bb.n
  %.1.i.i = phi ptr [ %.0.i.i, %switch.lookup ], [ %.177, %bb.n ] ; 3 uses
  %i.ao = load i8, ptr %.017.i, align 1, !tbaa !10
  %i.ap = and i8 %i.ao, 127
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  store i8 %i.ap, ptr %.1.i.i, align 1, !tbaa !10
  br i1 %.018.i, label %fun_so_cp5022x_encoder.exit, label %bb.o

bb.o:                                             ; preds = %iso2022jp_put_state.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.at = and i8 %i.as, 127
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !10
  br label %fun_so_cp5022x_encoder.exit

bb.p:                                             ; preds = %bb.k
  %i.av = load i8, ptr %1, align 1, !tbaa !10     ; 2 uses
  %i.aw = icmp eq i8 %i.av, -114
  br i1 %i.aw, label %bb.r, label %.split78

.split78:                                         ; preds = %bb.p
  %i.ax = load i8, ptr %0, align 1, !tbaa !10
  %.not.i.i91 = icmp eq i8 %i.ax, 2
  br i1 %.not.i.i91, label %fun_so_cp5022x_encoder.exit99, label %bb.q

bb.q:                                             ; preds = %.split78
  %i.ay = getelementptr inbounds nuw i8, ptr %.177, i64 1
  store i8 27, ptr %.177, align 1, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %.177, i64 2
  store i8 36, ptr %i.ay, align 1, !tbaa !10
  store i8 66, ptr %i.az, align 1, !tbaa !10
  %.0.i.i94 = getelementptr inbounds nuw i8, ptr %.177, i64 3
  store i8 2, ptr %0, align 1, !tbaa !10
  %.pre = load i8, ptr %1, align 1, !tbaa !10
  br label %fun_so_cp5022x_encoder.exit99

fun_so_cp5022x_encoder.exit99:                    ; preds = %bb.q, %.split78
  %i.ba = phi i8 [ %.pre, %bb.q ], [ %i.av, %.split78 ]
  %.1.i.i96 = phi ptr [ %.0.i.i94, %bb.q ], [ %.177, %.split78 ] ; 3 uses
  %i.bb = and i8 %i.ba, 127
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i96, i64 1
  store i8 %i.bb, ptr %.1.i.i96, align 1, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  %i.bf = and i8 %i.be, 127
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i.i96, i64 2
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !10
  br label %fun_so_cp5022x_encoder.exit

bb.r:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !10  ; 5 uses
  %5 = insertelement <3 x i8> poison, i8 %i.bi, i64 0
  %6 = shufflevector <3 x i8> %5, <3 x i8> poison, <3 x i32> zeroinitializer
  %7 = add <3 x i8> %6, <i8 95, i8 59, i8 49>
  %8 = icmp ult <3 x i8> %7, <i8 21, i8 5, i8 17>
  %9 = bitcast <3 x i1> %8 to i3
  %.not125 = icmp eq i3 %9, 0
  br i1 %.not125, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr [2 x i8], ptr @tbl0208, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -322
  %i.bm = load i8, ptr %0, align 1, !tbaa !10
  %.not.i100 = icmp eq i8 %i.bm, 2
  br i1 %.not.i100, label %iso2022jp_put_state.exit103, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.177, i64 1
  store i8 27, ptr %.177, align 1, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %.177, i64 2
  store i8 36, ptr %i.bn, align 1, !tbaa !10
  store i8 66, ptr %i.bo, align 1, !tbaa !10
  %.0.i101 = getelementptr inbounds nuw i8, ptr %.177, i64 3
  store i8 2, ptr %0, align 1, !tbaa !10
  br label %iso2022jp_put_state.exit103

iso2022jp_put_state.exit103:                      ; preds = %bb.s, %bb.t
  %.1.i102 = phi ptr [ %.0.i101, %bb.t ], [ %.177, %bb.s ] ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bk, i64 -321
  %i.bq = load i8, ptr %i.bl, align 2, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i102, i64 1
  store i8 %i.bq, ptr %.1.i102, align 1, !tbaa !10
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i102, i64 2
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !10
  br label %.thread

bb.u:                                             ; preds = %bb.r
  %i.bu = icmp ugt i8 %i.bi, -33
  br i1 %i.bu, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bv = load i8, ptr %0, align 1, !tbaa !10
  %.not.i104 = icmp eq i8 %i.bv, 3
  br i1 %.not.i104, label %iso2022jp_put_state.exit107, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %.177, i64 1
  store i8 27, ptr %.177, align 1, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %.177, i64 2
  store i8 40, ptr %i.bw, align 1, !tbaa !10
  store i8 73, ptr %i.bx, align 1, !tbaa !10
  %.0.i105 = getelementptr inbounds nuw i8, ptr %.177, i64 3
  store i8 3, ptr %0, align 1, !tbaa !10
  %.pre113 = load i8, ptr %i.bh, align 1, !tbaa !10
  br label %iso2022jp_put_state.exit107

iso2022jp_put_state.exit107:                      ; preds = %bb.v, %bb.w
  %i.by = phi i8 [ %.pre113, %bb.w ], [ %i.bi, %bb.v ]
  %.1.i106 = phi ptr [ %.0.i105, %bb.w ], [ %.177, %bb.v ] ; 2 uses
  %i.bz = and i8 %i.by, 127
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i106, i64 1
  store i8 %i.bz, ptr %.1.i106, align 1, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.cb, align 1, !tbaa !10
  br label %.thread

bb.x:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bi, ptr %i.cc, align 1, !tbaa !10
  %i.cd = load i8, ptr %0, align 1, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !10
  store i8 3, ptr %0, align 1, !tbaa !10
  br label %.thread

fun_so_cp5022x_encoder.exit:                      ; preds = %bb.o, %iso2022jp_put_state.exit.i, %fun_so_cp5022x_encoder.exit99
  %.sink119 = phi ptr [ %i.bg, %fun_so_cp5022x_encoder.exit99 ], [ %i.au, %bb.o ], [ %i.aq, %iso2022jp_put_state.exit.i ]
  %i.cf = ptrtoint ptr %.sink119 to i64
  %i.cg = ptrtoint ptr %.177 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %.177, i64 %i.ch
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.g, %fun_so_cp5022x_encoder.exit, %bb.x, %iso2022jp_put_state.exit107, %iso2022jp_put_state.exit103
  %.sink121 = phi ptr [ %i.ad, %bb.i ], [ %i.x, %bb.g ], [ %i.ci, %fun_so_cp5022x_encoder.exit ], [ %.177, %bb.x ], [ %i.ca, %iso2022jp_put_state.exit107 ], [ %i.bt, %iso2022jp_put_state.exit103 ]
  %i.cj = ptrtoint ptr %.sink121 to i64
  %i.ck = ptrtoint ptr %3 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  ret i64 %i.cl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal i64 @finish_cp50220_encoder(ptr noundef captures(none) %0, ptr noundef %1, i64 %2) #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10      ; 2 uses
  switch i8 %i.a, label %bb.e [
    i8 0, label %bb.f
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10    ; 2 uses
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i8 %i.c, 127
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr [2 x i8], ptr @tbl0208, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -66
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.i, 2
  br i1 %.not.i, label %iso2022jp_put_state.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 27, ptr %1, align 1, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 36, ptr %i.j, align 1, !tbaa !10
  store i8 66, ptr %i.k, align 1, !tbaa !10
  %.0.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %iso2022jp_put_state.exit

iso2022jp_put_state.exit:                         ; preds = %bb.c, %bb.d
  %.1.i = phi ptr [ %.0.i, %bb.d ], [ %1, %bb.c ] ; 3 uses
  store i8 2, ptr %0, align 1, !tbaa !10
  %i.l = getelementptr i8, ptr %i.f, i64 -65
  %i.m = load i8, ptr %i.g, align 2, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.m, ptr %.1.i, align 1, !tbaa !10
  %i.o = load i8, ptr %i.l, align 1, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 %i.o, ptr %i.n, align 1, !tbaa !10
  %.pre = load i8, ptr %0, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %iso2022jp_put_state.exit
  %i.q = phi i8 [ %.pre, %iso2022jp_put_state.exit ], [ %i.a, %bb.a ]
  %.020 = phi ptr [ %i.p, %iso2022jp_put_state.exit ], [ %1, %bb.a ] ; 2 uses
  %.not.i23 = icmp eq i8 %i.q, 0
  br i1 %.not.i23, label %iso2022jp_put_state.exit26, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  %.02030 = phi ptr [ %.020, %bb.e ], [ %1, %bb.b ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02030, i64 1
  store i8 27, ptr %.02030, align 1, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %.02030, i64 2
  store i8 40, ptr %i.r, align 1, !tbaa !10
  store i8 66, ptr %i.s, align 1, !tbaa !10
  %.0.i24 = getelementptr inbounds nuw i8, ptr %.02030, i64 3
  store i8 0, ptr %0, align 1, !tbaa !10
  br label %iso2022jp_put_state.exit26

iso2022jp_put_state.exit26:                       ; preds = %bb.e, %.thread
  %.1.i25 = phi ptr [ %.0.i24, %.thread ], [ %.020, %bb.e ]
  %i.t = ptrtoint ptr %.1.i25 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %iso2022jp_put_state.exit26
  %.0 = phi i64 [ %i.v, %iso2022jp_put_state.exit26 ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal i64 @fun_so_cp5022x_encoder(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i64 %4) #4 {
bb.a:
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !10
  %i.c = icmp eq i8 %i.b, -114
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.018 = phi i1 [ true, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  %.017 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.a ], [ 3, %bb.c ], [ 2, %bb.b ] ; 4 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %.not.i = icmp eq i32 %.0, %i.f
  br i1 %.not.i, label %iso2022jp_put_state.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 27, ptr %3, align 1, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2
  %switch.shiftamt = shl nuw nsw i32 %.0, 3
  %switch.downshift = lshr i32 673447976, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.shiftamt21 = shl nuw nsw i32 %.0, 3
  %switch.downshift22 = lshr i32 1229062210, %switch.shiftamt21
  %switch.masked23 = trunc i32 %switch.downshift22 to i8
  store i8 %switch.masked, ptr %i.g, align 1, !tbaa !10
  store i8 %switch.masked23, ptr %i.h, align 1, !tbaa !10
  %.0.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.i = trunc nuw nsw i32 %.0 to i8
  store i8 %i.i, ptr %0, align 1, !tbaa !10
end_hunk_0
