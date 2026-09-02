Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_intersections?download=true
inline.NumInlined: 39098
inline.NumDeleted: 8954
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 153
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy:bb.a

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ar, align 8, !tbaa !862
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.k:                                             ; preds = %bb.g
  %i.bb = icmp eq i64 %i.b, 1
  %i.bc = icmp eq i64 %i.ai, %i.aj
  %or.cond = and i1 %i.bc, %i.bb
  br i1 %or.cond, label %bb.l, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bd, align 8, !tbaa !862
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = icmp eq i64 %i.b, 1
  br i1 %i.bf, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bg = sub nuw i64 %i.aj, %i.ai
  store i64 %i.bg, ptr %i.ab, align 8, !tbaa !855
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !862, !range !391, !noundef !392 ; 2 uses
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = xor i8 %i.bi, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.bk, ptr %i.bl, align 8, !tbaa !862
  %i.bm = load i64, ptr %i.be, align 16
  %i.bn = icmp ne i64 %i.bm, 1
  %or.cond.i59.not = select i1 %i.bj, i1 true, i1 %i.bn
  br i1 %or.cond.i59.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %i.aa, align 8
  %i.bp = select i1 %.pre-phi, ptr %0, ptr %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !855
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.bl, align 8, !tbaa !862
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.q:                                             ; preds = %bb.m
  %i.bs = sub i64 %i.ai, %i.aj
  store i64 %i.bs, ptr %i.ab, align 8, !tbaa !855
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !855 ; 2 uses
  %.not5568 = icmp eq i64 %i.bu, 0
  br i1 %.not5568, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %.069 = phi i64 [ %i.bw, %.lr.ph ], [ 1, %bb.q ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.069
  store i64 -1, ptr %i.bv, align 8, !tbaa !855
  %i.bw = add i64 %.069, 1                        ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !855 ; 2 uses
  %.not55 = icmp eq i64 %i.by, 0
  br i1 %.not55, label %.lr.ph, label %._crit_edge, !llvm.loop !8056

._crit_edge:                                      ; preds = %.lr.ph, %bb.q
  %.0.lcssa = phi i64 [ 1, %bb.q ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.bu, %bb.q ], [ %i.by, %.lr.ph ]
  %i.bz = add i64 %.lcssa, -1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0.lcssa
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !855
  %.not56 = icmp eq ptr %0, %1
  br i1 %.not56, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.cb = add i64 %.0.lcssa, 1                    ; 3 uses
  %.idx65 = shl nuw nsw i64 %i.cb, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx65
  %i.cd = load i64, ptr %i.a, align 16, !tbaa !853
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.cb
  %i.cf = sub nsw i64 %i.cd, %i.cb
  %gepdiff66 = shl nsw i64 %i.cf, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr nonnull align 8 %i.cc, i64 %gepdiff66, i1 false)
  %.pre77 = load i8, ptr %i.c, align 1, !tbaa !390, !range !391
  %.promoted.pre = load i64, ptr %i.be, align 16, !tbaa !853
  %.pre81 = trunc nuw i8 %.pre77 to i1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %.pre-phi82 = phi i1 [ %.pre81, %bb.r ], [ %.pre-phi, %._crit_edge ]
  %.promoted = phi i64 [ %.promoted.pre, %bb.r ], [ %spec.select.i, %._crit_edge ]
  %i.cg = load ptr, ptr %i.aa, align 8
  %i.ch = select i1 %.pre-phi82, ptr %0, ptr %i.cg ; 2 uses
  %i.ci = add i64 %.promoted, -1                  ; 2 uses
  %.not.i71 = icmp eq i64 %i.ci, 0
  br i1 %.not.i71, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.s, %bb.t
  %i.cj = phi i64 [ %i.cp, %bb.t ], [ %i.ci, %bb.s ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !855
  %.not2.i = icmp eq i64 %i.cl, 0
  br i1 %.not2.i, label %bb.t, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread: ; preds = %.lr.ph73
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !862, !range !391, !noundef !392
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.cn, ptr %i.co, align 8, !tbaa !862
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.t:                                             ; preds = %.lr.ph73
  store i64 %i.cj, ptr %i.be, align 16, !tbaa !853
  %i.cp = add i64 %i.cj, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph73, !llvm.loop !26

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %bb.t, %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !862, !range !391, !noundef !392 ; 2 uses
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.cr, ptr %i.ct, align 8, !tbaa !862
  br i1 %i.cs, label %bb.u, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.u:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.cu = load i64, ptr %i.ch, align 8, !tbaa !855
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.v, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.ct, align 8, !tbaa !862
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.v, %bb.u, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread, %bb.p, %bb.o, %bb.n, %bb.j, %bb.i, %bb.h, %bb.l, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1                      ; 2 uses
  br i1 %.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !853
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 288230376151711744) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !390, !range !391, !noundef !392
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i64, ptr %0, align 16
  %spec.select.i8.i = select i1 %i.e, i64 2, i64 %i.f ; 2 uses
  %i.g = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.g, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.h = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #38 ; 2 uses
  %i.k = load i8, ptr %i.c, align 1, !tbaa !390, !range !391, !noundef !392
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %i.l, ptr %0, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 16, !tbaa !853
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.o, i64 %i.r, i1 false)
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.t = load i8, ptr %i.s, align 2, !tbaa !863, !range !391, !noundef !392
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %0, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.w) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.c, align 1, !tbaa !390
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %spec.select.i, ptr %i.p, align 16, !tbaa !853
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !438
  store ptr %i.j, ptr %i.m, align 8, !tbaa !438
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.x, align 16, !tbaa !853
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.g, %bb.f, %bb.a
  %i.y = load i64, ptr %2, align 8, !tbaa !855    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 5 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !390, !range !391, !noundef !392 ; 2 uses
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %0, ptr %i.ad      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !390, !range !391, !noundef !392
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = select i1 %i.ah, ptr %1, ptr %i.aj      ; 3 uses
  %.not4352 = icmp eq i64 %i.y, 0
  br i1 %.not4352, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i64, ptr %i.al, align 16, !tbaa !853 ; 6 uses
  %exitcond.not.not83 = icmp eq i64 %i.am, 0
  br i1 %exitcond.not.not83, label %.critedge, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !855
  %add = add i64 %i.y, %i.an                      ; 2 uses
  %not.add.overflow.not = icmp ult i64 %add, %i.y
  store i64 %add, ptr %i.ae, align 8, !tbaa !855
  br i1 %not.add.overflow.not, label %bb.h, label %.critedge, !llvm.loop !8057

bb.h:                                             ; preds = %.lr.ph86
  %exitcond.not.not.peel = icmp eq i64 %i.am, 1
  br i1 %exitcond.not.not.peel, label %.critedge, label %.lr.ph86.peel.newph

bb.i:                                             ; preds = %.lr.ph86.peel.newph
  %exitcond.not.not = icmp eq i64 %i.as, %i.am
  br i1 %exitcond.not.not, label %.critedge, label %.lr.ph86.peel.newph, !llvm.loop !8058

.lr.ph86.peel.newph:                              ; preds = %bb.h, %bb.i
  %.05484 = phi i64 [ %i.as, %bb.i ], [ 1, %bb.h ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.05484
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !855 ; 2 uses
  %i.aq = add i64 %i.ap, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.05484
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !855
  %i.as = add nuw i64 %.05484, 1                  ; 3 uses
  %.not43.not = icmp ne i64 %i.ap, -1             ; 3 uses
  br i1 %.not43.not, label %.critedge, label %bb.i, !llvm.loop !8057

.critedge:                                        ; preds = %.lr.ph86, %bb.h, %.lr.ph86.peel.newph, %bb.i, %.lr.ph, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.039.lcssa.off0 = phi i64 [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ], [ %i.y, %.lr.ph ], [ 0, %.lr.ph86 ], [ 1, %bb.h ], [ 1, %bb.i ], [ 0, %.lr.ph86.peel.newph ]
  %.0.lcssa = phi i64 [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ], [ %i.am, %.lr.ph ], [ 1, %.lr.ph86 ], [ %i.am, %bb.h ], [ %i.am, %bb.i ], [ %i.as, %.lr.ph86.peel.newph ] ; 3 uses
  %.not43.lcssa = phi i1 [ true, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ], [ false, %.lr.ph ], [ true, %.lr.ph86 ], [ false, %bb.h ], [ %.not43.not, %.lr.ph86.peel.newph ], [ %.not43.not, %bb.i ]
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge
  %.idx51 = shl nuw nsw i64 %.0.lcssa, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx51
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i64, ptr %i.au, align 16, !tbaa !853
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.0.lcssa
  %i.ax = sub nsw i64 %i.av, %.0.lcssa
  %gepdiff = shl nsw i64 %i.ax, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aw, ptr align 8 %i.at, i64 %gepdiff, i1 false)
  %.pre66.pre = load i8, ptr %i.z, align 1, !tbaa !390, !range !391
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  %.pre66 = phi i8 [ %.pre66.pre, %bb.j ], [ %i.aa, %.critedge ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.promoted.pre = load i64, ptr %.phi.trans.insert, align 16, !tbaa !853 ; 4 uses
  br i1 %.not43.lcssa, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = add i64 %.promoted.pre, 1
  %spec.select.i44 = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 288230376151711744) ; 7 uses
  %i.az = trunc nuw i8 %.pre66 to i1
  %i.ba = load i64, ptr %0, align 16
  %spec.select.i8.i45 = select i1 %i.az, i64 2, i64 %i.ba ; 2 uses
  %i.bb = icmp ugt i64 %spec.select.i44, %spec.select.i8.i45
  br i1 %i.bb, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i46, label %bb.q

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i46: ; preds = %bb.l
  %i.bc = shl nuw nsw i64 %spec.select.i8.i45, 2
  %.sroa.speculated16.i47 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %spec.select.i44)
  %.sroa.speculated.i48 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i47, i64 288230376151711744) ; 2 uses
  %i.bd = shl nuw nsw i64 %.sroa.speculated.i48, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #38 ; 2 uses
  %i.bf = load i8, ptr %i.z, align 1, !tbaa !390, !range !391, !noundef !392
  %i.bg = trunc nuw i8 %i.bf to i1                ; 2 uses
  %i.bh = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.bi = select i1 %i.bg, ptr %0, ptr %i.bh
  %i.bj = load i64, ptr %.phi.trans.insert, align 16, !tbaa !853
  %i.bk = shl i64 %i.bj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.bi, i64 %i.bk, i1 false)
  br i1 %i.bg, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i46
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !863, !range !391, !noundef !392
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i64, ptr %0, align 16
  %i.bp = shl i64 %i.bo, 3
  tail call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bp) #37
  %.pre.pre.pre = load i8, ptr %i.z, align 1, !tbaa !390, !range !391
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i46
  store i8 0, ptr %i.z, align 1, !tbaa !390
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre.pre = phi i8 [ 0, %bb.o ], [ %.pre.pre.pre, %bb.n ]
  store i64 %spec.select.i44, ptr %.phi.trans.insert, align 16, !tbaa !853
  store i64 %.sroa.speculated.i48, ptr %0, align 16, !tbaa !438
  store ptr %i.be, ptr %i.ac, align 8, !tbaa !438
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit49

bb.q:                                             ; preds = %bb.l
  store i64 %spec.select.i44, ptr %.phi.trans.insert, align 16, !tbaa !853
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit49

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit49: ; preds = %bb.p, %bb.q
  %.pre = phi i8 [ %.pre.pre, %bb.p ], [ %.pre66, %bb.q ] ; 3 uses
  %i.bq = icmp ugt i64 %spec.select.i44, %.promoted.pre
  br i1 %i.bq, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit49
  %i.br = trunc nuw i8 %.pre to i1
  %i.bs = load ptr, ptr %i.ac, align 8
  %i.bt = select i1 %i.br, ptr %0, ptr %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.promoted.pre
  store i64 %.039.lcssa.off0, ptr %i.bu, align 8, !tbaa !855
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit49, %bb.r
  %.promoted = phi i64 [ %spec.select.i44, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit49 ], [ %spec.select.i44, %bb.r ], [ %.promoted.pre, %bb.k ]
  %i.bv = phi i8 [ %.pre, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit49 ], [ %.pre, %bb.r ], [ %.pre66, %bb.k ]
  %i.bw = trunc nuw i8 %i.bv to i1
  %i.bx = load ptr, ptr %i.ac, align 8
  %i.by = select i1 %i.bw, ptr %0, ptr %i.bx      ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = add i64 %.promoted, -1                  ; 2 uses
  %.not.i62 = icmp eq i64 %i.ca, 0
  br i1 %.not.i62, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph63

.lr.ph63:                                         ; preds = %._crit_edge, %bb.s
  %i.cb = phi i64 [ %i.ch, %bb.s ], [ %i.ca, %._crit_edge ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !855
  %.not2.i = icmp eq i64 %i.cd, 0
  br i1 %.not2.i, label %bb.s, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread: ; preds = %.lr.ph63
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !862, !range !391, !noundef !392
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.cf, ptr %i.cg, align 8, !tbaa !862
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.s:                                             ; preds = %.lr.ph63
  store i64 %i.cb, ptr %i.bz, align 16, !tbaa !853
  %i.ch = add i64 %i.cb, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph63, !llvm.loop !26

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %bb.s, %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !862, !range !391, !noundef !392 ; 2 uses
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.cj, ptr %i.cl, align 8, !tbaa !862
  br i1 %i.ck, label %bb.t, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.t:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.cm = load i64, ptr %i.by, align 8, !tbaa !855
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.u, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.cl, align 8, !tbaa !862
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %bb.t, %bb.u
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !853 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 16, !tbaa !853 ; 4 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 8 uses
  %storemerge.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.d) ; 6 uses
  %i.e = icmp eq i64 %storemerge.i, 1
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !862, !range !391, !noundef !392
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.j = load i8, ptr %i.i, align 1, !tbaa !390, !range !391, !noundef !392
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %1, ptr %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !855  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.q = load i8, ptr %i.p, align 1, !tbaa !390, !range !391, !noundef !392
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.r, ptr %2, ptr %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !855  ; 3 uses
  %i.w = icmp ugt i64 %i.v, %i.o
  %.0123 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.o)
  %.0122 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.o)
  %.067.in = xor i1 %i.w, %i.h                    ; 2 uses
  %i.x = sub i64 %.0123, %.0122
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !390, !range !391, !noundef !392
  %i.aa = trunc nuw i8 %i.z to i1                 ; 2 uses
  %i.ab = load i64, ptr %0, align 16
end_hunk_0
