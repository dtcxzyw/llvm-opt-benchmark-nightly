Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/imoll?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL19pj_imoll_destructorP8PJconstsi:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull %i.j, i32 noundef %1) ; 0 uses
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.d, %.preheader.1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43   ; 3 uses
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
define internal fastcc noundef double @_ZL19compute_zone_offsetPN11pj_imoll_ns13pj_imoll_dataEiiddd(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 2, 7) %1, i32 noundef range(i32 1, 3) %2, double noundef nofpclass(nan inf zero sub) %3, double noundef nofpclass(nan inf zero sub) %4) unnamed_addr #0 {
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
define internal fastcc noundef double @_ZL23compute_zone_x_boundaryP8PJconstsdd(ptr nofree noundef readonly captures(none) %0, double noundef nofpclass(nan inf zero sub) %1, double noundef nofpclass(nan inf zero sub) %2) unnamed_addr #0 {
bb.a:
  %i.a = fadd double %1, -1.000000e-10            ; 5 uses
  %i.b = fadd double %1, 1.000000e-10             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = fcmp ult double %2, 0.000000e+00         ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp ugt double %i.a, f0xBFE657184AE74487
  %i.g = zext i1 %i.f to i64
  br label %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp ugt double %i.a, f0xBFFBECDE5DA115A9
  br i1 %i.h, label %bb.d, label %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp ugt double %i.a, f0xBFD657184AE74487
  br i1 %i.i, label %bb.e, label %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit

bb.e:                                             ; preds = %bb.d
  %i.j = fcmp ugt double %i.a, f0x3FF657184AE74487
  %..i = select i1 %i.j, i64 5, i64 4
  br label %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit

_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit:        ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.g, %bb.b ], [ 3, %bb.d ], [ 2, %bb.c ], [ %..i, %bb.e ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 440
  %i.n = load double, ptr %i.m, align 8, !tbaa !46
  %i.o = fsub double %i.a, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = tail call { double, double } %i.q(double %i.o, double %2, ptr noundef %i.l), !inline_history !59
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  %i.u = load double, ptr %i.t, align 8, !tbaa !49
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !42
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit
  %i.w = fcmp ugt double %i.b, f0xBFE657184AE74487
  %i.x = zext i1 %i.w to i64
  br label %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit23

bb.g:                                             ; preds = %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit
  %i.y = fcmp ugt double %i.b, f0xBFFBECDE5DA115A9
  br i1 %i.y, label %bb.h, label %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit23

bb.h:                                             ; preds = %bb.g
  %i.z = fcmp ugt double %i.b, f0xBFD657184AE74487
  br i1 %i.z, label %bb.i, label %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit23

bb.i:                                             ; preds = %bb.h
  %i.aa = fcmp ugt double %i.b, f0x3FF657184AE74487
  %..i22 = select i1 %i.aa, i64 5, i64 4
  br label %_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit23

_ZL15imoll_s_forward5PJ_LPP8PJconsts.exit23:      ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i19 = phi i64 [ %i.x, %bb.f ], [ 3, %bb.h ], [ 2, %bb.g ], [ %..i22, %bb.i ]
  %i.ab = extractvalue { double, double } %i.r, 0
  %i.ac = fadd double %i.ab, %i.u
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0.i19 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 440
  %i.ag = load double, ptr %i.af, align 8, !tbaa !46
  %i.ah = fsub double %i.b, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56
  %i.ak = tail call { double, double } %i.aj(double %i.ah, double %2, ptr noundef %i.ae), !inline_history !59
  %i.al = extractvalue { double, double } %i.ak, 0
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 456
  %i.ao = load double, ptr %i.an, align 8, !tbaa !49
  %i.ap = fadd double %i.al, %i.ao
  %i.aq = fadd double %i.ac, %i.ap
  %i.ar = fmul double %i.aq, 5.000000e-01
  ret double %i.ar
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15imoll_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = fcmp ogt double %1, f0x3FF6A09E66861B05
  %i.d = fcmp olt double %1, f0xBFF6A09E66785C95
  %or.cond70 = or i1 %i.c, %i.d
  br i1 %or.cond70, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ult double %1, 0.000000e+00
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load double, ptr %i.f, align 8, !tbaa !50
  %3 = fcmp ugt double %0, %i.g
  br i1 %3, label %bb.g, label %select.unfold74

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = load double, ptr %i.h, align 8, !tbaa !52
  %i.j = fcmp ugt double %0, %i.i
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = load double, ptr %i.k, align 8, !tbaa !53
  %i.m = fcmp ugt double %0, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = load double, ptr %i.n, align 8, !tbaa !54
  %i.p = fcmp ugt double %0, %i.o
  br i1 %i.p, label %select.unfold, label %bb.g

select.unfold:                                    ; preds = %bb.f
  br label %bb.g

select.unfold74:                                  ; preds = %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %select.unfold74, %bb.d, %select.unfold
  %.066.ph = phi i32 [ 5, %bb.f ], [ 3, %bb.d ], [ 2, %bb.c ], [ 4, %bb.e ], [ 6, %select.unfold ], [ 1, %select.unfold74 ] ; 2 uses
  %i.q = zext nneg i32 %.066.ph to i64
  %i.r = getelementptr [8 x i8], ptr %i.b, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -8       ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 456
  %i.v = load double, ptr %i.u, align 8, !tbaa !49
  %i.w = fsub double %0, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  %i.y = load double, ptr %i.x, align 8, !tbaa !58
  %i.z = fsub double %1, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ac = tail call { double, double } %i.ab(double %i.w, double %i.z, ptr noundef %i.t) ; 2 uses
  %i.ad = extractvalue { double, double } %i.ac, 0
  %i.ae = extractvalue { double, double } %i.ac, 1 ; 7 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 440
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !46
  %i.ai = fadd double %i.ad, %i.ah                ; 13 uses
  switch i32 %.066.ph, label %default.unreachable91 [
    i32 1, label %bb.h
    i32 2, label %.split99
    i32 3, label %.split97
    i32 4, label %.split95
    i32 5, label %.split93
    i32 6, label %.split
  ]

.split99:                                         ; preds = %bb.g
  %i.aj = fcmp oge double %i.ai, f0xBFE657184AF502F7
  %i.ak = fcmp ole double %i.ai, f0x400921FB54479CB4
  %or.cond5 = and i1 %i.aj, %i.ak
  %i.al = fcmp oge double %i.ae, -1.000000e-10
  %i.am = select i1 %or.cond5, i1 %i.al, i1 false
  %.0.in.fr100 = freeze i1 %i.am
  br i1 %.0.in.fr100, label %bb.i, label %bb.j

.split97:                                         ; preds = %bb.g
  %i.an = fcmp oge double %i.ai, f0xC00921FB54479CB4
  %i.ao = fcmp ole double %i.ai, f0xBFFBECDE5D9A3671
  %or.cond8 = and i1 %i.an, %i.ao
  %i.ap = fcmp ole double %i.ae, 1.000000e-10
  %i.aq = select i1 %or.cond8, i1 %i.ap, i1 false
  %.0.in.fr98 = freeze i1 %i.aq
  br i1 %.0.in.fr98, label %bb.i, label %bb.j

.split95:                                         ; preds = %bb.g
  %i.ar = fcmp oge double %i.ai, f0xBFFBECDE5DA7F4E1
  %i.as = fcmp ole double %i.ai, f0xBFD657184ACBC7A7
  %or.cond11 = and i1 %i.ar, %i.as
  %i.at = fcmp ole double %i.ae, 1.000000e-10
  %i.au = select i1 %or.cond11, i1 %i.at, i1 false
  %.0.in.fr96 = freeze i1 %i.au
  br i1 %.0.in.fr96, label %bb.i, label %bb.j

.split93:                                         ; preds = %bb.g
  %i.av = fcmp oge double %i.ai, f0xBFD657184B02C167
  %i.aw = fcmp ole double %i.ai, f0x3FF657184AEE23BF
  %or.cond14 = and i1 %i.av, %i.aw
  %i.ax = fcmp ole double %i.ae, 1.000000e-10
  %i.ay = select i1 %or.cond14, i1 %i.ax, i1 false
  %.0.in.fr94 = freeze i1 %i.ay
  br i1 %.0.in.fr94, label %bb.i, label %bb.j

.split:                                           ; preds = %bb.g
  %i.az = fcmp oge double %i.ai, f0x3FF657184AE0654F
  %i.ba = fcmp ole double %i.ai, f0x400921FB54479CB4
  %or.cond17 = and i1 %i.az, %i.ba
  %i.bb = fcmp ole double %i.ae, 1.000000e-10
  %i.bc = select i1 %or.cond17, i1 %i.bb, i1 false
  %.0.in.fr92 = freeze i1 %i.bc
  br i1 %.0.in.fr92, label %bb.i, label %bb.j

default.unreachable91:                            ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bd = fcmp oge double %i.ai, f0xC00921FB54479CB4
  %i.be = fcmp ole double %i.ai, f0xBFE657184AD98617
  %or.cond = and i1 %i.bd, %i.be
  %i.bf = fcmp oge double %i.ae, -1.000000e-10
  %i.bg = select i1 %or.cond, i1 %i.bf, i1 false
  %.0.in.fr = freeze i1 %i.bg
  br i1 %.0.in.fr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split99, %.split97, %.split95, %.split93, %.split, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %.split99, %.split97, %.split95, %.split93, %.split, %bb.i, %bb.a, %bb.h
  %i.bh = phi double [ %i.ai, %bb.i ], [ +inf, %bb.a ], [ +inf, %bb.h ], [ +inf, %.split ], [ +inf, %.split93 ], [ +inf, %.split95 ], [ +inf, %.split97 ], [ +inf, %.split99 ]
  %i.bi = phi double [ %i.ae, %bb.i ], [ +inf, %bb.a ], [ +inf, %bb.h ], [ +inf, %.split ], [ +inf, %.split93 ], [ +inf, %.split95 ], [ +inf, %.split97 ], [ +inf, %.split99 ]
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bh, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bi, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15imoll_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = fcmp ult double %1, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ugt double %0, f0xBFE657184AE74487
  %i.e = zext i1 %i.d to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = fcmp ugt double %0, f0xBFFBECDE5DA115A9
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ugt double %0, f0xBFD657184AE74487
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = fcmp ugt double %0, f0x3FF657184AE74487
  %. = select i1 %i.h, i64 5, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 3, %bb.d ], [ 2, %bb.c ], [ %., %bb.e ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 440
  %i.l = load double, ptr %i.k, align 8, !tbaa !46
  %i.m = fsub double %0, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = tail call { double, double } %i.o(double %i.m, double %1, ptr noundef %i.j) ; 2 uses
  %i.q = extractvalue { double, double } %i.p, 0
  %i.r = extractvalue { double, double } %i.p, 1
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  %i.u = load double, ptr %i.t, align 8, !tbaa !49
  %i.v = fadd double %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 464
  %i.x = load double, ptr %i.w, align 8, !tbaa !58
  %i.y = fadd double %i.r, %i.x
  %.fca.0.insert = insertvalue { double, double } poison, double %i.v, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.y, 1
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
