inline.NumInlined: 4460
inline.NumDeleted: 1589
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_:bb.a
  br i1 %.not.i.i.i22, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23 unwind label %bb.n, !inline_history !138 ; 0 uses

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23: ; preds = %bb.k, %bb.j
  store ptr %.sroa.0.2, ptr %i.ae, align 8, !tbaa !130
  %.not.i2.i.i24 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i2.i.i24, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29, label %bb.l

bb.l:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23
  %i.ak = load ptr, ptr %.sroa.0.2, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27 unwind label %bb.n, !inline_history !138

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27: ; preds = %bb.l
  %i.an = load ptr, ptr %.sroa.0.2, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29 unwind label %bb.m, !inline_history !133 ; 0 uses

bb.m:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #37
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
  %i.au = load ptr, ptr %.sroa.0.3, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.3)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31 unwind label %bb.q, !inline_history !133 ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #37
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn17
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !117 ; 3 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 288230376151711744) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9, !range !13, !noundef !14
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
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = select i1 %i.e, ptr %0, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !tbaa !117
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.m, i64 %i.p, i1 false)
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.r = load i8, ptr %i.q, align 2, !tbaa !127, !range !13, !noundef !14
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #33
  %.pre.pre = load i8, ptr %i.c, align 1, !tbaa !9, !range !13
  %i.u = trunc nuw i8 %.pre.pre to i1
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.c, align 1, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre = phi i1 [ false, %bb.d ], [ %i.u, %bb.c ]
  store i64 %spec.select.i, ptr %i.n, align 16, !tbaa !117
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !39
  store ptr %i.j, ptr %i.k, align 8, !tbaa !39
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.v, align 16, !tbaa !117
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre76 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i1 [ %.pre, %bb.e ], [ %i.e, %bb.f ] ; 3 uses
  %i.w = phi ptr [ %i.j, %bb.e ], [ %.pre76, %bb.f ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = select i1 %.pre-phi, ptr %0, ptr %i.w    ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9, !range !13, !noundef !14
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
  %i.aj = load i64, ptr %i.a, align 16, !tbaa !117
  %.idx = shl nuw nsw i64 %i.aj, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %gepdiff = add nsw i64 %.idx, -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.ai, i64 %gepdiff, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i8, ptr %i.al, align 8, !tbaa !126, !range !13, !noundef !14 ; 2 uses
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.am, ptr %i.ao, align 8, !tbaa !126
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i64, ptr %i.ap, align 16
  %i.ar = icmp eq i64 %i.aq, 1
  %or.cond.i = select i1 %i.an, i1 %i.ar, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.i:                                             ; preds = %bb.h
  %i.as = load i8, ptr %i.c, align 1, !tbaa !9, !range !13, !noundef !14
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
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !126, !range !13, !noundef !14 ; 2 uses
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
  %i.ca = load i64, ptr %i.a, align 16, !tbaa !117
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.by
  %i.cc = sub nsw i64 %i.ca, %i.by
  %gepdiff66 = shl nsw i64 %i.cc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr nonnull align 8 %i.bz, i64 %gepdiff66, i1 false)
  %.pre77 = load i8, ptr %i.c, align 1, !tbaa !9, !range !13
  %.promoted.pre = load i64, ptr %i.bb, align 16, !tbaa !117
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
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !126, !range !13, !noundef !14
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ck, ptr %i.cl, align 8, !tbaa !126
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.t:                                             ; preds = %.lr.ph73
  store i64 %i.cg, ptr %i.bb, align 16, !tbaa !117
  %i.cm = add i64 %i.cg, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph73, !llvm.loop !140

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %bb.t, %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !126, !range !13, !noundef !14 ; 2 uses
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
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1                      ; 2 uses
  br i1 %.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !117
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 288230376151711744) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9, !range !13, !noundef !14
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
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = select i1 %i.e, ptr %0, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !tbaa !117
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.m, i64 %i.p, i1 false)
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.r = load i8, ptr %i.q, align 2, !tbaa !127, !range !13, !noundef !14
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.c, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %spec.select.i, ptr %i.n, align 16, !tbaa !117
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !39
  store ptr %i.j, ptr %i.k, align 8, !tbaa !39
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.u, align 16, !tbaa !117
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.g, %bb.f, %bb.a
  %i.v = load i64, ptr %2, align 8, !tbaa !118    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %0, ptr %i.aa       ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = select i1 %i.ae, ptr %1, ptr %i.ag      ; 3 uses
  %.not4352 = icmp eq i64 %i.v, 0
  br i1 %.not4352, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !117 ; 6 uses
  %exitcond.not.not83 = icmp eq i64 %i.aj, 0
  br i1 %exitcond.not.not83, label %.critedge, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph
  %i.ak = zext i64 %i.v to i128
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.am = zext i64 %i.al to i128
end_hunk_0
begin_hunk_1_@_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_:bb.a
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #20
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(27) %0, i128 noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i128 %1, 6
  %i.b = trunc i128 %i.a to i64
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !117 ; 7 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9, !range !13, !noundef !14
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
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9, !range !13 ; 3 uses
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
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #36 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !127, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #33
  %.pre52.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre52 = phi i8 [ 0, %bb.g ], [ %.pre52.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !117
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !39
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !39
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !117
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
  %i.ba = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %.noexc unwind label %bb.q     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bb = load ptr, ptr %i.ar, align 8            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.bb, i64 %i.ax, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !127, !range !13, !noundef !14
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef 0) #33
  %.pre55.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  %i.bf = trunc nuw i8 %.pre55.pre to i1
  br label %bb.o

bb.n:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre55 = phi i1 [ false, %bb.n ], [ %i.bf, %bb.m ]
  store i64 1, ptr %i.e, align 16, !tbaa !117
  store i64 1, ptr %0, align 16, !tbaa !39
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !39
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.p:                                             ; preds = %bb.l
  store i64 1, ptr %i.e, align 16, !tbaa !117
  %.pre56 = load ptr, ptr %i.ar, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #37
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
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(27) %0, i128 noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i128 %1, 6
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !117 ; 8 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9, !range !13, !noundef !14
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
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9, !range !13 ; 3 uses
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
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #36 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.aa, ptr %0, ptr %i.ah
  %i.aj = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ai, i64 %i.aj, i1 false)
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !127, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.an) #33
  %.pre113.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !117
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !39
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !39
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !117
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
  %i.av = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.aw = shl nuw nsw i64 %spec.select.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.pre117, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !127, !range !13, !noundef !14
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.noexc
  tail call void @_ZdlPvm(ptr noundef %.pre117, i64 noundef 0) #33
  %.pre116.pre = load i8, ptr %i.z, align 1, !tbaa !9, !range !13
  %i.ba = trunc nuw i8 %.pre116.pre to i1
  %i.bb = select i1 %i.ba, ptr %0, ptr %i.av
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  store i8 0, ptr %i.z, align 1, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre116 = phi ptr [ %i.av, %bb.l ], [ %i.bb, %bb.k ]
  store i64 1, ptr %i.e, align 16, !tbaa !117
  store i64 1, ptr %0, align 16, !tbaa !39
  store ptr %i.av, ptr %i.as, align 8, !tbaa !39
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !117
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #37
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
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !118, !alias.scope !157
  %i.df = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.db
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  store <2 x i64> %i.df, ptr %i.dh, align 8, !tbaa !118, !alias.scope !160, !noalias !162
  %i.di = add i64 %i.cz, %i.b
  %i.dj = sub i64 %invariant.op, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !118, !alias.scope !164
  %i.dm = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dn = or disjoint <2 x i64> %i.dm, %i.df
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !118, !alias.scope !160, !noalias !162
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !165

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
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !168

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
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_6negateES9_vvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !169, !noalias !172, !nonnull !14, !align !175 ; 6 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 16, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !117
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 288230376151711744) ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9, !range !13, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1                  ; 3 uses
  %i.i = load i64, ptr %0, align 16               ; 2 uses
  %spec.select.i8.i.i.i = select i1 %i.h, i64 2, i64 %i.i ; 2 uses
  %i.j = icmp ugt i64 %spec.select.i.i.i, %spec.select.i8.i.i.i
  br i1 %i.j, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %spec.select.i8.i.i.i, 2
  %.sroa.speculated16.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %spec.select.i.i.i)
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i.i, i64 288230376151711744) ; 2 uses
  %i.l = shl nuw nsw i64 %.sroa.speculated.i.i.i, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !tbaa !127, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = shl i64 %i.i, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #33
  %.pre.pre.i.i = load i8, ptr %i.f, align 1, !tbaa !9, !range !13
end_hunk_1
