inline.NumInlined: 3818
inline.NumDeleted: 1488
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_:bb.a
  br i1 %.not.i.i.i22, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23 unwind label %bb.n, !inline_history !138 ; 0 uses

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23: ; preds = %bb.k, %bb.j
  store ptr %.sroa.0.2, ptr %i.ae, align 8, !tbaa !130
  %.not.i2.i.i24 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i2.i.i24, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29, label %bb.l

bb.l:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23
  %i.ak = load ptr, ptr %.sroa.0.2, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27 unwind label %bb.n, !inline_history !138

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27: ; preds = %bb.l
  %i.an = load ptr, ptr %.sroa.0.2, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29 unwind label %bb.m, !inline_history !133 ; 0 uses

bb.m:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #34
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29: ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.n ], [ %.sroa.0.1, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 ] ; 3 uses
  %.pn17 = phi { ptr, i32 } [ %i.at, %bb.n ], [ %.pn, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 ]
  %.not.i.i30 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i30, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %.sroa.0.3, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.3)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31 unwind label %bb.q, !inline_history !133 ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn17
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !113 ; 3 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 288230376151711744) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !115, !range !116, !noundef !117
  %i.e = trunc nuw i8 %i.d to i1                  ; 4 uses
  %i.f = load i64, ptr %0, align 16               ; 2 uses
  %spec.select.i8.i = select i1 %i.e, i64 2, i64 %i.f ; 2 uses
  %i.g = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.g, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.f

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.a
  %i.h = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #33 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = select i1 %i.e, ptr %0, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !tbaa !113
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.m, i64 %i.p, i1 false)
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.r = load i8, ptr %i.q, align 2, !tbaa !127, !range !116, !noundef !117
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #32
  %.pre.pre = load i8, ptr %i.c, align 1, !tbaa !115, !range !116
  %i.u = trunc nuw i8 %.pre.pre to i1
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.c, align 1, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre = phi i1 [ false, %bb.d ], [ %i.u, %bb.c ]
  store i64 %spec.select.i, ptr %i.n, align 16, !tbaa !113
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !54
  store ptr %i.j, ptr %i.k, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.v, align 16, !tbaa !113
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre76 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i1 [ %.pre, %bb.e ], [ %i.e, %bb.f ] ; 3 uses
  %i.w = phi ptr [ %i.j, %bb.e ], [ %.pre76, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = select i1 %.pre-phi, ptr %0, ptr %i.w    ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !115, !range !116, !noundef !117
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %1, ptr %i.ad      ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !118 ; 5 uses
  %i.ag = load i64, ptr %2, align 8, !tbaa !118   ; 5 uses
  %.not = icmp ult i64 %i.af, %i.ag
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.ah = sub nuw i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !118
  %.not57 = icmp eq ptr %0, %1
  br i1 %.not57, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i64, ptr %i.a, align 16, !tbaa !113
  %.idx = shl nuw nsw i64 %i.aj, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %gepdiff = add nsw i64 %.idx, -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.ai, i64 %gepdiff, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i8, ptr %i.al, align 8, !tbaa !126, !range !116, !noundef !117 ; 2 uses
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.am, ptr %i.ao, align 8, !tbaa !126
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 16
  %i.ar = icmp eq i64 %i.aq, 1
  %or.cond.i = select i1 %i.an, i1 %i.ar, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.i:                                             ; preds = %bb.h
  %i.as = load i8, ptr %i.c, align 1, !tbaa !115, !range !116, !noundef !117
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load ptr, ptr %i.x, align 8
  %i.av = select i1 %i.at, ptr %0, ptr %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !118
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ao, align 8, !tbaa !126
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.k:                                             ; preds = %bb.g
  %i.ay = icmp eq i64 %i.b, 1
  %i.az = icmp eq i64 %i.af, %i.ag
  %or.cond = and i1 %i.az, %i.ay
  br i1 %or.cond, label %bb.l, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ba, align 8, !tbaa !126
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bc = icmp eq i64 %i.b, 1
  br i1 %i.bc, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bd = sub nuw i64 %i.ag, %i.af
  store i64 %i.bd, ptr %i.y, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !126, !range !116, !noundef !117 ; 2 uses
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = xor i8 %i.bf, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !126
  %i.bj = load i64, ptr %i.bb, align 16
  %i.bk = icmp ne i64 %i.bj, 1
  %or.cond.i59.not = select i1 %i.bg, i1 true, i1 %i.bk
  br i1 %or.cond.i59.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.x, align 8
  %i.bm = select i1 %.pre-phi, ptr %0, ptr %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !118
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.p, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.bi, align 8, !tbaa !126
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.q:                                             ; preds = %bb.m
  %i.bp = sub i64 %i.af, %i.ag
  store i64 %i.bp, ptr %i.y, align 8, !tbaa !118
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !118 ; 2 uses
  %.not5568 = icmp eq i64 %i.br, 0
  br i1 %.not5568, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %.069 = phi i64 [ %i.bt, %.lr.ph ], [ 1, %bb.q ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.069
  store i64 -1, ptr %i.bs, align 8, !tbaa !118
  %i.bt = add i64 %.069, 1                        ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !118 ; 2 uses
  %.not55 = icmp eq i64 %i.bv, 0
  br i1 %.not55, label %.lr.ph, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %bb.q
  %.0.lcssa = phi i64 [ 1, %bb.q ], [ %i.bt, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.br, %bb.q ], [ %i.bv, %.lr.ph ]
  %i.bw = add i64 %.lcssa, -1
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.0.lcssa
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !118
  %.not56 = icmp eq ptr %0, %1
  br i1 %.not56, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.by = add i64 %.0.lcssa, 1                    ; 3 uses
  %.idx65 = shl nuw nsw i64 %i.by, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx65
  %i.ca = load i64, ptr %i.a, align 16, !tbaa !113
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.by
  %i.cc = sub nsw i64 %i.ca, %i.by
  %gepdiff66 = shl nsw i64 %i.cc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.bz, i64 %gepdiff66, i1 false)
  %.pre77 = load i8, ptr %i.c, align 1, !tbaa !115, !range !116
  %.promoted.pre = load i64, ptr %i.bb, align 16, !tbaa !113
  %.pre81 = trunc nuw i8 %.pre77 to i1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %.pre-phi82 = phi i1 [ %.pre81, %bb.r ], [ %.pre-phi, %._crit_edge ]
  %.promoted = phi i64 [ %.promoted.pre, %bb.r ], [ %spec.select.i, %._crit_edge ]
  %i.cd = load ptr, ptr %i.x, align 8
  %i.ce = select i1 %.pre-phi82, ptr %0, ptr %i.cd ; 2 uses
  %i.cf = add i64 %.promoted, -1                  ; 2 uses
  %.not.i71 = icmp eq i64 %i.cf, 0
  br i1 %.not.i71, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.s, %bb.t
  %i.cg = phi i64 [ %i.cm, %bb.t ], [ %i.cf, %bb.s ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !118
  %.not2.i = icmp eq i64 %i.ci, 0
  br i1 %.not2.i, label %bb.t, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread: ; preds = %.lr.ph73
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !126, !range !116, !noundef !117
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ck, ptr %i.cl, align 8, !tbaa !126
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.t:                                             ; preds = %.lr.ph73
  store i64 %i.cg, ptr %i.bb, align 16, !tbaa !113
  %i.cm = add i64 %i.cg, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph73, !llvm.loop !140

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %bb.t, %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !126, !range !116, !noundef !117 ; 2 uses
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.co, ptr %i.cq, align 8, !tbaa !126
  br i1 %i.cp, label %bb.u, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.u:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.cr = load i64, ptr %i.ce, align 8, !tbaa !118
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.v, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.cq, align 8, !tbaa !126
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
  %i.b = load i64, ptr %i.a, align 16, !tbaa !113
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 288230376151711744) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !115, !range !116, !noundef !117
  %i.e = trunc nuw i8 %i.d to i1                  ; 3 uses
  %i.f = load i64, ptr %0, align 16               ; 2 uses
  %spec.select.i8.i = select i1 %i.e, i64 2, i64 %i.f ; 2 uses
  %i.g = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.g, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.h = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #33 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = select i1 %i.e, ptr %0, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !tbaa !113
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.m, i64 %i.p, i1 false)
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.r = load i8, ptr %i.q, align 2, !tbaa !127, !range !116, !noundef !117
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.c, align 1, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %spec.select.i, ptr %i.n, align 16, !tbaa !113
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !54
  store ptr %i.j, ptr %i.k, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.u, align 16, !tbaa !113
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.g, %bb.f, %bb.a
  %i.v = load i64, ptr %2, align 8, !tbaa !118    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !115, !range !116, !noundef !117 ; 2 uses
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %0, ptr %i.aa       ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !115, !range !116, !noundef !117
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = select i1 %i.ae, ptr %1, ptr %i.ag      ; 3 uses
  %.not4352 = icmp eq i64 %i.v, 0
  br i1 %.not4352, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !113 ; 6 uses
  %exitcond.not.not83 = icmp eq i64 %i.aj, 0
  br i1 %exitcond.not.not83, label %.critedge, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph
  %i.ak = zext i64 %i.v to i128
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.am = zext i64 %i.al to i128
end_hunk_0
begin_hunk_1_@_ZSt20__throw_length_errorPKc

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(27) %0, i128 noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i128 %1, 6
  %i.b = trunc i128 %i.a to i64
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !113 ; 7 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !115, !range !116, !noundef !117
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not38 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !115, !range !116 ; 3 uses
  br i1 %.not38, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !118
  %i.v = sub nuw nsw i64 64, %i.d
  %i.w = lshr i64 %i.u, %i.v
  %.not39 = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not39 to i64
  %spec.select = add i64 %i.f, %i.x
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.y = add i64 %.0, %i.b
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.aa = trunc nuw i8 %.pre to i1                ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 2 uses
  %spec.select.i8.i = select i1 %i.aa, i64 2, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge
  %i.ad = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #33 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !127, !range !116, !noundef !117
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #32
  %.pre52.pre = load i8, ptr %i.z, align 1, !tbaa !115, !range !116
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !115
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre52 = phi i8 [ 0, %bb.g ], [ %.pre52.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !113
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !54
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !113
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre54 = load ptr, ptr %.phi.trans.insert53, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ao = phi ptr [ %i.af, %bb.h ], [ %.pre54, %bb.i ]
  %i.ap = phi i8 [ %.pre52, %bb.h ], [ %.pre, %bb.i ]
  %i.aq = trunc nuw i8 %i.ap to i1                ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.as = select i1 %i.aq, ptr %0, ptr %i.ao      ; 4 uses
  %.not40 = icmp eq i64 %spec.select.i, %i.f
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %spec.select.i
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  store i64 0, ptr %i.au, align 8, !tbaa !118
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.av = lshr i128 %1, 3
  %i.aw = trunc i128 %i.av to i64                 ; 4 uses
  %i.ax = shl nuw nsw i64 %spec.select.i, 3       ; 3 uses
  %.not41 = icmp ugt i64 %i.ax, %i.aw
  br i1 %.not41, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load i64, ptr %0, align 16
  %i.az = icmp ne i64 %i.ay, 0
  %.not51 = select i1 %i.aq, i1 true, i1 %i.az
  br i1 %.not51, label %bb.p, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43: ; preds = %bb.l
  %i.ba = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc unwind label %bb.q     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bb = load ptr, ptr %i.ar, align 8            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.bb, i64 %i.ax, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !127, !range !116, !noundef !117
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef 0) #32
  %.pre55.pre = load i8, ptr %i.z, align 1, !tbaa !115, !range !116
  %i.bf = trunc nuw i8 %.pre55.pre to i1
  br label %bb.o

bb.n:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre55 = phi i1 [ false, %bb.n ], [ %i.bf, %bb.m ]
  store i64 1, ptr %i.e, align 16, !tbaa !113
  store i64 1, ptr %0, align 16, !tbaa !54
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.p:                                             ; preds = %bb.l
  store i64 1, ptr %i.e, align 16, !tbaa !113
  %.pre56 = load ptr, ptr %i.ar, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.p, %bb.o
  %.pre-phi = phi i1 [ %i.aq, %bb.p ], [ %.pre55, %bb.o ]
  %i.bi = phi ptr [ %.pre56, %bb.p ], [ %i.ba, %bb.o ]
  %i.bj = select i1 %.pre-phi, ptr %0, ptr %i.bi
  store i64 0, ptr %i.bj, align 8, !tbaa !118
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bk, align 8, !tbaa !126
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  %i.bl = sub nuw nsw i64 %i.ax, %i.aw
  %i.bm = shl i64 %i.f, 3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.as, i64 %.sroa.speculated, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 0, i64 %i.aw, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.r, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(27) %0, i128 noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i128 %1, 6
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !113 ; 8 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !115, !range !116, !noundef !117
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !115, !range !116 ; 3 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %.pre to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %0, ptr %i.q
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.f
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !118
  %i.v = sub nuw nsw i64 64, %i.d
  %i.w = lshr i64 %i.u, %i.v
  %.not94 = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.x
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.y = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.aa = trunc nuw i8 %.pre to i1                ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 3 uses
  %spec.select.i8.i = select i1 %i.aa, i64 2, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ad = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #33 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !127, !range !116, !noundef !117
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #32
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !115, !range !116
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !115
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !113
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !54
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !113
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.ao = icmp ne i64 %i.ab, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi i1 [ true, %bb.h ], [ %i.ao, %bb.i ]
  %.pre117 = phi ptr [ %i.af, %bb.h ], [ %.pre115, %bb.i ] ; 3 uses
  %i.aq = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.ar = trunc nuw i8 %i.aq to i1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = select i1 %i.ar, ptr %0, ptr %.pre117   ; 19 uses
  %i.au = icmp ult i64 %i.y, %i.b
  br i1 %i.au, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.ar, i1 true, i1 %i.ap
  br i1 %.not104, label %bb.n, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !127, !range !116, !noundef !117
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #32
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !115, !range !116
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !115
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !113
  store i64 1, ptr %0, align 16, !tbaa !54
  store ptr %i.av, ptr %i.as, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !113
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.n, %bb.m
  %.pre-phi122 = phi ptr [ %i.at, %bb.n ], [ %.pre116, %bb.m ]
  store i64 0, ptr %.pre-phi122, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !126
  br label %bb.x

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.y, 288230376151711745
  %i.bf = sub i64 %i.y, %spec.select.i            ; 2 uses
  br i1 %.not95, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bg = add i64 %i.f, %i.b
  %i.bh = icmp ugt i64 %i.y, %i.bg
  %i.bi = xor i64 %i.bf, -1                       ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %i.at, i64 %i.f ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !118 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = sub nuw nsw i64 64, %i.d
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bi
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !118
  %i.bq = add nsw i64 %i.y, -1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = shl i64 %i.bl, %i.d                     ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.at, i64 %i.y
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !118
  %i.bu = icmp ugt i64 %i.f, 1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %2 = getelementptr i8, ptr %i.bj, i64 -16
  %i.bv = load i64, ptr %2, align 8, !tbaa !118
  %i.bw = sub nuw nsw i64 64, %i.d
  %i.bx = lshr i64 %i.bv, %i.bw
  %i.by = or disjoint i64 %i.bx, %i.br
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !118
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.p
  %.187 = phi i64 [ %i.y, %bb.p ], [ %i.bq, %bb.r ], [ %i.y, %bb.t ], [ %i.y, %bb.s ] ; 12 uses
  %.0 = phi i64 [ %i.bf, %bb.p ], [ 0, %bb.r ], [ 1, %bb.t ], [ 1, %bb.s ] ; 12 uses
  %i.bz = add nsw i64 %i.b, 2                     ; 2 uses
  %i.ca = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.ca, %i.bz
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.cb = sub nuw nsw i64 64, %i.d                ; 2 uses
  %i.cc = add i64 %.187, -1                       ; 2 uses
  %i.cd = sub i64 %i.cc, %.0
  %i.ce = add i64 %i.b, 1
  %i.cf = tail call i64 @llvm.smin.i64(i64 %i.cd, i64 %i.ce)
  %i.cg = add i64 %.0, %i.cf
  %i.ch = sub i64 %.187, %i.cg                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ch, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ci = xor i64 %.0, -1
  %i.cj = add i64 %.187, %i.ci
  %i.ck = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.ck)
  %i.cl = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.cl ; 2 uses
  %i.cm = shl i64 %.187, 3                        ; 2 uses
  %i.cn = sub i64 %.187, %.0
  %i.co = shl i64 %i.cn, 3
  %scevgep134.a = getelementptr i8, ptr %i.at, i64 %i.co ; 2 uses
  %i.cp = shl i64 %i.b, 3                         ; 2 uses
  %i.cq = sub i64 %i.cl, %i.cp
  %scevgep135.a = getelementptr i8, ptr %i.at, i64 %i.cq
  %i.cr = add i64 %.0, %i.b
  %i.cs = shl i64 %i.cr, 3                        ; 2 uses
  %i.ct = sub i64 %i.cm, %i.cs
  %scevgep136.a = getelementptr i8, ptr %i.at, i64 %i.ct
  %i.cu = add i64 %i.cl, -8
  %i.cv = sub i64 %i.cu, %i.cp
  %scevgep137.a = getelementptr i8, ptr %i.at, i64 %i.cv
  %i.cw = add i64 %i.cm, -8
  %i.cx = sub i64 %i.cw, %i.cs
  %scevgep138 = getelementptr i8, ptr %i.at, i64 %i.cx
  %bound0 = icmp ult ptr %scevgep, %scevgep136.a
  %bound1 = icmp ult ptr %scevgep135.a, %scevgep134.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0139 = icmp ult ptr %scevgep, %scevgep138
  %bound1140 = icmp ult ptr %scevgep137.a, %scevgep134.a
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx = or i1 %found.conflict, %found.conflict141
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, -2                      ; 4 uses
  %i.cy = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat143 = shufflevector <2 x i64> %broadcast.splatinsert142, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = add i64 %.0, %index                     ; 2 uses
  %i.da = xor i64 %i.cz, -1
  %i.db = add i64 %.187, %i.da                    ; 2 uses
  %i.dc = sub i64 %i.db, %i.b
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !118, !alias.scope !154
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !118, !alias.scope !157, !noalias !159
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !118, !alias.scope !161
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !118, !alias.scope !157, !noalias !159
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %i.dp = add i64 %n.vec, -1
  %i.dq = add i64 %.0, %i.dp
  %i.dr = sub i64 %i.cc, %i.dq
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.cy, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.ef, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ds = xor i64 %.1108, -1
  %i.dt = add i64 %.187, %i.ds                    ; 2 uses
  %i.du = sub i64 %i.dt, %i.b
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !118
  %i.dx = shl i64 %i.dw, %i.d                     ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dt ; 2 uses
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !118
  %i.dz = add i64 %.1108, %i.b
  %i.ea = sub i64 %invariant.op, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !118
  %i.ed = lshr i64 %i.ec, %i.cb
  %i.ee = or disjoint i64 %i.ed, %i.dx
  store i64 %i.ee, ptr %i.dy, align 8, !tbaa !118
  %i.ef = add i64 %.1108, 1                       ; 3 uses
  %i.eg = sub nsw i64 %.187, %i.ef                ; 2 uses
  %.not96 = icmp slt i64 %i.eg, %i.bz
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !165

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.u
  %.1.lcssa = phi i64 [ %.0, %bb.u ], [ %i.cy, %middle.block ], [ %i.ef, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.ca, %bb.u ], [ %i.dr, %middle.block ], [ %i.eg, %scalar.ph ]
  %i.eh = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.eh
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ei = xor i64 %.1.lcssa, -1
  %i.ej = add i64 %.187, %i.ei                    ; 2 uses
  %i.ek = sub i64 %i.ej, %i.b
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !118
  %i.en = shl i64 %i.em, %i.d
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ej
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !118
  %i.ep = add i64 %.1.lcssa, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.2 = phi i64 [ %i.ep, %bb.v ], [ %.1.lcssa, %._crit_edge ]
  %i.eq = sub i64 %.187, %.2
  %i.er = shl i64 %i.eq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.er, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.w, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE15do_assign_floatIeEEvT_(ptr noundef nonnull align 16 dereferenceable(27) %0, x86_fp80 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::runtime_error", align 8 ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = fcmp olt x86_fp80 %1, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fneg x86_fp80 %1
  tail call void @_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE15do_assign_floatIeEEvT_(ptr noundef nonnull align 16 dereferenceable(27) %0, x86_fp80 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 16
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.j = load i8, ptr %i.i, align 1, !tbaa !115, !range !116, !noundef !117
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %0, ptr %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !118
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.e, align 8, !tbaa !126
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.e:                                             ; preds = %bb.a
  %i.q = fcmp oeq x86_fp80 %1, 0.000000e+00
  br i1 %i.q, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5boost14multiprecision8backends8eval_gcdILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_:bb.a
  %i.dm = load i64, ptr %i.ak, align 16, !tbaa !113
  %i.dn = icmp eq i64 %i.dm, 1                    ; 2 uses
  br i1 %i.dn, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit55, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit55.thread

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit55: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread190
  %i.do = load i8, ptr %i.am, align 1, !tbaa !115, !range !116, !noundef !117
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = load ptr, ptr %i.aj, align 8
  %i.dr = select i1 %i.dp, ptr %5, ptr %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !118
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.loopexit, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit55.thread

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit55.thread: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread190, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit55
  %i.du = load i64, ptr %i.ae, align 16, !tbaa !113 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 3
  br i1 %i.dv, label %bb.ac, label %bb.bc

bb.ac:                                            ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit55.thread
  %i.dw = icmp eq i64 %i.du, 1
  br i1 %i.dw, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load i8, ptr %i.am, align 1, !tbaa !115, !range !116, !noundef !117
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = load ptr, ptr %i.aj, align 8
  %i.ea = select i1 %i.dy, ptr %5, ptr %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !118 ; 3 uses
  %i.ec = load i8, ptr %i.ag, align 1, !tbaa !115, !range !116, !noundef !117 ; 2 uses
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = load ptr, ptr %i.ad, align 8
  %i.ef = select i1 %i.ed, ptr %4, ptr %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !118 ; 3 uses
  %i.eh = icmp ne i64 %i.eb, 0
  %i.ei = icmp ne i64 %i.eg, 0
  %or.cond.i80 = and i1 %i.eh, %i.ei
  br i1 %or.cond.i80, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ej = or i64 %i.eg, %i.eb
  br label %_ZN5boost14multiprecision8backends8eval_gcdEyy.exit

bb.af:                                            ; preds = %bb.ad
  %i.ek = call noundef i64 @_ZSt3gcdIyyENSt11common_typeIJT_T0_EE4typeES1_S2_(i64 noundef %i.eb, i64 noundef %i.eg) #21
  %.pre228 = load i8, ptr %i.ag, align 1, !tbaa !115, !range !116
  br label %_ZN5boost14multiprecision8backends8eval_gcdEyy.exit

_ZN5boost14multiprecision8backends8eval_gcdEyy.exit: ; preds = %bb.ae, %bb.af
  %i.el = phi i8 [ %.pre228, %bb.af ], [ %i.ec, %bb.ae ]
  %.0.i = phi i64 [ %i.ek, %bb.af ], [ %i.ej, %bb.ae ]
  %i.em = trunc nuw i8 %i.el to i1                ; 2 uses
  %i.en = load i64, ptr %4, align 16
  %i.eo = icmp ne i64 %i.en, 0
  %.not203 = select i1 %i.em, i1 true, i1 %i.eo
  br i1 %.not203, label %bb.aj, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %_ZN5boost14multiprecision8backends8eval_gcdEyy.exit
  %i.ep = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc127 unwind label %bb.ak ; 3 uses

.noexc127:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.eq = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.er = load i64, ptr %i.ae, align 16, !tbaa !113
  %i.es = shl i64 %i.er, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ep, ptr align 8 %i.eq, i64 %i.es, i1 false)
  %i.et = load i8, ptr %i.ah, align 2, !range !116
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.noexc127
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef 0) #32
  %.pre229.pre = load i8, ptr %i.ag, align 1, !tbaa !115, !range !116
  %i.ev = trunc nuw i8 %.pre229.pre to i1
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc127
  store i8 0, ptr %i.ag, align 1, !tbaa !115
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pre229 = phi i1 [ false, %bb.ah ], [ %i.ev, %bb.ag ]
  store i64 1, ptr %i.ae, align 16, !tbaa !113
  store i64 1, ptr %4, align 16, !tbaa !54
  store ptr %i.ep, ptr %i.ad, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.aj:                                            ; preds = %_ZN5boost14multiprecision8backends8eval_gcdEyy.exit
  store i64 1, ptr %i.ae, align 16, !tbaa !113
  %.pre230 = load ptr, ptr %i.ad, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.ak:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.aj, %bb.ai
  %.pre-phi = phi i1 [ %i.em, %bb.aj ], [ %.pre229, %bb.ai ]
  %i.ey = phi ptr [ %.pre230, %bb.aj ], [ %i.ep, %bb.ai ]
  %i.ez = select i1 %.pre-phi, ptr %4, ptr %i.ey
  store i64 %.0.i, ptr %i.ez, align 8, !tbaa !118
  br label %.loopexit.sink.split

bb.al:                                            ; preds = %bb.ac
  %i.fa = load i8, ptr %i.ag, align 1, !tbaa !115, !range !116, !noundef !117
  %i.fb = trunc nuw i8 %i.fa to i1                ; 5 uses
  %i.fc = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.fd = select i1 %i.fb, ptr %4, ptr %i.fc      ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !118 ; 3 uses
  %i.ff = zext i64 %i.fe to i128
  %.sroa.gep174 = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.sroa.sel175 = select i1 %i.fb, ptr %i.ad, ptr %.sroa.gep174 ; 2 uses
  %i.fg = load i64, ptr %.sroa.sel175, align 8, !tbaa !118 ; 2 uses
  %i.fh = zext i64 %i.fg to i128
  %i.fi = shl nuw i128 %i.fh, 64
  %i.fj = or disjoint i128 %i.fi, %i.ff           ; 3 uses
  %i.fk = load i8, ptr %i.am, align 1, !tbaa !115, !range !116, !noundef !117
  %i.fl = trunc nuw i8 %i.fk to i1                ; 2 uses
  %i.fm = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.fn = select i1 %i.fl, ptr %5, ptr %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !118
  %i.fp = zext i64 %i.fo to i128                  ; 2 uses
  br i1 %i.dn, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.gep172 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.sel = select i1 %i.fl, ptr %i.aj, ptr %.sroa.gep172
  %i.fq = load i64, ptr %.sroa.sel, align 8, !tbaa !118
  %i.fr = zext i64 %i.fq to i128
  %i.fs = shl nuw i128 %i.fr, 64
  %i.ft = or disjoint i128 %i.fs, %i.fp
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.fu = phi i128 [ %i.ft, %bb.am ], [ %i.fp, %bb.al ] ; 5 uses
  %i.fv = icmp eq i128 %i.fj, 0
  br i1 %i.fv, label %_ZN5boost14multiprecision8backends8eval_gcdEoo.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fw = icmp eq i128 %i.fu, 0
  br i1 %i.fw, label %_ZN5boost14multiprecision8backends8eval_gcdEoo.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fe, i1 true)
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fg, i1 true)
  %i.ga = trunc nuw nsw i64 %i.fz to i32
  %i.gb = or disjoint i32 %i.ga, 64
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1.i.i.i.i = phi i32 [ %i.gb, %bb.ar ], [ %i.fy, %bb.aq ] ; 2 uses
  %i.gc = zext nneg i32 %.1.i.i.i.i to i128
  %i.gd = lshr i128 %i.fj, %i.gc                  ; 3 uses
  %i.ge = trunc i128 %i.fu to i64                 ; 2 uses
  %.not.i33.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i33.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ge, i1 true)
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  br label %_ZSt13__countr_zeroIoEiT_.exit35.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.gh = lshr exact i128 %i.fu, 64
  %i.gi = trunc nuw i128 %i.gh to i64
  %i.gj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gi, i1 true)
  %i.gk = trunc nuw nsw i64 %i.gj to i32
  %i.gl = or disjoint i32 %i.gk, 64
  br label %_ZSt13__countr_zeroIoEiT_.exit35.i.i.i

_ZSt13__countr_zeroIoEiT_.exit35.i.i.i:           ; preds = %bb.au, %bb.at
  %.1.i34.i.i.i = phi i32 [ %i.gl, %bb.au ], [ %i.gg, %bb.at ] ; 2 uses
  %i.gm = zext nneg i32 %.1.i34.i.i.i to i128
  %i.gn = lshr i128 %i.fu, %i.gm                  ; 3 uses
  %i.go = call i32 @llvm.umin.i32(i32 %.1.i.i.i.i, i32 %.1.i34.i.i.i)
  %.139.i.i.i = call i128 @llvm.umin.i128(i128 %i.gd, i128 %i.gn) ; 2 uses
  %i.gp = icmp eq i128 %i.gd, %i.gn
  br i1 %i.gp, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZSt13__countr_zeroIoEiT_.exit38.i.i.i, %_ZSt13__countr_zeroIoEiT_.exit35.i.i.i
  %.1.lcssa.i.i.i = phi i128 [ %.139.i.i.i, %_ZSt13__countr_zeroIoEiT_.exit35.i.i.i ], [ %.1.i.i.i, %_ZSt13__countr_zeroIoEiT_.exit38.i.i.i ]
  %i.gq = zext nneg i32 %i.go to i128
  %i.gr = shl i128 %.1.lcssa.i.i.i, %i.gq
  br label %_ZN5boost14multiprecision8backends8eval_gcdEoo.exit

.lr.ph.i.i.i:                                     ; preds = %_ZSt13__countr_zeroIoEiT_.exit35.i.i.i, %_ZSt13__countr_zeroIoEiT_.exit38.i.i.i
  %.142.i.i.i = phi i128 [ %.1.i.i.i, %_ZSt13__countr_zeroIoEiT_.exit38.i.i.i ], [ %.139.i.i.i, %_ZSt13__countr_zeroIoEiT_.exit35.i.i.i ] ; 4 uses
  %.02741.i.i.i = phi i128 [ %.142.i.i.i, %_ZSt13__countr_zeroIoEiT_.exit38.i.i.i ], [ %i.gd, %_ZSt13__countr_zeroIoEiT_.exit35.i.i.i ]
  %.02840.i.i.i = phi i128 [ %i.hc, %_ZSt13__countr_zeroIoEiT_.exit38.i.i.i ], [ %i.gn, %_ZSt13__countr_zeroIoEiT_.exit35.i.i.i ]
  %.129.i.i.i = call i128 @llvm.umax.i128(i128 %.02741.i.i.i, i128 %.02840.i.i.i)
  %i.gs = sub nuw i128 %.129.i.i.i, %.142.i.i.i   ; 3 uses
  %i.gt = trunc i128 %i.gs to i64                 ; 2 uses
  %.not.i36.i.i.i = icmp eq i64 %i.gt, 0
  br i1 %.not.i36.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i
  %i.gu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gt, i1 true)
  %i.gv = trunc nuw nsw i64 %i.gu to i32
  br label %_ZSt13__countr_zeroIoEiT_.exit38.i.i.i

bb.aw:                                            ; preds = %.lr.ph.i.i.i
  %i.gw = lshr exact i128 %i.gs, 64
  %i.gx = trunc nuw i128 %i.gw to i64
  %i.gy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gx, i1 true)
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  %i.ha = or disjoint i32 %i.gz, 64
  br label %_ZSt13__countr_zeroIoEiT_.exit38.i.i.i

_ZSt13__countr_zeroIoEiT_.exit38.i.i.i:           ; preds = %bb.aw, %bb.av
  %.1.i37.i.i.i = phi i32 [ %i.ha, %bb.aw ], [ %i.gv, %bb.av ]
  %i.hb = zext nneg i32 %.1.i37.i.i.i to i128
  %i.hc = lshr i128 %i.gs, %i.hb                  ; 3 uses
  %.1.i.i.i = call i128 @llvm.umin.i128(i128 %.142.i.i.i, i128 %i.hc) ; 2 uses
  %i.hd = icmp eq i128 %.142.i.i.i, %i.hc
  br i1 %i.hd, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZN5boost14multiprecision8backends8eval_gcdEoo.exit: ; preds = %bb.an, %bb.ao, %._crit_edge.i.i.i
  %.0.i.i.i = phi i128 [ %i.gr, %._crit_edge.i.i.i ], [ %i.fu, %bb.an ], [ %i.fj, %bb.ao ] ; 2 uses
  %i.he = trunc i128 %.0.i.i.i to i64
  store i64 %i.he, ptr %i.fd, align 8, !tbaa !118
  %i.hf = lshr i128 %.0.i.i.i, 64                 ; 2 uses
  %i.hg = trunc nuw i128 %i.hf to i64
  store i64 %i.hg, ptr %.sroa.sel175, align 8, !tbaa !118
  %.not.i79 = icmp eq i128 %i.hf, 0
  %i.hh = select i1 %.not.i79, i64 1, i64 2       ; 4 uses
  %i.hi = load i64, ptr %4, align 16              ; 2 uses
  %spec.select.i8.i130 = select i1 %i.fb, i64 2, i64 %i.hi ; 2 uses
  %i.hj = icmp ugt i64 %i.hh, %spec.select.i8.i130
  br i1 %i.hj, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i131, label %bb.ba

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i131: ; preds = %_ZN5boost14multiprecision8backends8eval_gcdEoo.exit
  %i.hk = shl nuw nsw i64 %spec.select.i8.i130, 2
  %.sroa.speculated16.i132 = call i64 @llvm.umax.i64(i64 %i.hk, i64 %i.hh) ; 2 uses
  %i.hl = shl nuw nsw i64 %.sroa.speculated16.i132, 3
  %i.hm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #33
          to label %.noexc134 unwind label %bb.bb ; 2 uses

.noexc134:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i131
  %i.hn = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ho = select i1 %i.fb, ptr %4, ptr %i.hn
  %i.hp = shl nuw nsw i64 %i.du, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hm, ptr align 8 %i.ho, i64 %i.hp, i1 false)
  %i.hq = load i8, ptr %i.ah, align 2, !range !116
  %i.hr = trunc nuw i8 %i.hq to i1
  %or.cond196 = select i1 %i.fb, i1 true, i1 %i.hr
  br i1 %or.cond196, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc134
  %i.hs = shl i64 %i.hi, 3
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hs) #32
  br label %bb.az

bb.ay:                                            ; preds = %.noexc134
  store i8 0, ptr %i.ag, align 1, !tbaa !115
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store i64 %i.hh, ptr %i.ae, align 16, !tbaa !113
  store i64 %.sroa.speculated16.i132, ptr %4, align 16, !tbaa !54
  store ptr %i.hm, ptr %i.ad, align 8, !tbaa !54
  br label %.loopexit.sink.split

bb.ba:                                            ; preds = %_ZN5boost14multiprecision8backends8eval_gcdEoo.exit
  store i64 %i.hh, ptr %i.ae, align 16, !tbaa !113
  br label %.loopexit.sink.split

bb.bb:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i131
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #34
  unreachable

bb.bc:                                            ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit55.thread
  %i.hv = invoke noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %4)
          to label %bb.bd unwind label %bb.bg     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.hw = add i64 %i.hv, 1
  %i.hx = invoke noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %5)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.hy = sub i64 %i.hv, %i.hx
  %i.hz = icmp ult i64 %i.hy, 33
  br i1 %i.hz, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN5boost14multiprecision8backends15eval_gcd_lehmerILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyENS1_12cpp_int_baseILm0ELm18446744073709551615ELS3_1ELS4_0ES5_Lb0EE21scoped_shared_storageEEEvRNS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EESC_mRT4_(ptr noundef nonnull align 16 dereferenceable(27) %4, ptr noundef nonnull align 16 dereferenceable(27) %5, i64 noundef %i.hw, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread190.backedge unwind label %bb.bh

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread190.backedge: ; preds = %bb.bf, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit145
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread190, !llvm.loop !207

bb.bg:                                            ; preds = %bb.bc
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bh:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i138, %bb.bn, %bb.bf, %bb.bd
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bi:                                            ; preds = %bb.be
  %i.ic = load i8, ptr %i.af, align 8, !tbaa !126, !range !116, !noundef !117 ; 2 uses
  %i.id = trunc nuw i8 %i.ic to i1
  %i.ie = load i64, ptr %i.ak, align 16, !tbaa !113
  %i.if = icmp eq i64 %i.ie, 1
  br i1 %i.if, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.ig = load i8, ptr %i.am, align 1, !tbaa !115, !range !116, !noundef !117
  %i.ih = trunc nuw i8 %i.ig to i1
  %i.ii = load ptr, ptr %i.aj, align 8
  %i.ij = select i1 %i.ih, ptr %5, ptr %i.ii
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !118 ; 4 uses
  %i.il = load i64, ptr %i.ae, align 16, !tbaa !113 ; 5 uses
  %i.im = xor i64 %i.ik, -1
  %i.in = urem i64 %i.im, %i.ik
  %i.io = zext i64 %i.in to i128
  %i.ip = add nuw nsw i128 %i.io, 1               ; 3 uses
  %i.iq = load i8, ptr %i.ag, align 1, !tbaa !115, !range !116, !noundef !117
  %i.ir = trunc nuw i8 %i.iq to i1
  %i.is = load ptr, ptr %i.ad, align 8
  %i.it = select i1 %i.ir, ptr %4, ptr %i.is      ; 4 uses
  %i.iu = getelementptr [8 x i8], ptr %i.it, i64 %i.il
  %i.iv = getelementptr i8, ptr %i.iu, i64 -8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !118
  %i.ix = urem i64 %i.iw, %i.ik                   ; 3 uses
  %i.iy = icmp sgt i64 %i.il, 1
  br i1 %i.iy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bj
  %i.iz = add nsw i64 %i.il, -2                   ; 3 uses
  %i.ja = zext i64 %i.ik to i128                  ; 3 uses
  %i.jb = and i64 %i.il, 1
  %lcmp.mod.not.not = icmp eq i64 %i.jb, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.jc = zext i64 %i.ix to i128
  %i.jd = mul nuw i128 %i.ip, %i.jc
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.iz
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !118
  %i.jg = zext i64 %i.jf to i128
  %i.jh = add nuw i128 %i.jd, %i.jg
  %i.ji = urem i128 %i.jh, %i.ja
  %i.jj = trunc nuw i128 %i.ji to i64             ; 2 uses
  %i.jk = add nsw i64 %i.il, -3
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa.unr = phi i64 [ poison, %.lr.ph ], [ %i.jj, %.prol.loopexit.unr-lcssa ]
  %.0.i82212.unr = phi i64 [ %i.iz, %.lr.ph ], [ %i.jk, %.prol.loopexit.unr-lcssa ]
  %.018.i211.unr = phi i64 [ %i.ix, %.lr.ph ], [ %i.jj, %.prol.loopexit.unr-lcssa ]
  %i.jl = icmp eq i64 %i.iz, 0
  br i1 %i.jl, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.bj
  %.018.i.lcssa = phi i64 [ %i.ix, %bb.bj ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.kk, %.lr.ph.new ]
  %i.jm = load i8, ptr %i.at, align 1, !tbaa !115, !range !116, !noundef !117 ; 2 uses
  %i.jn = trunc nuw i8 %i.jm to i1                ; 2 uses
  %i.jo = load i64, ptr %6, align 16
  %i.jp = icmp ne i64 %i.jo, 0
  %.not201 = select i1 %i.jn, i1 true, i1 %i.jp
  br i1 %.not201, label %bb.bm, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i138

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i138: ; preds = %._crit_edge
  %i.jq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc141 unwind label %bb.bh ; 3 uses

.noexc141:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i138
  %i.jr = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.js = load i64, ptr %i.ar, align 16, !tbaa !113
  %i.jt = shl i64 %i.js, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jq, ptr align 8 %i.jr, i64 %i.jt, i1 false)
  %i.ju = load i8, ptr %i.au, align 2, !range !116
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.noexc141
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef 0) #32
  %.pre223.pre = load i8, ptr %i.at, align 1, !tbaa !115, !range !116
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc141, %bb.bk
  %.pre223 = phi i8 [ %.pre223.pre, %bb.bk ], [ 0, %.noexc141 ] ; 2 uses
  store i64 1, ptr %i.ar, align 16, !tbaa !113
  store i64 1, ptr %6, align 16, !tbaa !54
  store ptr %i.jq, ptr %i.aq, align 8, !tbaa !54
end_hunk_2
begin_hunk_3_@_ZN5boost14multiprecision8backends8eval_gcdILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_y:bb.a
  %i.t = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.y = load i8, ptr %i.x, align 2, !tbaa !127, !range !116, !noundef !117
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #32
  %.pre.pre.i = load i8, ptr %i.n, align 1, !tbaa !115, !range !116
  %i.ab = trunc nuw i8 %.pre.pre.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i = phi i1 [ false, %bb.e ], [ %i.ab, %bb.d ]
  store i64 %spec.select.i.i, ptr %i.l, align 16, !tbaa !113
  store i64 %.sroa.speculated.i.i, ptr %0, align 16, !tbaa !54
  store ptr %i.u, ptr %i.v, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i, ptr %i.l, align 16, !tbaa !113
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i1 [ %.pre.i, %bb.f ], [ %i.p, %bb.g ]
  %i.ac = phi ptr [ %i.u, %bb.f ], [ %.pre8.i, %bb.g ]
  %i.ad = select i1 %.pre-phi.i, ptr %0, ptr %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !115, !range !116, !noundef !117
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %i.ag, ptr %1, ptr %i.ai
  %i.ak = load i64, ptr %i.a, align 16, !tbaa !113
  %i.al = shl i64 %i.ak, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.aj, i64 %i.al, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit: ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit.thread, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.an = load i8, ptr %i.am, align 1, !tbaa !115, !range !116, !noundef !117
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %i.ao, ptr %0, ptr %i.aq      ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !118
  %i.at = or i64 %i.as, %2
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !118
  br label %bb.m

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit._crit_edge, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit
  %.pre-phi34 = phi ptr [ %.pre33, %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit._crit_edge ], [ %i.i, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit ] ; 4 uses
  %i.au = xor i64 %2, -1
  %i.av = urem i64 %i.au, %2
  %i.aw = zext i64 %i.av to i128
  %i.ax = add nuw nsw i128 %i.aw, 1               ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %.pre-phi34, i64 %i.b
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !118
  %i.bb = urem i64 %i.ba, %2                      ; 3 uses
  %i.bc = icmp sgt i64 %i.b, 1
  br i1 %i.bc, label %.lr.ph, label %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit

.lr.ph:                                           ; preds = %bb.h
  %i.bd = add nsw i64 %i.b, -2                    ; 3 uses
  %i.be = zext i64 %2 to i128                     ; 3 uses
  %i.bf = and i64 %i.b, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bf, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bg = zext i64 %i.bb to i128
  %i.bh = mul nuw i128 %i.ax, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.pre-phi34, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !118
  %i.bk = zext i64 %i.bj to i128
  %i.bl = add nuw i128 %i.bh, %i.bk
  %i.bm = urem i128 %i.bl, %i.be
  %i.bn = trunc nuw i128 %i.bm to i64             ; 2 uses
  %i.bo = add nsw i64 %i.b, -3
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.lcssa.unr = phi i64 [ poison, %.lr.ph ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %.0.i1524.unr = phi i64 [ %i.bd, %.lr.ph ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %.018.i23.unr = phi i64 [ %i.bb, %.lr.ph ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %i.bp = icmp eq i64 %i.bd, 0
  br i1 %i.bp, label %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.0.i1524 = phi i64 [ %i.cf, %.lr.ph.new ], [ %.0.i1524.unr, %.prol.loopexit ] ; 3 uses
  %.018.i23 = phi i64 [ %i.ce, %.lr.ph.new ], [ %.018.i23.unr, %.prol.loopexit ]
  %i.bq = zext i64 %.018.i23 to i128
  %i.br = mul nuw i128 %i.ax, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.pre-phi34, i64 %.0.i1524
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !118
  %i.bu = zext i64 %i.bt to i128
  %i.bv = add nuw i128 %i.br, %i.bu
  %i.bw = urem i128 %i.bv, %i.be
  %i.bx = add nsw i64 %.0.i1524, -1               ; 2 uses
  %i.by = mul nuw i128 %i.ax, %i.bw
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.pre-phi34, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !118
  %i.cb = zext i64 %i.ca to i128
  %i.cc = add nuw i128 %i.by, %i.cb
  %i.cd = urem i128 %i.cc, %i.be
  %i.ce = trunc nuw i128 %i.cd to i64             ; 2 uses
  %i.cf = add nsw i64 %.0.i1524, -2
  %.not51.1 = icmp eq i64 %i.bx, 0
  br i1 %.not51.1, label %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit, label %.lr.ph.new, !llvm.loop !208

_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit: ; preds = %.prol.loopexit, %.lr.ph.new, %bb.h
  %.018.i.lcssa = phi i64 [ %i.bb, %bb.h ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ce, %.lr.ph.new ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !115, !range !116, !noundef !117
  %i.ci = trunc nuw i8 %i.ch to i1                ; 2 uses
  %i.cj = load i64, ptr %0, align 16
  %i.ck = icmp ne i64 %i.cj, 0
  %.not21 = select i1 %i.ci, i1 true, i1 %i.ck
  br i1 %.not21, label %bb.l, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit
  %i.cl = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 16, !tbaa !113
  %i.cq = shl i64 %i.cp, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %i.cn, i64 %i.cq, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !127, !range !116, !noundef !117
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  tail call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef 0) #32
  %.pre27.pre = load i8, ptr %i.cg, align 1, !tbaa !115, !range !116
  %i.cu = trunc nuw i8 %.pre27.pre to i1
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.cg, align 1, !tbaa !115
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre27 = phi i1 [ false, %bb.j ], [ %i.cu, %bb.i ]
  store i64 1, ptr %i.co, align 16, !tbaa !113
  store i64 1, ptr %0, align 16, !tbaa !54
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.l:                                             ; preds = %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.cv, align 16, !tbaa !113
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre29 = load ptr, ptr %.phi.trans.insert28, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.k, %bb.l
  %.pre-phi36 = phi i1 [ %.pre27, %bb.k ], [ %i.ci, %bb.l ] ; 2 uses
  %i.cw = phi ptr [ %i.cl, %bb.k ], [ %.pre29, %bb.l ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = select i1 %.pre-phi36, ptr %0, ptr %i.cw
  store i64 %.018.i.lcssa, ptr %i.cy, align 8, !tbaa !118
  %.pre30 = load ptr, ptr %i.cx, align 8
  %i.cz = select i1 %.pre-phi36, ptr %0, ptr %.pre30 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !118 ; 3 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_ZN5boost14multiprecision8backends8eval_gcdEyy.exit, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.thread47

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.thread47: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.dc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.da, i1 true) ; 2 uses
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = lshr exact i64 %i.da, %i.dc             ; 3 uses
  %i.df = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %2, i1 true) ; 2 uses
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = lshr exact i64 %2, %i.df                ; 3 uses
  %i.di = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 %i.dg)
  %spec.select3334.i.i = tail call i64 @llvm.umin.i64(i64 %i.de, i64 %i.dh) ; 2 uses
  %i.dj = icmp eq i64 %i.de, %i.dh
  br i1 %i.dj, label %_ZSt3gcdIyyENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.thread47, %.lr.ph.i.i
  %spec.select3337.i.i = phi i64 [ %spec.select33.i.i, %.lr.ph.i.i ], [ %spec.select3334.i.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.thread47 ] ; 4 uses
  %.02736.i.i = phi i64 [ %spec.select3337.i.i, %.lr.ph.i.i ], [ %i.de, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.thread47 ]
  %.02835.i.i = phi i64 [ %i.dm, %.lr.ph.i.i ], [ %i.dh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.thread47 ]
  %spec.select.i.i17 = tail call i64 @llvm.umax.i64(i64 %.02736.i.i, i64 %.02835.i.i)
  %i.dk = sub nuw i64 %spec.select.i.i17, %spec.select3337.i.i ; 2 uses
  %i.dl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dk, i1 true)
  %i.dm = lshr exact i64 %i.dk, %i.dl             ; 3 uses
  %spec.select33.i.i = tail call i64 @llvm.umin.i64(i64 %spec.select3337.i.i, i64 %i.dm) ; 2 uses
  %i.dn = icmp eq i64 %spec.select3337.i.i, %i.dm
  br i1 %i.dn, label %_ZSt3gcdIyyENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, label %.lr.ph.i.i, !llvm.loop !209

_ZSt3gcdIyyENSt11common_typeIJT_T0_EE4typeES1_S2_.exit: ; preds = %.lr.ph.i.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.thread47
  %spec.select33.lcssa.i.i = phi i64 [ %spec.select3334.i.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.thread47 ], [ %spec.select33.i.i, %.lr.ph.i.i ]
  %i.do = zext nneg i32 %i.di to i64
  %i.dp = shl i64 %spec.select33.lcssa.i.i, %i.do
  br label %_ZN5boost14multiprecision8backends8eval_gcdEyy.exit

_ZN5boost14multiprecision8backends8eval_gcdEyy.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit, %_ZSt3gcdIyyENSt11common_typeIJT_T0_EE4typeES1_S2_.exit
  %.0.i = phi i64 [ %i.dp, %_ZSt3gcdIyyENSt11common_typeIJT_T0_EE4typeES1_S2_.exit ], [ %2, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ]
  store i64 %.0.i, ptr %i.cz, align 8, !tbaa !118
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends8eval_gcdEyy.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.dq, align 8, !tbaa !126
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5boost14multiprecision8backends8eval_lsbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::domain_error", align 8 ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %3 = alloca %"class.std::domain_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !113 ; 5 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit, label %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !115, !range !116, !noundef !117
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.f, ptr %0, ptr %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !118
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit.thread, label %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit

_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit.thread: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZNSt12domain_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.25)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @.str.26, ptr %2, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.36, ptr %i.l, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 326, ptr %i.m, align 8, !tbaa !124
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 85, ptr %i.n, align 4, !tbaa !125
  invoke void @_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #31
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit.thread
  unreachable

bb.c:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZNSt12domain_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.h

_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !126, !range !116, !noundef !117
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt12domain_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.28)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @.str.26, ptr %4, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.36, ptr %i.s, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 330, ptr %i.t, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 137, ptr %i.u, align 4, !tbaa !125
  invoke void @_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #31
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZNSt12domain_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.h

bb.g:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.x = load i8, ptr %i.w, align 1, !tbaa !115, !range !116, !noundef !117
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %0, ptr %i.aa       ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !118 ; 2 uses
  %.not8.i = icmp eq i64 %i.ac, 0
  br i1 %.not8.i, label %.lr.ph.i.preheader, label %_ZN5boost14multiprecision8backends12eval_lsb_impILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %exitcond.not.i8 = icmp eq i64 %i.b, 0
  br i1 %exitcond.not.i8, label %.critedge.loopexit.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.ad, %i.b
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph, !llvm.loop !210

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i9 = phi i64 [ %i.ad, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ad = add i64 %.09.i9, 1                      ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !118 ; 2 uses
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %.lr.ph.i, label %..critedge.loopexit.i_crit_edge, !llvm.loop !210

..critedge.loopexit.i_crit_edge:                  ; preds = %.lr.ph
  br label %.critedge.loopexit.i, !llvm.loop !210

.critedge.loopexit.i:                             ; preds = %.lr.ph.i, %..critedge.loopexit.i_crit_edge, %.lr.ph.i.preheader
  %.0.lcssa.ph.i = phi i64 [ %i.b, %.lr.ph.i.preheader ], [ %i.ad, %..critedge.loopexit.i_crit_edge ], [ %i.b, %.lr.ph.i ]
  %.lcssa.ph.i = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.af, %..critedge.loopexit.i_crit_edge ], [ 0, %.lr.ph.i ]
  %i.ag = shl i64 %.0.lcssa.ph.i, 6
  br label %_ZN5boost14multiprecision8backends12eval_lsb_impILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_.exit

_ZN5boost14multiprecision8backends12eval_lsb_impILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_.exit: ; preds = %bb.g, %.critedge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.ag, %.critedge.loopexit.i ]
  %.lcssa.i = phi i64 [ %i.ac, %bb.g ], [ %.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.ah = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i, i1 true)
  %i.ai = or disjoint i64 %i.ah, %.0.lcssa.i
  ret i64 %i.ai

bb.h:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.v, %bb.f ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15eval_gcd_lehmerILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyENS1_12cpp_int_baseILm0ELm18446744073709551615ELS3_1ELS4_0ES5_Lb0EE21scoped_shared_storageEEEvRNS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EESC_mRT4_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 10 uses
  %i.b = alloca [3 x i64], align 16               ; 9 uses
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 16 uses
  %5 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 16 uses
  %6 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 23 uses
  %7 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 16 uses
  %i.c = and i64 %2, 63                           ; 4 uses
  %.not = icmp eq i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !115, !range !116, !noundef !117 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = select i1 %i.f, ptr %0, ptr %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 16, !tbaa !113 ; 10 uses
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.k ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118
  %i.o = zext i64 %i.n to i128
  %i.p = shl nuw i128 %i.o, 64
  %i.q = getelementptr i8, ptr %i.l, i64 -16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !118
  %i.s = zext i64 %i.r to i128
  %i.t = or disjoint i128 %i.p, %i.s              ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 16, !tbaa !113 ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 25
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !115, !range !116 ; 3 uses
  br i1 %i.w, label %._crit_edge292, label %bb.c

._crit_edge292:                                   ; preds = %bb.b
  %.phi.trans.insert293 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre294 = load ptr, ptr %.phi.trans.insert293, align 8 ; 2 uses
  %.pre303 = trunc nuw i8 %.pre to i1
  %.pre305 = select i1 %.pre303, ptr %1, ptr %.pre294
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = trunc nuw i8 %.pre to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = select i1 %i.x, ptr %1, ptr %i.z        ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5boost14multiprecision8backends15eval_gcd_lehmerILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyENS1_12cpp_int_baseILm0ELm18446744073709551615ELS3_1ELS4_0ES5_Lb0EE21scoped_shared_storageEEEvRNS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EESC_mRT4_:bb.a
  %i.af = phi i64 [ 0, %._crit_edge292 ], [ %i.ad, %bb.c ]
  %i.ag = zext i64 %i.af to i128
  %i.ah = shl nuw i128 %i.ag, 64
  %i.ai = getelementptr [8 x i8], ptr %.pre-phi306, i64 %i.k ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !118
  %i.al = zext i64 %i.ak to i128
  %i.am = or disjoint i128 %i.ah, %i.al
  %i.an = sub nuw nsw i64 64, %i.c
  %i.ao = zext nneg i64 %i.an to i128             ; 2 uses
  %i.ap = shl i128 %i.t, %i.ao
  %i.aq = getelementptr i8, ptr %i.l, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !118
  %i.as = lshr i64 %i.ar, %i.c
  %i.at = zext nneg i64 %i.as to i128
  %i.au = or i128 %i.ap, %i.at
  %i.av = shl i128 %i.am, %i.ao
  %i.aw = getelementptr i8, ptr %i.ai, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !118
  %i.ay = lshr i64 %i.ax, %i.c
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !115, !range !116, !noundef !117 ; 2 uses
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = select i1 %i.bb, ptr %1, ptr %i.bd
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.k ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !118
  %i.bi = zext i64 %i.bh to i128
  %i.bj = shl nuw i128 %i.bi, 64
  %i.bk = getelementptr i8, ptr %i.bf, i64 -16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink339 = phi i64 [ %i.bl, %bb.e ], [ %i.ay, %bb.d ]
  %.sink = phi i128 [ %i.bj, %bb.e ], [ %i.av, %bb.d ] ; 2 uses
  %i.bm = phi ptr [ %i.bd, %bb.e ], [ %i.ae, %bb.d ]
  %i.bn = phi i8 [ %i.ba, %bb.e ], [ %.pre, %bb.d ]
  %.0191 = phi i128 [ %i.t, %bb.e ], [ %i.au, %bb.d ] ; 5 uses
  %i.bo = zext i64 %.sink339 to i128
  %i.bp = or i128 %.sink, %i.bo                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN5boost14multiprecision8backends15eval_gcd_lehmerILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyENS1_12cpp_int_baseILm0ELm18446744073709551615ELS3_1ELS4_0ES5_Lb0EE21scoped_shared_storageEEEvRNS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EESC_mRT4_.x, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN5boost14multiprecision8backends15eval_gcd_lehmerILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyENS1_12cpp_int_baseILm0ELm18446744073709551615ELS3_1ELS4_0ES5_Lb0EE21scoped_shared_storageEEEvRNS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EESC_mRT4_.y, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bu = lshr i128 %.0191, 64
  %i.bv = trunc nuw i128 %i.bu to i64
  %i.bw = lshr i128 %.sink, 64
  %i.bx = trunc nuw i128 %i.bw to i64             ; 2 uses
  %i.by = udiv i64 %i.bv, %i.bx                   ; 3 uses
  %i.bz = zext i64 %i.by to i128
  %i.ca = mul i128 %i.bp, %i.bz                   ; 2 uses
  %i.cb = icmp uge i128 %.0191, %i.ca
  %i.cc = sub nuw i128 %.0191, %i.ca              ; 2 uses
  %.not100351 = icmp ugt i128 %i.bp, %i.cc
  %or.cond = select i1 %i.cb, i1 %.not100351, i1 false
  br i1 %or.cond, label %.lr.ph355, label %._crit_edge

.lr.ph355:                                        ; preds = %bb.f, %bb.k
  %i.cd = phi i128 [ %i.dg, %bb.k ], [ %i.cc, %bb.f ] ; 5 uses
  %i.ce = phi i64 [ %i.ci, %bb.k ], [ 1, %bb.f ]  ; 9 uses
  %i.cf = phi i64 [ %i.ch, %bb.k ], [ 0, %bb.f ]  ; 9 uses
  %.1192227354 = phi i128 [ %.0188228353, %bb.k ], [ %.0191, %bb.f ] ; 4 uses
  %.0188228353 = phi i128 [ %i.cd, %bb.k ], [ %i.bp, %bb.f ] ; 9 uses
  %.0229352 = phi i64 [ %.1, %bb.k ], [ 0, %bb.f ] ; 6 uses
  %i.cg = phi i64 [ %i.cn, %bb.k ], [ %i.bx, %bb.f ] ; 2 uses
  %i.ch = phi i64 [ %i.da, %bb.k ], [ 1, %bb.f ]  ; 10 uses
  %i.ci = phi i64 [ %i.dc, %bb.k ], [ %i.by, %bb.f ] ; 10 uses
  %i.cj = phi i64 [ %i.ce, %bb.k ], [ 0, %bb.f ]  ; 4 uses
  %i.ck = phi i64 [ %i.cf, %bb.k ], [ 1, %bb.f ]  ; 4 uses
  %i.cl = and i64 %.0229352, 1
  %.not101 = icmp eq i64 %i.cl, 0
  %i.cm = lshr i128 %i.cd, 64
  %i.cn = trunc nuw i128 %i.cm to i64             ; 6 uses
  br i1 %.not101, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph355
  %i.co = icmp ugt i64 %i.ch, %i.cn
  br i1 %i.co, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = sub i64 %i.cg, %i.cn
  %i.cq = add i64 %i.ci, %i.ce
  %i.cr = icmp ult i64 %i.cp, %i.cq
  br i1 %i.cr, label %._crit_edge, label %bb.k

bb.i:                                             ; preds = %.lr.ph355
  %i.cs = icmp ugt i64 %i.ci, %i.cn
  br i1 %i.cs, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = sub i64 %i.cg, %i.cn
  %i.cu = add i64 %i.ch, %i.cf
  %i.cv = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cv, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  store i64 %i.cf, ptr %i.a, align 16, !tbaa !118
  store i64 %i.ch, ptr %i.bq, align 8, !tbaa !118
  store i64 %i.ce, ptr %i.b, align 16, !tbaa !118
  store i64 %i.ci, ptr %i.bs, align 8, !tbaa !118
  %.1 = add i64 %.0229352, 1                      ; 2 uses
  %i.cw = lshr i128 %.0188228353, 64
  %i.cx = trunc nuw i128 %i.cw to i64
  %i.cy = udiv i64 %i.cx, %i.cn                   ; 3 uses
  %i.cz = mul i64 %i.ch, %i.cy
  %i.da = add i64 %i.cz, %i.cf                    ; 2 uses
  %i.db = mul i64 %i.ci, %i.cy
  %i.dc = add i64 %i.db, %i.ce                    ; 2 uses
  %i.dd = zext i64 %i.cy to i128
  %i.de = mul i128 %i.cd, %i.dd                   ; 2 uses
  %i.df = icmp uge i128 %.0188228353, %i.de
  %i.dg = sub nuw i128 %.0188228353, %i.de        ; 2 uses
  %.not100 = icmp ugt i128 %i.cd, %i.dg
  %or.cond416 = select i1 %i.df, i1 %.not100, i1 false
  br i1 %or.cond416, label %.lr.ph355, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.k, %bb.h, %bb.j, %bb.i, %bb.f
  %i.dh = phi i64 [ 0, %bb.f ], [ %i.cf, %bb.g ], [ %i.ch, %bb.k ], [ %i.cf, %bb.i ], [ %i.cf, %bb.h ], [ %i.cf, %bb.j ]
  %i.di = phi i64 [ 1, %bb.f ], [ %i.ck, %bb.g ], [ %i.cf, %bb.k ], [ %i.ck, %bb.i ], [ %i.ck, %bb.h ], [ %i.ck, %bb.j ]
  %i.dj = phi i64 [ 1, %bb.f ], [ %i.ce, %bb.g ], [ %i.ci, %bb.k ], [ %i.ce, %bb.i ], [ %i.ce, %bb.h ], [ %i.ce, %bb.j ]
  %i.dk = phi i64 [ 0, %bb.f ], [ %i.cj, %bb.g ], [ %i.ce, %bb.k ], [ %i.cj, %bb.i ], [ %i.cj, %bb.h ], [ %i.cj, %bb.j ]
  %.lcssa226 = phi i64 [ %i.by, %bb.f ], [ %i.ci, %bb.g ], [ %i.dc, %bb.k ], [ %i.ci, %bb.i ], [ %i.ci, %bb.h ], [ %i.ci, %bb.j ]
  %.lcssa223 = phi i64 [ 1, %bb.f ], [ %i.ch, %bb.g ], [ %i.da, %bb.k ], [ %i.ch, %bb.i ], [ %i.ch, %bb.h ], [ %i.ch, %bb.j ]
  %.1192.lcssa = phi i128 [ %.0191, %bb.f ], [ %.1192227354, %bb.g ], [ %.0188228353, %bb.k ], [ %.1192227354, %bb.i ], [ %.1192227354, %bb.h ], [ %.1192227354, %bb.j ]
  %.0188.lcssa = phi i128 [ %i.bp, %bb.f ], [ %.0188228353, %bb.g ], [ %i.cd, %bb.k ], [ %.0188228353, %bb.i ], [ %.0188228353, %bb.h ], [ %.0188228353, %bb.j ]
  %.0.lcssa = phi i64 [ 0, %bb.f ], [ %.0229352, %bb.g ], [ %.1, %bb.k ], [ %.0229352, %bb.i ], [ %.0229352, %bb.h ], [ %.0229352, %bb.j ]
  store i64 %.lcssa223, ptr %i.br, align 16, !tbaa !118
  store i64 %.lcssa226, ptr %i.bt, align 16, !tbaa !118
  br label %bb.l

bb.l:                                             ; preds = %bb.t, %._crit_edge
  %i.dl = phi i64 [ %i.dh, %._crit_edge ], [ %i.ed, %bb.t ] ; 4 uses
  %i.dm = phi i64 [ %i.di, %._crit_edge ], [ %i.dl, %bb.t ]
  %i.dn = phi i64 [ %i.dj, %._crit_edge ], [ %i.ee, %bb.t ] ; 3 uses
  %i.do = phi i64 [ %i.dk, %._crit_edge ], [ %i.dn, %bb.t ]
  %.2193 = phi i128 [ %.1192.lcssa, %._crit_edge ], [ %.2190, %bb.t ]
  %.2190 = phi i128 [ %.0188.lcssa, %._crit_edge ], [ %.3194.lcssa, %bb.t ] ; 9 uses
  %.2 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.3, %bb.t ] ; 4 uses
  %i.dp = sub i128 %.2193, %.2190                 ; 3 uses
  %.not.i276 = icmp ult i128 %i.dp, %.2190
  br i1 %.not.i276, label %_ZN5boost14multiprecision8backends15divide_subtractERoS2_RKo.exit, label %.lr.ph280

.lr.ph280:                                        ; preds = %bb.l, %bb.n
  %.0186278 = phi i128 [ %.1187, %bb.n ], [ 1, %bb.l ]
  %.3194277 = phi i128 [ %.4, %bb.n ], [ %i.dp, %bb.l ]
  %i.dq = sub nuw i128 %.3194277, %.2190          ; 3 uses
  %i.dr = add i128 %.0186278, 1                   ; 3 uses
  %i.ds = icmp ugt i128 %i.dr, 30
  br i1 %i.ds, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph280
  %i.dt = udiv i128 %i.dq, %.2190                 ; 2 uses
  %i.du = mul nuw i128 %i.dt, %.2190
  %i.dv = sub i128 %i.dq, %i.du
  %i.dw = add i128 %i.dt, %i.dr
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph280
  %.4 = phi i128 [ %i.dv, %bb.m ], [ %i.dq, %.lr.ph280 ] ; 3 uses
  %.1187 = phi i128 [ %i.dw, %bb.m ], [ %i.dr, %.lr.ph280 ] ; 2 uses
  %.not.i = icmp ult i128 %.4, %.2190
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends15divide_subtractERoS2_RKo.exit, label %.lr.ph280, !llvm.loop !211

_ZN5boost14multiprecision8backends15divide_subtractERoS2_RKo.exit: ; preds = %bb.n, %bb.l
  %.3194.lcssa = phi i128 [ %i.dp, %bb.l ], [ %.4, %bb.n ] ; 5 uses
  %.0186.lcssa = phi i128 [ 1, %bb.l ], [ %.1187, %bb.n ] ; 2 uses
  %i.dx = zext i64 %i.do to i128
  %i.dy = zext i64 %i.dn to i128                  ; 2 uses
  %i.dz = mul i128 %.0186.lcssa, %i.dy
  %i.ea = add i128 %i.dz, %i.dx                   ; 4 uses
  %.not102 = icmp ult i128 %i.ea, 18446744073709551616
  br i1 %.not102, label %bb.o, label %bb.u

bb.o:                                             ; preds = %_ZN5boost14multiprecision8backends15divide_subtractERoS2_RKo.exit
  %i.eb = trunc i128 %.0186.lcssa to i64
  %i.ec = mul i64 %i.dl, %i.eb
  %i.ed = add i64 %i.ec, %i.dm                    ; 5 uses
  store i64 %i.ed, ptr %i.br, align 16, !tbaa !118
  %i.ee = trunc nuw i128 %i.ea to i64             ; 3 uses
  store i64 %i.ee, ptr %i.bt, align 16, !tbaa !118
  %i.ef = and i64 %.2, 1
  %.not103 = icmp eq i64 %i.ef, 0
  br i1 %.not103, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = zext i64 %i.ed to i128
  %i.eh = icmp ult i128 %.3194.lcssa, %i.eg
  br i1 %i.eh, label %.thread204, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = sub nuw i128 %.2190, %.3194.lcssa
  %i.ej = add nuw nsw i128 %i.ea, %i.dy
  %i.ek = icmp ult i128 %i.ei, %i.ej
  br i1 %i.ek, label %.thread204, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.el = icmp ult i128 %.3194.lcssa, %i.ea
  br i1 %i.el, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = sub nuw i128 %.2190, %.3194.lcssa
  %i.en = zext i64 %i.ed to i128
  %i.eo = zext i64 %i.dl to i128
  %i.ep = add nuw nsw i128 %i.en, %i.eo
  %i.eq = icmp ult i128 %i.em, %i.ep
  br i1 %i.eq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  store i64 %i.dl, ptr %i.a, align 16, !tbaa !118
  store i64 %i.ed, ptr %i.bq, align 8, !tbaa !118
  store i64 %i.dn, ptr %i.b, align 16, !tbaa !118
  store i64 %i.ee, ptr %i.bs, align 8, !tbaa !118
  %.3 = add i64 %.2, 1
  br label %bb.l

bb.u:                                             ; preds = %_ZN5boost14multiprecision8backends15divide_subtractERoS2_RKo.exit, %bb.s, %bb.r
  %i.er = icmp eq i64 %.2, 0
  br i1 %i.er, label %bb.v, label %.thread204

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 0, ptr %4, align 16, !tbaa !54
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 1, ptr %i.es, align 16, !tbaa !113
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 0, ptr %i.et, align 8, !tbaa !126
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 4 uses
  store i8 1, ptr %i.eu, align 1, !tbaa !115
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 4 uses
  store i8 0, ptr %i.ev, align 2, !tbaa !127
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !126, !range !116, !noundef !117 ; 2 uses
  %i.ey = trunc nuw i8 %i.ex to i1                ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.fa = load i64, ptr %i.ez, align 16, !tbaa !113
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fc = trunc nuw i8 %i.bn to i1
  %i.fd = select i1 %i.fc, ptr %1, ptr %i.bm
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !118 ; 4 uses
  %i.ff = xor i64 %i.fe, -1
  %i.fg = urem i64 %i.ff, %i.fe
  %i.fh = zext i64 %i.fg to i128
  %i.fi = add nuw nsw i128 %i.fh, 1               ; 3 uses
  %i.fj = trunc nuw i8 %i.e to i1
  %i.fk = select i1 %i.fj, ptr %0, ptr %i.h       ; 4 uses
  %i.fl = getelementptr [8 x i8], ptr %i.fk, i64 %i.k
  %i.fm = getelementptr i8, ptr %i.fl, i64 -8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !118
  %i.fo = urem i64 %i.fn, %i.fe                   ; 3 uses
  %i.fp = icmp sgt i64 %i.k, 1
  br i1 %i.fp, label %.lr.ph286, label %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit

.lr.ph286:                                        ; preds = %bb.w
  %i.fq = add nsw i64 %i.k, -2                    ; 3 uses
  %i.fr = zext i64 %i.fe to i128                  ; 3 uses
  %i.fs = and i64 %i.k, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fs, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph286
  %i.ft = zext i64 %i.fo to i128
  %i.fu = mul nuw i128 %i.fi, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fq
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !118
  %i.fx = zext i64 %i.fw to i128
  %i.fy = add nuw i128 %i.fu, %i.fx
  %i.fz = urem i128 %i.fy, %i.fr
  %i.ga = trunc nuw i128 %i.fz to i64             ; 2 uses
  %i.gb = add nsw i64 %i.k, -3
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph286
  %.lcssa.unr = phi i64 [ poison, %.lr.ph286 ], [ %i.ga, %.prol.loopexit.unr-lcssa ]
  %.0.i284.unr = phi i64 [ %i.fq, %.lr.ph286 ], [ %i.gb, %.prol.loopexit.unr-lcssa ]
  %.018.i283.unr = phi i64 [ %i.fo, %.lr.ph286 ], [ %i.ga, %.prol.loopexit.unr-lcssa ]
  %i.gc = icmp eq i64 %i.fq, 0
  br i1 %i.gc, label %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit, label %.lr.ph286.new

.lr.ph286.new:                                    ; preds = %.prol.loopexit, %.lr.ph286.new
  %.0.i284 = phi i64 [ %i.gs, %.lr.ph286.new ], [ %.0.i284.unr, %.prol.loopexit ] ; 3 uses
  %.018.i283 = phi i64 [ %i.gr, %.lr.ph286.new ], [ %.018.i283.unr, %.prol.loopexit ]
  %i.gd = zext i64 %.018.i283 to i128
  %i.ge = mul nuw i128 %i.fi, %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.0.i284
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !118
  %i.gh = zext i64 %i.gg to i128
  %i.gi = add nuw i128 %i.ge, %i.gh
  %i.gj = urem i128 %i.gi, %i.fr
  %i.gk = add nsw i64 %.0.i284, -1                ; 2 uses
  %i.gl = mul nuw i128 %i.fi, %i.gj
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gk
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !118
  %i.go = zext i64 %i.gn to i128
  %i.gp = add nuw i128 %i.gl, %i.go
  %i.gq = urem i128 %i.gp, %i.fr
  %i.gr = trunc nuw i128 %i.gq to i64             ; 2 uses
  %i.gs = add nsw i64 %.0.i284, -2
  %.not343.1 = icmp eq i64 %i.gk, 0
  br i1 %.not343.1, label %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit, label %.lr.ph286.new, !llvm.loop !208

_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit: ; preds = %.prol.loopexit, %.lr.ph286.new, %bb.w
  %i.gt = phi i64 [ %i.fo, %bb.w ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.gr, %.lr.ph286.new ]
  store i64 %i.gt, ptr %4, align 16, !tbaa !118
  br i1 %i.ey, label %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit144

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN5boost14multiprecision8backends22divide_unsigned_helperINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvPT_RKT0_RKT1_RS8_(ptr noundef null, ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %4)
          to label %._ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit_crit_edge unwind label %bb.aa

._ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit_crit_edge: ; preds = %bb.x
  %.pre297 = load i64, ptr %i.es, align 16
  %.pre298.pre = load i8, ptr %i.eu, align 1, !tbaa !9, !range !116
  br label %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit

_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit: ; preds = %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit, %._ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit_crit_edge
  %.pre298 = phi i8 [ %.pre298.pre, %._ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit_crit_edge ], [ 1, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit ] ; 3 uses
  %i.gu = phi i64 [ %.pre297, %._ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit_crit_edge ], [ 1, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit ] ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 1
  %or.cond.i143 = select i1 %i.ey, i1 %i.gv, i1 false
  br i1 %or.cond.i143, label %bb.y, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit144

bb.y:                                             ; preds = %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit
  %i.gw = trunc nuw i8 %.pre298 to i1
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = select i1 %i.gw, ptr %4, ptr %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !118
  %i.hb = icmp ne i64 %i.ha, 0
  %spec.select = zext i1 %i.hb to i8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit144

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit144: ; preds = %bb.y, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit
  %i.hc = phi i64 [ 1, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit ], [ 1, %bb.y ], [ %i.gu, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit ]
  %.pre298330 = phi i8 [ 1, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit ], [ %.pre298, %bb.y ], [ %.pre298, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit ]
  %i.hd = phi i8 [ 0, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_y.exit ], [ %spec.select, %bb.y ], [ %i.ex, %_ZN5boost14multiprecision8backends12eval_modulusILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit ]
  %.sroa.0.0.copyload.i = load i128, ptr %0, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, i64 16, i1 false), !tbaa.struct !205
  store i128 %.sroa.0.0.copyload.i, ptr %1, align 16, !tbaa !54
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.hf = load i8, ptr %i.ew, align 8, !tbaa !9, !range !116, !noundef !117
  %i.hg = load i8, ptr %i.he, align 8, !tbaa !9, !range !116, !noundef !117
  store i8 %i.hg, ptr %i.ew, align 8, !tbaa !9
  store i8 %i.hf, ptr %i.he, align 8, !tbaa !9
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 4 uses
  %i.hj = load i8, ptr %i.hh, align 1, !tbaa !9, !range !116, !noundef !117
  %i.hk = load i8, ptr %i.hi, align 1, !tbaa !9, !range !116, !noundef !117
  store i8 %i.hk, ptr %i.hh, align 1, !tbaa !9
  store i8 %i.hj, ptr %i.hi, align 1, !tbaa !9
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 16, !tbaa !184
  %i.hn = load i64, ptr %i.ez, align 16, !tbaa !184
  store i64 %i.hn, ptr %i.hl, align 16, !tbaa !184
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.hq = load i8, ptr %i.ho, align 2, !tbaa !9, !range !116, !noundef !117 ; 2 uses
  %i.hr = load i8, ptr %i.hp, align 2, !tbaa !9, !range !116, !noundef !117
  store i8 %i.hr, ptr %i.ho, align 2, !tbaa !9
  %.sroa.0.0.copyload.i145 = load i128, ptr %1, align 16, !tbaa !54 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %4, i64 16, i1 false), !tbaa.struct !205
  store i128 %.sroa.0.0.copyload.i145, ptr %4, align 16, !tbaa !54
  %i.hs = load i8, ptr %i.he, align 8, !tbaa !9, !range !116, !noundef !117
  store i8 %i.hd, ptr %i.he, align 8, !tbaa !9
  store i8 %i.hs, ptr %i.et, align 8, !tbaa !9
  %i.ht = load i8, ptr %i.hi, align 1, !tbaa !9, !range !116, !noundef !117 ; 2 uses
  store i8 %.pre298330, ptr %i.hi, align 1, !tbaa !9
  store i8 %i.ht, ptr %i.eu, align 1, !tbaa !9
  store i64 %i.hc, ptr %i.ez, align 16, !tbaa !184
  store i64 %i.hm, ptr %i.es, align 16, !tbaa !184
  %i.hu = load i8, ptr %i.ev, align 2, !tbaa !9, !range !116, !noundef !117
  store i8 %i.hu, ptr %i.hp, align 2, !tbaa !9
  store i8 %i.hq, ptr %i.ev, align 2, !tbaa !9
  %i.hv = or i8 %i.ht, %i.hq
  %or.cond.i118.not = icmp eq i8 %i.hv, 0
  br i1 %or.cond.i118.not, label %bb.z, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit119

bb.z:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit144
  %i.hw = trunc i128 %.sroa.0.0.copyload.i145 to i64
  %i.hx = lshr i128 %.sroa.0.0.copyload.i145, 64
  %i.hy = trunc nuw i128 %i.hx to i64
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = shl i64 %i.hw, 3
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ia) #32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit119

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit119: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit144, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.bs

bb.aa:                                            ; preds = %bb.x
  %i.ib = landingpad { ptr, i32 }
          cleanup
  %i.ic = load i8, ptr %i.eu, align 1, !tbaa !115, !range !116, !noundef !117
  %i.id = trunc nuw i8 %i.ic to i1
  %i.ie = load i8, ptr %i.ev, align 2, !range !116
  %i.if = trunc nuw i8 %i.ie to i1
  %or.cond.i116 = select i1 %i.id, i1 true, i1 %i.if
  br i1 %or.cond.i116, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit117, label %bb.ab
end_hunk_4
begin_hunk_5_@_ZN5boost14multiprecision8backends15eval_gcd_lehmerILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyENS1_12cpp_int_baseILm0ELm18446744073709551615ELS3_1ELS4_0ES5_Lb0EE21scoped_shared_storageEEEvRNS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EESC_mRT4_:bb.a
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nv = load i64, ptr %i.nu, align 16, !tbaa !113 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.nt, %i.nv
  br i1 %.not.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nw = icmp ugt i64 %i.nt, %i.nv
  %i.nx = select i1 %i.nw, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.bj:                                            ; preds = %bb.bh
  %i.ny = load i8, ptr %i.nd, align 1, !tbaa !115, !range !116, !noundef !117
  %i.nz = trunc nuw i8 %i.ny to i1
  %i.oa = load ptr, ptr %i.ng, align 8
  %i.ob = select i1 %i.nz, ptr %0, ptr %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !115, !range !116, !noundef !117
  %i.oe = trunc nuw i8 %i.od to i1
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = select i1 %i.oe, ptr %1, ptr %i.og
  %i.oi = icmp slt i64 %i.nt, 1
  br i1 %i.oi, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph415

bb.bk:                                            ; preds = %.lr.ph415
  %i.oj = icmp slt i64 %.015.in.i.i.i413, 2
  br i1 %i.oj, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph415, !llvm.loop !144

.lr.ph415:                                        ; preds = %bb.bj, %bb.bk
  %.015.in.i.i.i413 = phi i64 [ %.015.i.i.i, %bb.bk ], [ %i.nt, %bb.bj ] ; 2 uses
  %.015.i.i.i = add nsw i64 %.015.in.i.i.i413, -1 ; 3 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %.015.i.i.i
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !118 ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %.015.i.i.i
  %i.on = load i64, ptr %i.om, align 8, !tbaa !118 ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.ol, %i.on
  br i1 %.not19.i.i.i, label %bb.bk, label %bb.bl, !llvm.loop !144

bb.bl:                                            ; preds = %.lr.ph415
  %i.oo = icmp ugt i64 %i.ol, %i.on
  %i.op = select i1 %i.oo, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit: ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bl
  %.2.i.i.i = phi i32 [ %i.nx, %bb.bi ], [ %i.op, %bb.bl ], [ 0, %bb.bj ], [ 0, %bb.bk ] ; 2 uses
  %i.oq = sub nsw i32 0, %.2.i.i.i
  %spec.select.i.i161 = select i1 %i.nq, i32 %i.oq, i32 %.2.i.i.i
  %i.or = icmp slt i32 %spec.select.i.i161, 0
  br i1 %i.or, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread208

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread: ; preds = %bb.bg, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %.sroa.0.0.copyload.i162 = load i128, ptr %0, align 16, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, i64 16, i1 false), !tbaa.struct !205
  store i128 %.sroa.0.0.copyload.i162, ptr %1, align 16, !tbaa !54
  %i.os = load i8, ptr %i.no, align 8, !tbaa !9, !range !116, !noundef !117
  %i.ot = load i8, ptr %i.nr, align 8, !tbaa !9, !range !116, !noundef !117
  store i8 %i.ot, ptr %i.no, align 8, !tbaa !9
  store i8 %i.os, ptr %i.nr, align 8, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 2 uses
  %i.ov = load i8, ptr %i.nd, align 1, !tbaa !9, !range !116, !noundef !117
  %i.ow = load i8, ptr %i.ou, align 1, !tbaa !9, !range !116, !noundef !117
  store i8 %i.ow, ptr %i.nd, align 1, !tbaa !9
  store i8 %i.ov, ptr %i.ou, align 1, !tbaa !9
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.oy = load i64, ptr %i.ik, align 16, !tbaa !184
  %i.oz = load i64, ptr %i.ox, align 16, !tbaa !184
  store i64 %i.oz, ptr %i.ik, align 16, !tbaa !184
  store i64 %i.oy, ptr %i.ox, align 16, !tbaa !184
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.pc = load i8, ptr %i.pa, align 2, !tbaa !9, !range !116, !noundef !117
  %i.pd = load i8, ptr %i.pb, align 2, !tbaa !9, !range !116, !noundef !117
  store i8 %i.pd, ptr %i.pa, align 2, !tbaa !9
  store i8 %i.pc, ptr %i.pb, align 2, !tbaa !9
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread208

bb.bm:                                            ; preds = %bb.bc
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !115, !range !116, !noundef !117
  %i.pg = trunc nuw i8 %i.pf to i1
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = select i1 %i.pg, ptr %1, ptr %i.pi
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !118
  %i.pl = and i64 %i.pk, 1
  %i.pm = icmp eq i64 %i.pl, 0
  br i1 %i.pm, label %bb.bn, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread208

bb.bn:                                            ; preds = %bb.bm
  %i.pn = invoke noundef i64 @_ZN5boost14multiprecision8backends8eval_lsbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %1)
          to label %bb.bo unwind label %bb.am

bb.bo:                                            ; preds = %bb.bn
  %i.po = zext i64 %i.pn to i128
  invoke void @_ZN5boost14multiprecision8backends16eval_right_shiftILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EEEE5valueEvE4typeERS9_o(ptr noundef nonnull align 16 dereferenceable(27) %1, i128 noundef %i.po)
          to label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread208 unwind label %bb.am

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread208: ; preds = %bb.bg, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, %bb.bo, %bb.bm, %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_.exit131
  %.neg = mul i64 %i.il, -3
  %i.pp = load i64, ptr %i.in, align 8, !tbaa !204
  %i.pq = add i64 %i.pp, %.neg
  store i64 %i.pq, ptr %i.in, align 8, !tbaa !204
  %i.pr = load i8, ptr %i.ji, align 1, !tbaa !115, !range !116, !noundef !117
  %i.ps = trunc nuw i8 %i.pr to i1
  %i.pt = load i8, ptr %i.jj, align 2, !range !116
  %i.pu = trunc nuw i8 %i.pt to i1
  %or.cond.i108 = select i1 %i.ps, i1 true, i1 %i.pu
  br i1 %or.cond.i108, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit109, label %bb.bp

bb.bp:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread208
  %i.pv = load ptr, ptr %i.jf, align 8
  %i.pw = load i64, ptr %7, align 16
  %i.px = shl i64 %i.pw, 3
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.px) #32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit109

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit109: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread208, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.py = load i8, ptr %i.jb, align 1, !tbaa !115, !range !116, !noundef !117
  %i.pz = trunc nuw i8 %i.py to i1
  %i.qa = load i8, ptr %i.jc, align 2, !range !116
  %i.qb = trunc nuw i8 %i.qa to i1
  %or.cond.i106 = select i1 %i.pz, i1 true, i1 %i.qb
  br i1 %or.cond.i106, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107, label %bb.bq

bb.bq:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit109
  %i.qc = load ptr, ptr %i.iy, align 8
  %i.qd = load i64, ptr %6, align 16
  %i.qe = shl i64 %i.qd, 3
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qe) #32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit109, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.qf = load i8, ptr %i.iu, align 1, !tbaa !115, !range !116, !noundef !117
  %i.qg = trunc nuw i8 %i.qf to i1
  %i.qh = load i8, ptr %i.iv, align 2, !range !116
  %i.qi = trunc nuw i8 %i.qh to i1
  %or.cond.i = select i1 %i.qg, i1 true, i1 %i.qi
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107
  %i.qj = load ptr, ptr %i.ir, align 8
  %i.qk = load i64, ptr %5, align 16
  %i.ql = shl i64 %i.qk, 3
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.ql) #32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.bt:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit111, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit117
  %.pn = phi { ptr, i32 } [ %i.ib, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit117 ], [ %i.kn, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt3gcdIyyENSt11common_typeIJT_T0_EE4typeES1_S2_(i64 noundef %0, i64 noundef %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZNSt8__detail5__gcdIyEET_S1_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZNSt8__detail5__gcdIyEET_S1_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %0, i1 true) ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = lshr exact i64 %0, %i.c                  ; 3 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true) ; 2 uses
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = lshr exact i64 %1, %i.f                  ; 3 uses
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.g)
  %spec.select3334.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.j = icmp eq i64 %i.e, %i.h
  br i1 %i.j, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %spec.select33.lcssa.i = phi i64 [ %spec.select3334.i, %bb.c ], [ %spec.select33.i, %.lr.ph.i ]
  %i.k = zext nneg i32 %i.i to i64
  %i.l = shl i64 %spec.select33.lcssa.i, %i.k
  br label %_ZNSt8__detail5__gcdIyEET_S1_S1_.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %spec.select3337.i = phi i64 [ %spec.select33.i, %.lr.ph.i ], [ %spec.select3334.i, %bb.c ] ; 4 uses
  %.02736.i = phi i64 [ %spec.select3337.i, %.lr.ph.i ], [ %i.e, %bb.c ]
  %.02835.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.c ]
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.02736.i, i64 %.02835.i)
  %i.m = sub nuw i64 %spec.select.i, %spec.select3337.i ; 2 uses
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.m, i1 true)
  %i.o = lshr exact i64 %i.m, %i.n                ; 3 uses
  %spec.select33.i = tail call i64 @llvm.umin.i64(i64 %spec.select3337.i, i64 %i.o) ; 2 uses
  %i.p = icmp eq i64 %spec.select3337.i, %i.o
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !209

_ZNSt8__detail5__gcdIyEET_S1_S1_.exit:            ; preds = %bb.a, %bb.b, %._crit_edge.i
  %.0.i = phi i64 [ %i.l, %._crit_edge.i ], [ %1, %bb.a ], [ %0, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_RKy(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !118
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !115, !range !116, !noundef !117
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = load i64, ptr %0, align 16
  %i.f = icmp ne i64 %i.e, 0
  %.not52 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not52, label %bb.f, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 16, !tbaa !113
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %i.i, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.n = load i8, ptr %i.m, align 2, !tbaa !127, !range !116, !noundef !117
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef 0) #32
  %.pre57.pre = load i8, ptr %i.b, align 1, !tbaa !115, !range !116
  %i.p = trunc nuw i8 %.pre57.pre to i1
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  store i8 0, ptr %i.b, align 1, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre57 = phi i1 [ false, %bb.d ], [ %i.p, %bb.c ]
  store i64 1, ptr %i.j, align 16, !tbaa !113
  store i64 1, ptr %0, align 16, !tbaa !54
  store ptr %i.g, ptr %i.h, align 8, !tbaa !54
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.q, align 16, !tbaa !113
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre59 = load ptr, ptr %.phi.trans.insert58, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.f, %bb.e
  %.pre-phi = phi i1 [ %i.d, %bb.f ], [ %.pre57, %bb.e ]
  %i.t = phi ptr [ %.pre59, %bb.f ], [ %i.g, %bb.e ]
  %i.u = select i1 %.pre-phi, ptr %0, ptr %i.t
  store i64 0, ptr %i.u, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.v, align 8, !tbaa !126
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.h:                                             ; preds = %bb.a
  %.not37 = icmp eq ptr %1, %0
  br i1 %.not37, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge, label %bb.i

._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge: ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 16, !tbaa !113
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 16, !tbaa !113
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 288230376151711744) ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !115, !range !116, !noundef !117
  %i.aa = trunc nuw i8 %i.z to i1                 ; 3 uses
  %i.ab = load i64, ptr %0, align 16              ; 2 uses
  %spec.select.i8.i40 = select i1 %i.aa, i64 2, i64 %i.ab ; 2 uses
  %i.ac = icmp ugt i64 %spec.select.i, %spec.select.i8.i40
  br i1 %i.ac, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41, label %bb.m

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41: ; preds = %bb.i
  %i.ad = shl nuw nsw i64 %spec.select.i8.i40, 2
  %.sroa.speculated16.i42 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %spec.select.i)
  %.sroa.speculated.i43 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i42, i64 288230376151711744) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i43, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #33 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !113
  %i.al = shl i64 %i.ak, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.al, i1 false)
  br i1 %i.aa, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.an = load i8, ptr %i.am, align 2, !tbaa !127, !range !116, !noundef !117
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ap) #32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread

bb.l:                                             ; preds = %bb.j, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41
  store i8 0, ptr %i.y, align 1, !tbaa !115
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread: ; preds = %bb.k, %bb.l
  store i64 %spec.select.i, ptr %i.aj, align 16, !tbaa !113
  store i64 %.sroa.speculated.i43, ptr %0, align 16, !tbaa !54
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !115, !range !116, !noundef !117
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = select i1 %i.as, ptr %0, ptr %i.af      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.idx64 = shl nuw nsw i64 %spec.select.i, 3     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx64
  br label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.ax, align 16, !tbaa !113
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44: ; preds = %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge, %bb.m
  %i.ay = phi i64 [ %.pre, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge ], [ %spec.select.i, %bb.m ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !115, !range !116, !noundef !117
  %i.bb = trunc nuw i8 %i.ba to i1                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = select i1 %i.bb, ptr %0, ptr %i.bd      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.idx = shl i64 %i.ay, 3                        ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx
  %.not3853 = icmp eq i64 %i.ay, 0
  br i1 %.not3853, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44
  %i.bh = phi ptr [ %i.aw, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bg, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %.idx66 = phi i64 [ %.idx64, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %.idx, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bi = phi ptr [ %i.av, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bf, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 5 uses
  %i.bj = phi ptr [ %i.au, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.be, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bk = phi ptr [ %i.at, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bc, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.bl = phi i1 [ %i.as, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bb, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 3 uses
  %i.bm = phi ptr [ %i.aq, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.az, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 5 uses
  %i.bn = phi i64 [ %spec.select.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.ay, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !115, !range !116, !noundef !117
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = select i1 %i.bq, ptr %1, ptr %i.bs
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.056 = phi i128 [ %i.cb, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.03255 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bt, %.lr.ph.preheader ] ; 2 uses
  %.03354 = phi ptr [ %i.cc, %.lr.ph ], [ %i.bj, %.lr.ph.preheader ] ; 2 uses
  %i.bu = load i64, ptr %.03255, align 8, !tbaa !118
  %i.bv = zext i64 %i.bu to i128
  %i.bw = load i64, ptr %2, align 8, !tbaa !118
  %i.bx = zext i64 %i.bw to i128
  %i.by = mul nuw i128 %i.bx, %i.bv
  %i.bz = add nuw i128 %i.by, %.056               ; 2 uses
  %i.ca = trunc i128 %i.bz to i64
  store i64 %i.ca, ptr %.03354, align 8, !tbaa !118
  %i.cb = lshr i128 %i.bz, 64                     ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.03354, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.03255, i64 8
  %.not38 = icmp eq ptr %i.cc, %i.bh
end_hunk_5
