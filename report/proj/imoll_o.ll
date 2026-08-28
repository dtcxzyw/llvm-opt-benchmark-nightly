Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/imoll_o?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL21pj_imoll_o_destructorP8PJconstsi:bb.a
  %.not.2 = icmp eq ptr %i.o, null
  br i1 %.not.2, label %.preheader.3, label %bb.e

bb.e:                                             ; preds = %.preheader.2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull %i.o, i32 noundef %1) ; 0 uses
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.e, %.preheader.2
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43   ; 3 uses
  %.not.3 = icmp eq ptr %i.t, null
  br i1 %.not.3, label %.preheader.4, label %bb.f

bb.f:                                             ; preds = %.preheader.3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull %i.t, i32 noundef %1) ; 0 uses
  br label %.preheader.4

.preheader.4:                                     ; preds = %bb.f, %.preheader.3
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43   ; 3 uses
  %.not.4 = icmp eq ptr %i.y, null
  br i1 %.not.4, label %.preheader.5, label %bb.g

bb.g:                                             ; preds = %.preheader.4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull %i.y, i32 noundef %1) ; 0 uses
  br label %.preheader.5

.preheader.5:                                     ; preds = %bb.g, %.preheader.4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  %.not.5 = icmp eq ptr %i.ad, null
  br i1 %.not.5, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %.preheader.5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull %i.ad, i32 noundef %1) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.preheader.5, %bb.h, %bb.b
  %i.ah = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.016 = phi ptr [ null, %bb.a ], [ %i.ah, %.sink.split ]
  ret ptr %.016
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZL30pj_imoll_o_compute_zone_offsetPN13pj_imoll_o_ns15pj_imoll_o_dataEiiddd(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 2, 7) %1, i32 noundef range(i32 1, 4) %2, double noundef nofpclass(nan inf zero sub) %3, double noundef nofpclass(nan inf zero sub) %4) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr [8 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -8       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.f = load double, ptr %i.e, align 8, !tbaa !46
  %i.g = fsub double %3, %i.f
  %i.h = zext nneg i32 %2 to i64
  %i.i = getelementptr [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -8       ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 440
  %i.m = load double, ptr %i.l, align 8, !tbaa !46
  %i.n = fsub double %3, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.q = tail call { double, double } %i.p(double %i.g, double %4, ptr noundef %i.d)
  %i.r = extractvalue { double, double } %i.q, 0
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !43   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.v = tail call { double, double } %i.u(double %i.n, double 1.000000e-10, ptr noundef %i.s)
  %i.w = extractvalue { double, double } %i.v, 0
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  %i.z = load double, ptr %i.y, align 8, !tbaa !49
  %i.aa = fadd double %i.w, %i.z
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 456
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !49
  %i.ae = fadd double %i.r, %i.ad
  %i.af = fsub double %i.aa, %i.ae
  ret double %i.af
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZL34pj_imoll_o_compute_zone_x_boundaryP8PJconstsdd(ptr nofree noundef readonly captures(none) %0, double noundef nofpclass(nan inf zero sub) %1, double noundef nofpclass(nan inf zero sub) %2) unnamed_addr #0 {
bb.a:
  %i.a = fadd double %1, -1.000000e-10            ; 5 uses
  %i.b = fadd double %1, 1.000000e-10             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = fcmp ult double %2, 0.000000e+00         ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp ugt double %i.a, f0xBFF921FB54442D18
  br i1 %i.f, label %bb.c, label %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp ult double %i.a, f0x3FF0C152382D7365
  %..i = select i1 %i.g, i64 1, i64 2
  br label %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit

bb.d:                                             ; preds = %bb.a
  %i.h = fcmp ugt double %i.a, f0xBFF0C152382D7365
  br i1 %i.h, label %bb.e, label %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit

bb.e:                                             ; preds = %bb.d
  %i.i = fcmp ult double %i.a, f0x3FF921FB54442D18
  %.19.i = select i1 %i.i, i64 4, i64 5
  br label %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit

_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit:      ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ 3, %bb.d ], [ %..i, %bb.c ], [ 0, %bb.b ], [ %.19.i, %bb.e ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 440
  %i.m = load double, ptr %i.l, align 8, !tbaa !46
  %i.n = fsub double %i.a, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  %i.q = tail call { double, double } %i.p(double %i.n, double %2, ptr noundef %i.k), !inline_history !59
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 456
  %i.t = load double, ptr %i.s, align 8, !tbaa !49
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !42
  br i1 %i.e, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit
  %i.v = fcmp ugt double %i.b, f0xBFF921FB54442D18
  br i1 %i.v, label %bb.g, label %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit24

bb.g:                                             ; preds = %bb.f
  %i.w = fcmp ult double %i.b, f0x3FF0C152382D7365
  %..i22 = select i1 %i.w, i64 1, i64 2
  br label %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit24

bb.h:                                             ; preds = %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit
  %i.x = fcmp ugt double %i.b, f0xBFF0C152382D7365
  br i1 %i.x, label %bb.i, label %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit24

bb.i:                                             ; preds = %bb.h
  %i.y = fcmp ult double %i.b, f0x3FF921FB54442D18
  %.19.i23 = select i1 %i.y, i64 4, i64 5
  br label %_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit24

_ZL17imoll_o_s_forward5PJ_LPP8PJconsts.exit24:    ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i19 = phi i64 [ 3, %bb.h ], [ %..i22, %bb.g ], [ 0, %bb.f ], [ %.19.i23, %bb.i ]
  %i.z = extractvalue { double, double } %i.q, 0
  %i.aa = fadd double %i.z, %i.t
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0.i19 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 440
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !46
  %i.af = fsub double %i.b, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ai = tail call { double, double } %i.ah(double %i.af, double %2, ptr noundef %i.ac), !inline_history !59
  %i.aj = extractvalue { double, double } %i.ai, 0
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 456
  %i.am = load double, ptr %i.al, align 8, !tbaa !49
  %i.an = fadd double %i.aj, %i.am
  %i.ao = fadd double %i.aa, %i.an
  %i.ap = fmul double %i.ao, 5.000000e-01
  ret double %i.ap
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL17imoll_o_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = fcmp ogt double %1, f0x3FF6A09E66861B05
  %i.d = fcmp olt double %1, f0xBFF6A09E66785C95
  %or.cond71 = or i1 %i.c, %i.d
  br i1 %or.cond71, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ult double %1, 0.000000e+00
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load double, ptr %i.f, align 8, !tbaa !50
  %i.h = fcmp ugt double %0, %i.g
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load double, ptr %i.i, align 8, !tbaa !52
  %i.k = fcmp ult double %0, %i.j
  br i1 %i.k, label %select.unfold73, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = load double, ptr %i.l, align 8, !tbaa !53
  %i.n = fcmp ugt double %0, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load double, ptr %i.o, align 8, !tbaa !54
  %i.q = fcmp ult double %0, %i.p
  br i1 %i.q, label %select.unfold, label %bb.g

select.unfold:                                    ; preds = %bb.f
  br label %bb.g

select.unfold73:                                  ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.c, %select.unfold73, %bb.e, %select.unfold
  %.066 = phi i32 [ 4, %bb.e ], [ 6, %bb.f ], [ 3, %bb.d ], [ 1, %bb.c ], [ 5, %select.unfold ], [ 2, %select.unfold73 ] ; 2 uses
  %i.r = zext nneg i32 %.066 to i64
  %i.s = getelementptr [8 x i8], ptr %i.b, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -8       ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.w = load double, ptr %i.v, align 8, !tbaa !49
  %i.x = fsub double %0, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.z = load double, ptr %i.y, align 8, !tbaa !58
  %i.aa = fsub double %1, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.ad = tail call { double, double } %i.ac(double %i.x, double %i.aa, ptr noundef %i.u) ; 2 uses
  %i.ae = extractvalue { double, double } %i.ad, 0
  %i.af = extractvalue { double, double } %i.ad, 1 ; 7 uses
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 440
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !46
  %i.aj = fadd double %i.ae, %i.ai                ; 13 uses
  switch i32 %.066, label %default.unreachable88 [
    i32 1, label %.critedge
    i32 2, label %.split96
    i32 3, label %.split94
    i32 4, label %.split92
    i32 5, label %.split90
    i32 6, label %.split
  ]

.split96:                                         ; preds = %bb.g
  %i.ak = fcmp oge double %i.aj, f0xBFF921FB544B0C50
  %i.al = fcmp ole double %i.aj, f0x3FF0C1523834529D
  %or.cond5 = and i1 %i.ak, %i.al
  %i.am = fcmp oge double %i.af, -1.000000e-10
  %i.an = select i1 %or.cond5, i1 %i.am, i1 false
  %.0.in.fr97 = freeze i1 %i.an
  br i1 %.0.in.fr97, label %bb.h, label %bb.i

.split94:                                         ; preds = %bb.g
  %i.ao = fcmp oge double %i.aj, f0x3FF0C1523826942D
  %i.ap = fcmp ole double %i.aj, f0x400921FB54479CB4
  %or.cond8 = and i1 %i.ao, %i.ap
  %i.aq = fcmp oge double %i.af, -1.000000e-10
  %i.ar = select i1 %or.cond8, i1 %i.aq, i1 false
  %.0.in.fr95 = freeze i1 %i.ar
  br i1 %.0.in.fr95, label %bb.h, label %bb.i

.split92:                                         ; preds = %bb.g
  %i.as = fcmp oge double %i.aj, f0xC00921FB54479CB4
  %i.at = fcmp ole double %i.aj, f0xBFF0C1523826942D
  %or.cond11 = and i1 %i.as, %i.at
  %i.au = fcmp ole double %i.af, 1.000000e-10
  %i.av = select i1 %or.cond11, i1 %i.au, i1 false
  %.0.in.fr93 = freeze i1 %i.av
  br i1 %.0.in.fr93, label %bb.h, label %bb.i

.split90:                                         ; preds = %bb.g
  %i.aw = fcmp oge double %i.aj, f0xBFF0C1523834529D
  %i.ax = fcmp ole double %i.aj, f0x3FF921FB544B0C50
  %or.cond14 = and i1 %i.aw, %i.ax
  %i.ay = fcmp ole double %i.af, 1.000000e-10
  %i.az = select i1 %or.cond14, i1 %i.ay, i1 false
  %.0.in.fr91 = freeze i1 %i.az
  br i1 %.0.in.fr91, label %bb.h, label %bb.i

.split:                                           ; preds = %bb.g
  %i.ba = fcmp oge double %i.aj, f0x3FF921FB543D4DE0
  %i.bb = fcmp ole double %i.aj, f0x400921FB54479CB4
  %or.cond17 = and i1 %i.ba, %i.bb
  %i.bc = fcmp ole double %i.af, 1.000000e-10
  %i.bd = select i1 %or.cond17, i1 %i.bc, i1 false
  %.0.in.fr89 = freeze i1 %i.bd
  br i1 %.0.in.fr89, label %bb.h, label %bb.i

default.unreachable88:                            ; preds = %bb.g
  unreachable

.critedge:                                        ; preds = %bb.g
  %i.be = fcmp oge double %i.aj, f0xC00921FB54479CB4
  %i.bf = fcmp ole double %i.aj, f0xBFF921FB543D4DE0
  %or.cond = and i1 %i.be, %i.bf
  %i.bg = fcmp oge double %i.af, -1.000000e-10
  %i.bh = select i1 %or.cond, i1 %i.bg, i1 false
  %.0.in.fr = freeze i1 %i.bh
  br i1 %.0.in.fr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split96, %.split94, %.split92, %.split90, %.split, %.critedge
  br label %bb.i

bb.i:                                             ; preds = %.split96, %.split94, %.split92, %.split90, %.split, %bb.h, %bb.a, %.critedge
  %i.bi = phi double [ %i.aj, %bb.h ], [ +inf, %bb.a ], [ +inf, %.critedge ], [ +inf, %.split ], [ +inf, %.split90 ], [ +inf, %.split92 ], [ +inf, %.split94 ], [ +inf, %.split96 ]
  %i.bj = phi double [ %i.af, %bb.h ], [ +inf, %bb.a ], [ +inf, %.critedge ], [ +inf, %.split ], [ +inf, %.split90 ], [ +inf, %.split92 ], [ +inf, %.split94 ], [ +inf, %.split96 ]
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bi, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bj, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL17imoll_o_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = fcmp ult double %1, 0.000000e+00
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ugt double %0, f0xBFF921FB54442D18
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp ult double %0, f0x3FF0C152382D7365
  %. = select i1 %i.e, i64 1, i64 2
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = fcmp ugt double %0, f0xBFF0C152382D7365
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = fcmp ult double %0, f0x3FF921FB54442D18
  %.19 = select i1 %i.g, i64 4, i64 5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ 3, %bb.d ], [ %., %bb.c ], [ 0, %bb.b ], [ %.19, %bb.e ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 440
  %i.k = load double, ptr %i.j, align 8, !tbaa !46
  %i.l = fsub double %0, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = tail call { double, double } %i.n(double %i.l, double %1, ptr noundef %i.i) ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0
  %i.q = extractvalue { double, double } %i.o, 1
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 456
  %i.t = load double, ptr %i.s, align 8, !tbaa !49
  %i.u = fadd double %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 464
  %i.w = load double, ptr %i.v, align 8, !tbaa !58
  %i.x = fadd double %i.q, %i.w
  %.fca.0.insert = insertvalue { double, double } poison, double %i.u, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.x, 1
  ret { double, double } %.fca.1.insert
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTS8PJconsts", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !17, i64 380, !17, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !11, i64 600, !11, i64 608, !16, i64 616, !16, i64 624, !5, i64 632, !6, i64 636, !18, i64 640, !23, i64 656, !16, i64 664, !23, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !23, i64 776, !27, i64 784, !32, i64 808, !33, i64 816, !5, i64 840, !23, i64 844, !23, i64 845, !23, i64 846, !14, i64 848}
!10 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!14 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!15 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"_ZTS11pj_io_units", !6, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!32 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!33 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!38 = !{!9, !12, i64 16}
!39 = !{!9, !5, i64 360}
!40 = !{!9, !17, i64 380}
!41 = !{!9, !17, i64 384}
!42 = !{!9, !11, i64 88}
!43 = !{!14, !14, i64 0}
!44 = !{!9, !10, i64 0}
end_hunk_0
